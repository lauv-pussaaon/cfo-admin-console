import { supabase } from '@/lib/supabase'
import type {
  FuelResource,
  FuelResourceWithCategory,
  ScopeCategory,
  CreateFuelResourceInput,
  UpdateFuelResourceInput,
  CreateScopeCategoryInput,
  UpdateScopeCategoryInput,
  FuelResourcesQuery,
  PaginatedResult,
} from '@/types/emission-resources'

// ─── Scope Categories ──────────────────────────────────────────────────────────

export async function getScopeCategories(scope?: number, includeDeleted = false) {
  let query = supabase
    .from('scope_categories')
    .select('*')
    .order('display_order', { ascending: true })
    .order('scope', { ascending: true })

  if (!includeDeleted) {
    query = query.is('deleted_at', null)
  }
  if (scope) {
    query = query.eq('scope', scope)
  }

  const { data, error } = await query
  if (error) throw error
  return data as ScopeCategory[]
}

export async function getScopeCategory(id: string) {
  const { data, error } = await supabase
    .from('scope_categories')
    .select('*')
    .eq('id', id)
    .single()
  if (error) throw error
  return data as ScopeCategory
}

export async function createScopeCategory(input: CreateScopeCategoryInput) {
  const { data, error } = await supabase
    .from('scope_categories')
    .insert({ ...input, created_at: new Date().toISOString(), updated_at: new Date().toISOString() })
    .select()
    .single()
  if (error) throw error
  return data as ScopeCategory
}

export async function updateScopeCategory(id: string, input: UpdateScopeCategoryInput) {
  const { data, error } = await supabase
    .from('scope_categories')
    .update({ ...input, updated_at: new Date().toISOString() })
    .eq('id', id)
    .select()
    .single()
  if (error) throw error
  return data as ScopeCategory
}

export async function softDeleteScopeCategory(id: string) {
  const { data, error } = await supabase
    .from('scope_categories')
    .update({ deleted_at: new Date().toISOString(), updated_at: new Date().toISOString() })
    .eq('id', id)
    .select()
    .single()
  if (error) throw error
  return data as ScopeCategory
}

export async function bulkUpsertScopeCategories(rows: Partial<ScopeCategory>[]) {
  const now = new Date().toISOString()
  const records = rows.map((r) => ({
    ...r,
    updated_at: now,
    created_at: r.created_at ?? now,
  }))

  const { data, error } = await supabase
    .from('scope_categories')
    .upsert(records, { onConflict: 'id' })
    .select()
  if (error) throw error
  return data as ScopeCategory[]
}

// ─── Fuel Resources ────────────────────────────────────────────────────────────

function sortFuelResourcesByScopeCategoryResource (
  rows: FuelResourceWithCategory[]
): FuelResourceWithCategory[] {
  return [...rows].sort((a, b) => {
    const scopeA = a.scope_category?.scope ?? 0
    const scopeB = b.scope_category?.scope ?? 0
    if (scopeA !== scopeB) return scopeA - scopeB

    const catA = a.scope_category?.name_en ?? ''
    const catB = b.scope_category?.name_en ?? ''
    const catCmp = catA.localeCompare(catB, undefined, { sensitivity: 'base' })
    if (catCmp !== 0) return catCmp

    return (a.resource ?? '').localeCompare(b.resource ?? '', undefined, { sensitivity: 'base' })
  })
}

const FUEL_RESOURCES_FETCH_CHUNK = 1000

type FuelResourcesFilterParams = {
  include_deleted: boolean
  version?: string
  category_id?: string
  sub_category?: string
  scopeCategoryIds?: string[]
  search?: string
}

