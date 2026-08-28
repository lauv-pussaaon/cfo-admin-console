import { NextRequest, NextResponse } from 'next/server'
import { getAdminCallerFromRequest } from '@/lib/api/admin-user-auth'
import { getEnabledNotificationEmails } from '@/lib/api/notification-recipients-server'
import {
  approveActiveTrialRequestByCode,
  findActiveTrialRequestByCode,
} from '@/lib/api/trial-request-deploy'
import { sendAdminInstanceReadyNotice } from '@/lib/email/send-admin-instance-ready-notice'
import { sendOnboardEmailByOrganizationId } from '@/lib/email/send-onboard-by-organization-id'
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

    const notify = raw.notify !== false
    const appUrl = readOptionalString(raw.appUrl)
    const username = readOptionalString(raw.username)
    const password = readOptionalString(raw.password)
    const factoryAdminEmail = readOptionalString(raw.factoryAdminEmail)

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
      console.error('[complete-instance] load organization:', fetchError)
      return NextResponse.json({ error: 'โหลดข้อมูลองค์กรไม่สำเร็จ' }, { status: 500 })
    }

    if (!org) {
      return NextResponse.json({ error: 'ไม่พบองค์กร' }, { status: 404 })
    }

    const now = new Date().toISOString()
    const updates: Record<string, unknown> = {
      is_initialized: true,
      initialized_at: now,
      updated_at: now,
    }
    if (appUrl) updates.app_url = appUrl
    if (username) updates.username = username
    if (password) updates.password = password
    if (factoryAdminEmail) updates.factory_admin_email = factoryAdminEmail

    const matchingRequest = await findActiveTrialRequestByCode(supabase, code)
    const requestEmail = matchingRequest?.contact_email?.trim() || ''
    if (requestEmail) {
      updates.factory_admin_email = requestEmail
    }

    const { error: updateError } = await supabase
      .from('organizations')
      .update(updates)
      .eq('id', org.id)

    if (updateError) {
      console.error('[complete-instance] persist credentials:', updateError)
      return NextResponse.json({ error: 'อัปเดตองค์กรไม่สำเร็จ' }, { status: 500 })
    }

    const approveResult = await approveActiveTrialRequestByCode(supabase, {
      code,
      organizationId: org.id,
      accountType: org.account_type,
    })

    const resolvedAppUrl = appUrl || org.app_url?.trim() || ''
    const resolvedUsername = username || org.username?.trim() || ''
    const resolvedEmail =
      requestEmail || factoryAdminEmail || org.factory_admin_email?.trim() || ''

    let onboardSent = false
    let onboardSkipReason: string | undefined
    let adminNoticeSent = false
    let adminNoticeSkipReason: string | undefined

    if (notify) {
      try {
        const onboard = await sendOnboardEmailByOrganizationId(org.id)
        onboardSent = onboard.sent
        if (!onboard.sent) {
          onboardSkipReason = onboard.skipReason || onboard.error
          console.warn('[complete-instance] onboard email skipped:', onboardSkipReason)
        }
      } catch (error) {
        onboardSkipReason =
          error instanceof Error ? error.message : 'ส่งอีเมลต้อนรับไม่สำเร็จ'
        console.error('[complete-instance] onboard email failed:', error)
      }

      try {
        const adminEmails = await getEnabledNotificationEmails()
        if (adminEmails.length === 0) {
          adminNoticeSkipReason = 'no_admin_emails'
        } else if (!resolvedAppUrl) {
          adminNoticeSkipReason = 'องค์กรยังไม่มี App URL'
        } else {
          const notice = await sendAdminInstanceReadyNotice({
            organizationName: org.name,
            organizationCode: org.code,
            accountType: org.account_type,
            factoryAdminEmail: resolvedEmail,
            appUrl: resolvedAppUrl,
            username: resolvedUsername,
            adminEmails,
          })
          adminNoticeSent = notice.sent
          if (!notice.sent) {
            adminNoticeSkipReason = notice.skipReason
          }
        }
      } catch (error) {
        adminNoticeSkipReason =
          error instanceof Error ? error.message : 'ส่งอีเมลแจ้ง Admin ไม่สำเร็จ'
        console.error('[complete-instance] admin notice failed:', error)
      }
    }

    return NextResponse.json({
      id: org.id,
      initialized: true,
      requestApproved: approveResult.approved,
      requestId: approveResult.requestId ?? null,
      notify,
      onboardSent,
      adminNoticeSent,
      ...(onboardSkipReason ? { onboardSkipReason } : {}),
      ...(adminNoticeSkipReason ? { adminNoticeSkipReason } : {}),
    })
  } catch (error) {
    console.error('[complete-instance] unexpected error:', error)
    return NextResponse.json(
      { error: 'เกิดข้อผิดพลาดในการปิดงานอินสแตนซ์' },
      { status: 500 }
    )
  }
}
