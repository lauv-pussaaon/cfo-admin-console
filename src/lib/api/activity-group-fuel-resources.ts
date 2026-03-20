import { supabase } from '@/lib/supabase'
import type {
  TemplateActivityGroupFuelResourceMapping,
  FuelResourceLite,
} from '@/types/emission-templates'

type MappingRowWithFuel = Omit<TemplateActivityGroupFuelResourceMapping, 'fuel_resource'> & {
  fuel_resource: { id: string; resource: string; unit: string | null; ef_value: number | null; ref_info: string | null } | null
}

export async function getMappingsByActivityGroupId(
  activityGroupId: string
): Promise<TemplateActivityGroupFuelResourceMapping[]> {
  const { data, error } = await supabase
    .from('template_activity_group_fuel_resources')
    .select(`
      id,
      template_activity_group_id,
      fuel_resource_id,
      note,
      sort_order,
      fuel_resource:fuel_resources(id, resource, unit, ef_value, ref_info)
    `)
    .eq('template_activity_group_id', activityGroupId)
    .order('sort_order', { ascending: true })
  if (error) throw error
  const rows = (data ?? []) as unknown as MappingRowWithFuel[]
  return rows.map((r) => ({
    id: r.id,
    template_activity_group_id: r.template_activity_group_id,
    fuel_resource_id: r.fuel_resource_id,
    note: r.note,
    sort_order: r.sort_order,
    fuel_resource: r.fuel_resource
      ? ({
          id: r.fuel_resource.id,
          resource: r.fuel_resource.resource,
          unit: r.fuel_resource.unit,
          ef_value: r.fuel_resource.ef_value,
          ref_info: r.fuel_resource.ref_info,
        } as FuelResourceLite)
      : undefined,
  }))
}

export async function setMappings(
  activityGroupId: string,
  mappings: { fuel_resource_id: string; note?: string | null }[]
): Promise<TemplateActivityGroupFuelResourceMapping[]> {
  const now = new Date().toISOString()
  await supabase
    .from('template_activity_group_fuel_resources')
    .delete()
    .eq('template_activity_group_id', activityGroupId)
  if (mappings.length === 0) return []
  const rows = mappings.map((m, i) => ({
    template_activity_group_id: activityGroupId,
    fuel_resource_id: m.fuel_resource_id,
    note: m.note || null,
    sort_order: i,
    created_at: now,
    updated_at: now,
  }))
  const { data, error } = await supabase
    .from('template_activity_group_fuel_resources')
    .insert(rows)
    .select(`
      id,
      template_activity_group_id,
      fuel_resource_id,
      note,
      sort_order,
      fuel_resource:fuel_resources(id, resource, unit, ef_value, ref_info)
    `)
  if (error) throw error
  const inserted = (data ?? []) as unknown as MappingRowWithFuel[]
  return inserted.map((r) => ({
    id: r.id,
    template_activity_group_id: r.template_activity_group_id,
    fuel_resource_id: r.fuel_resource_id,
    note: r.note,
    sort_order: r.sort_order,
    fuel_resource: r.fuel_resource
      ? ({
          id: r.fuel_resource.id,
          resource: r.fuel_resource.resource,
          unit: r.fuel_resource.unit,
          ef_value: r.fuel_resource.ef_value,
          ref_info: r.fuel_resource.ref_info,
        } as FuelResourceLite)
      : undefined,
  }))
}