function buildFuelResourcesSelectQuery (filters: FuelResourcesFilterParams) {
  let query = supabase
    .from('fuel_resources')
    .select('*, scope_category:scope_categories(*)')

  if (!filters.include_deleted) {
    query = query.is('deleted_at', null)
  }
  if (filters.version) {
    query = query.eq('version', filters.version)
  }
  if (filters.category_id) {
    query = query.eq('scope_category_id', filters.category_id)
  }
  if (filters.sub_category) {
    query = query.eq('sub_category', filters.sub_category)
  }
  if (filters.scopeCategoryIds) {
    query = query.in('scope_category_id', filters.scopeCategoryIds)
  }
  if (filters.search) {
    const like = `%${filters.search}%`
    query = query.or(`resource.ilike.${like},sub_category.ilike.${like},unit.ilike.${like}`)
  }

  return query
}

async function fetchAllMatchingFuelResources (
  filters: FuelResourcesFilterParams
): Promise<FuelResourceWithCategory[]> {
  const all: FuelResourceWithCategory[] = []
  let offset = 0

  while (true) {
    const { data, error } = await buildFuelResourcesSelectQuery(filters).range(
      offset,
      offset + FUEL_RESOURCES_FETCH_CHUNK - 1
    )
    if (error) throw error

    const chunk = (data ?? []) as FuelResourceWithCategory[]
    all.push(...chunk)
    if (chunk.length < FUEL_RESOURCES_FETCH_CHUNK) break
    offset += FUEL_RESOURCES_FETCH_CHUNK
  }

  return all
}

export async function getFuelResources(query: FuelResourcesQuery): Promise<PaginatedResult<FuelResourceWithCategory>> {
  const {
    scope,
    category_id,
    sub_category,
    search,
    version,
    page = 1,
    per_page = 50,
    include_deleted = false,
  } = query

  // When filtering by scope, resolve scope_category_ids first (fuel_resources has no scope column)
  let scopeCategoryIds: string[] | undefined
  if (scope) {
    const categories = await getScopeCategories(scope, include_deleted)
    scopeCategoryIds = categories.map((c) => c.id)
    if (scopeCategoryIds.length === 0) {
      return { data: [], total: 0, page, per_page }
    }
  }

  const filters: FuelResourcesFilterParams = {
    include_deleted,
    version,
    category_id,
    sub_category,
    scopeCategoryIds,
    search,
  }

  const from = (page - 1) * per_page
  const to = from + per_page - 1

  const allRows = await fetchAllMatchingFuelResources(filters)
  const sorted = sortFuelResourcesByScopeCategoryResource(allRows)
  const paged = sorted.slice(from, to + 1)

  return {
    data: paged,
    total: sorted.length,
    page,
    per_page,
  }
}

export async function getFuelResource(id: string) {
  const { data, error } = await supabase
    .from('fuel_resources')
    .select('*, scope_category:scope_categories(*)')
    .eq('id', id)
    .single()
  if (error) throw error
  return data as FuelResourceWithCategory
}

export async function createFuelResource(input: CreateFuelResourceInput) {
  const { data, error } = await supabase
    .from('fuel_resources')
    .insert({ ...input, created_at: new Date().toISOString(), updated_at: new Date().toISOString() })
    .select('*, scope_category:scope_categories(*)')
    .single()
  if (error) throw error
  return data as FuelResourceWithCategory
}

export async function updateFuelResource(id: string, input: UpdateFuelResourceInput) {
  const { data, error } = await supabase
    .from('fuel_resources')
    .update({ ...input, updated_at: new Date().toISOString() })
    .eq('id', id)
    .select('*, scope_category:scope_categories(*)')
    .single()
  if (error) throw error
  return data as FuelResourceWithCategory
}

export type FuelResourceEfFields = {
  ef_value?: number | null
  value1_label?: string | null
  value1_unit?: string | null
  value2_label?: string | null
  value2_unit?: string | null
}

export async function updateFuelResourceEfFields (id: string, input: FuelResourceEfFields) {
  return updateFuelResource(id, input)
}

