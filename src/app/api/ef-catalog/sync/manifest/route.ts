import { NextRequest, NextResponse } from 'next/server'
import { isEfCatalogSyncAuthorized } from '@/lib/ef-catalog-sync-auth'
import { listEfCatalogReleases } from '@/lib/api/ef-catalog-releases'
import { listCategoryMapPairs } from '@/lib/api/tgo-iso-category-map'

export async function GET (request: NextRequest) {
  try {
    if (!isEfCatalogSyncAuthorized(request)) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const includeIso = request.nextUrl.searchParams.get('includeIso') === '1'
    const releases = await listEfCatalogReleases()
    const data = releases
      .filter((r) => r.status === 'published' && (includeIso || r.family !== 'iso'))
      .map((r) => ({
        version: r.version,
        family: r.family ?? 'tgo',
        content_hash: r.content_hash,
        published_at: r.published_at,
        fuel_count: r.fuel_count,
        link_count: r.link_count,
        is_default: r.is_default,
        order_index: r.order_index ?? 0,
      }))

    let categoryMap: Awaited<ReturnType<typeof listCategoryMapPairs>> | null = null
    if (includeIso) {
      try {
        categoryMap = await listCategoryMapPairs()
      } catch (mapError) {
        console.error('GET /api/ef-catalog/sync/manifest category map error:', mapError)
      }
    }

    return NextResponse.json({
      data,
      ...(categoryMap ? { category_map: categoryMap } : {}),
    })
  } catch (error) {
    console.error('GET /api/ef-catalog/sync/manifest error:', error)
    return NextResponse.json({ error: 'Failed to list sync manifest' }, { status: 500 })
  }
}
