/**
 * Load organization by id and send onboard email (server only).
 */

import { getServiceSupabase } from '@/lib/supabase-service'
import { sendOrganizationOnboardEmail } from '@/lib/email/send-organization-onboard'

export type SendOnboardByOrgIdResult =
  | { sent: true }
  | { sent: false; error: string; status: number; skipReason?: string }

function buildLoginUrl (appUrl: string): string {
  return `${appUrl.replace(/\/$/, '')}/login`
}

function isValidEmail (value: string): boolean {
  return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(value)
}

export async function sendOnboardEmailByOrganizationId (
  organizationId: string
): Promise<SendOnboardByOrgIdResult> {
  const supabase = getServiceSupabase()
  if (!supabase) {
    return {
      sent: false,
      error: 'ตั้งค่า SUPABASE_SERVICE_ROLE_KEY ไม่ครบ',
      status: 500,
    }
  }

  const { data: org, error: fetchError } = await supabase
    .from('organizations')
    .select(
      'id, name, code, account_type, app_url, factory_admin_email, username, password, contact_first_name, contact_last_name, contact_phone'
    )
    .eq('id', organizationId)
    .maybeSingle()

  if (fetchError) {
    console.error('[email] load organization for onboard:', fetchError)
    return { sent: false, error: 'โหลดข้อมูลองค์กรไม่สำเร็จ', status: 500 }
  }

  if (!org) {
    return { sent: false, error: 'ไม่พบองค์กร', status: 404 }
  }

  const factoryAdminEmail = org.factory_admin_email?.trim() || ''
  if (!factoryAdminEmail || !isValidEmail(factoryAdminEmail)) {
    return {
      sent: false,
      error: 'องค์กรยังไม่มีอีเมล Factory Admin ที่ถูกต้อง',
      status: 400,
    }
  }

  const appUrl = org.app_url?.trim() || ''
  if (!appUrl) {
    return {
      sent: false,
      error: 'องค์กรยังไม่มี App URL',
      status: 400,
    }
  }

  try {
    const result = await sendOrganizationOnboardEmail({
      to: factoryAdminEmail,
      organizationName: org.name,
      organizationCode: org.code,
      accountType: org.account_type,
      contactFirstName: org.contact_first_name,
      contactLastName: org.contact_last_name,
      contactPhone: org.contact_phone,
      factoryAdminEmail,
      loginUrl: buildLoginUrl(appUrl),
      username: org.username,
      password: org.password,
    })

    if (!result.sent) {
      return {
        sent: false,
        error: result.skipReason || 'ส่งอีเมลไม่สำเร็จ',
        status: 502,
        skipReason: result.skipReason,
      }
    }

    return { sent: true }
  } catch (error) {
    const message =
      error instanceof Error ? error.message : 'ส่งอีเมลผ่าน Resend ไม่สำเร็จ'
    return { sent: false, error: message, status: 502 }
  }
}
