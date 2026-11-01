import { NextRequest, NextResponse } from 'next/server'
import {
  archiveEfCatalogRelease,
  deleteDraftEfCatalogRelease,
  ensureEfCatalogRelease,
  getReleasePublishDrift,
  listEfCatalogReleases,
  publishEfCatalogRelease,
  setDefaultEfCatalogRelease,
  refreshReleaseCounts,
} from '@/lib/api/ef-catalog-releases'
import { listDistinctFuelVersions } from '@/lib/api/fuel-resources'
import { verifyAdminPasswordFromRequest } from '@/lib/api/admin-user-auth'

export async function GET (request: NextRequest) {
  const version = request.nextUrl.searchParams.get('version')?.trim()
  if (version) {
    try {
      const { release, needs_republish } = await getReleasePublishDrift(version)
      if (!release) {
        return NextResponse.json({ error: 'Release not found' }, { status: 404 })
      }
      return NextResponse.json({ ...release, needs_republish })
    } catch (error) {
      console.error('GET /api/ef-catalog/releases?version= error:', error)
      return NextResponse.json({ error: 'Failed to load release' }, { status: 500 })
    }
  }

  try {
    const [releases, fuelVersions] = await Promise.all([
      listEfCatalogReleases({ includeArchived: true }),
      listDistinctFuelVersions(),
    ])
    const known = new Set(releases.map((r) => r.version))
    let created = false
    for (const version of fuelVersions) {
      if (!known.has(version)) {
        await ensureEfCatalogRelease(version, 'tgo')
        known.add(version)
        created = true
      }
    }
    const visible = releases.filter((r) => r.status !== 'archived')
    const data = created ? await listEfCatalogReleases() : visible
    const taken = created
      ? (await listEfCatalogReleases({ includeArchived: true })).map((r) => r.version)
      : releases.map((r) => r.version)
    return NextResponse.json({ data, taken_versions: taken })
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
    if (action === 'archive') {
      const release = await archiveEfCatalogRelease(version)
      return NextResponse.json(release)
    }

    return NextResponse.json(
      { error: 'action must be publish, set_default, archive, or refresh_counts' },
      { status: 400 }
    )
  } catch (error) {
    console.error('POST /api/ef-catalog/releases error:', error)
    const message = error instanceof Error ? error.message : 'Failed to update release'
    return NextResponse.json({ error: message }, { status: 400 })
  }
}

export async function DELETE (request: NextRequest) {
  try {
    let password = ''
    let version = ''
    try {
      const body = await request.json() as { password?: unknown; version?: unknown }
      if (typeof body?.password === 'string') password = body.password
      if (typeof body?.version === 'string') version = body.version.trim()
    } catch {
      password = ''
    }

    const auth = await verifyAdminPasswordFromRequest(request, password)
    if (!auth.ok) {
      return NextResponse.json({ error: auth.error }, { status: auth.status })
    }
    if (!version) {
      return NextResponse.json({ error: 'version is required' }, { status: 400 })
    }

    await deleteDraftEfCatalogRelease(version)
    return NextResponse.json({ success: true, version })
  } catch (error) {
    console.error('DELETE /api/ef-catalog/releases error:', error)
    const message = error instanceof Error ? error.message : 'Failed to delete draft'
    const status = message.includes('Only a draft') || message.includes('Unknown release') ? 400 : 500
    return NextResponse.json({ error: message }, { status })
  }
}
