import { supabase } from '@/lib/supabase'
import type {
  CreateFuelResourceLinkingInput,
  FuelResourceLinking,
} from '@/types/emission-resources'

export async function listFuelResourceLinkings (
  version: string
): Promise<FuelResourceLinking[]> {
  const { data, error } = await supabase
    .from('fuel_resources_linking')
    .select(`
      *,
      source_fuel:fuel_resources!fuel_resources_linking_source_fuel_id_fkey(id, resource, unit, scope_category_id, version),
      dest_fuel:fuel_resources!fuel_resources_linking_dest_fuel_id_fkey(id, resource, unit, scope_category_id, version)
    `)
    .eq('version', version)
    .order('created_at', { ascending: false })
  if (error) throw error
  return (data ?? []) as FuelResourceLinking[]
}

export async function createFuelResourceLinking (
  input: CreateFuelResourceLinkingInput
): Promise<FuelResourceLinking> {
  const now = new Date().toISOString()
  const { data, error } = await supabase
    .from('fuel_resources_linking')
    .insert({
      source_fuel_id: input.source_fuel_id,
      dest_fuel_id: input.dest_fuel_id,
      unit_conversion_factor: input.unit_conversion_factor ?? 1,
      version: input.version,
      created_at: now,
      updated_at: now,
    })
    .select()
    .single()
  if (error) throw error
  return data as FuelResourceLinking
}

export async function deleteFuelResourceLinking (id: string): Promise<void> {
  const { error } = await supabase
    .from('fuel_resources_linking')
    .delete()
    .eq('id', id)
  if (error) throw error
}

export async function deleteFuelResourceLinkingsByVersion (version: string): Promise<number> {
  const { data, error } = await supabase
    .from('fuel_resources_linking')
    .delete()
    .eq('version', version)
    .select('id')
  if (error) throw error
  return data?.length ?? 0
}

export async function replaceFuelResourceLinkingsForVersion (
  version: string,
  rows: CreateFuelResourceLinkingInput[]
): Promise<FuelResourceLinking[]> {
  const { error: delErr } = await supabase
    .from('fuel_resources_linking')
    .delete()
    .eq('version', version)
  if (delErr) throw delErr

  if (rows.length === 0) return []

  const now = new Date().toISOString()
  const records = rows.map((r) => ({
    source_fuel_id: r.source_fuel_id,
    dest_fuel_id: r.dest_fuel_id,
    unit_conversion_factor: r.unit_conversion_factor ?? 1,
    version,
    created_at: now,
    updated_at: now,
  }))

  const { data, error } = await supabase
    .from('fuel_resources_linking')
    .insert(records)
    .select()
  if (error) throw error
  return (data ?? []) as FuelResourceLinking[]
}

/** Resolve fuel by version + category name_th + resource name (exact trim match). */
export async function findFuelIdByBusinessKey (input: {
  version: string
  categoryNameTh: string
  resource: string
}): Promise<string | null> {
  const { data: categories, error: catErr } = await supabase
    .from('scope_categories')
    .select('id')
    .eq('name_th', input.categoryNameTh.trim())
    .is('deleted_at', null)
    .limit(1)
  if (catErr) throw catErr
  const categoryId = categories?.[0]?.id
  if (!categoryId) return null

  const { data: fuels, error: fuelErr } = await supabase
    .from('fuel_resources')
    .select('id')
    .eq('version', input.version)
    .eq('scope_category_id', categoryId)
    .eq('resource', input.resource.trim())
    .is('deleted_at', null)
    .limit(2)
  if (fuelErr) throw fuelErr
  if (!fuels || fuels.length !== 1) return null
  return fuels[0].id as string
}
