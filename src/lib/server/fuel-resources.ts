import { query, queryOne } from '@/lib/db'
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
import { handleSupabaseError, NotFoundError } from '@/lib/utils/errors'

function mapScopeCategory (row: Record<string, unknown>): ScopeCategory {
  return {
    id: row.id as string,
    scope: row.scope as ScopeCategory['scope'],
    name_th: row.name_th as string,
    name_en: row.name_en as string,
    display_order: row.display_order as number,
    created_at: row.created_at as string,
    updated_at: row.updated_at as string | null,
    deleted_at: row.deleted_at as string | null,
  }
}

function mapFuelResourceRow (row: Record<string, unknown>): FuelResource {
  return row as unknown as FuelResource
}

function mapFuelResourceWithCategory (row: Record<string, unknown>): FuelResourceWithCategory {
  const {
    sc_id, sc_scope, sc_name_th, sc_name_en, sc_display_order,
    sc_created_at, sc_updated_at, sc_deleted_at,
    ...fr
  } = row

  return {
    ...mapFuelResourceRow(fr),
    scope_category: mapScopeCategory({
      id: sc_id,
      scope: sc_scope,
      name_th: sc_name_th,
      name_en: sc_name_en,
      display_order: sc_display_order,
      created_at: sc_created_at,
      updated_at: sc_updated_at,
      deleted_at: sc_deleted_at,
    }),
  }
}

const FUEL_RESOURCE_JOIN_SELECT = `
  fr.*,
  sc.id AS sc_id, sc.scope AS sc_scope, sc.name_th AS sc_name_th, sc.name_en AS sc_name_en,
  sc.display_order AS sc_display_order, sc.created_at AS sc_created_at,
  sc.updated_at AS sc_updated_at, sc.deleted_at AS sc_deleted_at
`

const FUEL_RESOURCE_FROM = `
  FROM fuel_resources fr
  JOIN scope_categories sc ON sc.id = fr.scope_category_id
`

// ─── Scope Categories ──────────────────────────────────────────────────────────

export async function getScopeCategories (scope?: number, includeDeleted = false): Promise<ScopeCategory[]> {
  const params: unknown[] = []
  const conditions: string[] = []

  if (!includeDeleted) {
    conditions.push('deleted_at IS NULL')
  }
  if (scope) {
    params.push(scope)
    conditions.push(`scope = $${params.length}`)
  }

  const where = conditions.length > 0 ? `WHERE ${conditions.join(' AND ')}` : ''

  const { rows } = await query<Record<string, unknown>>(
    `SELECT * FROM scope_categories ${where}
     ORDER BY display_order ASC, scope ASC`,
    params
  )

  return rows.map(mapScopeCategory)
}

export async function getScopeCategory (id: string): Promise<ScopeCategory> {
  const row = await queryOne<Record<string, unknown>>(
    `SELECT * FROM scope_categories WHERE id = $1`,
    [id]
  )
  if (!row) throw new NotFoundError('Scope category not found')
  return mapScopeCategory(row)
}

export async function createScopeCategory (input: CreateScopeCategoryInput): Promise<ScopeCategory> {
  const now = new Date().toISOString()
  try {
    const row = await queryOne<Record<string, unknown>>(
      `INSERT INTO scope_categories (scope, name_th, name_en, display_order, created_at, updated_at)
       VALUES ($1, $2, $3, $4, $5, $5)
       RETURNING *`,
      [input.scope, input.name_th, input.name_en, input.display_order, now]
    )
    if (!row) throw new NotFoundError('Failed to create scope category')
    return mapScopeCategory(row)
  } catch (error) {
    handleSupabaseError(error)
  }
}

export async function updateScopeCategory (id: string, input: UpdateScopeCategoryInput): Promise<ScopeCategory> {
  const setClauses: string[] = ['updated_at = $1']
  const params: unknown[] = [new Date().toISOString()]
  let paramIndex = 2

  for (const [key, value] of Object.entries(input)) {
    if (value !== undefined) {
      setClauses.push(`${key} = $${paramIndex++}`)
      params.push(value)
    }
  }

  params.push(id)

  try {
    const row = await queryOne<Record<string, unknown>>(
      `UPDATE scope_categories SET ${setClauses.join(', ')} WHERE id = $${paramIndex} RETURNING *`,
      params
    )
    if (!row) throw new NotFoundError('Scope category not found')
    return mapScopeCategory(row)
  } catch (error) {
    handleSupabaseError(error)
  }
}

export async function softDeleteScopeCategory (id: string): Promise<ScopeCategory> {
  const now = new Date().toISOString()
  try {
    const row = await queryOne<Record<string, unknown>>(
      `UPDATE scope_categories SET deleted_at = $1, updated_at = $1 WHERE id = $2 RETURNING *`,
      [now, id]
    )
    if (!row) throw new NotFoundError('Scope category not found')
    return mapScopeCategory(row)
  } catch (error) {
    handleSupabaseError(error)
  }
}

