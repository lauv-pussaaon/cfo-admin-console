import { supabase } from '@/lib/supabase'
import { listEfCatalogReleases } from '@/lib/api/ef-catalog-releases'
import type { CategoryMapDestination, CategoryMapRow, ScopeCategory } from '@/types/emission-resources'

export type CategoryMapPair = {
  tgo_scope_category_id: string
  iso_scope_category_id: string | null
}

function str (value: unknown): string | null {
  if (value === null || value === undefined) return null
  const s = String(value).trim()
  return s === '' ? null : s
}

export function isoCodeFromName (name: string): string {
  const match = name.match(/^(\d+(?:\.\d+)?)/)
  return match?.[1] ?? name.trim()
}

export function resolveCategoryMapRows (
  rows: Array<Record<string, unknown>>,
  categories: ScopeCategory[]
): { resolved: CategoryMapPair[]; errors: Array<{ row: number; error: string }> } {
  const errors: Array<{ row: number; error: string }> = []
  const resolved: CategoryMapPair[] = []
  if (rows.length === 0) {
    errors.push({ row: 0, error: 'category map sheet is empty' })
    return { resolved, errors }
  }

  const byId = new Map(categories.map((category) => [category.id, category]))
  const isoCategories = categories.filter((category) => category.family === 'iso')
  const seen = new Set<string>()

  rows.forEach((raw, index) => {
    const row = index + 2
    const tgoId = str(raw.tgo_scope_category_id)
    const tgo = tgoId ? byId.get(tgoId) : undefined
    if (!tgoId || !tgo || tgo.family !== 'tgo') {
      errors.push({ row, error: 'tgo_scope_category_id missing or not a TGO category' })
      return
    }
    if (seen.has(tgoId)) {
      errors.push({ row, error: `duplicate tgo_scope_category_id: ${tgoId}` })
      return
    }
    seen.add(tgoId)

    const code = str(raw.iso_code) ?? ''
    if (!code || code.includes(' / ')) {
      resolved.push({ tgo_scope_category_id: tgoId, iso_scope_category_id: null })
      return
    }

    const rawId = str(raw.iso_scope_category_id)
    if (rawId && !rawId.includes(' / ')) {
      const iso = byId.get(rawId)
      if (iso && iso.family === 'iso') {
        resolved.push({ tgo_scope_category_id: tgoId, iso_scope_category_id: iso.id })
        return
      }
    }

    const match = isoCategories.find((category) => isoCodeFromName(category.name_en) === code)
    if (!match) {
      errors.push({ row, error: `ISO destination not found: ${code}` })
      return
    }
    resolved.push({ tgo_scope_category_id: tgoId, iso_scope_category_id: match.id })
  })

  return { resolved, errors }
}

async function countFuelsByCategory (version: string): Promise<Map<string, number>> {
  const counts = new Map<string, number>()
  const pageSize = 1000
  for (let from = 0; ; from += pageSize) {
    const { data, error } = await supabase
      .from('fuel_resources')
      .select('scope_category_id')
      .eq('version', version)
      .is('deleted_at', null)
      .range(from, from + pageSize - 1)
    if (error) throw error
    const page = data ?? []
    for (const row of page) {
      const id = String(row.scope_category_id)
      counts.set(id, (counts.get(id) ?? 0) + 1)
    }
    if (page.length < pageSize) break
  }
  return counts
}

export async function getCategoryMap (): Promise<{
  data: CategoryMapRow[]
  destinations: CategoryMapDestination[]
}> {
  const [tgoCategories, isoCategories, mapResult, releases] = await Promise.all([
    supabase
      .from('scope_categories')
      .select('id, scope, name_th, name_en, display_order')
      .eq('family', 'tgo')
      .is('deleted_at', null)
      .order('display_order', { ascending: true }),
    supabase
      .from('scope_categories')
      .select('id, name_en, display_order')
      .eq('family', 'iso')
      .is('deleted_at', null)
      .order('display_order', { ascending: true }),
    supabase.from('tgo_iso_category_map').select('tgo_scope_category_id, iso_scope_category_id'),
    listEfCatalogReleases(),
  ])
  if (tgoCategories.error) throw tgoCategories.error
  if (isoCategories.error) throw isoCategories.error
  if (mapResult.error) throw mapResult.error

  const destinations: CategoryMapDestination[] = (isoCategories.data ?? []).map((category) => ({
    id: category.id,
    name_en: category.name_en,
    code: isoCodeFromName(category.name_en),
  }))
  const destinationById = new Map(destinations.map((destination) => [destination.id, destination]))
  const mapped = new Map(
    (mapResult.data ?? []).map((row) => [row.tgo_scope_category_id, row.iso_scope_category_id])
  )
  const defaultRelease = releases.find(
    (release) => (release.family ?? 'tgo') === 'tgo' && release.is_default && release.status === 'published'
  )
  const fuelCounts = defaultRelease ? await countFuelsByCategory(defaultRelease.version) : null

  const data: CategoryMapRow[] = (tgoCategories.data ?? []).map((category) => {
    const isoId = mapped.get(category.id) ?? null
    const destination = isoId ? destinationById.get(isoId) : undefined
    return {
      id: category.id,
      scope: category.scope,
      name_th: category.name_th,
      name_en: category.name_en,
      display_order: category.display_order,
      iso_scope_category_id: destination ? isoId : null,
      iso_code: destination?.code ?? null,
      fuel_count: fuelCounts ? (fuelCounts.get(category.id) ?? 0) : null,
    }
  })

  return { data, destinations }
}

export async function replaceCategoryMap (rows: CategoryMapPair[]): Promise<void> {
  const { error: deleteError } = await supabase
    .from('tgo_iso_category_map')
    .delete()
    .not('tgo_scope_category_id', 'is', null)
  if (deleteError) throw deleteError
  if (rows.length === 0) return
  const updatedAt = new Date().toISOString()
  const { error } = await supabase.from('tgo_iso_category_map').insert(
    rows.map((row) => ({ ...row, updated_at: updatedAt }))
  )
  if (error) throw error
}

export async function setCategoryMapDestination (
  tgoScopeCategoryId: string,
  isoScopeCategoryId: string | null
): Promise<void> {
  const { data: tgo, error: tgoError } = await supabase
    .from('scope_categories')
    .select('id, family')
    .eq('id', tgoScopeCategoryId)
    .is('deleted_at', null)
    .maybeSingle()
  if (tgoError) throw tgoError
  if (!tgo || tgo.family !== 'tgo') {
    throw new Error('tgo_scope_category_id must be a TGO category')
  }

  if (isoScopeCategoryId) {
    const { data: iso, error: isoError } = await supabase
      .from('scope_categories')
      .select('id, family')
      .eq('id', isoScopeCategoryId)
      .is('deleted_at', null)
      .maybeSingle()
    if (isoError) throw isoError
    if (!iso || iso.family !== 'iso') {
      throw new Error('iso_scope_category_id must be an ISO category')
    }
  }

  const { error } = await supabase.from('tgo_iso_category_map').upsert(
    {
      tgo_scope_category_id: tgoScopeCategoryId,
      iso_scope_category_id: isoScopeCategoryId,
      updated_at: new Date().toISOString(),
    },
    { onConflict: 'tgo_scope_category_id' }
  )
  if (error) throw error
}
