/**
 * Thank-you email after verification documents are submitted (API route only).
 */

import { resolveBaseUrlForEmail } from '@/lib/email/resolve-site-origin'
import { sendResendEmail } from '@/lib/email/templates/resend-client'
import { buildDocumentsSubmittedContent } from '@/lib/email/templates/documents-submitted'

export async function sendDocumentsSubmittedEmail (params: {
  to: string
  name: string
  documentCount: number
  requestOrigin?: string
}): Promise<{ sent: boolean; skipReason?: string }> {
  const baseUrl = resolveBaseUrlForEmail(params.requestOrigin ?? '')
  if (!baseUrl) {
    const reason =
      'ไม่พบ URL แอป (ตั้ง APP_URL หรือ NEXT_PUBLIC_APP_URL หรือส่ง requestOrigin)'
    console.warn(`[email] ข้ามส่งอีเมลรับเอกสาร: ${reason}`)
    return { sent: false, skipReason: reason }
  }

  const content = buildDocumentsSubmittedContent({
    name: params.name,
    documentCount: params.documentCount,
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
      console.warn(`[email] ข้ามส่งอีเมลรับเอกสาร: ${result.skipReason}`)
      return { sent: false, skipReason: result.skipReason }
    }
    if (process.env.NODE_ENV === 'development') {
      console.log('[email] ส่งอีเมลรับเอกสารแล้ว id=', result.id)
    }
    return { sent: true }
  } catch (error) {
    console.error('[email] Resend API error (documents submitted):', error)
    throw error
  }
}
