/**
 * Notify applicant after admin rejects registration (API route only).
 */

import { Resend } from 'resend'

const DEFAULT_RESEND_FROM = 'IdeaCarb CFO <onboarding@resend.dev>'

function escapeHtml (s: string): string {
  return s
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
}

export async function sendRegistrationRejectedEmail (params: {
  to: string
  name: string
  username: string
  email: string
  reason: string
}): Promise<{ sent: boolean; skipReason?: string }> {
  const apiKey =
    process.env.RESEND_API_KEY?.trim() || process.env.RESEND_KEY?.trim()

  if (!apiKey) {
    const reason = 'ไม่พบ RESEND_API_KEY'
    console.warn(`[email] ข้ามส่งอีเมลปฏิเสธ: ${reason}`)
    return { sent: false, skipReason: reason }
  }

  const from =
    process.env.RESEND_FROM_EMAIL?.trim() || DEFAULT_RESEND_FROM

  const safe = {
    name: escapeHtml(params.name),
    username: escapeHtml(params.username),
    email: escapeHtml(params.email),
    reason: escapeHtml(params.reason),
  }

  const subject = 'คำขอเปิดบัญชีไม่ได้รับการอนุมัติ — IdeaCarb CFO'

  const text = [
    `สวัสดี ${params.name}`,
    '',
    'คำขอเปิดบัญชีของคุณไม่ได้รับการอนุมัติ',
    '',
    `เหตุผล: ${params.reason}`,
    '',
    'ข้อมูลที่ส่งมา:',
    `- ชื่อ-นามสกุล: ${params.name}`,
    `- ชื่อผู้ใช้: ${params.username}`,
    `- อีเมล: ${params.email}`,
    '',
    'หากมีคำถาม กรุณาติดต่อผู้ดูแลระบบ',
    '',
    'อีเมลอัตโนมัติ ไม่ต้องตอบกลับ',
  ].join('\n')

  const html = `
<!DOCTYPE html>
<html>
<body style="font-family: system-ui, sans-serif; line-height: 1.5; color: #0f172a;">
  <p>สวัสดี ${safe.name}</p>
  <p>คำขอเปิดบัญชีของคุณไม่ได้รับการอนุมัติ</p>
  <p><strong>เหตุผล</strong></p>
  <p style="white-space: pre-wrap;">${safe.reason}</p>
  <p><strong>ข้อมูลที่ส่งมา</strong></p>
  <ul>
    <li>ชื่อ-นามสกุล: ${safe.name}</li>
    <li>ชื่อผู้ใช้: ${safe.username}</li>
    <li>อีเมล: ${safe.email}</li>
  </ul>
  <p>หากมีคำถาม กรุณาติดต่อผู้ดูแลระบบ</p>
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
    console.error('[email] Resend API error (rejected):', result.error)
    throw new Error(result.error.message ?? 'ส่งอีเมลผ่าน Resend ไม่สำเร็จ')
  }

  if (process.env.NODE_ENV === 'development') {
    console.log('[email] ส่งอีเมลปฏิเสธแล้ว id=', result.data?.id)
  }

  return { sent: true }
}
