import { NextRequest, NextResponse } from 'next/server'
import { z } from 'zod'
import { getServiceSupabase } from '@/lib/supabase-service'
import { getAdminCallerFromRequest } from '@/lib/api/admin-user-auth'
import {
  getVerificationByUserId,
  updateVerificationStatus,
} from '@/lib/api/consult-audit-verification'
import { sendRegistrationRejectedEmail } from '@/lib/email/send-registration-rejected'
import { resolveSiteOriginFromRequest } from '@/lib/email/resolve-site-origin'

const rejectBodySchema = z.object({
  reason: z.string().trim().min(1, 'กรุณาระบุเหตุผล').max(2000),
})

const USER_SELECT =
  'id, username, email, name, avatar_url, role, status, rejection_reason, invite_hashcode, organization_name, phone, year_experiences, industries, created_at'

export async function POST (
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  try {
    const admin = await getAdminCallerFromRequest(request)
    if (!admin) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const { id } = await params
    if (!id) {
      return NextResponse.json({ error: 'ไม่พบรหัสผู้ใช้' }, { status: 400 })
    }

    const body = await request.json()
    const parsed = rejectBodySchema.safeParse(body)
    if (!parsed.success) {
      return NextResponse.json(
        { error: parsed.error.issues[0]?.message || 'ข้อมูลไม่ถูกต้อง' },
        { status: 400 }
      )
    }
    const reason = parsed.data.reason

    const supabase = getServiceSupabase()
    if (!supabase) {
      return NextResponse.json(
        { error: 'ตั้งค่า SUPABASE_SERVICE_ROLE_KEY ไม่ครบ' },
        { status: 500 }
      )
    }

    const { data: user, error: fetchError } = await supabase
      .from('users')
      .select('id, username, email, name, role, status')
      .eq('id', id)
      .single()

    if (fetchError || !user) {
      return NextResponse.json({ error: 'ไม่พบผู้ใช้' }, { status: 404 })
    }

    if (user.role === 'Admin' && user.username === 'admin') {
      return NextResponse.json(
        { error: 'ไม่สามารถเปลี่ยนสถานะผู้ใช้ admin ได้' },
        { status: 403 }
      )
    }

    if (user.status !== 'requested') {
      return NextResponse.json(
        { error: 'ปฏิเสธได้เฉพาะผู้ใช้ที่รออนุมัติ' },
        { status: 400 }
      )
    }

    const { data: updated, error: updateError } = await supabase
      .from('users')
      .update({ status: 'rejected', rejection_reason: reason })
      .eq('id', id)
      .eq('status', 'requested')
      .select(USER_SELECT)
      .single()

    if (updateError || !updated) {
      console.error('[reject] update failed:', updateError)
      return NextResponse.json(
        { error: 'ปฏิเสธผู้ใช้ไม่สำเร็จ' },
        { status: 500 }
      )
    }

    const verification = await getVerificationByUserId(supabase, id)
    if (verification) {
      await updateVerificationStatus(supabase, verification.id, {
        status: 'rejected',
        rejection_reason: reason,
        verified_date: null,
        expired_date: null,
      })
    }

    try {
      const emailResult = await sendRegistrationRejectedEmail({
        to: updated.email,
        name: updated.name,
        username: updated.username,
        email: updated.email,
        reason,
        requestOrigin: resolveSiteOriginFromRequest(request),
      })
      if (!emailResult.sent) {
        console.warn(
          '[email] ไม่ได้ส่งอีเมลปฏิเสธ:',
          emailResult.skipReason ?? 'unknown'
        )
      }
    } catch (emailErr) {
      console.error('[email] ส่งอีเมลปฏิเสธไม่สำเร็จ:', emailErr)
    }

    return NextResponse.json({ success: true, user: updated })
  } catch (error) {
    console.error('[reject] unexpected error:', error)
    return NextResponse.json(
      { error: 'ปฏิเสธผู้ใช้ไม่สำเร็จ' },
      { status: 500 }
    )
  }
}
