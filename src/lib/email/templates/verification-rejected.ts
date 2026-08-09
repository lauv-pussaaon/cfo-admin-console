import {
  contactFooterText,
  emailShellHtml,
  escapeHtml,
} from '@/lib/email/templates/shared'

export function buildVerificationRejectedContent (params: {
  name: string
  username: string
  email: string
  reason: string
  baseUrl: string
}): { subject: string; text: string; html: string } {
  const subject = 'ผลการยืนยันตัวตน: ไม่ได้รับการอนุมัติ — IdeaCarb CFO'

  const safe = {
    name: escapeHtml(params.name),
    username: escapeHtml(params.username),
    email: escapeHtml(params.email),
    reason: escapeHtml(params.reason),
  }

  const text = [
    `สวัสดี ${params.name}`,
    '',
    'คำขอเปิดบัญชี / ยืนยันตัวตนของคุณไม่ได้รับการอนุมัติ',
    '',
    `เหตุผล: ${params.reason}`,
    '',
    'ข้อมูลที่ส่งมา:',
    `- ชื่อ-นามสกุล: ${params.name}`,
    `- ชื่อผู้ใช้: ${params.username}`,
    `- อีเมล: ${params.email}`,
    '',
    ...contactFooterText(),
    '',
    'อีเมลอัตโนมัติ ไม่ต้องตอบกลับ',
  ].join('\n')

  const bodyHtml = `
  <p>สวัสดี ${safe.name}</p>
  <p>คำขอเปิดบัญชี / ยืนยันตัวตนของคุณไม่ได้รับการอนุมัติ</p>
  <p><strong>เหตุผล</strong></p>
  <p style="white-space: pre-wrap;">${safe.reason}</p>
  <p><strong>ข้อมูลที่ส่งมา</strong></p>
  <ul>
    <li>ชื่อ-นามสกุล: ${safe.name}</li>
    <li>ชื่อผู้ใช้: ${safe.username}</li>
    <li>อีเมล: ${safe.email}</li>
  </ul>
  `.trim()

  return {
    subject,
    text,
    html: emailShellHtml(bodyHtml),
  }
}