export async function bulkUpsertScopeCategories (rows: Partial<ScopeCategory>[]): Promise<ScopeCategory[]> {
  const now = new Date().toISOString()
  const results: ScopeCategory[] = []

  for (const r of rows) {
    const created_at = r.created_at ?? now
    try {
      const row = await queryOne<Record<string, unknown>>(
        `INSERT INTO scope_categories (id, scope, name_th, name_en, display_order, created_at, updated_at, deleted_at)
         VALUES (COALESCE($1, uuid_generate_v4()), $2, $3, $4, $5, $6, $7, $8)
         ON CONFLICT (id) DO UPDATE SET
           scope = EXCLUDED.scope,
           name_th = EXCLUDED.name_th,
           name_en = EXCLUDED.name_en,
           display_order = EXCLUDED.display_order,
           updated_at = EXCLUDED.updated_at,
           deleted_at = EXCLUDED.deleted_at
         RETURNING *`,
        [
          r.id ?? null,
          r.scope,
          r.name_th,
          r.name_en,
          r.display_order,
          created_at,
          now,
          r.deleted_at ?? null,
        ]
      )
      if (row) results.push(mapScopeCategory(row))
    } catch (error) {
      handleSupabaseError(error)
    }
  }

  return results
}

// ─── Fuel Resources ────────────────────────────────────────────────────────────

function buildFuelResourceFilters (
  queryParams: FuelResourcesQuery,
  scopeCategoryIds?: string[]
): { conditions: string[]; params: unknown[] } {
  const { category_id, sub_category, search, include_deleted = false } = queryParams
  const conditions: string[] = []
  const params: unknown[] = []

  if (!include_deleted) {
    conditions.push('fr.deleted_at IS NULL')
  }
  if (category_id) {
    params.push(category_id)
    conditions.push(`fr.scope_category_id = $${params.length}`)
  }
  if (sub_category) {
    params.push(sub_category)
    conditions.push(`fr.sub_category = $${params.length}`)
  }
  if (scopeCategoryIds && scopeCategoryIds.length > 0) {
    params.push(scopeCategoryIds)
    conditions.push(`fr.scope_category_id = ANY($${params.length}::uuid[])`)
  }
  if (search) {
    params.push(`%${search}%`)
    const idx = params.length
    conditions.push(
      `(fr.resource ILIKE $${idx} OR fr.sub_category ILIKE $${idx} OR fr.unit ILIKE $${idx})`
    )
  }

  return { conditions, params }
}

export async function getFuelResources (
  queryParams: FuelResourcesQuery
): Promise<PaginatedResult<FuelResourceWithCategory>> {
  const { scope, page = 1, per_page = 50, include_deleted = false } = queryParams

  let scopeCategoryIds: string[] | undefined
  if (scope) {
    const categories = await getScopeCategories(scope, include_deleted)
    scopeCategoryIds = categories.map((c) => c.id)
    if (scopeCategoryIds.length === 0) {
      return { data: [], total: 0, page, per_page }
    }
  }

  const { conditions, params } = buildFuelResourceFilters(queryParams, scopeCategoryIds)
  const where = conditions.length > 0 ? `WHERE ${conditions.join(' AND ')}` : ''
  const offset = (page - 1) * per_page

  const countParams = [...params]
  const dataParams = [...params, per_page, offset]

  const [{ rows: countRows }, { rows }] = await Promise.all([
    query<{ count: string }>(
      `SELECT COUNT(*)::text AS count ${FUEL_RESOURCE_FROM} ${where}`,
      countParams
    ),
    query<Record<string, unknown>>(
      `SELECT ${FUEL_RESOURCE_JOIN_SELECT} ${FUEL_RESOURCE_FROM} ${where}
       ORDER BY fr.created_at DESC
       LIMIT $${params.length + 1} OFFSET $${params.length + 2}`,
      dataParams
    ),
  ])

  return {
    data: rows.map(mapFuelResourceWithCategory),
    total: parseInt(countRows[0]?.count ?? '0', 10),
    page,
    per_page,
  }
}

export async function getFuelResource (id: string): Promise<FuelResourceWithCategory> {
  const row = await queryOne<Record<string, unknown>>(
    `SELECT ${FUEL_RESOURCE_JOIN_SELECT} ${FUEL_RESOURCE_FROM} WHERE fr.id = $1`,
    [id]
  )
  if (!row) throw new NotFoundError('Fuel resource not found')
  return mapFuelResourceWithCategory(row)
}

export async function createFuelResource (input: CreateFuelResourceInput): Promise<FuelResourceWithCategory> {
  const now = new Date().toISOString()
  const columns = Object.keys(input)
  const values = Object.values(input)
  const placeholders = values.map((_, i) => `$${i + 1}`).join(', ')

  try {
    const row = await queryOne<Record<string, unknown>>(
      `INSERT INTO fuel_resources (${columns.join(', ')}, created_at, updated_at)
       VALUES (${placeholders}, $${values.length + 1}, $${values.length + 1})
       RETURNING id`,
      [...values, now]
    )
    if (!row) throw new NotFoundError('Failed to create fuel resource')
    return getFuelResource(row.id as string)
  } catch (error) {
    handleSupabaseError(error)
  }
}

