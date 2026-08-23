import { NextRequest, NextResponse } from 'next/server'
import { verifyAdminPasswordFromRequest } from '@/lib/api/admin-user-auth'
import { restoreEfCatalogVersionBackup } from '@/lib/api/ef-catalog-backups'

export async function POST (
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
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

    const { id } = await params
    const result = await restoreEfCatalogVersionBackup(id, version)
    return NextResponse.json(result)
  } catch (error) {
    const message = error instanceof Error ? error.message : 'Failed to restore backup'
    if (message === 'Backup not found' || message === 'Backup has no fuels') {
      return NextResponse.json({ error: message }, { status: 404 })
    }
    console.error('POST /api/ef-catalog/backups/[id]/restore error:', error)
    return NextResponse.json({ error: message }, { status: 500 })
  }
}
