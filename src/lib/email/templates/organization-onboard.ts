import {
  EMAIL_ACCENT_COLOR,
  contactFooterText,
  emailShellHtml,
  escapeHtml,
} from '@/lib/email/templates/shared'
import {
  isAnnualMembershipRequest,
  type OrgRequestKind,
} from '@/types/org-request-kind'

const USER_MANUAL_URL =
  'https://support.ideacarb.com/docs/user-manual/getting-started/overview'

export function buildOrganizationOnboardContent (params: {
  organizationName: string
  organizationCode: string | null
  requestKind: OrgRequestKind
  contactFirstName: string | null
  contactLastName: string | null
  contactPhone: string | null
  factoryAdminEmail: string
  loginUrl: string
  username: string | null
  password: string | null
}): { subject: string; text: string; html: string } {
  const contactName = `${params.contactFirstName || ''} ${params.contactLastName || ''}`.trim()
  const thGreeting = contactName ? `เรียน คุณ${contactName}` : 'เรียนท่าน'
  const enGreeting = contactName ? `Hello ${contactName}` : 'Hello'
  const isMembership = isAnnualMembershipRequest(params.requestKind)
  const hasUsername = Boolean(params.username?.trim())
  const hasPassword = Boolean(params.password?.trim())

  const thReady = isMembership
    ? 'อินสแตนซ์ของท่านพร้อมใช้งานแล้ว ทีม SID-ENCONSULT จะติดต่อเพื่อนัด kickoff'
    : 'ท่านพร้อมดูตัวเลขคาร์บอนครั้งแรกได้ตั้งแต่วันนี้'
  const thNext = isMembership
    ? 'ขั้นตอนถัดไป: เข้าสู่ระบบ → ตรวจสอบข้อมูลองค์กร → เปิดคู่มือการใช้งาน'
    : 'ขั้นตอนถัดไป: เข้าสู่ระบบ → สร้างรายงานปีนี้ → เพิ่มรายการปล่อยก๊าซเรือนกระจกแรก'
  const enReady = isMembership
    ? 'Your instance is ready. SID-ENCONSULT will follow up for kickoff.'
    : 'You can see a first carbon number today.'
  const enNext = isMembership
    ? 'Next: sign in → confirm organization info → open the user manual.'
    : 'Next: sign in → create this year’s report → add the first emission.'

  const safe = {
    thGreeting: escapeHtml(thGreeting),
    enGreeting: escapeHtml(enGreeting),
    organizationName: escapeHtml(params.organizationName),
    organizationCode: escapeHtml(params.organizationCode || ''),
    contactName: escapeHtml(contactName),
    contactPhone: escapeHtml(params.contactPhone || ''),
    factoryAdminEmail: escapeHtml(params.factoryAdminEmail),
    loginUrl: escapeHtml(params.loginUrl),
    username: escapeHtml(params.username || ''),
    password: escapeHtml(params.password || ''),
    userManualUrl: escapeHtml(USER_MANUAL_URL),
    thReady: escapeHtml(thReady),
    thNext: escapeHtml(thNext),
    enReady: escapeHtml(enReady),
    enNext: escapeHtml(enNext),
  }

  const subject = 'ยินดีต้อนรับสู่ Ideacarb — บัญชีองค์กรของคุณพร้อมใช้งานแล้ว'

  const orgTextLines = [
    `- องค์กร / Organization: ${params.organizationName}`,
    ...(params.organizationCode
      ? [`- รหัสองค์กร / Organization code: ${params.organizationCode}`]
      : []),
    ...(contactName ? [`- ผู้ติดต่อ / Contact: ${contactName}`] : []),
    ...(params.contactPhone ? [`- เบอร์โทร / Phone: ${params.contactPhone}`] : []),
    `- อีเมล Factory Admin / Factory Admin email: ${params.factoryAdminEmail}`,
  ]

  const usernameText = hasUsername
    ? params.username
    : 'โปรดติดต่อทีม Ideacarb / please contact the Ideacarb team'
  const passwordText = hasPassword
    ? params.password
    : 'โปรดติดต่อทีม Ideacarb หากยังไม่มีรหัสผ่าน / please contact the Ideacarb team if you do not have a password'

  const text = [
    thGreeting,
    '',
    'ยินดีต้อนรับสู่ Ideacarb',
    'บัญชีองค์กรของท่านถูกสร้างเรียบร้อยแล้ว และพร้อมเริ่มใช้งาน',
    thReady,
    thNext,
    `คู่มือการใช้งาน: ${USER_MANUAL_URL}`,
    '',
    enGreeting,
    '',
    'Welcome to Ideacarb',
    'Your organization account has been created and is ready to use.',
    enReady,
    enNext,
    `User manual: ${USER_MANUAL_URL}`,
    '',
    'ข้อมูลองค์กร / Organization details:',
    ...orgTextLines,
    '',
    'ข้อมูลเข้าสู่ระบบ / Sign-in details:',
    `เข้าสู่ระบบ / Sign in: ${params.loginUrl}`,
    `- ชื่อผู้ใช้ / Username: ${usernameText}`,
    `- รหัสผ่าน / Password: ${passwordText}`,
    'กรุณาเปลี่ยนรหัสผ่านนี้หลังจากเข้าสู่ระบบครั้งแรก / Please change this password after your first login.',
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
    contactName ? `<li>ผู้ติดต่อ / Contact: ${safe.contactName}</li>` : '',
    params.contactPhone ? `<li>เบอร์โทร / Phone: ${safe.contactPhone}</li>` : '',
    `<li>อีเมล Factory Admin / Factory Admin email: ${safe.factoryAdminEmail}</li>`,
  ]
    .filter(Boolean)
    .join('\n    ')

  const usernameHtml = `<li>ชื่อผู้ใช้ / Username: ${escapeHtml(usernameText || '')}</li>`
  const passwordHtml = `<li>รหัสผ่าน / Password: ${escapeHtml(passwordText || '')}</li>`

  const bodyHtml = `
  <p>${safe.thGreeting}</p>
  <p>ยินดีต้อนรับสู่ Ideacarb</p>
  <p>บัญชีองค์กรของท่านถูกสร้างเรียบร้อยแล้ว และพร้อมเริ่มใช้งาน</p>
  <p>${safe.thReady}</p>
  <p>${safe.thNext}</p>
  <p>คู่มือการใช้งาน: <a href="${safe.userManualUrl}">${safe.userManualUrl}</a></p>
  <hr style="border:none;border-top:1px solid #e2e8f0;margin:20px 0;" />
  <p>${safe.enGreeting}</p>
  <p>Welcome to Ideacarb</p>
  <p>Your organization account has been created and is ready to use.</p>
  <p>${safe.enReady}</p>
  <p>${safe.enNext}</p>
  <p>User manual: <a href="${safe.userManualUrl}">${safe.userManualUrl}</a></p>
  <p><strong>ข้อมูลองค์กร / Organization details</strong></p>
  <ul>
    ${orgHtmlItems}
  </ul>
  <p><strong>ข้อมูลเข้าสู่ระบบ / Sign-in details</strong></p>
  <p>
    <a href="${safe.loginUrl}"
       style="display:inline-block;background:${EMAIL_ACCENT_COLOR};color:#fff;text-decoration:none;padding:10px 16px;border-radius:8px;font-weight:600;">
      เข้าสู่ระบบ
    </a>
  </p>
  <p style="font-size:13px;color:#64748b;">หรือเปิดลิงก์ / or open: <a href="${safe.loginUrl}">${safe.loginUrl}</a></p>
  <ul>
    ${usernameHtml}
    ${passwordHtml}
  </ul>
  <p>กรุณาเปลี่ยนรหัสผ่านนี้หลังจากเข้าสู่ระบบครั้งแรก / Please change this password after your first login.</p>
  `.trim()

  return {
    subject,
    text,
    html: emailShellHtml(bodyHtml, { branded: true }),
  }
}
