import { query, queryOne } from '@/lib/db'
import { getPublicUrl } from '@/lib/storage-server'
import type {
  EmissionTemplate,
  EmissionTemplateWithRelations,
  CreateEmissionTemplateInput,
  UpdateEmissionTemplateInput,
  EmissionTemplatesQuery,
  PaginatedResult,
  TemplateActivityGroup,
  TemplateActivityGroupWithRelations,
  CreateTemplateActivityGroupInput,
  UpdateTemplateActivityGroupInput,
  TemplateActivityGroupsQuery,
  ExternalTemplateActivityGroup,
  ExternalTemplateWithHierarchy,
  ScopeCategoryLite,
  TemplateActivityGroupFuelResourceMapping,
} from '@/types/emission-templates'
import { handleSupabaseError, NotFoundError } from '@/lib/utils/errors'
import { getMappingsByActivityGroupId } from './activity-group-fuel-resources'

function mapScopeCategoryLite (row: Record<string, unknown> | null): ScopeCategoryLite | null {
  if (!row || !row.id) return null
  return {
    id: row.id as string,
    scope: row.scope as ScopeCategoryLite['scope'],
    name_th: row.name_th as string,
    name_en: row.name_en as string,
  }
}

function mapActivityGroupRow (
  row: Record<string, unknown>,
  mappings?: TemplateActivityGroupFuelResourceMapping[]
): TemplateActivityGroupWithRelations {
  const scope_category = row.sc_id
    ? mapScopeCategoryLite({
        id: row.sc_id,
        scope: row.sc_scope,
        name_th: row.sc_name_th,
        name_en: row.sc_name_en,
      })
    : null

  const { sc_id, sc_scope, sc_name_th, sc_name_en, ...groupFields } = row

  return {
    ...(groupFields as unknown as TemplateActivityGroup),
    scope_category,
    fuel_resource_mappings: mappings,
  }
}

const ACTIVITY_GROUP_SELECT = `
  tag.*,
  sc.id AS sc_id, sc.scope AS sc_scope, sc.name_th AS sc_name_th, sc.name_en AS sc_name_en
`

export async function getEmissionTemplates (
  queryParams: EmissionTemplatesQuery
): Promise<PaginatedResult<EmissionTemplateWithRelations>> {
  const { search, page = 1, per_page = 24, include_deleted = false, is_active } = queryParams
  const conditions: string[] = []
  const params: unknown[] = []

  if (!include_deleted) {
    conditions.push('deleted_at IS NULL')
  }
  if (typeof is_active === 'boolean') {
    params.push(is_active)
    conditions.push(`is_active = $${params.length}`)
  }
  if (search) {
    params.push(`%${search}%`)
    const idx = params.length
    conditions.push(`(name_en ILIKE $${idx} OR name_th ILIKE $${idx} OR industry_code ILIKE $${idx})`)
  }

  const where = conditions.length > 0 ? `WHERE ${conditions.join(' AND ')}` : ''
  const offset = (page - 1) * per_page
  const countParams = [...params]
  const dataParams = [...params, per_page, offset]

  const [{ rows: countRows }, { rows }] = await Promise.all([
    query<{ count: string }>(
      `SELECT COUNT(*)::text AS count FROM emission_templates ${where}`,
      countParams
    ),
    query<Record<string, unknown>>(
      `SELECT et.*,
         (SELECT COUNT(*)::int FROM template_activity_groups tag
          WHERE tag.template_id = et.id AND tag.deleted_at IS NULL) AS activity_group_count
       FROM emission_templates et
       ${where}
       ORDER BY et.display_order ASC, et.name_en ASC
       LIMIT $${params.length + 1} OFFSET $${params.length + 2}`,
      dataParams
    ),
  ])

  return {
    data: rows.map((row) => ({
      ...(row as unknown as EmissionTemplateWithRelations),
      activity_group_count: Number(row.activity_group_count ?? 0),
    })),
    total: parseInt(countRows[0]?.count ?? '0', 10),
    page,
    per_page,
  }
}

