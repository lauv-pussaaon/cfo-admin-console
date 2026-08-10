import {
  EMAIL_ACCENT_COLOR,
  contactFooterText,
  emailShellHtml,
  escapeHtml,
} from '@/lib/email/templates/shared'

export function buildOrganizationOnboardContent (params: {
  organizationName: string
  organizationCode: string | null
  accountType: string | null
  contactFirstName: string | null
  contactLastName: string | null
  contactPhone: string | null
  factoryAdminEmail: string
  loginUrl: string
  username: string | null
  password: string | null
}): { subject: string; text: string; html: string } {
  const contactName = `${params.contactFirstName || ''} ${params.contactLastName || ''}`.trim()
  const greetingName = contactName || 'ท่าน'
  const hasUsername = Boolean(params.username?.trim())
  const hasPassword = Boolean(params.password?.trim())

  const safe = {
    greetingName: escapeHtml(greetingName),
    organizationName: escapeHtml(params.organizationName),
    organizationCode: escapeHtml(params.organizationCode || ''),
    accountType: escapeHtml(params.accountType || ''),
    contactName: escapeHtml(contactName),
    contactPhone: escapeHtml(params.contactPhone || ''),
    factoryAdminEmail: escapeHtml(params.factoryAdminEmail),
    loginUrl: escapeHtml(params.loginUrl),
    username: escapeHtml(params.username || ''),
    password: escapeHtml(params.password || ''),
  }

  const subject = 'ยินดีต้อนรับสู่ Ideacarb — บัญชีองค์กรของคุณพร้อมใช้งานแล้ว'

  const detailTextLines = [
    `- องค์กร: ${params.organizationName}`,
    ...(params.organizationCode ? [`- รหัสองค์กร: ${params.organizationCode}`] : []),
    ...(params.accountType ? [`- ประเภทบัญชี: ${params.accountType}`] : []),
    ...(contactName ? [`- ผู้ติดต่อ: ${contactName}`] : []),
    ...(params.contactPhone ? [`- เบอร์โทร: ${params.contactPhone}`] : []),
    `- อีเมล Factory Admin: ${params.factoryAdminEmail}`,
  ]

  const loginTextLines = [
    `เข้าสู่ระบบ: ${params.loginUrl}`,
    hasUsername ? `- ชื่อผู้ใช้: ${params.username}` : '- ชื่อผู้ใช้: โปรดติดต่อทีม Ideacarb',
    hasPassword
      ? `- รหัสผ่าน: ${params.password}`
      : '- รหัสผ่าน: โปรดติดต่อทีม Ideacarb หากยังไม่มีรหัสผ่าน',
  ]

  const text = [
    `เรียน คุณ${greetingName}`,
    '',
    'ยินดีต้อนรับสู่ Ideacarb',
    'บัญชีองค์กรของท่านถูกสร้างเรียบร้อยแล้ว และพร้อมเริ่มใช้งาน',
    '',
    'ข้อมูลองค์กร:',
    ...detailTextLines,
    '',
    'ข้อมูลเข้าสู่ระบบ:',
    ...loginTextLines,
    '',
    ...contactFooterText(),
    '',
    'อีเมลอัตโนมัติ ไม่ต้องตอบกลับ',
  ].join('\n')

  const detailHtmlItems = [
    `<li>องค์กร: ${safe.organizationName}</li>`,
    params.organizationCode ? `<li>รหัสองค์กร: ${safe.organizationCode}</li>` : '',
    params.accountType ? `<li>ประเภทบัญชี: ${safe.accountType}</li>` : '',
    contactName ? `<li>ผู้ติดต่อ: ${safe.contactName}</li>` : '',
    params.contactPhone ? `<li>เบอร์โทร: ${safe.contactPhone}</li>` : '',
    `<li>อีเมล Factory Admin: ${safe.factoryAdminEmail}</li>`,
  ]
    .filter(Boolean)
    .join('\n    ')

  const usernameHtml = hasUsername
    ? `<li>ชื่อผู้ใช้: ${safe.username}</li>`
    : '<li>ชื่อผู้ใช้: โปรดติดต่อทีม Ideacarb</li>'
  const passwordHtml = hasPassword
    ? `<li>รหัสผ่าน: ${safe.password}</li>`
    : '<li>รหัสผ่าน: โปรดติดต่อทีม Ideacarb หากยังไม่มีรหัสผ่าน</li>'

  const bodyHtml = `
  <p>เรียน คุณ ${safe.greetingName}</p>
  <p>ยินดีต้อนรับสู่ Ideacarb</p>
  <p>บัญชีองค์กรของท่านถูกสร้างเรียบร้อยแล้ว และพร้อมเริ่มใช้งาน</p>
  <p><strong>ข้อมูลองค์กร</strong></p>
  <ul>
    ${detailHtmlItems}
  </ul>
  <p><strong>ข้อมูลเข้าสู่ระบบ</strong></p>
  <p>
    <a href="${safe.loginUrl}"
       style="display:inline-block;background:${EMAIL_ACCENT_COLOR};color:#fff;text-decoration:none;padding:10px 16px;border-radius:8px;font-weight:600;">
      เข้าสู่ระบบ
    </a>
  </p>
  <p style="font-size:13px;color:#64748b;">หรือเปิดลิงก์: <a href="${safe.loginUrl}">${safe.loginUrl}</a></p>
  <ul>
    ${usernameHtml}
    ${passwordHtml}
  </ul>
  `.trim()

  return {
    subject,
    text,
    html: emailShellHtml(bodyHtml, { branded: true }),
  }
}
