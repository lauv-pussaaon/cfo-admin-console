import {
  contactFooterText,
  emailShellHtml,
  escapeHtml,
} from '@/lib/email/templates/shared'
import {
  formatRegistrationProfileHtmlItems,
  formatRegistrationProfileTextLines,
  type RegistrationEmailProfile,
} from '@/lib/email/registration-profile-lines'

export function buildVerificationApprovedContent (params: {
  name: string
  username: string
  email: string
  roleTh: string
  profile?: RegistrationEmailProfile | null
  verifiedDate: string
  expiredDate: string
  loginUrl: string
  baseUrl: string
}): { subject: string; text: string; html: string } {
  const subject = 'ผลการยืนยันตัวตน: อนุมัติแล้ว — IdeaCarb CFO'

  const profileTextLines = params.profile
    ? formatRegistrationProfileTextLines(params.profile)
    : []
  const profileHtmlItems = params.profile
    ? formatRegistrationProfileHtmlItems(params.profile, escapeHtml)
    : ''

  const safe = {
    name: escapeHtml(params.name),
    username: escapeHtml(params.username),
    email: escapeHtml(params.email),
    roleTh: escapeHtml(params.roleTh),
    verifiedDate: escapeHtml(params.verifiedDate),
    expiredDate: escapeHtml(params.expiredDate),
    loginUrl: escapeHtml(params.loginUrl),
  }

  const text = [
    `สวัสดี ${params.name}`,
    '',
    'เอกสารยืนยันตัวตนของคุณได้รับการอนุมัติแล้ว และบัญชีพร้อมใช้งาน',
    '',
    `- วันที่อนุมัติ: ${params.verifiedDate}`,
    `- วันหมดอายุการรับรอง: ${params.expiredDate}`,
    '',
    'ข้อมูลบัญชี:',
    `- ชื่อ-นามสกุล: ${params.name}`,
    `- ชื่อผู้ใช้: ${params.username}`,
    `- อีเมล: ${params.email}`,
    `- บทบาท: ${params.roleTh}`,
    ...profileTextLines,
    '',
    `เข้าสู่ระบบ: ${params.loginUrl}`,
    '',
    ...contactFooterText(),
    '',
    'อีเมลอัตโนมัติ ไม่ต้องตอบกลับ',
  ].join('\n')

  const bodyHtml = `
  <p>สวัสดี ${safe.name}</p>
  <p>เอกสารยืนยันตัวตนของคุณได้รับการอนุมัติแล้ว และบัญชีพร้อมใช้งาน</p>
  <ul>
    <li>วันที่อนุมัติ: ${safe.verifiedDate}</li>
    <li>วันหมดอายุการรับรอง: ${safe.expiredDate}</li>
  </ul>
  <p><strong>ข้อมูลบัญชี</strong></p>
  <ul>
    <li>ชื่อ-นามสกุล: ${safe.name}</li>
    <li>ชื่อผู้ใช้: ${safe.username}</li>
    <li>อีเมล: ${safe.email}</li>
    <li>บทบาท: ${safe.roleTh}</li>
    ${profileHtmlItems}
  </ul>
  <p><a href="${safe.loginUrl}">เข้าสู่ระบบ Admin Console</a></p>
  `.trim()

  return {
    subject,
    text,
    html: emailShellHtml(bodyHtml),
  }
}
