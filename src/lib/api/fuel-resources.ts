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

  let countQuery = supabase
    .from('fuel_resources')
    .select('id', { count: 'exact', head: true })

  let dataQuery = supabase
    .from('fuel_resources')
    .select('*, scope_category:scope_categories(*)')

  if (!include_deleted) {
    countQuery = countQuery.is('deleted_at', null)
    dataQuery = dataQuery.is('deleted_at', null)
  }

  if (version) {
    countQuery = countQuery.eq('version', version)
    dataQuery = dataQuery.eq('version', version)
  }

  if (category_id) {
    countQuery = countQuery.eq('scope_category_id', category_id)
    dataQuery = dataQuery.eq('scope_category_id', category_id)
  }

  if (sub_category) {
    countQuery = countQuery.eq('sub_category', sub_category)
    dataQuery = dataQuery.eq('sub_category', sub_category)
  }

  if (scopeCategoryIds) {
    countQuery = countQuery.in('scope_category_id', scopeCategoryIds)
    dataQuery = dataQuery.in('scope_category_id', scopeCategoryIds)
  }

  if (search) {
    const like = `%${search}%`
    countQuery = countQuery.or(`resource.ilike.${like},sub_category.ilike.${like},unit.ilike.${like}`)
    dataQuery = dataQuery.or(`resource.ilike.${like},sub_category.ilike.${like},unit.ilike.${like}`)
  }

  const from = (page - 1) * per_page
  const to = from + per_page - 1

  const [{ count }, { data, error }] = await Promise.all([
    countQuery,
    dataQuery
      .order('created_at', { ascending: false })
      .range(from, to),
  ])

  if (error) throw error

  return {
    data: data as FuelResourceWithCategory[],
    total: count ?? 0,
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
  const { data, error } = await supabase
    .from('fuel_resources')
    .select('*')
    .eq('version', version)
    .is('deleted_at', null)
    .order('sort_index', { ascending: true, nullsFirst: false })
    .order('resource', { ascending: true })
  if (error) throw error
  return (data ?? []) as FuelResource[]
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
