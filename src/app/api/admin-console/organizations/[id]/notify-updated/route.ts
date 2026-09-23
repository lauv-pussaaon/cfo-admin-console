import { NextRequest, NextResponse } from 'next/server'
import { getOrganizationManagerFromRequest } from '@/lib/api/admin-user-auth'
import { sendOrganizationInfoUpdatedByOrganizationId } from '@/lib/email/send-info-updated-by-organization-id'

export async function POST (
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  try {
    const caller = await getOrganizationManagerFromRequest(request)
    if (!caller) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const { id } = await params
    if (!id) {
      return NextResponse.json({ error: 'ไม่พบรหัสองค์กร' }, { status: 400 })
    }

    const result = await sendOrganizationInfoUpdatedByOrganizationId(id)
    if (result.sent) {
      return NextResponse.json({ sent: true })
    }
    if ('skipReason' in result && result.skipReason === 'no_factory_admin_email') {
      return NextResponse.json({ sent: false, skipReason: result.skipReason })
    }

    return NextResponse.json(
      {
        sent: false,
        error: 'error' in result ? result.error : 'ส่งอีเมลไม่สำเร็จ',
        ...('skipReason' in result && result.skipReason
          ? { skipReason: result.skipReason }
          : {}),
      },
      { status: 'status' in result ? result.status : 502 }
    )
  } catch (error) {
    console.error('[notify-updated] unexpected error:', error)
    return NextResponse.json(
      { error: 'เกิดข้อผิดพลาดในการส่งอีเมลแจ้งอัปเดต' },
      { status: 500 }
    )
  }
}
