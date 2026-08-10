import { NextRequest, NextResponse } from 'next/server'
import { getAdminCallerFromRequest } from '@/lib/api/admin-user-auth'
import { isBridgeRequestAuthorized } from '@/lib/support-chat/auth'
import { sendOnboardEmailByOrganizationId } from '@/lib/email/send-onboard-by-organization-id'

export async function POST (
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  try {
    const admin = await getAdminCallerFromRequest(request)
    const bridgeOk = isBridgeRequestAuthorized(request)
    if (!admin && !bridgeOk) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const { id } = await params
    if (!id) {
      return NextResponse.json({ error: 'ไม่พบรหัสองค์กร' }, { status: 400 })
    }

    const result = await sendOnboardEmailByOrganizationId(id)
    if (!result.sent) {
      return NextResponse.json(
        {
          error: result.error,
          ...(result.skipReason ? { skipReason: result.skipReason } : {}),
        },
        { status: result.status }
      )
    }

    return NextResponse.json({ sent: true })
  } catch (error) {
    console.error('[send-onboard] unexpected error:', error)
    return NextResponse.json(
      { error: 'เกิดข้อผิดพลาดในการส่งอีเมลต้อนรับ' },
      { status: 500 }
    )
  }
}
