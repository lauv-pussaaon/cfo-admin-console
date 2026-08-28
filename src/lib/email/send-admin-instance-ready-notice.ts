/**
 * Notify Settings notification list that a client instance is live.
 * No password. Call from API route only.
 */

import { Resend } from 'resend'
import { getResendFrom } from '@/lib/email/resend-client'
import { emailShellHtml, escapeHtml } from '@/lib/email/templates/shared'

function buildLoginUrl (appUrl: string): string {
  return `${appUrl.replace(/\/$/, '')}/login`
}

export async function sendAdminInstanceReadyNotice (params: {
  organizationName: string
  organizationCode: string
  accountType?: string | null
  factoryAdminEmail?: string | null
  appUrl: string
  username?: string | null
  adminEmails: string[]
}): Promise<{ sent: boolean; skipReason?: string }> {
  const apiKey =
    process.env.RESEND_API_KEY?.trim() || process.env.RESEND_KEY?.trim()

  if (!apiKey) {
    const reason = 'ไม่พบ RESEND_API_KEY'
    console.warn(`[email] ข้ามแจ้งอินสแตนซ์พร้อมใช้งาน: ${reason}`)
    return { sent: false, skipReason: reason }
  }

  if (params.adminEmails.length === 0) {
    console.warn('[email] ข้ามแจ้งอินสแตนซ์พร้อมใช้งาน: ไม่พบอีเมลผู้รับแจ้งเตือน')
    return { sent: false, skipReason: 'no_admin_emails' }
  }

  const MAX_RECIPIENTS = 50
  let adminEmails = params.adminEmails
  if (adminEmails.length > MAX_RECIPIENTS) {
    console.warn(
      `[email] จำกัดผู้รับแจ้งอินสแตนซ์พร้อมใช้งานที่ ${MAX_RECIPIENTS} คน`
    )
    adminEmails = adminEmails.slice(0, MAX_RECIPIENTS)
  }

  const from = getResendFrom()
  const loginUrl = buildLoginUrl(params.appUrl)
  const username = params.username?.trim() || ''
  const factoryAdminEmail = params.factoryAdminEmail?.trim() || ''
  const accountType = params.accountType?.trim() || ''

  const safe = {
    organizationName: escapeHtml(params.organizationName),
    organizationCode: escapeHtml(params.organizationCode),
    accountType: escapeHtml(accountType || '—'),
    factoryAdminEmail: escapeHtml(factoryAdminEmail || '—'),
    appUrl: escapeHtml(params.appUrl),
    loginUrl: escapeHtml(loginUrl),
    username: escapeHtml(username || '—'),
  }

  const subject = `อินสแตนซ์องค์กรพร้อมใช้งาน — ${params.organizationCode}`

  const text = [
    'อินสแตนซ์องค์กรพร้อมใช้งานแล้ว',
    '',
    `ชื่อองค์กร: ${params.organizationName}`,
    `รหัสบริษัท: ${params.organizationCode}`,
    `ประเภทบัญชี: ${accountType || '—'}`,
    `URL: ${params.appUrl}`,
    `เข้าสู่ระบบ: ${loginUrl}`,
    `ชื่อผู้ใช้: ${username || '—'}`,
    `อีเมล Factory Admin: ${factoryAdminEmail || '—'}`,
    '',
    'รหัสผ่านไม่อยู่ในอีเมลนี้ — ดู inventory/created-instances.csv',
  ].join('\n')

  const bodyHtml = `
  <p><strong>อินสแตนซ์องค์กรพร้อมใช้งานแล้ว</strong></p>
  <ul>
    <li>ชื่อองค์กร: ${safe.organizationName}</li>
    <li>รหัสบริษัท: ${safe.organizationCode}</li>
    <li>ประเภทบัญชี: ${safe.accountType}</li>
    <li>URL: <a href="${safe.appUrl}">${safe.appUrl}</a></li>
    <li>เข้าสู่ระบบ: <a href="${safe.loginUrl}">${safe.loginUrl}</a></li>
    <li>ชื่อผู้ใช้: ${safe.username}</li>
    <li>อีเมล Factory Admin: ${safe.factoryAdminEmail}</li>
  </ul>
  <p style="font-size:12px;color:#64748b;">รหัสผ่านไม่อยู่ในอีเมลนี้ — ดู inventory/created-instances.csv</p>
  `.trim()
  const html = emailShellHtml(bodyHtml, { branded: true })

  const to = adminEmails[0]
  const bcc = adminEmails.length > 1 ? adminEmails.slice(1) : undefined

  const resend = new Resend(apiKey)
  const result = await resend.emails.send({
    from,
    to,
    ...(bcc && bcc.length > 0 ? { bcc } : {}),
    subject,
    text,
    html,
  })

  if (result.error) {
    console.error('[email] Resend instance-ready notice error:', result.error)
    throw new Error(result.error.message ?? 'ส่งอีเมลแจ้ง Admin ไม่สำเร็จ')
  }

  if (process.env.NODE_ENV === 'development') {
    console.log('[email] แจ้ง Admin อินสแตนซ์พร้อมใช้งานแล้ว id=', result.data?.id)
  }

  return { sent: true }
}
