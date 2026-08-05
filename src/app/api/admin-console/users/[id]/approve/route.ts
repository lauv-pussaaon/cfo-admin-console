import { NextRequest, NextResponse } from 'next/server'
import { getServiceSupabase } from '@/lib/supabase-service'
import { getAdminCallerFromRequest } from '@/lib/api/admin-user-auth'
import { buildRegistrationEmailProfile } from '@/lib/api/user-registration-profile'
import { sendRegistrationApprovedEmail } from '@/lib/email/send-registration-approved'
import { resolveSiteOriginFromRequest } from '@/lib/email/resolve-site-origin'

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
        'id, username, email, name, role, status, organization_name, phone, has_verification, certified_date, certification_expiry, verification_documents, year_experiences, industries'
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

    const { data: updated, error: updateError } = await supabase
      .from('users')
      .update({ status: 'active', rejection_reason: null })
      .eq('id', id)
      .eq('status', 'requested')
      .select(
        'id, username, email, name, avatar_url, role, status, rejection_reason, invite_hashcode, organization_name, phone, has_verification, certified_date, certification_expiry, verification_documents, year_experiences, industries, created_at'
      )
      .single()

    if (updateError || !updated) {
      console.error('[approve] update failed:', updateError)
      return NextResponse.json(
        { error: 'อนุมัติผู้ใช้ไม่สำเร็จ' },
        { status: 500 }
      )
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
