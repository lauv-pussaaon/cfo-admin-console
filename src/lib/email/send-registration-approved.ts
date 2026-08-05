/**
 * Notify applicant after admin approves registration (API route only).
 */

import { Resend } from 'resend'
import { resolveBaseUrlForEmail } from '@/lib/email/resolve-site-origin'
import { buildLoginUrl } from '@/lib/email/send-registration-confirmation'
import {
  formatRegistrationProfileHtmlItems,
  formatRegistrationProfileTextLines,
  type RegistrationEmailProfile,
} from '@/lib/email/registration-profile-lines'

const ROLE_LABEL_TH: Record<'Consult' | 'Audit', string> = {
  Consult: 'ที่ปรึกษา',
  Audit: 'ผู้ตรวจสอบ',
}

const DEFAULT_RESEND_FROM = 'IdeaCarb CFO <onboarding@resend.dev>'

function escapeHtml (s: string): string {
  return s
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
}

export async function sendRegistrationApprovedEmail (params: {
  to: string
  name: string
  username: string
  email: string
  role: string
  profile?: RegistrationEmailProfile | null
  requestOrigin?: string
}): Promise<{ sent: boolean; skipReason?: string }> {
  const apiKey =
    process.env.RESEND_API_KEY?.trim() || process.env.RESEND_KEY?.trim()

  if (!apiKey) {
    const reason = 'ไม่พบ RESEND_API_KEY'
    console.warn(`[email] ข้ามส่งอีเมลอนุมัติ: ${reason}`)
    return { sent: false, skipReason: reason }
  }

  const from =
    process.env.RESEND_FROM_EMAIL?.trim() || DEFAULT_RESEND_FROM

  const baseUrl = resolveBaseUrlForEmail(params.requestOrigin ?? '')
  if (!baseUrl) {
    const reason =
      'ไม่พบ URL แอป (ตั้ง APP_URL หรือ NEXT_PUBLIC_APP_URL หรือส่ง requestOrigin)'
    console.warn(`[email] ข้ามส่งอีเมลอนุมัติ: ${reason}`)
    return { sent: false, skipReason: reason }
  }

  const loginUrl = buildLoginUrl(baseUrl)
  const roleTh =
    params.role === 'Consult' || params.role === 'Audit'
      ? ROLE_LABEL_TH[params.role]
      : params.role

  const safe = {
    name: escapeHtml(params.name),
    username: escapeHtml(params.username),
    email: escapeHtml(params.email),
    roleTh: escapeHtml(roleTh),
  }
  const safeLoginHref = escapeHtml(loginUrl)
  const profileTextLines = params.profile
    ? formatRegistrationProfileTextLines(params.profile)
    : []
  const profileHtmlItems = params.profile
    ? formatRegistrationProfileHtmlItems(params.profile, escapeHtml)
    : ''

  const subject = 'บัญชีของคุณได้รับการอนุมัติแล้ว — IdeaCarb CFO'

  const text = [
    `สวัสดี ${params.name}`,
    '',
    'บัญชีของคุณได้รับการอนุมัติแล้ว สามารถเข้าสู่ระบบ Admin Console ได้ทันที',
    '',
    'ข้อมูลบัญชี:',
    `- ชื่อ-นามสกุล: ${params.name}`,
    `- ชื่อผู้ใช้: ${params.username}`,
    `- อีเมล: ${params.email}`,
    `- บทบาท: ${roleTh}`,
    ...profileTextLines,
    '',
    `เข้าสู่ระบบ: ${loginUrl}`,
    '',
    'อีเมลอัตโนมัติ ไม่ต้องตอบกลับ',
  ].join('\n')

  const html = `
<!DOCTYPE html>
<html>
<body style="font-family: system-ui, sans-serif; line-height: 1.5; color: #0f172a;">
  <p>สวัสดี ${safe.name}</p>
  <p>บัญชีของคุณได้รับการอนุมัติแล้ว สามารถเข้าสู่ระบบ Admin Console ได้ทันที</p>
  <p><strong>ข้อมูลบัญชี</strong></p>
  <ul>
    <li>ชื่อ-นามสกุล: ${safe.name}</li>
    <li>ชื่อผู้ใช้: ${safe.username}</li>
    <li>อีเมล: ${safe.email}</li>
    <li>บทบาท: ${safe.roleTh}</li>
    ${profileHtmlItems}
  </ul>
  <p><a href="${safeLoginHref}">เข้าสู่ระบบ Admin Console</a></p>
  <p style="font-size:12px;color:#64748b;">อีเมลอัตโนมัติ ไม่ต้องตอบกลับ</p>
</body>
</html>`.trim()

  const resend = new Resend(apiKey)
  const result = await resend.emails.send({
    from,
    to: params.to,
    subject,
    text,
    html,
  })

  if (result.error) {
    console.error('[email] Resend API error (approved):', result.error)
    throw new Error(result.error.message ?? 'ส่งอีเมลผ่าน Resend ไม่สำเร็จ')
  }

  if (process.env.NODE_ENV === 'development') {
    console.log('[email] ส่งอีเมลอนุมัติแล้ว id=', result.data?.id)
  }

  return { sent: true }
}
