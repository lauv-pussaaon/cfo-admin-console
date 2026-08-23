import { NextRequest, NextResponse } from 'next/server'
import { verifyAdminPasswordFromRequest } from '@/lib/api/admin-user-auth'
import {
  deleteEfCatalogVersionBackup,
  getEfCatalogVersionBackup,
} from '@/lib/api/ef-catalog-backups'

export async function DELETE (
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  try {
    let password = ''
    try {
      const body = await request.json() as { password?: unknown }
      if (typeof body?.password === 'string') password = body.password
    } catch {
      password = ''
    }

    const auth = await verifyAdminPasswordFromRequest(request, password)
    if (!auth.ok) {
      return NextResponse.json({ error: auth.error }, { status: auth.status })
    }

    const { id } = await params
    const existing = await getEfCatalogVersionBackup(id)
    if (!existing) {
      return NextResponse.json({ error: 'Backup not found' }, { status: 404 })
    }

    await deleteEfCatalogVersionBackup(id)
    return NextResponse.json({ success: true, id })
  } catch (error) {
    console.error('DELETE /api/ef-catalog/backups/[id] error:', error)
    return NextResponse.json({ error: 'Failed to delete backup' }, { status: 500 })
  }
}
