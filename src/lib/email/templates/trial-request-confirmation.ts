import {
  contactFooterText,
  emailShellHtml,
  escapeHtml,
} from '@/lib/email/templates/shared'

export function buildTrialRequestConfirmationContent (params: {
  contactFirstName: string
  contactLastName: string
  organizationName: string
  contactEmail: string
  contactPhone: string
}): { subject: string; text: string; html: string } {
  const contactName = `${params.contactFirstName} ${params.contactLastName}`.trim()
  const safe = {
    contactName: escapeHtml(contactName),
    organizationName: escapeHtml(params.organizationName),
    contactEmail: escapeHtml(params.contactEmail),
    contactPhone: escapeHtml(params.contactPhone),
  }

  const subject = 'Ideacarb ได้รับคำขอทดลองใช้งาน 30 วันแล้ว'

  const text = [
    `เรียน คุณ${contactName}`,
    '',
    'ทีม Ideacarb ได้รับคำขอทดลองใช้งาน Demo 30 วันของท่านแล้ว',
    'ทีมงานจะติดต่อกลับในเร็ว ๆ นี้ เพื่อแจ้งขั้นตอนและคำแนะนำในการเริ่มใช้งาน',
    '',
    'ข้อมูลที่ส่งมา:',
    `- องค์กร: ${params.organizationName}`,
    `- ชื่อผู้ติดต่อ: ${contactName}`,
    `- อีเมล: ${params.contactEmail}`,
    `- เบอร์โทร: ${params.contactPhone}`,
    '',
    ...contactFooterText(),
    '',
    'อีเมลอัตโนมัติ ไม่ต้องตอบกลับ',
  ].join('\n')

  const bodyHtml = `
  <p>สวัสดี คุณ ${safe.contactName}</p>
  <p>ทีม Ideacarb ได้รับคำขอทดลองใช้งาน Demo 30 วันของท่านแล้ว</p>
  <p>ทีมงานจะติดต่อกลับในเร็ว ๆ นี้ เพื่อแจ้งขั้นตอนและคำแนะนำในการเริ่มใช้งาน</p>
  <p><strong>ข้อมูลที่ส่งมา</strong></p>
  <ul>
    <li>องค์กร: ${safe.organizationName}</li>
    <li>ชื่อผู้ติดต่อ: ${safe.contactName}</li>
    <li>อีเมล: ${safe.contactEmail}</li>
    <li>เบอร์โทร: ${safe.contactPhone}</li>
  </ul>
  `.trim()

  return {
    subject,
    text,
    html: emailShellHtml(bodyHtml),
  }
}
