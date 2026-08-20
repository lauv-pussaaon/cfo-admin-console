import {
  contactFooterText,
  emailShellHtml,
  escapeHtml,
} from '@/lib/email/templates/shared'
import {
  getOrgRequestKindLabel,
  isAnnualMembershipRequest,
  type OrgRequestKind,
} from '@/types/org-request-kind'

export function buildTrialRequestConfirmationContent (params: {
  contactFirstName: string
  contactLastName: string
  organizationName: string
  companyCode?: string | null
  contactEmail: string
  contactPhone: string
  requestKind?: OrgRequestKind
}): { subject: string; text: string; html: string } {
  const contactName = `${params.contactFirstName} ${params.contactLastName}`.trim()
  const isMembership = isAnnualMembershipRequest(params.requestKind)
  const kindLabel = getOrgRequestKindLabel(params.requestKind)
  const receivedLine = isMembership
    ? 'ทีม Ideacarb ได้รับคำขอสมัครสมาชิกรายปีของท่านแล้ว'
    : 'ทีม Ideacarb ได้รับคำขอทดลองใช้งาน Demo 30 วันของท่านแล้ว'
  const nextStepLine = isMembership
    ? 'ทีมงานจะติดต่อกลับในเร็ว ๆ นี้ เพื่อแจ้งขั้นตอนการเปิดใช้งานบัญชี'
    : 'ทีมงานจะติดต่อกลับในเร็ว ๆ นี้ เพื่อแจ้งขั้นตอนและคำแนะนำในการเริ่มใช้งาน'
  const companyCode = params.companyCode?.trim() || ''
  const safe = {
    contactName: escapeHtml(contactName),
    organizationName: escapeHtml(params.organizationName),
    companyCode: escapeHtml(companyCode),
    contactEmail: escapeHtml(params.contactEmail),
    contactPhone: escapeHtml(params.contactPhone),
    receivedLine: escapeHtml(receivedLine),
    nextStepLine: escapeHtml(nextStepLine),
  }

  const subject = isMembership
    ? 'Ideacarb ได้รับคำขอสมัครสมาชิกรายปีแล้ว'
    : 'Ideacarb ได้รับคำขอทดลองใช้งาน 30 วันแล้ว'

  const text = [
    `เรียน คุณ${contactName}`,
    '',
    receivedLine,
    nextStepLine,
    '',
    'ข้อมูลที่ส่งมา:',
    `- ประเภทคำขอ: ${kindLabel}`,
    `- องค์กร: ${params.organizationName}`,
    `- รหัสบริษัท: ${companyCode || '—'}`,
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
  <p>${safe.receivedLine}</p>
  <p>${safe.nextStepLine}</p>
  <p><strong>ข้อมูลที่ส่งมา</strong></p>
  <ul>
    <li>ประเภทคำขอ: ${escapeHtml(kindLabel)}</li>
    <li>องค์กร: ${safe.organizationName}</li>
    <li>รหัสบริษัท: ${safe.companyCode || '—'}</li>
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
