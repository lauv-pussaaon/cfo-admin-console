import { NextRequest, NextResponse } from 'next/server'
import { isEfCatalogSyncAuthorized } from '@/lib/ef-catalog-sync-auth'
import { getEfCatalogRelease } from '@/lib/api/ef-catalog-releases'
import { getScopeCategories, listFuelResourcesForExport } from '@/lib/api/fuel-resources'
import { listCategoryMapPairs } from '@/lib/api/tgo-iso-category-map'

export async function GET (request: NextRequest) {
  try {
    if (!isEfCatalogSyncAuthorized(request)) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const version = request.nextUrl.searchParams.get('version')?.trim()
    if (!version) {
      return NextResponse.json({ error: 'version is required' }, { status: 400 })
    }

    const includeIso = request.nextUrl.searchParams.get('includeIso') === '1'
    const release = await getEfCatalogRelease(version)
    if (!release || release.status !== 'published' || (release.family === 'iso' && !includeIso)) {
      return NextResponse.json(
        { error: `Published release not found for version "${version}"` },
        { status: 404 }
      )
    }

    const family = release.family ?? 'tgo'
    const [categories, fuels, categoryMap] = await Promise.all([
      getScopeCategories(undefined, false, family),
      listFuelResourcesForExport(version),
      family === 'iso' ? listCategoryMapPairs() : Promise.resolve(null),
    ])

    return NextResponse.json({
      release: {
        version: release.version,
        family,
        status: release.status,
        content_hash: release.content_hash,
        published_at: release.published_at,
        fuel_count: release.fuel_count,
        link_count: 0,
        is_default: release.is_default,
        order_index: release.order_index ?? 0,
      },
      categories: categories.map((c) => ({
        id: c.id,
        family: c.family,
        scope: c.scope,
        name_th: c.name_th,
        name_en: c.name_en,
        display_order: c.display_order,
      })),
      fuels,
      links: [],
      ...(categoryMap ? { category_map: categoryMap } : {}),
      content_hash: release.content_hash,
    })
  } catch (error) {
    console.error('GET /api/ef-catalog/sync error:', error)
    return NextResponse.json({ error: 'Failed to build sync bundle' }, { status: 500 })
  }
}
