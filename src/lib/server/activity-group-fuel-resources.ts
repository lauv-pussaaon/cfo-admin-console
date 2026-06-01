import { query, queryOne, withTransaction } from '@/lib/db'
import type {
  TemplateActivityGroupFuelResourceMapping,
  FuelResourceLite,
} from '@/types/emission-templates'

type MappingRowWithFuel = Omit<TemplateActivityGroupFuelResourceMapping, 'fuel_resource'> & {
  fr_id: string | null
  fr_resource: string | null
  fr_unit: string | null
  fr_ef_value: number | null
  fr_ref_info: string | null
}

function mapMappingRow (r: MappingRowWithFuel): TemplateActivityGroupFuelResourceMapping {
  return {
    id: r.id,
    template_activity_group_id: r.template_activity_group_id,
    fuel_resource_id: r.fuel_resource_id,
    note: r.note,
    sort_order: r.sort_order,
    fuel_resource: r.fr_id
      ? ({
          id: r.fr_id,
          resource: r.fr_resource!,
          unit: r.fr_unit,
          ef_value: r.fr_ef_value,
          ref_info: r.fr_ref_info,
        } as FuelResourceLite)
      : undefined,
  }
}

const MAPPING_SELECT = `
  m.id,
  m.template_activity_group_id,
  m.fuel_resource_id,
  m.note,
  m.sort_order,
  fr.id AS fr_id,
  fr.resource AS fr_resource,
  fr.unit AS fr_unit,
  fr.ef_value AS fr_ef_value,
  fr.ref_info AS fr_ref_info
`

export async function getMappingsByActivityGroupId (
  activityGroupId: string
): Promise<TemplateActivityGroupFuelResourceMapping[]> {
  const { rows } = await query<MappingRowWithFuel>(
    `SELECT ${MAPPING_SELECT}
     FROM template_activity_group_fuel_resources m
     LEFT JOIN fuel_resources fr ON fr.id = m.fuel_resource_id
     WHERE m.template_activity_group_id = $1
     ORDER BY m.sort_order ASC`,
    [activityGroupId]
  )

  return rows.map(mapMappingRow)
}

export async function setMappings (
  activityGroupId: string,
  mappings: { fuel_resource_id: string; note?: string | null }[]
): Promise<TemplateActivityGroupFuelResourceMapping[]> {
  const now = new Date().toISOString()

  return withTransaction(async (client) => {
    await client.query(
      `DELETE FROM template_activity_group_fuel_resources WHERE template_activity_group_id = $1`,
      [activityGroupId]
    )

    if (mappings.length === 0) return []

    const ids: string[] = []
    for (let i = 0; i < mappings.length; i++) {
      const m = mappings[i]
      const result = await client.query<{ id: string }>(
        `INSERT INTO template_activity_group_fuel_resources
           (template_activity_group_id, fuel_resource_id, note, sort_order, created_at, updated_at)
         VALUES ($1, $2, $3, $4, $5, $5)
         RETURNING id`,
        [activityGroupId, m.fuel_resource_id, m.note || null, i, now]
      )
      if (result.rows[0]) ids.push(result.rows[0].id)
    }

    if (ids.length === 0) return []

    const placeholders = ids.map((_, i) => `$${i + 1}`).join(', ')
    const { rows } = await client.query<MappingRowWithFuel>(
      `SELECT ${MAPPING_SELECT}
       FROM template_activity_group_fuel_resources m
       LEFT JOIN fuel_resources fr ON fr.id = m.fuel_resource_id
       WHERE m.id IN (${placeholders})
       ORDER BY m.sort_order ASC`,
      ids
    )

    return rows.map(mapMappingRow)
  })
}
