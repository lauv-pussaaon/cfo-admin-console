import { createHash } from 'node:crypto'
import { supabase } from '@/lib/supabase'
import type { EfCatalogRelease } from '@/types/emission-resources'

export async function listEfCatalogReleases (): Promise<EfCatalogRelease[]> {
  const { data, error } = await supabase
    .from('ef_catalog_releases')
    .select('*')
    .order('order_index', { ascending: true })
    .order('version', { ascending: true })
  if (error) throw error
  return (data ?? []) as EfCatalogRelease[]
}

export async function getEfCatalogRelease (version: string): Promise<EfCatalogRelease | null> {
  const { data, error } = await supabase
    .from('ef_catalog_releases')
    .select('*')
    .eq('version', version)
    .maybeSingle()
  if (error) throw error
  return data as EfCatalogRelease | null
}

async function nextReleaseOrderIndex (): Promise<number> {
  const { data, error } = await supabase
    .from('ef_catalog_releases')
    .select('order_index')
    .order('order_index', { ascending: false })
    .limit(1)
    .maybeSingle()
  if (error) throw error
  const max = typeof data?.order_index === 'number' ? data.order_index : 0
  return max + 10
}

export async function ensureEfCatalogRelease (version: string): Promise<EfCatalogRelease> {
  const existing = await getEfCatalogRelease(version)
  if (existing) return existing
  const order_index = await nextReleaseOrderIndex()
  const { data, error } = await supabase
    .from('ef_catalog_releases')
    .insert({
      version,
      status: 'draft',
      is_default: false,
      fuel_count: 0,
      link_count: 0,
      order_index,
      updated_at: new Date().toISOString(),
    })
    .select()
    .single()
  if (error) throw error
  return data as EfCatalogRelease
}

async function countFuels (version: string): Promise<number> {
  const { count, error } = await supabase
    .from('fuel_resources')
    .select('id', { count: 'exact', head: true })
    .eq('version', version)
    .is('deleted_at', null)
  if (error) throw error
  return count ?? 0
}

const HASH_FETCH_CHUNK = 1000

type HashFuelRow = {
  id: string
  ef_value: number | string | null
  value1_label: string | null
  value1_unit: string | null
  value2_label: string | null
  value2_unit: string | null
}

/** Paginate — PostgREST default max is 1000 rows; May catalogs exceed that. */
async function listFuelsForContentHash (version: string): Promise<HashFuelRow[]> {
  const all: HashFuelRow[] = []
  let offset = 0
  while (true) {
    const { data, error } = await supabase
      .from('fuel_resources')
      .select('id, ef_value, value1_label, value1_unit, value2_label, value2_unit')
      .eq('version', version)
      .is('deleted_at', null)
      .order('id', { ascending: true })
      .range(offset, offset + HASH_FETCH_CHUNK - 1)
    if (error) throw error
    const chunk = (data ?? []) as HashFuelRow[]
    all.push(...chunk)
    if (chunk.length < HASH_FETCH_CHUNK) break
    offset += HASH_FETCH_CHUNK
  }
  return all
}

export async function computeReleaseContentHash (version: string): Promise<string> {
  const fuels = await listFuelsForContentHash(version)
  const fuelPart = fuels
    .map((f) =>
      [
        f.id,
        f.ef_value ?? '',
        f.value1_label ?? '',
        f.value1_unit ?? '',
        f.value2_label ?? '',
        f.value2_unit ?? '',
      ].join(':')
    )
    .join('|')
  return createHash('sha256').update(`${version}\n${fuelPart}`).digest('hex')
}

export async function refreshReleaseCounts (version: string): Promise<EfCatalogRelease> {
  await ensureEfCatalogRelease(version)
  const fuel_count = await countFuels(version)
  const { data, error } = await supabase
    .from('ef_catalog_releases')
    .update({
      fuel_count,
      link_count: 0,
      updated_at: new Date().toISOString(),
    })
    .eq('version', version)
    .select()
    .single()
  if (error) throw error
  return data as EfCatalogRelease
}

export async function publishEfCatalogRelease (
  version: string,
  publishedBy?: string | null
): Promise<EfCatalogRelease> {
  await ensureEfCatalogRelease(version)
  const [fuel_count, content_hash] = await Promise.all([
    countFuels(version),
    computeReleaseContentHash(version),
  ])
  const { data, error } = await supabase
    .from('ef_catalog_releases')
    .update({
      status: 'published',
      content_hash,
      fuel_count,
      link_count: 0,
      published_at: new Date().toISOString(),
      published_by: publishedBy ?? null,
      updated_at: new Date().toISOString(),
    })
    .eq('version', version)
    .select()
    .single()
  if (error) throw error
  return data as EfCatalogRelease
}

export async function setDefaultEfCatalogRelease (version: string): Promise<EfCatalogRelease> {
  const release = await getEfCatalogRelease(version)
  if (!release) throw new Error(`Unknown release version: ${version}`)
  if (release.status !== 'published') {
    throw new Error('Only published releases can be set as default')
  }

  // Clear other defaults first (unique partial index).
  const { error: clearErr } = await supabase
    .from('ef_catalog_releases')
    .update({ is_default: false, updated_at: new Date().toISOString() })
    .eq('is_default', true)
  if (clearErr) throw clearErr

  const { data, error } = await supabase
    .from('ef_catalog_releases')
    .update({ is_default: true, updated_at: new Date().toISOString() })
    .eq('version', version)
    .select()
    .single()
  if (error) throw error
  return data as EfCatalogRelease
}
