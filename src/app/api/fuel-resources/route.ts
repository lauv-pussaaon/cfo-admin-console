import { NextRequest, NextResponse } from 'next/server'
import { getFuelResources, createFuelResource, hardDeleteAllFuelResources } from '@/lib/api/fuel-resources'

export async function GET(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url)
    const scope = searchParams.get('scope')
    const category_id = searchParams.get('category_id') ?? undefined
    const search = searchParams.get('search') ?? undefined
    const page = parseInt(searchParams.get('page') ?? '1', 10)
    const per_page = parseInt(searchParams.get('per_page') ?? '50', 10)
    const include_deleted = searchParams.get('include_deleted') === 'true'

    const result = await getFuelResources({
      scope: scope ? parseInt(scope, 10) : undefined,
      category_id,
      search,
      page,
      per_page,
      include_deleted,
    })

    return NextResponse.json(result)
  } catch (error) {
    console.error('GET /api/fuel-resources error:', error)
    return NextResponse.json({ error: 'Failed to fetch fuel resources' }, { status: 500 })
  }
}

export async function POST(request: NextRequest) {
  try {
    const body = await request.json()

    if (!body.scope_category_id || !body.resource) {
      return NextResponse.json({ error: 'scope_category_id and resource are required' }, { status: 400 })
    }

    const record = await createFuelResource(body)
    return NextResponse.json(record, { status: 201 })
  } catch (error) {
    console.error('POST /api/fuel-resources error:', error)
    return NextResponse.json({ error: 'Failed to create fuel resource' }, { status: 500 })
  }
}

export async function DELETE() {
  try {
    const { deleted } = await hardDeleteAllFuelResources()
    return NextResponse.json({ success: true, deleted })
  } catch (error) {
    console.error('DELETE /api/fuel-resources error:', error)
    return NextResponse.json({ error: 'Failed to reset fuel resources' }, { status: 500 })
  }
}
