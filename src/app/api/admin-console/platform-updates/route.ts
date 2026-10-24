import { NextRequest, NextResponse } from 'next/server'
import { getAdminCallerFromRequest } from '@/lib/api/admin-user-auth'
import { createPlatformUpdate, listPlatformUpdates } from '@/lib/platform-updates/service'

export async function GET (request: NextRequest) {
  try {
    const admin = await getAdminCallerFromRequest(request)
    if (!admin) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    const updates = await listPlatformUpdates()
    return NextResponse.json({ updates })
  } catch (error) {
    console.error('GET /api/admin-console/platform-updates error:', error)
    return NextResponse.json({ error: 'โหลดประกาศไม่สำเร็จ' }, { status: 500 })
  }
}

export async function POST (request: NextRequest) {
  try {
    const admin = await getAdminCallerFromRequest(request)
    if (!admin) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    const update = await createPlatformUpdate(admin.id)
    return NextResponse.json({ update })
  } catch (error) {
    console.error('POST /api/admin-console/platform-updates error:', error)
    return NextResponse.json({ error: 'สร้างประกาศไม่สำเร็จ' }, { status: 500 })
  }
}
