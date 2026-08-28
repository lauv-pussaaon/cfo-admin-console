import { Resend } from 'resend'
import { getResendFrom } from '@/lib/email/resend-client'

export { DEFAULT_RESEND_FROM, getResendFrom } from '@/lib/email/resend-client'

export function getResendApiKey (): string | null {
  return process.env.RESEND_API_KEY?.trim() || process.env.RESEND_KEY?.trim() || null
}

export async function sendResendEmail (params: {
  to: string | string[]
  subject: string
  text: string
  html: string
  bcc?: string | string[]
}): Promise<{ sent: boolean; id?: string; skipReason?: string }> {
  const apiKey = getResendApiKey()
  if (!apiKey) {
    return { sent: false, skipReason: 'ไม่พบ RESEND_API_KEY' }
  }

  const resend = new Resend(apiKey)
  const result = await resend.emails.send({
    from: getResendFrom(),
    to: params.to,
    ...(params.bcc ? { bcc: params.bcc } : {}),
    subject: params.subject,
    text: params.text,
    html: params.html,
  })

  if (result.error) {
    throw new Error(result.error.message ?? 'ส่งอีเมลผ่าน Resend ไม่สำเร็จ')
  }

  return { sent: true, id: result.data?.id }
}
