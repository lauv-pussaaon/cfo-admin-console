import { Resend } from 'resend'

export const RESEND_FROM_NAME = 'IdeaCarb Support'
export const DEFAULT_RESEND_FROM = `${RESEND_FROM_NAME} <onboarding@resend.dev>`

export function getResendApiKey (): string | null {
  return (
    process.env.RESEND_API_KEY?.trim() ||
    process.env.RESEND_KEY?.trim() ||
    null
  )
}

export function getResendFrom (): string {
  const raw = process.env.RESEND_FROM_EMAIL?.trim()
  if (!raw) return DEFAULT_RESEND_FROM
  if (raw.includes('<')) return raw
  return `${RESEND_FROM_NAME} <${raw}>`
}

export async function sendResendEmail (params: {
  to: string | string[]
  subject: string
  text: string
  html: string
}): Promise<{ sent: boolean; id?: string; skipReason?: string }> {
  const apiKey = getResendApiKey()
  if (!apiKey) {
    return { sent: false, skipReason: 'ไม่พบ RESEND_API_KEY' }
  }

  const resend = new Resend(apiKey)
  const result = await resend.emails.send({
    from: getResendFrom(),
    to: params.to,
    subject: params.subject,
    text: params.text,
    html: params.html,
  })

  if (result.error) {
    console.error('[email] Resend API error:', result.error)
    throw new Error(result.error.message ?? 'ส่งอีเมลผ่าน Resend ไม่สำเร็จ')
  }

  return { sent: true, id: result.data?.id }
}
