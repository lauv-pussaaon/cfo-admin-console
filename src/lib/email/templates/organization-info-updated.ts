import {
  EMAIL_ACCENT_COLOR,
  contactFooterText,
  emailShellHtml,
  escapeHtml,
} from '@/lib/email/templates/shared'
import { ACCOUNT_TYPE_OPTIONS } from '@/types/account-types'

const USER_MANUAL_URL =
  'https://support.ideacarb.com/docs/user-manual/getting-started/overview'

function accountTypeLabel (value: string | null): string {
  const match = ACCOUNT_TYPE_OPTIONS.find((option) => option.value === value)
  return match?.label || value?.trim() || ''
}

export function buildOrganizationInfoUpdatedContent (params: {
  organizationName: string
  organizationCode: string | null
  accountType: string | null
  contactFirstName: string | null
  contactLastName: string | null
  contactPhone: string | null
  factoryAdminEmail: string
  loginUrl: string | null
  username: string | null
}): { subject: string; text: string; html: string } {
  const contactName = `${params.contactFirstName || ''} ${params.contactLastName || ''}`.trim()
  const thGreeting = contactName ? `เรียน คุณ${contactName}` : 'เรียนท่าน'
  const enGreeting = contactName ? `Hello ${contactName}` : 'Hello'
  const accountType = accountTypeLabel(params.accountType)
  const hasUsername = Boolean(params.username?.trim())
  const loginUrl = params.loginUrl?.trim() || ''
  const usernameText = hasUsername
    ? params.username
    : 'โปรดติดต่อทีม Ideacarb / please contact the Ideacarb team'

  const safe = {
    thGreeting: escapeHtml(thGreeting),
    enGreeting: escapeHtml(enGreeting),
    organizationName: escapeHtml(params.organizationName),
    organizationCode: escapeHtml(params.organizationCode || ''),
    accountType: escapeHtml(accountType),
    contactName: escapeHtml(contactName),
    contactPhone: escapeHtml(params.contactPhone || ''),
    factoryAdminEmail: escapeHtml(params.factoryAdminEmail),
    loginUrl: escapeHtml(loginUrl),
    username: escapeHtml(usernameText || ''),
    userManualUrl: escapeHtml(USER_MANUAL_URL),
  }

  const subject = 'ข้อมูลองค์กร Ideacarb ได้รับการอัปเดตแล้ว'

  const orgTextLines = [
    `- องค์กร / Organization: ${params.organizationName}`,
    ...(params.organizationCode
      ? [`- รหัสองค์กร / Organization code: ${params.organizationCode}`]
      : []),
    ...(accountType ? [`- ประเภทบัญชี / Account type: ${accountType}`] : []),
    ...(contactName ? [`- ผู้ติดต่อ / Contact: ${contactName}`] : []),
    ...(params.contactPhone ? [`- เบอร์โทร / Phone: ${params.contactPhone}`] : []),
    `- อีเมล Factory Admin / Factory Admin email: ${params.factoryAdminEmail}`,
  ]

  const signInTextLines = [
    ...(loginUrl ? [`เข้าสู่ระบบ / Sign in: ${loginUrl}`] : []),
    `- ชื่อผู้ใช้ / Username: ${usernameText}`,
  ]

  const text = [
    thGreeting,
    '',
    'ข้อมูลองค์กรของท่านได้รับการอัปเดตแล้ว',
    'รายละเอียดด้านล่างคือข้อมูลปัจจุบันขององค์กร',
    `คู่มือการใช้งาน: ${USER_MANUAL_URL}`,
    '',
    enGreeting,
    '',
    'Your organization information has been updated.',
    'The details below are the current organization information.',
    `User manual: ${USER_MANUAL_URL}`,
    '',
    'ข้อมูลองค์กร / Organization details:',
    ...orgTextLines,
    '',
    'ข้อมูลเข้าสู่ระบบ / Sign-in details:',
    ...signInTextLines,
    '',
    ...contactFooterText(),
    '',
    'อีเมลอัตโนมัติ ไม่ต้องตอบกลับ',
  ].join('\n')

  const orgHtmlItems = [
    `<li>องค์กร / Organization: ${safe.organizationName}</li>`,
    params.organizationCode
      ? `<li>รหัสองค์กร / Organization code: ${safe.organizationCode}</li>`
      : '',
    accountType ? `<li>ประเภทบัญชี / Account type: ${safe.accountType}</li>` : '',
    contactName ? `<li>ผู้ติดต่อ / Contact: ${safe.contactName}</li>` : '',
    params.contactPhone ? `<li>เบอร์โทร / Phone: ${safe.contactPhone}</li>` : '',
    `<li>อีเมล Factory Admin / Factory Admin email: ${safe.factoryAdminEmail}</li>`,
  ]
    .filter(Boolean)
    .join('\n    ')

  const loginHtml = loginUrl
    ? `<p>
    <a href="${safe.loginUrl}"
       style="display:inline-block;background:${EMAIL_ACCENT_COLOR};color:#fff;text-decoration:none;padding:10px 16px;border-radius:8px;font-weight:600;">
      เข้าสู่ระบบ
    </a>
  </p>
  <p style="font-size:13px;color:#64748b;">หรือเปิดลิงก์ / or open: <a href="${safe.loginUrl}">${safe.loginUrl}</a></p>`
    : ''

  const bodyHtml = `
  <p>${safe.thGreeting}</p>
  <p>ข้อมูลองค์กรของท่านได้รับการอัปเดตแล้ว</p>
  <p>รายละเอียดด้านล่างคือข้อมูลปัจจุบันขององค์กร</p>
  <p>คู่มือการใช้งาน: <a href="${safe.userManualUrl}">${safe.userManualUrl}</a></p>
  <hr style="border:none;border-top:1px solid #e2e8f0;margin:20px 0;" />
  <p>${safe.enGreeting}</p>
  <p>Your organization information has been updated.</p>
  <p>The details below are the current organization information.</p>
  <p>User manual: <a href="${safe.userManualUrl}">${safe.userManualUrl}</a></p>
  <p><strong>ข้อมูลองค์กร / Organization details</strong></p>
  <ul>
    ${orgHtmlItems}
  </ul>
  <p><strong>ข้อมูลเข้าสู่ระบบ / Sign-in details</strong></p>
  ${loginHtml}
  <ul>
    <li>ชื่อผู้ใช้ / Username: ${safe.username}</li>
  </ul>
  `.trim()

  return {
    subject,
    text,
    html: emailShellHtml(bodyHtml, { branded: true }),
  }
}
