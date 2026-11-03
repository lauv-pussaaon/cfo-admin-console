import { contactFooterText, emailShellHtml, escapeHtml } from '@/lib/email/templates/shared'

function contactGreeting (firstName: string, lastName: string): { th: string; en: string } {
  const name = `${firstName} ${lastName}`.trim()
  return {
    th: name ? `เรียน คุณ${name}` : 'เรียนท่าน',
    en: name ? `Hello ${name}` : 'Hello',
  }
}

export function buildInstanceDeployFailedUserContent (params: {
  organizationName: string
  companyCode: string
  contactFirstName?: string | null
  contactLastName?: string | null
}): { subject: string; text: string; html: string } {
  const greeting = contactGreeting(params.contactFirstName || '', params.contactLastName || '')
  const subject = `ยังเปิดใช้งาน Ideacarb ไม่สำเร็จ — ${params.companyCode}`
  const text = [
    greeting.th,
    '',
    `การเปิดใช้งานอินสแตนซ์สำหรับ ${params.organizationName} (${params.companyCode}) ยังไม่สำเร็จ`,
    'ทีม Ideacarb จะติดต่อกลับเพื่อดำเนินการต่อ',
    '',
    greeting.en,
    '',
    `Setup for ${params.organizationName} (${params.companyCode}) did not finish.`,
    'The Ideacarb team will follow up.',
    '',
    ...contactFooterText(),
  ].join('\n')
  const bodyHtml = `
  <p>${escapeHtml(greeting.th)}</p>
  <p>การเปิดใช้งานอินสแตนซ์สำหรับ <strong>${escapeHtml(params.organizationName)}</strong> (${escapeHtml(params.companyCode)}) ยังไม่สำเร็จ ทีม Ideacarb จะติดต่อกลับเพื่อดำเนินการต่อ</p>
  <p>${escapeHtml(greeting.en)}</p>
  <p>Setup for <strong>${escapeHtml(params.organizationName)}</strong> (${escapeHtml(params.companyCode)}) did not finish. The Ideacarb team will follow up.</p>
  `.trim()
  return { subject, text, html: emailShellHtml(bodyHtml, { branded: true }) }
}

export function buildInstanceDeployFailedAdminContent (params: {
  organizationName: string
  companyCode: string
  contactEmail: string
  error: string
  logPath?: string | null
}): { subject: string; text: string; html: string } {
  const logPath = params.logPath?.trim() || ''
  const subject = `ติดตั้งอินสแตนซ์ไม่สำเร็จ — ${params.companyCode}`
  const text = [
    'ติดตั้งอินสแตนซ์ไม่สำเร็จ',
    '',
    `ชื่อองค์กร: ${params.organizationName}`,
    `รหัสบริษัท: ${params.companyCode}`,
    `อีเมลผู้ติดต่อ: ${params.contactEmail || '—'}`,
    `ข้อผิดพลาด: ${params.error}`,
    ...(logPath ? [`ล็อก: ${logPath}`] : []),
    '',
    ...contactFooterText(),
  ].join('\n')
  const bodyHtml = `
  <p><strong>ติดตั้งอินสแตนซ์ไม่สำเร็จ</strong></p>
  <ul>
    <li>ชื่อองค์กร: ${escapeHtml(params.organizationName)}</li>
    <li>รหัสบริษัท: ${escapeHtml(params.companyCode)}</li>
    <li>อีเมลผู้ติดต่อ: ${escapeHtml(params.contactEmail || '—')}</li>
    <li>ข้อผิดพลาด: ${escapeHtml(params.error)}</li>
    ${logPath ? `<li>ล็อก: ${escapeHtml(logPath)}</li>` : ''}
  </ul>
  `.trim()
  return { subject, text, html: emailShellHtml(bodyHtml, { branded: true }) }
}
