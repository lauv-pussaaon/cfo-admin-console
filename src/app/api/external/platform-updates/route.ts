import { NextRequest, NextResponse } from 'next/server'
import { isBridgeRequestAuthorized } from '@/lib/support-chat/auth'
import { listLivePlatformUpdates } from '@/lib/platform-updates/service'

export async function GET (request: NextRequest) {
  try {
    if (!isBridgeRequestAuthorized(request)) {
      return NextResponse.json({ error: 'Unauthorized bridge request' }, { status: 401 })
    }
    const updates = await listLivePlatformUpdates()
    return NextResponse.json({ updates })
  } catch (error) {
    console.error('GET /api/external/platform-updates error:', error)
    return NextResponse.json({ error: 'โหลดประกาศไม่สำเร็จ' }, { status: 500 })
  }
}
