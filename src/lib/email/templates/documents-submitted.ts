import {
  contactFooterText,
  emailShellHtml,
  escapeHtml,
} from '@/lib/email/templates/shared'

export function buildDocumentsSubmittedContent (params: {
  name: string
  documentCount: number
  baseUrl: string
}): { subject: string; text: string; html: string } {
  const safeName = escapeHtml(params.name)
  const subject = 'ได้รับเอกสารยืนยันแล้ว — ทีมงานกำลังตรวจสอบ'

  const text = [
    `สวัสดี ${params.name}`,
    '',
    `ระบบได้รับเอกสารยืนยันของคุณแล้ว (${params.documentCount} ไฟล์)`,
    'ทีมงานจะตรวจสอบเอกสาร และจะส่งอีเมลยืนยันผลเมื่อการตรวจสอบเสร็จสิ้น',
    '',
    ...contactFooterText(),
    '',
    'อีเมลอัตโนมัติ ไม่ต้องตอบกลับ',
  ].join('\n')

  const bodyHtml = `
  <p>สวัสดี ${safeName}</p>
  <p>ขอบคุณที่อัปโหลดเอกสารยืนยัน ระบบได้รับไฟล์ของคุณแล้ว (${params.documentCount} ไฟล์)</p>
  <p>ทีมงานจะตรวจสอบเอกสาร และจะส่งอีเมลยืนยันผลเมื่อการตรวจสอบเสร็จสิ้น</p>
  `.trim()

  return {
    subject,
    text,
    html: emailShellHtml(bodyHtml),
  }
}
