/**
 * Load organization by id and send the info-updated email (server only).
 * Password is never loaded or included.
 */

import { sendOrganizationInfoUpdatedEmail } from '@/lib/email/send-organization-info-updated'
import { getServiceSupabase } from '@/lib/supabase-service'

export type SendOrganizationInfoUpdatedByOrgIdResult =
  | { sent: true }
  | { sent: false; skipReason: 'no_factory_admin_email' }
  | { sent: false; error: string; status: number; skipReason?: string }

function buildLoginUrl (appUrl: string): string {
  return `${appUrl.replace(/\/$/, '')}/login`
}

function isValidEmail (value: string): boolean {
  return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(value)
}

export async function sendOrganizationInfoUpdatedByOrganizationId (
  organizationId: string
): Promise<SendOrganizationInfoUpdatedByOrgIdResult> {
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
      'id, name, code, account_type, app_url, factory_admin_email, username, contact_first_name, contact_last_name, contact_phone'
    )
    .eq('id', organizationId)
    .maybeSingle()

  if (fetchError) {
    console.error('[email] load organization for info update:', fetchError)
    return { sent: false, error: 'โหลดข้อมูลองค์กรไม่สำเร็จ', status: 500 }
  }

  if (!org) {
    return { sent: false, error: 'ไม่พบองค์กร', status: 404 }
  }

  const factoryAdminEmail = org.factory_admin_email?.trim() || ''
  if (!factoryAdminEmail || !isValidEmail(factoryAdminEmail)) {
    return { sent: false, skipReason: 'no_factory_admin_email' }
  }

  const appUrl = org.app_url?.trim() || ''

  try {
    const result = await sendOrganizationInfoUpdatedEmail({
      to: factoryAdminEmail,
      organizationName: org.name,
      organizationCode: org.code,
      accountType: org.account_type,
      contactFirstName: org.contact_first_name,
      contactLastName: org.contact_last_name,
      contactPhone: org.contact_phone,
      factoryAdminEmail,
      loginUrl: appUrl ? buildLoginUrl(appUrl) : null,
      username: org.username,
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
