import { NextRequest, NextResponse } from 'next/server'
import { isEfCatalogSyncAuthorized } from '@/lib/ef-catalog-sync-auth'
import { listEfCatalogReleases } from '@/lib/api/ef-catalog-releases'

export async function GET (request: NextRequest) {
  try {
    if (!isEfCatalogSyncAuthorized(request)) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const releases = await listEfCatalogReleases()
    const data = releases
      .filter((r) => r.status === 'published')
      .map((r) => ({
        version: r.version,
        content_hash: r.content_hash,
        published_at: r.published_at,
        fuel_count: r.fuel_count,
        link_count: r.link_count,
        is_default: r.is_default,
      }))

    return NextResponse.json({ data })
  } catch (error) {
    console.error('GET /api/ef-catalog/sync/manifest error:', error)
    return NextResponse.json({ error: 'Failed to list sync manifest' }, { status: 500 })
  }
}