export async function getEmissionTemplate (id: string): Promise<EmissionTemplateWithRelations> {
  const template = await queryOne<Record<string, unknown>>(
    `SELECT * FROM emission_templates WHERE id = $1`,
    [id]
  )
  if (!template) throw new NotFoundError('Emission template not found')

  const groups = await getTemplateActivityGroups({ template_id: id })
  return {
    ...(template as unknown as EmissionTemplate),
    activity_groups: groups,
    activity_group_count: groups.length,
  }
}

export async function createEmissionTemplate (input: CreateEmissionTemplateInput): Promise<EmissionTemplate> {
  const now = new Date().toISOString()
  const columns = Object.keys(input)
  const values = Object.values(input)
  const placeholders = values.map((_, i) => `$${i + 1}`).join(', ')

  try {
    const row = await queryOne<Record<string, unknown>>(
      `INSERT INTO emission_templates (${columns.join(', ')}, created_at, updated_at)
       VALUES (${placeholders}, $${values.length + 1}, $${values.length + 1})
       RETURNING *`,
      [...values, now]
    )
    if (!row) throw new NotFoundError('Failed to create emission template')
    return row as unknown as EmissionTemplate
  } catch (error) {
    handleSupabaseError(error)
  }
}

export async function updateEmissionTemplate (
  id: string,
  input: UpdateEmissionTemplateInput
): Promise<EmissionTemplate> {
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
      `UPDATE emission_templates SET ${setClauses.join(', ')} WHERE id = $${paramIndex} RETURNING *`,
      params
    )
    if (!row) throw new NotFoundError('Emission template not found')
    return row as unknown as EmissionTemplate
  } catch (error) {
    handleSupabaseError(error)
  }
}

export async function softDeleteEmissionTemplate (id: string): Promise<EmissionTemplate> {
  const now = new Date().toISOString()
  try {
    const row = await queryOne<Record<string, unknown>>(
      `UPDATE emission_templates SET deleted_at = $1, updated_at = $1 WHERE id = $2 RETURNING *`,
      [now, id]
    )
    if (!row) throw new NotFoundError('Emission template not found')
    return row as unknown as EmissionTemplate
  } catch (error) {
    handleSupabaseError(error)
  }
}

export async function getTemplateActivityGroups (
  queryParams: TemplateActivityGroupsQuery
): Promise<TemplateActivityGroupWithRelations[]> {
  const { template_id, search, include_deleted = false } = queryParams
  const conditions: string[] = []
  const params: unknown[] = []

  if (!include_deleted) {
    conditions.push('tag.deleted_at IS NULL')
  }
  if (template_id) {
    params.push(template_id)
    conditions.push(`tag.template_id = $${params.length}`)
  }
  if (search) {
    params.push(`%${search}%`)
    const idx = params.length
    conditions.push(`(tag.name_en ILIKE $${idx} OR tag.name_th ILIKE $${idx})`)
  }

  const where = conditions.length > 0 ? `WHERE ${conditions.join(' AND ')}` : ''

  const { rows } = await query<Record<string, unknown>>(
    `SELECT ${ACTIVITY_GROUP_SELECT}
     FROM template_activity_groups tag
     LEFT JOIN scope_categories sc ON sc.id = tag.scope_category_id
     ${where}
     ORDER BY tag.sort_order ASC, tag.name_en ASC`,
    params
  )

  const groupIds = rows.map((r) => r.id as string)
  const mappingsByGroup = new Map<string, TemplateActivityGroupFuelResourceMapping[]>()

  if (groupIds.length > 0) {
    await Promise.all(
      groupIds.map(async (groupId) => {
        const mappings = await getMappingsByActivityGroupId(groupId)
        mappingsByGroup.set(groupId, mappings)
      })
    )
  }

  return rows.map((row) =>
    mapActivityGroupRow(row, mappingsByGroup.get(row.id as string))
  )
}

export interface GetEmissionTemplatesWithFullHierarchyQuery {
  industry_code?: string
  is_active?: boolean
}

