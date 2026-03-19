import { NextRequest, NextResponse } from 'next/server'
import { getScopeCategories, createScopeCategory } from '@/lib/api/fuel-resources'

export async function GET(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url)
    const scope = searchParams.get('scope')
    const include_deleted = searchParams.get('include_deleted') === 'true'

    const data = await getScopeCategories(
      scope ? parseInt(scope, 10) : undefined,
      include_deleted
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

    const record = await createScopeCategory(body)
    return NextResponse.json(record, { status: 201 })
  } catch (error) {
    console.error('POST /api/emission-categories error:', error)
    return NextResponse.json({ error: 'Failed to create category' }, { status: 500 })
  }
}
