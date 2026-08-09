import { NextRequest, NextResponse } from 'next/server'
import { getServiceSupabase } from '@/lib/supabase-service'
import { getAdminCallerFromRequest } from '@/lib/api/admin-user-auth'
import { buildRegistrationEmailProfile } from '@/lib/api/user-registration-profile'
import {
  addYearsToDate,
  getVerificationByUserId,
  listDocumentsForVerification,
  todayUtcDate,
  updateVerificationStatus,
} from '@/lib/api/consult-audit-verification'
import { sendRegistrationApprovedEmail } from '@/lib/email/send-registration-approved'
import { resolveSiteOriginFromRequest } from '@/lib/email/resolve-site-origin'

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

    const supabase = getServiceSupabase()
    if (!supabase) {
      return NextResponse.json(
        { error: 'ตั้งค่า SUPABASE_SERVICE_ROLE_KEY ไม่ครบ' },
        { status: 500 }
      )
    }

    const { data: user, error: fetchError } = await supabase
      .from('users')
      .select(
        'id, username, email, name, role, status, organization_name, phone, year_experiences, industries'
      )
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
        { error: 'อนุมัติได้เฉพาะผู้ใช้ที่รออนุมัติ' },
        { status: 400 }
      )
    }

    if (user.role === 'Consult' || user.role === 'Audit') {
      const verification = await getVerificationByUserId(supabase, id)
      if (!verification || verification.status !== 'pending_review') {
        return NextResponse.json(
          { error: 'อนุมัติได้เมื่อผู้ใช้ส่งเอกสารยืนยันแล้วเท่านั้น' },
          { status: 400 }
        )
      }
      const documents = await listDocumentsForVerification(
        supabase,
        verification.id
      )
      if (documents.length < 1) {
        return NextResponse.json(
          { error: 'ต้องมีเอกสารยืนยันอย่างน้อย 1 ไฟล์ก่อนอนุมัติ' },
          { status: 400 }
        )
      }
    }

    const { data: updated, error: updateError } = await supabase
      .from('users')
      .update({ status: 'active', rejection_reason: null })
      .eq('id', id)
      .eq('status', 'requested')
      .select(USER_SELECT)
      .single()

    if (updateError || !updated) {
      console.error('[approve] update failed:', updateError)
      return NextResponse.json(
        { error: 'อนุมัติผู้ใช้ไม่สำเร็จ' },
        { status: 500 }
      )
    }

    const verifiedDate = todayUtcDate()
    const expiredDate = addYearsToDate(verifiedDate, 2)
    const verification = await getVerificationByUserId(supabase, id)
    if (verification) {
      await updateVerificationStatus(supabase, verification.id, {
        status: 'approved',
        verified_date: verifiedDate,
        expired_date: expiredDate,
        rejection_reason: null,
      })
    }

    const requestOrigin = resolveSiteOriginFromRequest(request)
    const profile = await buildRegistrationEmailProfile(updated)

    try {
      const emailResult = await sendRegistrationApprovedEmail({
        to: updated.email,
        name: updated.name,
        username: updated.username,
        email: updated.email,
        role: updated.role,
        profile,
        verifiedDate,
        expiredDate,
        requestOrigin,
      })
      if (!emailResult.sent) {
        console.warn(
          '[email] ไม่ได้ส่งอีเมลอนุมัติ:',
          emailResult.skipReason ?? 'unknown'
        )
      }
    } catch (emailErr) {
      console.error('[email] ส่งอีเมลอนุมัติไม่สำเร็จ:', emailErr)
    }

    return NextResponse.json({ success: true, user: updated })
  } catch (error) {
    console.error('[approve] unexpected error:', error)
    return NextResponse.json(
      { error: 'อนุมัติผู้ใช้ไม่สำเร็จ' },
      { status: 500 }
    )
  }
}
