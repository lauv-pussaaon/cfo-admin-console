import { supabase } from '@/lib/supabase'
import { getServiceSupabase } from '@/lib/supabase-service'
import {
  EMPTY_DOC,
  bangkokToday,
  parseDoc,
  type RichTextDoc,
} from './document'
import {
  PLATFORM_UPDATES_BUCKET,
  bannerKindForMime,
  bannerLimitBytes,
  bannerObjectPath,
  type BannerKind,
} from './banner'
import { isPlatformUpdateComplete, isPlatformUpdateLive } from './live'
import { ensurePlatformUpdatesBucket } from './ensure-bucket'
import type { PlatformUpdateLive, PlatformUpdateRecord, PlatformUpdateStatus } from './types'

export type { PlatformUpdateLive, PlatformUpdateRecord, PlatformUpdateStatus }

type Row = {
  id: string
  status: string
  published_on: string | null
  banner_kind: string | null
  banner_path: string | null
  title_th: string
  title_en: string
  body_th: unknown
  body_en: unknown
  created_at: string
  updated_at: string
  created_by: string | null
}

const COLUMNS = 'id, status, published_on, banner_kind, banner_path, title_th, title_en, body_th, body_en, created_at, updated_at, created_by'

function storageClient () {
  return getServiceSupabase() ?? supabase
}

function publicBannerUrl (path: string | null): string | null {
  if (!path) return null
  const { data } = storageClient().storage.from(PLATFORM_UPDATES_BUCKET).getPublicUrl(path)
  return data.publicUrl || null
}

function mapRow (row: Row): PlatformUpdateRecord {
  const bannerKind = row.banner_kind === 'image' || row.banner_kind === 'video' ? row.banner_kind : null
  const status: PlatformUpdateStatus = row.status === 'active' ? 'active' : 'inactive'
  return {
    id: row.id,
    status,
    publishedOn: row.published_on,
    bannerKind,
    bannerPath: row.banner_path,
    bannerUrl: publicBannerUrl(row.banner_path),
    titleTh: row.title_th ?? '',
    titleEn: row.title_en ?? '',
    bodyTh: parseDoc(row.body_th),
    bodyEn: parseDoc(row.body_en),
    createdAt: row.created_at,
    updatedAt: row.updated_at,
    createdBy: row.created_by,
  }
}

function sortUpdates (rows: PlatformUpdateRecord[]): PlatformUpdateRecord[] {
  return [...rows].sort((a, b) => {
    const dateCompare = (b.publishedOn ?? '').localeCompare(a.publishedOn ?? '')
    if (dateCompare !== 0) return dateCompare
    return b.createdAt.localeCompare(a.createdAt)
  })
}

export function toLiveUpdate (row: PlatformUpdateRecord): PlatformUpdateLive | null {
  if (!isPlatformUpdateLive(row, bangkokToday())) return null
  if (!row.publishedOn || !row.bannerKind || !row.bannerUrl) return null
  return {
    id: row.id,
    publishedOn: row.publishedOn,
    bannerKind: row.bannerKind,
    bannerUrl: row.bannerUrl,
    titleTh: row.titleTh,
    titleEn: row.titleEn,
    bodyTh: row.bodyTh,
    bodyEn: row.bodyEn,
  }
}

export async function listPlatformUpdates (): Promise<PlatformUpdateRecord[]> {
  const { data, error } = await supabase
    .from('platform_updates')
    .select(COLUMNS)
  if (error) throw new Error(error.message)
  return sortUpdates((data as Row[] | null ?? []).map(mapRow))
}

export async function listLivePlatformUpdates (): Promise<PlatformUpdateLive[]> {
  const rows = await listPlatformUpdates()
  return rows.flatMap((row) => {
    const live = toLiveUpdate(row)
    return live ? [live] : []
  })
}

export async function getPlatformUpdate (id: string): Promise<PlatformUpdateRecord | null> {
  const { data, error } = await supabase
    .from('platform_updates')
    .select(COLUMNS)
    .eq('id', id)
    .maybeSingle()
  if (error) throw new Error(error.message)
  if (!data) return null
  return mapRow(data as Row)
}

export async function createPlatformUpdate (createdBy: string): Promise<PlatformUpdateRecord> {
  const { data, error } = await supabase
    .from('platform_updates')
    .insert({
      status: 'inactive',
      published_on: bangkokToday(),
      title_th: '',
      title_en: '',
      body_th: EMPTY_DOC,
      body_en: EMPTY_DOC,
      created_by: createdBy,
    })
    .select(COLUMNS)
    .single()
  if (error || !data) throw new Error(error?.message ?? 'สร้างประกาศไม่สำเร็จ')
  return mapRow(data as Row)
}

