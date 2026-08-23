import { NextRequest, NextResponse } from 'next/server'
import { getAdminCallerFromRequest } from '@/lib/api/admin-user-auth'
import {
  createEfCatalogVersionBackup,
  listEfCatalogVersionBackups,
} from '@/lib/api/ef-catalog-backups'

export async function GET (request: NextRequest) {
  try {
    const admin = await getAdminCallerFromRequest(request)
    if (!admin) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }
    const data = await listEfCatalogVersionBackups()
    return NextResponse.json({ data })
  } catch (error) {
    console.error('GET /api/ef-catalog/backups error:', error)
    return NextResponse.json({ error: 'Failed to list backups' }, { status: 500 })
  }
}

export async function POST (request: NextRequest) {
  try {
    const admin = await getAdminCallerFromRequest(request)
    if (!admin) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const body = await request.json().catch(() => ({})) as { version?: unknown }
    const version = typeof body.version === 'string' ? body.version.trim() : ''
    if (!version) {
      return NextResponse.json({ error: 'version is required' }, { status: 400 })
    }

    const backup = await createEfCatalogVersionBackup(version, admin.id)
    return NextResponse.json(backup)
  } catch (error) {
    const message = error instanceof Error ? error.message : 'Failed to create backup'
    if (message === 'No active fuels to backup') {
      return NextResponse.json({ error: message }, { status: 400 })
    }
    console.error('POST /api/ef-catalog/backups error:', error)
    return NextResponse.json({ error: message }, { status: 500 })
  }
}