export async function getEmissionTemplatesWithFullHierarchy (
  queryParams: GetEmissionTemplatesWithFullHierarchyQuery = {}
): Promise<ExternalTemplateWithHierarchy[]> {
  const { industry_code, is_active = true } = queryParams
  const conditions: string[] = ['deleted_at IS NULL']
  const params: unknown[] = []

  if (typeof is_active === 'boolean') {
    params.push(is_active)
    conditions.push(`is_active = $${params.length}`)
  }
  if (industry_code) {
    params.push(industry_code)
    conditions.push(`industry_code = $${params.length}`)
  }

  const { rows: templates } = await query<Record<string, unknown>>(
    `SELECT id, industry_code, name_th, name_en, examples, is_active, feature_image_url, display_order
     FROM emission_templates
     WHERE ${conditions.join(' AND ')}
     ORDER BY display_order ASC, name_en ASC`,
    params
  )

  if (templates.length === 0) return []

  const groupsByTemplate = await Promise.all(
    templates.map((t) => getTemplateActivityGroups({ template_id: t.id as string }))
  )

  return templates.map((t, i) => {
    const groups = groupsByTemplate[i] ?? []
    const activity_groups: ExternalTemplateActivityGroup[] = groups.map((g) => ({
      id: g.id,
      name_th: g.name_th,
      name_en: g.name_en,
      scope: g.scope,
      scope_category_id: g.scope_category_id,
      scope_sub_category: g.scope_sub_category,
      scope_category: g.scope_category ?? undefined,
      is_common: g.is_common,
      sort_order: g.sort_order,
      status: g.status,
      fuel_resources: (g.fuel_resource_mappings ?? [])
        .filter((m) => m.fuel_resource)
        .map((m) => ({
          id: m.fuel_resource!.id,
          resource: m.fuel_resource!.resource,
          unit: m.fuel_resource!.unit,
          ef_value: m.fuel_resource!.ef_value,
          ref_info: m.fuel_resource!.ref_info,
          note: m.note,
        })),
    }))
    return { ...(t as unknown as ExternalTemplateWithHierarchy), activity_groups }
  })
}

export async function getTemplateActivityGroup (id: string): Promise<TemplateActivityGroupWithRelations> {
  const row = await queryOne<Record<string, unknown>>(
    `SELECT ${ACTIVITY_GROUP_SELECT}
     FROM template_activity_groups tag
     LEFT JOIN scope_categories sc ON sc.id = tag.scope_category_id
     WHERE tag.id = $1`,
    [id]
  )
  if (!row) throw new NotFoundError('Template activity group not found')

  const mappings = await getMappingsByActivityGroupId(id)
  return mapActivityGroupRow(row, mappings)
}

export async function createTemplateActivityGroup (
  input: CreateTemplateActivityGroupInput
): Promise<TemplateActivityGroupWithRelations> {
  const now = new Date().toISOString()
  const columns = Object.keys(input)
  const values = Object.values(input)
  const placeholders = values.map((_, i) => `$${i + 1}`).join(', ')

  try {
    const row = await queryOne<Record<string, unknown>>(
      `INSERT INTO template_activity_groups (${columns.join(', ')}, created_at, updated_at)
       VALUES (${placeholders}, $${values.length + 1}, $${values.length + 1})
       RETURNING id`,
      [...values, now]
    )
    if (!row) throw new NotFoundError('Failed to create template activity group')
    return getTemplateActivityGroup(row.id as string)
  } catch (error) {
    handleSupabaseError(error)
  }
}

export async function updateTemplateActivityGroup (
  id: string,
  input: UpdateTemplateActivityGroupInput
): Promise<TemplateActivityGroupWithRelations> {
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
      `UPDATE template_activity_groups SET ${setClauses.join(', ')} WHERE id = $${paramIndex} RETURNING id`,
      params
    )
    if (!row) throw new NotFoundError('Template activity group not found')
    return getTemplateActivityGroup(row.id)
  } catch (error) {
    handleSupabaseError(error)
  }
}

export async function softDeleteTemplateActivityGroup (id: string): Promise<TemplateActivityGroup> {
  const now = new Date().toISOString()
  try {
    const row = await queryOne<Record<string, unknown>>(
      `UPDATE template_activity_groups SET deleted_at = $1, updated_at = $1 WHERE id = $2 RETURNING *`,
      [now, id]
    )
    if (!row) throw new NotFoundError('Template activity group not found')
    return row as unknown as TemplateActivityGroup
  } catch (error) {
    handleSupabaseError(error)
  }
}
