import { NextRequest, NextResponse } from 'next/server'
import { getAdminCallerFromRequest } from '@/lib/api/admin-user-auth'
import { getEnabledNotificationEmails } from '@/lib/api/notification-recipients-server'
import { sendAdminInstanceReadyNotice } from '@/lib/email/send-admin-instance-ready-notice'
import { normalizeOrganizationCode } from '@/lib/organization-code'
import { getServiceSupabase } from '@/lib/supabase-service'
import { isBridgeRequestAuthorized } from '@/lib/support-chat/auth'

const INSTANCE_CODE_PATTERN = /^[a-z0-9](?:[a-z0-9-]{0,61}[a-z0-9])?$/

function readOptionalString (value: unknown): string {
  return typeof value === 'string' ? value.trim() : ''
}

export async function POST (request: NextRequest) {
  try {
    const admin = await getAdminCallerFromRequest(request)
    const bridgeOk = isBridgeRequestAuthorized(request)
    if (!admin && !bridgeOk) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    let body: unknown
    try {
      body = await request.json()
    } catch {
      return NextResponse.json({ error: 'ข้อมูลไม่ถูกต้อง' }, { status: 400 })
    }

    const raw = body && typeof body === 'object' ? (body as Record<string, unknown>) : {}
    const code = normalizeOrganizationCode(readOptionalString(raw.code))
    if (!code || !INSTANCE_CODE_PATTERN.test(code)) {
      return NextResponse.json({ error: 'รหัสบริษัทไม่ถูกต้อง' }, { status: 400 })
    }

    const supabase = getServiceSupabase()
    if (!supabase) {
      return NextResponse.json(
        { error: 'ตั้งค่า SUPABASE_SERVICE_ROLE_KEY ไม่ครบ' },
        { status: 500 }
      )
    }

    const { data: org, error: fetchError } = await supabase
      .from('organizations')
      .select('id, name, code, account_type, app_url, username, factory_admin_email')
      .eq('code', code)
      .maybeSingle()

    if (fetchError) {
      console.error('[notify-instance-ready] load organization:', fetchError)
      return NextResponse.json({ error: 'โหลดข้อมูลองค์กรไม่สำเร็จ' }, { status: 500 })
    }

    if (!org) {
      return NextResponse.json({ error: 'ไม่พบองค์กร' }, { status: 404 })
    }

    const appUrl = readOptionalString(raw.appUrl) || org.app_url?.trim() || ''
    if (!appUrl) {
      return NextResponse.json({ error: 'องค์กรยังไม่มี App URL' }, { status: 400 })
    }

    const username = readOptionalString(raw.username) || org.username?.trim() || ''
    const adminEmails = await getEnabledNotificationEmails()
    if (adminEmails.length === 0) {
      return NextResponse.json({ sent: false, skipReason: 'no_admin_emails' })
    }

    const result = await sendAdminInstanceReadyNotice({
      organizationName: org.name,
      organizationCode: org.code,
      accountType: org.account_type,
      factoryAdminEmail: org.factory_admin_email,
      appUrl,
      username,
      adminEmails,
    })

    if (!result.sent) {
      return NextResponse.json(
        {
          sent: false,
          skipReason: result.skipReason,
          error: result.skipReason || 'ส่งอีเมลไม่สำเร็จ',
        },
        { status: result.skipReason === 'no_admin_emails' ? 200 : 502 }
      )
    }

    return NextResponse.json({ sent: true })
  } catch (error) {
    console.error('[notify-instance-ready] unexpected error:', error)
    return NextResponse.json(
      { error: 'เกิดข้อผิดพลาดในการแจ้ง Admin' },
      { status: 500 }
    )
  }
}