export async function updateFuelResource (
  id: string,
  input: UpdateFuelResourceInput
): Promise<FuelResourceWithCategory> {
  const setClauses: string[] = ['updated_at = $1']
  const params: unknown[] = [new Date().toISOString()]
  let paramIndex = 2

  for (const [key, value] of Object.entries(input)) {
    if (value !== undefined) {
      setClauses.push(`${key} = $${paramIndex++}`)
      params.push(value)
    }
  }

  params.push(id)

  try {
    const row = await queryOne<{ id: string }>(
      `UPDATE fuel_resources SET ${setClauses.join(', ')} WHERE id = $${paramIndex} RETURNING id`,
      params
    )
    if (!row) throw new NotFoundError('Fuel resource not found')
    return getFuelResource(row.id)
  } catch (error) {
    handleSupabaseError(error)
  }
}

export async function softDeleteFuelResource (id: string): Promise<FuelResource> {
  const now = new Date().toISOString()
  try {
    const row = await queryOne<Record<string, unknown>>(
      `UPDATE fuel_resources SET deleted_at = $1, updated_at = $1 WHERE id = $2 RETURNING *`,
      [now, id]
    )
    if (!row) throw new NotFoundError('Fuel resource not found')
    return mapFuelResourceRow(row)
  } catch (error) {
    handleSupabaseError(error)
  }
}

export async function getFuelResourcesByCategory (
  scopeCategoryId: string,
  subCategory?: string | null
): Promise<FuelResourceWithCategory[]> {
  const params: unknown[] = [scopeCategoryId]
  let subCategoryClause = ''
  if (subCategory) {
    params.push(subCategory)
    subCategoryClause = ` AND fr.sub_category = $${params.length}`
  }

  const { rows } = await query<Record<string, unknown>>(
    `SELECT ${FUEL_RESOURCE_JOIN_SELECT} ${FUEL_RESOURCE_FROM}
     WHERE fr.scope_category_id = $1 AND fr.deleted_at IS NULL${subCategoryClause}
     ORDER BY fr.resource ASC`,
    params
  )

  return rows.map(mapFuelResourceWithCategory)
}

export async function getDistinctSubCategories (scopeCategoryId: string): Promise<string[]> {
  const { rows } = await query<{ sub_category: string }>(
    `SELECT DISTINCT sub_category
     FROM fuel_resources
     WHERE scope_category_id = $1
       AND sub_category IS NOT NULL
       AND deleted_at IS NULL
     ORDER BY sub_category ASC`,
    [scopeCategoryId]
  )

  return rows.map((r) => r.sub_category)
}

export async function hardDeleteAllFuelResources (): Promise<{ deleted: number }> {
  const { rowCount } = await query(`DELETE FROM fuel_resources`)
  return { deleted: rowCount ?? 0 }
}

export async function bulkUpsertFuelResources (
  rows: Partial<FuelResource>[]
): Promise<FuelResourceWithCategory[]> {
  const now = new Date().toISOString()
  const ids: string[] = []

  for (const r of rows) {
    const created_at = r.created_at ?? now
    const columns = [
      'id', 'scope_category_id', 'resource', 'sub_category', 'unit', 'ef_value',
      'value1_label', 'value1_unit', 'value2_label', 'value2_unit', 'ref_info',
      'ref_co2', 'ref_fossil_ch4', 'ref_ch4', 'ref_n2o', 'ref_sf6', 'ref_nf3',
      'ref_hfcs', 'ref_pfcs', 'gwp100_hfcs', 'gwp100_pfcs', 'extraghg_ef',
      'extraghg_gwp100', 'ref_source', 'created_at', 'updated_at', 'deleted_at',
    ]

    const values = columns.map((col) => (r as Record<string, unknown>)[col] ?? null)
    values[0] = r.id ?? null
    values[columns.indexOf('created_at')] = created_at
    values[columns.indexOf('updated_at')] = now

    const placeholders = columns.map((_, i) => `$${i + 1}`).join(', ')
    const updates = columns
      .filter((c) => c !== 'id' && c !== 'created_at')
      .map((c) => `${c} = EXCLUDED.${c}`)
      .join(', ')

    try {
      const row = await queryOne<{ id: string }>(
        `INSERT INTO fuel_resources (${columns.join(', ')})
         VALUES (${placeholders})
         ON CONFLICT (id) DO UPDATE SET ${updates}
         RETURNING id`,
        values
      )
      if (row) ids.push(row.id)
    } catch (error) {
      handleSupabaseError(error)
    }
  }

  if (ids.length === 0) return []

  const placeholders = ids.map((_, i) => `$${i + 1}`).join(', ')
  const { rows: resultRows } = await query<Record<string, unknown>>(
    `SELECT ${FUEL_RESOURCE_JOIN_SELECT} ${FUEL_RESOURCE_FROM}
     WHERE fr.id IN (${placeholders})`,
    ids
  )

  return resultRows.map(mapFuelResourceWithCategory)
}
