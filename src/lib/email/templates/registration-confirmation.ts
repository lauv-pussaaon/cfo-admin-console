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

export function buildRegistrationConfirmationContent (params: {
  name: string
  username: string
  email: string
  roleTh: string
  profile: RegistrationEmailProfile
  verificationUploadUrl: string
  loginUrl: string
  baseUrl: string
}): { subject: string; text: string; html: string } {
  const safe = {
    name: escapeHtml(params.name),
    username: escapeHtml(params.username),
    email: escapeHtml(params.email),
    roleTh: escapeHtml(params.roleTh),
    verificationUploadUrl: escapeHtml(params.verificationUploadUrl),
    loginUrl: escapeHtml(params.loginUrl),
  }
  const profileTextLines = formatRegistrationProfileTextLines(params.profile)
  const profileHtmlItems = formatRegistrationProfileHtmlItems(
    params.profile,
    escapeHtml
  )

  const subject = 'รับคำขอเปิดบัญชีแล้ว — กรุณาอัปโหลดเอกสารยืนยัน'

  const text = [
    `สวัสดี ${params.name}`,
    '',
    'ระบบได้รับข้อมูลลงทะเบียนของคุณแล้ว',
    'ขั้นตอนถัดไป: อัปโหลดเอกสารยืนยันตัวตนผ่านลิงก์ด้านล่าง จากนั้นทีมงานจะตรวจสอบและแจ้งผลทางอีเมล',
    '',
    `อัปโหลดเอกสารยืนยัน: ${params.verificationUploadUrl}`,
    '',
    'ข้อมูลที่ส่งมา:',
    `- ชื่อ-นามสกุล: ${params.name}`,
    `- ชื่อผู้ใช้: ${params.username}`,
    `- อีเมล: ${params.email}`,
    `- บทบาท: ${params.roleTh}`,
    ...profileTextLines,
    '',
    `เข้าสู่ระบบ (หลังได้รับอนุมัติ): ${params.loginUrl}`,
    '',
    ...contactFooterText(),
    '',
    'อีเมลอัตโนมัติ ไม่ต้องตอบกลับ',
  ].join('\n')

  const bodyHtml = `
  <p>สวัสดี ${safe.name}</p>
  <p>ทีม Ideacarb ได้รับข้อมูลลงทะเบียนของคุณแล้ว กรุณาอัปโหลดเอกสารยืนยันตัวตนเพื่อให้ทีมงานตรวจสอบ</p>
  <p>
    <a href="${safe.verificationUploadUrl}"
       style="display:inline-block;background:#0f766e;color:#fff;text-decoration:none;padding:10px 16px;border-radius:8px;font-weight:600;">
      อัปโหลดเอกสารยืนยัน
    </a>
  </p>
  <p style="font-size:13px;color:#64748b;">หรือเปิดลิงก์: <a href="${safe.verificationUploadUrl}">${safe.verificationUploadUrl}</a></p>
  <p><strong>ข้อมูลที่ส่งมา</strong></p>
  <ul>
    <li>ชื่อ-นามสกุล: ${safe.name}</li>
    <li>ชื่อผู้ใช้: ${safe.username}</li>
    <li>อีเมล: ${safe.email}</li>
    <li>บทบาท: ${safe.roleTh}</li>
    ${profileHtmlItems}
  </ul>
  <p><a href="${safe.loginUrl}">เข้าสู่ระบบ</a> (ใช้งานได้หลังผู้ดูแลอนุมัติ)</p>
  `.trim()

  return {
    subject,
    text,
    html: emailShellHtml(bodyHtml),
  }
}
