import { supabase } from '@/lib/supabase'
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
} from '@/types/emission-templates'

export async function getEmissionTemplates(
  query: EmissionTemplatesQuery
): Promise<PaginatedResult<EmissionTemplateWithRelations>> {
  const { search, page = 1, per_page = 24, include_deleted = false, is_active } = query

  let countQuery = supabase
    .from('emission_templates')
    .select('id', { count: 'exact', head: true })

  let dataQuery = supabase
    .from('emission_templates')
    .select('*, activity_groups:template_activity_groups(id, deleted_at)')

  if (!include_deleted) {
    countQuery = countQuery.is('deleted_at', null)
    dataQuery = dataQuery.is('deleted_at', null)
  }

  if (typeof is_active === 'boolean') {
    countQuery = countQuery.eq('is_active', is_active)
    dataQuery = dataQuery.eq('is_active', is_active)
  }

  if (search) {
    const like = `%${search}%`
    countQuery = countQuery.or(`name_en.ilike.${like},name_th.ilike.${like},industry_code.ilike.${like}`)
    dataQuery = dataQuery.or(`name_en.ilike.${like},name_th.ilike.${like},industry_code.ilike.${like}`)
  }

  const from = (page - 1) * per_page
  const to = from + per_page - 1

  const [{ count }, { data, error }] = await Promise.all([
    countQuery,
    dataQuery
      .order('display_order', { ascending: true })
      .order('name_en', { ascending: true })
      .range(from, to),
  ])

  if (error) throw error

  const normalized = (data ?? []).map((row) => {
    const groups = (row.activity_groups ?? []).filter((g: { deleted_at: string | null }) => g.deleted_at == null)
    return {
      ...row,
      activity_group_count: groups.length,
      activity_groups: undefined,
    }
  }) as EmissionTemplateWithRelations[]

  return {
    data: normalized,
    total: count ?? 0,
    page,
    per_page,
  }
}

export async function getEmissionTemplate(id: string) {
  const { data, error } = await supabase
    .from('emission_templates')
    .select('*, activity_groups:template_activity_groups(*, scope_category:scope_categories(id, scope, name_th, name_en))')
    .eq('id', id)
    .single()
  if (error) throw error

  const groups = (data.activity_groups ?? []).filter((g: TemplateActivityGroup) => g.deleted_at == null)
  return {
    ...data,
    activity_groups: groups.sort((a: TemplateActivityGroup, b: TemplateActivityGroup) => a.sort_order - b.sort_order),
    activity_group_count: groups.length,
  } as EmissionTemplateWithRelations
}

export async function createEmissionTemplate(input: CreateEmissionTemplateInput) {
  const { data, error } = await supabase
    .from('emission_templates')
    .insert({
      ...input,
      created_at: new Date().toISOString(),
      updated_at: new Date().toISOString(),
    })
    .select()
    .single()
  if (error) throw error
  return data as EmissionTemplate
}

export async function updateEmissionTemplate(id: string, input: UpdateEmissionTemplateInput) {
  const { data, error } = await supabase
    .from('emission_templates')
    .update({ ...input, updated_at: new Date().toISOString() })
    .eq('id', id)
    .select()
    .single()
  if (error) throw error
  return data as EmissionTemplate
}

export async function softDeleteEmissionTemplate(id: string) {
  const { data, error } = await supabase
    .from('emission_templates')
    .update({ deleted_at: new Date().toISOString(), updated_at: new Date().toISOString() })
    .eq('id', id)
    .select()
    .single()
  if (error) throw error
  return data as EmissionTemplate
}

export async function getTemplateActivityGroups(
  query: TemplateActivityGroupsQuery
): Promise<TemplateActivityGroupWithRelations[]> {
  const { template_id, search, include_deleted = false } = query

  let q = supabase
    .from('template_activity_groups')
    .select(`
      *,
      scope_category:scope_categories(id, scope, name_th, name_en),
      template_activity_group_fuel_resources(
        id,
        fuel_resource_id,
        note,
        sort_order,
        fuel_resource:fuel_resources(id, resource, unit, ef_value, ref_info)
      )
    `)
    .order('sort_order', { ascending: true })
    .order('name_en', { ascending: true })

  if (!include_deleted) q = q.is('deleted_at', null)
  if (template_id) q = q.eq('template_id', template_id)
  if (search) {
    const like = `%${search}%`
    q = q.or(`name_en.ilike.${like},name_th.ilike.${like}`)
  }

  const { data, error } = await q
  if (error) throw error
  const rows = (data ?? []) as (Omit<TemplateActivityGroupWithRelations, 'fuel_resource_mappings'> & {
    template_activity_group_fuel_resources?: Array<{
      id: string
      fuel_resource_id: string
      note: string | null
      sort_order: number
      fuel_resource: { id: string; resource: string; unit: string | null; ef_value: number | null; ref_info: string | null } | null
    }>
  })[]
  return rows.map((r) => {
    const { template_activity_group_fuel_resources, ...rest } = r
    const fuel_resource_mappings = (template_activity_group_fuel_resources ?? []).map((m) => ({
      id: m.id,
      template_activity_group_id: (rest as { id: string }).id,
      fuel_resource_id: m.fuel_resource_id,
      note: m.note,
      sort_order: m.sort_order,
      fuel_resource: m.fuel_resource
        ? {
            id: m.fuel_resource.id,
            resource: m.fuel_resource.resource,
            unit: m.fuel_resource.unit,
            ef_value: m.fuel_resource.ef_value,
            ref_info: m.fuel_resource.ref_info,
          }
        : undefined,
    }))
    return { ...rest, fuel_resource_mappings } as TemplateActivityGroupWithRelations
  })
}

export async function getTemplateActivityGroup(id: string) {
  const { data, error } = await supabase
    .from('template_activity_groups')
    .select('*, scope_category:scope_categories(id, scope, name_th, name_en)')
    .eq('id', id)
    .single()
  if (error) throw error
  return data as TemplateActivityGroupWithRelations
}

export async function createTemplateActivityGroup(input: CreateTemplateActivityGroupInput) {
  const { data, error } = await supabase
    .from('template_activity_groups')
    .insert({
      ...input,
      created_at: new Date().toISOString(),
      updated_at: new Date().toISOString(),
    })
    .select('*, scope_category:scope_categories(id, scope, name_th, name_en)')
    .single()
  if (error) throw error
  return data as TemplateActivityGroupWithRelations
}

export async function updateTemplateActivityGroup(id: string, input: UpdateTemplateActivityGroupInput) {
  const { data, error } = await supabase
    .from('template_activity_groups')
    .update({
      ...input,
      updated_at: new Date().toISOString(),
    })
    .eq('id', id)
    .select('*, scope_category:scope_categories(id, scope, name_th, name_en)')
    .single()
  if (error) throw error
  return data as TemplateActivityGroupWithRelations
}

export async function softDeleteTemplateActivityGroup(id: string) {
  const { data, error } = await supabase
    .from('template_activity_groups')
    .update({
      deleted_at: new Date().toISOString(),
      updated_at: new Date().toISOString(),
    })
    .eq('id', id)
    .select()
    .single()
  if (error) throw error
  return data as TemplateActivityGroup
}
