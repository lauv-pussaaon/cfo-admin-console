/**
 * Notify applicant after admin approves registration (API route only).
 */

import { resolveBaseUrlForEmail } from '@/lib/email/resolve-site-origin'
import { buildLoginUrl } from '@/lib/email/send-registration-confirmation'
import { sendResendEmail } from '@/lib/email/templates/resend-client'
import { buildVerificationApprovedContent } from '@/lib/email/templates/verification-approved'
import type { RegistrationEmailProfile } from '@/lib/email/registration-profile-lines'

const ROLE_LABEL_TH: Record<'Consult' | 'Audit', string> = {
  Consult: 'ที่ปรึกษา',
  Audit: 'ผู้ตรวจสอบ',
}

export async function sendRegistrationApprovedEmail (params: {
  to: string
  name: string
  username: string
  email: string
  role: string
  profile?: RegistrationEmailProfile | null
  verifiedDate: string
  expiredDate: string
  requestOrigin?: string
}): Promise<{ sent: boolean; skipReason?: string }> {
  const baseUrl = resolveBaseUrlForEmail(params.requestOrigin ?? '')
  if (!baseUrl) {
    const reason =
      'ไม่พบ URL แอป (ตั้ง APP_URL หรือ NEXT_PUBLIC_APP_URL หรือส่ง requestOrigin)'
    console.warn(`[email] ข้ามส่งอีเมลอนุมัติ: ${reason}`)
    return { sent: false, skipReason: reason }
  }

  const roleTh =
    params.role === 'Consult' || params.role === 'Audit'
      ? ROLE_LABEL_TH[params.role]
      : params.role

  const content = buildVerificationApprovedContent({
    name: params.name,
    username: params.username,
    email: params.email,
    roleTh,
    profile: params.profile,
    verifiedDate: params.verifiedDate,
    expiredDate: params.expiredDate,
    loginUrl: buildLoginUrl(baseUrl),
    baseUrl,
  })

  try {
    const result = await sendResendEmail({
      to: params.to,
      subject: content.subject,
      text: content.text,
      html: content.html,
    })
    if (!result.sent) {
      console.warn(`[email] ข้ามส่งอีเมลอนุมัติ: ${result.skipReason}`)
      return { sent: false, skipReason: result.skipReason }
    }
    if (process.env.NODE_ENV === 'development') {
      console.log('[email] ส่งอีเมลอนุมัติแล้ว id=', result.id)
    }
    return { sent: true }
  } catch (error) {
    console.error('[email] Resend API error (approved):', error)
    throw error
  }
}