export type PlatformUpdatePatch = {
  status?: PlatformUpdateStatus
  publishedOn?: string | null
  titleTh?: string
  titleEn?: string
  bodyTh?: RichTextDoc
  bodyEn?: RichTextDoc
}

export async function updatePlatformUpdate (
  id: string,
  patch: PlatformUpdatePatch
): Promise<{ ok: true; update: PlatformUpdateRecord } | { ok: false; error: string }> {
  const current = await getPlatformUpdate(id)
  if (!current) return { ok: false, error: 'ไม่พบประกาศ' }

  const next: PlatformUpdateRecord = {
    ...current,
    status: patch.status ?? current.status,
    publishedOn: patch.publishedOn === undefined ? current.publishedOn : patch.publishedOn,
    titleTh: patch.titleTh ?? current.titleTh,
    titleEn: patch.titleEn ?? current.titleEn,
    bodyTh: patch.bodyTh ?? current.bodyTh,
    bodyEn: patch.bodyEn ?? current.bodyEn,
  }

  if (next.status === 'active' && !isPlatformUpdateComplete(next)) {
    return { ok: false, error: 'ใส่ชื่อไทย ชื่ออังกฤษ แบนเนอร์ วันที่ และคำอธิบายทั้งสองภาษา ก่อนเปิดใช้' }
  }

  const { data, error } = await supabase
    .from('platform_updates')
    .update({
      status: next.status,
      published_on: next.publishedOn,
      title_th: next.titleTh,
      title_en: next.titleEn,
      body_th: next.bodyTh,
      body_en: next.bodyEn,
      updated_at: new Date().toISOString(),
    })
    .eq('id', id)
    .select(COLUMNS)
    .single()
  if (error || !data) return { ok: false, error: error?.message ?? 'บันทึกไม่สำเร็จ' }
  return { ok: true, update: mapRow(data as Row) }
}

export async function deletePlatformUpdate (id: string): Promise<boolean> {
  const current = await getPlatformUpdate(id)
  if (!current) return false
  if (current.bannerPath) await removeBanner(current.bannerPath)
  const { error } = await supabase.from('platform_updates').delete().eq('id', id)
  if (error) throw new Error(error.message)
  return true
}

export async function uploadPlatformBanner (
  id: string,
  file: File
): Promise<{ ok: true; update: PlatformUpdateRecord } | { ok: false; error: string }> {
  const current = await getPlatformUpdate(id)
  if (!current) return { ok: false, error: 'ไม่พบประกาศ' }

  const mime = file.type
  const kind = bannerKindForMime(mime)
  const path = bannerObjectPath(id, mime)
  if (!kind || !path) return { ok: false, error: 'ใช้รูป jpg, png, webp หรือวิดีโอ mp4, webm' }
  if (file.size > bannerLimitBytes(kind)) {
    return { ok: false, error: kind === 'video' ? 'วิดีโอต้องไม่เกิน 30 MB' : 'รูปต้องไม่เกิน 8 MB' }
  }

  const bytes = Buffer.from(await file.arrayBuffer())
  const client = storageClient()
  const bucketError = await ensurePlatformUpdatesBucket(client)
  if (bucketError) return { ok: false, error: `อัปโหลดแบนเนอร์ไม่สำเร็จ: ${bucketError}` }
  if (current.bannerPath && current.bannerPath !== path) {
    await client.storage.from(PLATFORM_UPDATES_BUCKET).remove([current.bannerPath])
  }
  const { error: uploadError } = await client.storage
    .from(PLATFORM_UPDATES_BUCKET)
    .upload(path, bytes, { contentType: mime, upsert: true, cacheControl: '3600' })
  if (uploadError) return { ok: false, error: `อัปโหลดแบนเนอร์ไม่สำเร็จ: ${uploadError.message}` }

  const { data, error } = await supabase
    .from('platform_updates')
    .update({
      banner_kind: kind,
      banner_path: path,
      updated_at: new Date().toISOString(),
    })
    .eq('id', id)
    .select(COLUMNS)
    .single()
  if (error || !data) return { ok: false, error: 'บันทึกแบนเนอร์ไม่สำเร็จ' }
  return { ok: true, update: mapRow(data as Row) }
}

async function removeBanner (path: string) {
  await storageClient().storage.from(PLATFORM_UPDATES_BUCKET).remove([path])
}
