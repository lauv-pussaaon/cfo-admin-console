import { NextRequest, NextResponse } from 'next/server'
import {
  getFuelResources,
  softDeleteFuelResourcesByVersion,
} from '@/lib/api/fuel-resources'
import { refreshReleaseCounts } from '@/lib/api/ef-catalog-releases'

export async function GET (request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url)
    const scope = searchParams.get('scope')
    const category_id = searchParams.get('category_id') ?? undefined
    const sub_category = searchParams.get('sub_category') ?? undefined
    const search = searchParams.get('search') ?? undefined
    const version = searchParams.get('version') ?? undefined
    const page = parseInt(searchParams.get('page') ?? '1', 10)
    const per_page = parseInt(searchParams.get('per_page') ?? '50', 10)
    const include_deleted = searchParams.get('include_deleted') === 'true'

    const result = await getFuelResources({
      scope: scope ? parseInt(scope, 10) : undefined,
      category_id,
      sub_category,
      search,
      version,
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

export async function DELETE (request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url)
    const version = searchParams.get('version')?.trim()
    if (!version) {
      return NextResponse.json({ error: 'version is required' }, { status: 400 })
    }

    const { deleted } = await softDeleteFuelResourcesByVersion(version)
    await refreshReleaseCounts(version)
    return NextResponse.json({ success: true, deleted, version })
  } catch (error) {
    console.error('DELETE /api/fuel-resources error:', error)
    return NextResponse.json({ error: 'Failed to delete fuel resources for version' }, { status: 500 })
  }
}
