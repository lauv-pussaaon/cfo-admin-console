import { NextRequest, NextResponse } from 'next/server'
import { bulkUpsertFuelResources, getScopeCategories } from '@/lib/api/fuel-resources'
import type { FuelResource } from '@/types/emission-resources'

export async function POST(request: NextRequest) {
  try {
    const body = await request.json()
    const { rows } = body as { rows: Partial<FuelResource>[] }

    if (!Array.isArray(rows) || rows.length === 0) {
      return NextResponse.json({ error: 'rows array is required and must not be empty' }, { status: 400 })
    }

    // Resolve any rows that use scope + category name instead of scope_category_id
    const needsResolution = rows.some((r) => !r.scope_category_id)
    let categoryMap: Map<string, string> | null = null

    if (needsResolution) {
      const categories = await getScopeCategories()
      categoryMap = new Map(categories.map((c) => [c.name_th, c.id]))
    }

    const resolved = rows.map((row) => {
      const raw = row as Record<string, unknown>
      const lookupName = (raw['category_name_th'] ?? raw['category_th'] ?? '') as string
      let scopeCategoryId = row.scope_category_id
      if (!scopeCategoryId && categoryMap && lookupName) {
        scopeCategoryId = categoryMap.get(lookupName) ?? undefined
      }
      // Strip CSV-only lookup fields before upsert (not columns in fuel_resources)
      const { category_name_th, category_th, category_name, ...rest } = raw
      return { ...rest, scope_category_id: scopeCategoryId ?? row.scope_category_id } as Partial<FuelResource>
    })

    const missing = resolved.filter((r) => !r.scope_category_id)
    if (missing.length > 0) {
      return NextResponse.json(
        { error: `${missing.length} row(s) are missing scope_category_id and could not be resolved` },
        { status: 400 }
      )
    }

    const result = await bulkUpsertFuelResources(resolved)
    return NextResponse.json({ imported: result.length, data: result })
  } catch (error) {
    console.error('POST /api/fuel-resources/import error:', error)
    return NextResponse.json({ error: 'Failed to import fuel resources' }, { status: 500 })
  }
}
