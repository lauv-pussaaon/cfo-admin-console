import { NextRequest, NextResponse } from 'next/server'
import { getCategoryMap, setCategoryMapDestination } from '@/lib/api/tgo-iso-category-map'

export async function GET () {
  try {
    const map = await getCategoryMap()
    return NextResponse.json(map)
  } catch (error) {
    console.error('GET /api/emission-category-map error:', error)
    const missing = typeof error === 'object' && error !== null && 'code' in error && error.code === 'PGRST205'
    return NextResponse.json(
      {
        error: missing
          ? 'Category map table is missing. Run database/one_time_tgo_iso_category_map.sql on this project.'
          : 'Failed to fetch category map',
      },
      { status: 500 }
    )
  }
}

export async function PUT (request: NextRequest) {
  try {
    const body = await request.json()
    const tgoScopeCategoryId = String(body.tgo_scope_category_id || '').trim()
    const rawIso = body.iso_scope_category_id
    const isoScopeCategoryId = rawIso == null || rawIso === '' ? null : String(rawIso).trim()
    if (!tgoScopeCategoryId) {
      return NextResponse.json({ error: 'tgo_scope_category_id is required' }, { status: 400 })
    }
    await setCategoryMapDestination(tgoScopeCategoryId, isoScopeCategoryId)
    return NextResponse.json({ ok: true })
  } catch (error) {
    console.error('PUT /api/emission-category-map error:', error)
    const message = error instanceof Error ? error.message : 'Failed to update category map'
    const status = message.includes('must be') ? 400 : 500
    return NextResponse.json({ error: message }, { status })
  }
}
