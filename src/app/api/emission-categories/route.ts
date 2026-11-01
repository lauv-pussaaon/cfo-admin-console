import { NextRequest, NextResponse } from 'next/server'
import { getScopeCategories, createScopeCategory } from '@/lib/api/fuel-resources'
import type { CatalogFamily } from '@/types/emission-resources'

function parseFamily (raw: string | null): CatalogFamily | undefined {
  if (raw === 'tgo' || raw === 'iso') return raw
  return undefined
}

export async function GET(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url)
    const scope = searchParams.get('scope')
    const include_deleted = searchParams.get('include_deleted') === 'true'
    const family = parseFamily(searchParams.get('family'))

    const data = await getScopeCategories(
      scope ? parseInt(scope, 10) : undefined,
      include_deleted,
      family
    )
    return NextResponse.json({ data })
  } catch (error) {
    console.error('GET /api/emission-categories error:', error)
    return NextResponse.json({ error: 'Failed to fetch categories' }, { status: 500 })
  }
}

export async function POST(request: NextRequest) {
  try {
    const body = await request.json()

    if (!body.scope || !body.name_th || !body.name_en) {
      return NextResponse.json({ error: 'scope, name_th, and name_en are required' }, { status: 400 })
    }

    const family = body.family === 'iso' ? 'iso' : 'tgo'
    const record = await createScopeCategory({ ...body, family })
    return NextResponse.json(record, { status: 201 })
  } catch (error) {
    console.error('POST /api/emission-categories error:', error)
    const message = error instanceof Error ? error.message : 'Failed to create category'
    const status = message.includes('must be') ? 400 : 500
    return NextResponse.json({ error: message }, { status })
  }
}
