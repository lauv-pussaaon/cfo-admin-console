import { NextRequest, NextResponse } from 'next/server'
import { bulkUpsertScopeCategories } from '@/lib/api/fuel-resources'
import type { ScopeCategory } from '@/types/emission-resources'

export async function POST(request: NextRequest) {
  try {
    const body = await request.json()
    const { rows } = body as { rows: Partial<ScopeCategory>[] }

    if (!Array.isArray(rows) || rows.length === 0) {
      return NextResponse.json({ error: 'rows array is required and must not be empty' }, { status: 400 })
    }

    const invalid = rows.filter((r) => !r.scope || !r.name_th || !r.name_en)
    if (invalid.length > 0) {
      return NextResponse.json(
        { error: `${invalid.length} row(s) are missing required fields (scope, name_th, name_en)` },
        { status: 400 }
      )
    }

    const result = await bulkUpsertScopeCategories(rows)
    return NextResponse.json({ imported: result.length, data: result })
  } catch (error) {
    console.error('POST /api/emission-categories/import error:', error)
    return NextResponse.json({ error: 'Failed to import categories' }, { status: 500 })
  }
}
