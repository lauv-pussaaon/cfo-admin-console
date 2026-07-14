import { NextRequest, NextResponse } from 'next/server'
import {
  ensureEfCatalogRelease,
  listEfCatalogReleases,
  publishEfCatalogRelease,
  setDefaultEfCatalogRelease,
  refreshReleaseCounts,
} from '@/lib/api/ef-catalog-releases'
import { listDistinctFuelVersions } from '@/lib/api/fuel-resources'

export async function GET () {
  try {
    const [releases, fuelVersions] = await Promise.all([
      listEfCatalogReleases(),
      listDistinctFuelVersions(),
    ])
    const known = new Set(releases.map((r) => r.version))
    for (const version of fuelVersions) {
      if (!known.has(version)) {
        await ensureEfCatalogRelease(version)
        known.add(version)
      }
    }
    const data = known.size === releases.length
      ? releases
      : await listEfCatalogReleases()
    return NextResponse.json({ data })
  } catch (error) {
    console.error('GET /api/ef-catalog/releases error:', error)
    return NextResponse.json({ error: 'Failed to list releases' }, { status: 500 })
  }
}

export async function POST (request: NextRequest) {
  try {
    const body = await request.json()
    const version = String(body.version || '').trim()
    const action = String(body.action || '').trim()

    if (!version) {
      return NextResponse.json({ error: 'version is required' }, { status: 400 })
    }

    if (action === 'publish') {
      const release = await publishEfCatalogRelease(version, body.published_by ?? null)
      return NextResponse.json(release)
    }
    if (action === 'set_default') {
      const release = await setDefaultEfCatalogRelease(version)
      return NextResponse.json(release)
    }
    if (action === 'refresh_counts') {
      const release = await refreshReleaseCounts(version)
      return NextResponse.json(release)
    }

    return NextResponse.json(
      { error: 'action must be publish, set_default, or refresh_counts' },
      { status: 400 }
    )
  } catch (error) {
    console.error('POST /api/ef-catalog/releases error:', error)
    const message = error instanceof Error ? error.message : 'Failed to update release'
    return NextResponse.json({ error: message }, { status: 400 })
  }
}
