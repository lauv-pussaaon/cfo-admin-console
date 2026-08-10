/**
 * Send organization onboard welcome email (API / server only).
 */

import { sendResendEmail } from '@/lib/email/templates/resend-client'
import { buildOrganizationOnboardContent } from '@/lib/email/templates/organization-onboard'

export async function sendOrganizationOnboardEmail (params: {
  to: string
  organizationName: string
  organizationCode: string | null
  accountType: string | null
  contactFirstName: string | null
  contactLastName: string | null
  contactPhone: string | null
  factoryAdminEmail: string
  loginUrl: string
  username: string | null
  password: string | null
}): Promise<{ sent: boolean; skipReason?: string }> {
  const content = buildOrganizationOnboardContent({
    organizationName: params.organizationName,
    organizationCode: params.organizationCode,
    accountType: params.accountType,
    contactFirstName: params.contactFirstName,
    contactLastName: params.contactLastName,
    contactPhone: params.contactPhone,
    factoryAdminEmail: params.factoryAdminEmail,
    loginUrl: params.loginUrl,
    username: params.username,
    password: params.password,
  })

  try {
    const result = await sendResendEmail({
      to: params.to,
      subject: content.subject,
      text: content.text,
      html: content.html,
    })
    if (!result.sent) {
      console.warn(`[email] ข้ามส่งอีเมลต้อนรับองค์กร: ${result.skipReason}`)
      return { sent: false, skipReason: result.skipReason }
    }
    if (process.env.NODE_ENV === 'development') {
      console.log('[email] ส่งอีเมลต้อนรับองค์กรแล้ว id=', result.id)
    }
    return { sent: true }
  } catch (error) {
    console.error('[email] Resend API error (organization onboard):', error)
    throw error
  }
}