export async function softDeleteFuelResource(id: string) {
  const { data, error } = await supabase
    .from('fuel_resources')
    .update({ deleted_at: new Date().toISOString(), updated_at: new Date().toISOString() })
    .eq('id', id)
    .select()
    .single()
  if (error) throw error
  return data as FuelResource
}

/** Get all fuel resources for a scope category (and optionally sub_category). No pagination. */
export async function getFuelResourcesByCategory(
  scopeCategoryId: string,
  subCategory?: string | null
): Promise<FuelResourceWithCategory[]> {
  let query = supabase
    .from('fuel_resources')
    .select('*, scope_category:scope_categories(*)')
    .eq('scope_category_id', scopeCategoryId)
    .is('deleted_at', null)
    .order('resource', { ascending: true })
  if (subCategory) {
    query = query.eq('sub_category', subCategory)
  }
  const { data, error } = await query
  if (error) throw error
  return (data ?? []) as FuelResourceWithCategory[]
}

/** Get distinct sub_category values for a scope_category_id (for activity group mapping). */
export async function getDistinctSubCategories(scopeCategoryId: string): Promise<string[]> {
  const { data, error } = await supabase
    .from('fuel_resources')
    .select('sub_category')
    .eq('scope_category_id', scopeCategoryId)
    .not('sub_category', 'is', null)
    .is('deleted_at', null)
  if (error) throw error
  const values = [...new Set((data ?? []).map((r) => r.sub_category).filter(Boolean) as string[])]
  return values.sort()
}

/** Distinct non-null version labels that still have active fuels. */
export async function listDistinctFuelVersions (): Promise<string[]> {
  const { data, error } = await supabase
    .from('fuel_resources')
    .select('version')
    .is('deleted_at', null)
    .not('version', 'is', null)
  if (error) throw error
  return [...new Set((data ?? []).map((r) => r.version).filter(Boolean) as string[])]
}

/** Soft-delete all fuel resources for a version (or all versions if omitted). */
export async function softDeleteFuelResourcesByVersion(
  version?: string
): Promise<{ deleted: number }> {
  const now = new Date().toISOString()
  let query = supabase
    .from('fuel_resources')
    .update({ deleted_at: now, updated_at: now })
    .is('deleted_at', null)
    .neq('id', '00000000-0000-0000-0000-000000000000')
  if (version) {
    query = query.eq('version', version)
  }
  const { data, error } = await query.select('id')
  if (error) throw error
  return { deleted: data?.length ?? 0 }
}

/** @deprecated Prefer softDeleteFuelResourcesByVersion. Hard delete all fuel resources. */
export async function hardDeleteAllFuelResources(): Promise<{ deleted: number }> {
  return softDeleteFuelResourcesByVersion()
}

export async function listFuelResourcesForExport(version: string): Promise<FuelResource[]> {
  // Paginate — PostgREST default max rows is 1000; July TGO catalogs exceed that.
  const rows = await fetchAllMatchingFuelResources({
    include_deleted: false,
    version,
  })
  return rows
    .slice()
    .sort((a, b) => {
      const ai = a.sort_index ?? Number.POSITIVE_INFINITY
      const bi = b.sort_index ?? Number.POSITIVE_INFINITY
      if (ai !== bi) return ai - bi
      return (a.resource ?? '').localeCompare(b.resource ?? '', undefined, { sensitivity: 'base' })
    })
    .map(({ scope_category: _scopeCategory, ...fuel }) => fuel as FuelResource)
}

export async function bulkUpsertFuelResources(rows: Partial<FuelResource>[]) {
  const now = new Date().toISOString()
  const records = rows.map((r) => ({
    ...r,
    deleted_at: null,
    updated_at: now,
    created_at: r.created_at ?? now,
  }))

  const { data, error } = await supabase
    .from('fuel_resources')
    .upsert(records, { onConflict: 'id' })
    .select('*, scope_category:scope_categories(*)')
  if (error) throw error
  return data as FuelResourceWithCategory[]
}
