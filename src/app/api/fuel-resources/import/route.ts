import { NextRequest, NextResponse } from 'next/server'
import { randomUUID } from 'node:crypto'
import {
  bulkUpsertFuelResources,
  getScopeCategories,
  softDeleteFuelResourcesByVersion,
} from '@/lib/api/fuel-resources'
import { deleteFuelResourceLinkingsByVersion } from '@/lib/api/fuel-resources-linking'
import {
  ensureEfCatalogRelease,
  getEfCatalogRelease,
  refreshReleaseCounts,
} from '@/lib/api/ef-catalog-releases'
import { supabase } from '@/lib/supabase'
import type { FuelResource, RefSource } from '@/types/emission-resources'

const REF_SOURCES = new Set([
  'SELF_COLLECT',
  'SUPPLIER',
  'TH_LCI',
  'TGO',
  'THAI_RES',
  'INTERNATIONAL',
  'OTHER',
  'SUBSITUTE',
])

function num (value: unknown): number | null {
  if (value === null || value === undefined || value === '') return null
  const n = typeof value === 'number' ? value : Number(String(value).trim())
  return Number.isFinite(n) ? n : null
}

function str (value: unknown): string | null {
  if (value === null || value === undefined) return null
  const s = String(value).trim()
  return s === '' ? null : s
}

function isUuid (value: string): boolean {
  return /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i.test(value)
}

async function countActiveFuels (version: string): Promise<number> {
  const { count, error } = await supabase
    .from('fuel_resources')
    .select('id', { count: 'exact', head: true })
    .eq('version', version)
    .is('deleted_at', null)
  if (error) throw error
  return count ?? 0
}

function resolveRows (
  rows: Array<Record<string, unknown>>,
  version: string,
  categoryById: Map<string, unknown>,
  categoryByNameTh: Map<string, string>
): { resolved: Partial<FuelResource>[]; errors: Array<{ row: number; error: string }> } {
  const resolved: Partial<FuelResource>[] = []
  const errors: Array<{ row: number; error: string }> = []

  for (let i = 0; i < rows.length; i++) {
    const raw = rows[i]
    const resource = str(raw.resource)
    if (!resource) {
      errors.push({ row: i + 1, error: 'resource is required' })
      continue
    }

    let scopeCategoryId = str(raw.scope_category_id)
    const categoryNameTh = str(raw.category_name_th) || str(raw.category_th)
    if (!scopeCategoryId && categoryNameTh) {
      scopeCategoryId = categoryByNameTh.get(categoryNameTh) ?? null
    }
    if (!scopeCategoryId || !categoryById.has(scopeCategoryId)) {
      errors.push({ row: i + 1, error: 'scope_category_id missing or not found' })
      continue
    }

    let id = str(raw.id)
    if (id && !isUuid(id)) {
      errors.push({ row: i + 1, error: `invalid id: ${id}` })
      continue
    }
    if (!id) id = randomUUID()

    const refSource = str(raw.ref_source)
    if (refSource && !REF_SOURCES.has(refSource)) {
      errors.push({ row: i + 1, error: `invalid ref_source: ${refSource}` })
      continue
    }

    resolved.push({
      id,
      scope_category_id: scopeCategoryId,
      resource,
      sub_category: str(raw.sub_category),
      unit: str(raw.unit),
      ef_value: num(raw.ef_value),
      value1_label: str(raw.value1_label),
      value1_unit: str(raw.value1_unit),
      value2_label: str(raw.value2_label),
      value2_unit: str(raw.value2_unit),
      ref_info: str(raw.ref_info),
      ref_co2: num(raw.ref_co2),
      ref_fossil_ch4: num(raw.ref_fossil_ch4),
      ref_ch4: num(raw.ref_ch4),
      ref_n2o: num(raw.ref_n2o),
      ref_sf6: num(raw.ref_sf6),
      ref_nf3: num(raw.ref_nf3),
      ref_hfcs: num(raw.ref_hfcs),
      ref_pfcs: num(raw.ref_pfcs),
      gwp100_hfcs: num(raw.gwp100_hfcs),
      gwp100_pfcs: num(raw.gwp100_pfcs),
      extraghg_ef: num(raw.extraghg_ef),
      extraghg_gwp100: num(raw.extraghg_gwp100),
      ref_source: (refSource as RefSource | null) ?? null,
      version,
      ref_code: str(raw.ref_code),
      sort_index: num(raw.sort_index) != null ? Math.trunc(num(raw.sort_index)!) : null,
      multiplier: num(raw.multiplier) ?? 1,
      deleted_at: null,
    })
  }

  return { resolved, errors }
}

export async function POST (request: NextRequest) {
  try {
    const body = await request.json()
    const version = String(body.version || '').trim()
    const mode = String(body.mode || '').trim() as 'create' | 'replace'
    const rows = body.rows as Array<Record<string, unknown>> | undefined

    if (!version) {
      return NextResponse.json({ error: 'version is required' }, { status: 400 })
    }
    if (mode !== 'create' && mode !== 'replace') {
      return NextResponse.json({ error: 'mode must be create or replace' }, { status: 400 })
    }
    if (!Array.isArray(rows) || rows.length === 0) {
      return NextResponse.json({ error: 'rows array is required and must not be empty' }, { status: 400 })
    }

    const existingRelease = await getEfCatalogRelease(version)
    const activeFuelCount = await countActiveFuels(version)

    if (mode === 'create') {
      if (existingRelease || activeFuelCount > 0) {
        return NextResponse.json(
          {
            error: `Version "${version}" already exists. Use Update existing version to replace it.`,
            fuel_count: activeFuelCount,
          },
          { status: 409 }
        )
      }
    } else {
      if (!existingRelease && activeFuelCount === 0) {
        return NextResponse.json(
          {
            error: `Version "${version}" does not exist. Use New version to create it.`,
          },
          { status: 404 }
        )
      }
    }

    const categories = await getScopeCategories()
    const categoryById = new Map(categories.map((c) => [c.id, c]))
    const categoryByNameTh = new Map(categories.map((c) => [c.name_th, c.id]))
    const { resolved, errors } = resolveRows(rows, version, categoryById, categoryByNameTh)

    if (errors.length > 0) {
      return NextResponse.json(
        { error: `${errors.length} invalid row(s)`, errors, resolved_count: resolved.length },
        { status: 400 }
      )
    }

    if (mode === 'replace') {
      await softDeleteFuelResourcesByVersion(version)
      await deleteFuelResourceLinkingsByVersion(version)
    }

    await ensureEfCatalogRelease(version)

    const chunkSize = 200
    let imported = 0
    for (let i = 0; i < resolved.length; i += chunkSize) {
      const chunk = resolved.slice(i, i + chunkSize)
      const result = await bulkUpsertFuelResources(chunk)
      imported += result.length
    }

    const release = await refreshReleaseCounts(version)

    return NextResponse.json({ imported, version, mode, release })
  } catch (error) {
    console.error('POST /api/fuel-resources/import error:', error)
    return NextResponse.json({ error: 'Failed to import fuel resources' }, { status: 500 })
  }
}
