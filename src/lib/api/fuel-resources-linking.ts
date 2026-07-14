import { supabase } from '@/lib/supabase'
import type {
  CreateFuelResourceLinkingInput,
  FuelResourceLinking,
} from '@/types/emission-resources'

const LINKING_SELECT = `
  *,
  source_fuel:fuel_resources!fuel_resources_linking_source_fuel_id_fkey(
    id, resource, unit, sub_category, scope_category_id, version,
    scope_category:scope_categories(id, scope, name_th, name_en)
  ),
  dest_fuel:fuel_resources!fuel_resources_linking_dest_fuel_id_fkey(
    id, resource, unit, sub_category, scope_category_id, version,
    scope_category:scope_categories(id, scope, name_th, name_en)
  )
`

export async function listFuelResourceLinkings (
  version: string
): Promise<FuelResourceLinking[]> {
  const { data, error } = await supabase
    .from('fuel_resources_linking')
    .select(LINKING_SELECT)
    .eq('version', version)
    .order('created_at', { ascending: false })
  if (error) throw error
  return (data ?? []) as FuelResourceLinking[]
}

export async function getFuelResourceLinking (
  id: string
): Promise<FuelResourceLinking | null> {
  const { data, error } = await supabase
    .from('fuel_resources_linking')
    .select(LINKING_SELECT)
    .eq('id', id)
    .maybeSingle()
  if (error) throw error
  return data as FuelResourceLinking | null
}

export async function createFuelResourceLinking (
  input: CreateFuelResourceLinkingInput
): Promise<FuelResourceLinking> {
  if (input.source_fuel_id === input.dest_fuel_id) {
    throw new Error('source_fuel_id and dest_fuel_id must differ')
  }
  const factor = input.unit_conversion_factor ?? 1
  if (!Number.isFinite(factor) || factor <= 0) {
    throw new Error('unit_conversion_factor must be a positive number')
  }
  const now = new Date().toISOString()
  const { data, error } = await supabase
    .from('fuel_resources_linking')
    .insert({
      source_fuel_id: input.source_fuel_id,
      dest_fuel_id: input.dest_fuel_id,
      unit_conversion_factor: factor,
      version: input.version,
      created_at: now,
      updated_at: now,
    })
    .select(LINKING_SELECT)
    .single()
  if (error) throw error
  return data as FuelResourceLinking
}

export async function updateFuelResourceLinkingFactor (
  id: string,
  unit_conversion_factor: number
): Promise<FuelResourceLinking> {
  if (!Number.isFinite(unit_conversion_factor) || unit_conversion_factor <= 0) {
    throw new Error('unit_conversion_factor must be a positive number')
  }
  const { data, error } = await supabase
    .from('fuel_resources_linking')
    .update({
      unit_conversion_factor,
      updated_at: new Date().toISOString(),
    })
    .eq('id', id)
    .select(LINKING_SELECT)
    .single()
  if (error) throw error
  return data as FuelResourceLinking
}

export async function deleteFuelResourceLinking (id: string): Promise<FuelResourceLinking | null> {
  const existing = await getFuelResourceLinking(id)
  if (!existing) return null
  const { error } = await supabase
    .from('fuel_resources_linking')
    .delete()
    .eq('id', id)
  if (error) throw error
  return existing
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
