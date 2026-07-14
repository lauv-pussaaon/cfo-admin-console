import { NextRequest, NextResponse } from 'next/server'
import {
  findFuelIdByBusinessKey,
  replaceFuelResourceLinkingsForVersion,
} from '@/lib/api/fuel-resources-linking'
import { refreshReleaseCounts } from '@/lib/api/ef-catalog-releases'

type ImportRow = {
  source_category?: string
  source_resource?: string
  dest_category?: string
  dest_resource?: string
  source_fuel_id?: string
  dest_fuel_id?: string
  unit_conversion_factor?: number | string
}

export async function POST (request: NextRequest) {
  try {
    const body = await request.json()
    const version = String(body.version || '').trim()
    const rows = body.rows as ImportRow[] | undefined
    const replace = body.replace !== false

    if (!version) {
      return NextResponse.json({ error: 'version is required' }, { status: 400 })
    }
    if (!Array.isArray(rows) || rows.length === 0) {
      return NextResponse.json({ error: 'rows array is required' }, { status: 400 })
    }

    const resolved: Array<{
      source_fuel_id: string
      dest_fuel_id: string
      unit_conversion_factor: number
      version: string
    }> = []
    const errors: Array<{ row: number; error: string }> = []

    for (let i = 0; i < rows.length; i++) {
      const row = rows[i]
      let sourceId = row.source_fuel_id?.trim() || null
      let destId = row.dest_fuel_id?.trim() || null

      if (!sourceId && row.source_category && row.source_resource) {
        sourceId = await findFuelIdByBusinessKey({
          version,
          categoryNameTh: row.source_category,
          resource: row.source_resource,
        })
      }
      if (!destId && row.dest_category && row.dest_resource) {
        destId = await findFuelIdByBusinessKey({
          version,
          categoryNameTh: row.dest_category,
          resource: row.dest_resource,
        })
      }

      if (!sourceId || !destId) {
        errors.push({
          row: i + 1,
          error: `Unresolved ${!sourceId ? 'source' : 'dest'} fuel`,
        })
        continue
      }

      const factor = Number(row.unit_conversion_factor ?? 1)
      resolved.push({
        source_fuel_id: sourceId,
        dest_fuel_id: destId,
        unit_conversion_factor: Number.isFinite(factor) ? factor : 1,
        version,
      })
    }

    if (errors.length > 0) {
      return NextResponse.json(
        {
          error: `${errors.length} unresolved row(s)`,
          errors,
          resolved_count: resolved.length,
        },
        { status: 400 }
      )
    }

    const data = replace
      ? await replaceFuelResourceLinkingsForVersion(version, resolved)
      : null

    await refreshReleaseCounts(version)

    return NextResponse.json({
      imported: replace ? data?.length ?? 0 : resolved.length,
      data: data ?? resolved,
    })
  } catch (error) {
    console.error('POST /api/fuel-resources-linking/import error:', error)
    return NextResponse.json({ error: 'Failed to import linking rows' }, { status: 500 })
  }
}
