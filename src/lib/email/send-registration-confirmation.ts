/**
 * ส่งอีเมลยืนยันหลังลงทะเบียนสาธารณะ (เรียกจาก API route เท่านั้น)
 */

import { resolveBaseUrlForEmail } from '@/lib/email/resolve-site-origin'
import { sendResendEmail } from '@/lib/email/templates/resend-client'
import { buildRegistrationConfirmationContent } from '@/lib/email/templates/registration-confirmation'
import type { RegistrationEmailProfile } from '@/lib/email/registration-profile-lines'

const ROLE_LABEL_TH: Record<'Consult' | 'Audit', string> = {
  Consult: 'ที่ปรึกษา',
  Audit: 'ผู้ตรวจสอบ',
}

export function buildLoginUrl (baseUrl: string): string {
  const trimmed = baseUrl.trim().replace(/\/+$/, '')
  if (!trimmed) return '/login'
  return `${trimmed}/login`
}

export async function sendRegistrationConfirmationEmail (params: {
  to: string
  name: string
  username: string
  email: string
  role: 'Consult' | 'Audit'
  profile: RegistrationEmailProfile
  verificationUploadUrl: string
  requestOrigin?: string
}): Promise<{ sent: boolean; skipReason?: string }> {
  const baseUrl = resolveBaseUrlForEmail(params.requestOrigin ?? '')
  if (!baseUrl) {
    const reason =
      'ไม่พบ URL แอป (ตั้ง APP_URL หรือ NEXT_PUBLIC_APP_URL หรือส่ง requestOrigin)'
    console.warn(`[email] ข้ามส่งอีเมลยืนยัน: ${reason}`)
    return { sent: false, skipReason: reason }
  }

  const content = buildRegistrationConfirmationContent({
    name: params.name,
    username: params.username,
    email: params.email,
    roleTh: ROLE_LABEL_TH[params.role],
    profile: params.profile,
    verificationUploadUrl: params.verificationUploadUrl,
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
      console.warn(`[email] ข้ามส่งอีเมลยืนยัน: ${result.skipReason}`)
      return { sent: false, skipReason: result.skipReason }
    }
    if (process.env.NODE_ENV === 'development') {
      console.log('[email] ส่งอีเมลยืนยันลงทะเบียนแล้ว id=', result.id)
    }
    return { sent: true }
  } catch (error) {
    console.error('[email] Resend API error:', error)
    throw error
  }
}
