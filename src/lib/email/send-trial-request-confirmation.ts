/**
 * ส่งอีเมลยืนยันให้ผู้ขอทดลองใช้งานหลังลงทะเบียนสาธารณะ (เรียกจาก API route เท่านั้น)
 */

import { sendResendEmail } from '@/lib/email/templates/resend-client'
import { buildTrialRequestConfirmationContent } from '@/lib/email/templates/trial-request-confirmation'

export async function sendTrialRequestConfirmationEmail (params: {
  to: string
  contactFirstName: string
  contactLastName: string
  organizationName: string
  contactEmail: string
  contactPhone: string
}): Promise<{ sent: boolean; skipReason?: string }> {
  const content = buildTrialRequestConfirmationContent({
    contactFirstName: params.contactFirstName,
    contactLastName: params.contactLastName,
    organizationName: params.organizationName,
    contactEmail: params.contactEmail,
    contactPhone: params.contactPhone,
  })

  try {
    const result = await sendResendEmail({
      to: params.to,
      subject: content.subject,
      text: content.text,
      html: content.html,
    })
    if (!result.sent) {
      console.warn(`[email] ข้ามส่งอีเมลยืนยันคำขอทดลองใช้งาน: ${result.skipReason}`)
      return { sent: false, skipReason: result.skipReason }
    }
    if (process.env.NODE_ENV === 'development') {
      console.log('[email] ส่งอีเมลยืนยันคำขอทดลองใช้งานแล้ว id=', result.id)
    }
    return { sent: true }
  } catch (error) {
    console.error('[email] Resend API error (trial confirmation):', error)
    throw error
  }
}
