/**
 * แจ้งผู้ดูแลระบบ (บทบาท Admin) เมื่อมีผู้ลงทะเบียนสาธารณะ — เรียกจาก API route เท่านั้น
 *
 * ใช้ตัวแปรเดียวกับ [`send-registration-confirmation.ts`](./send-registration-confirmation.ts) สำหรับ Resend
 */

import { Resend } from 'resend'
import {
  resolveBaseUrlForEmail,
  buildAdminConsoleUsersUrl,
} from '@/lib/email/resolve-site-origin'

const ROLE_LABEL_TH: Record<'Consult' | 'Audit', string> = {
  Consult: 'ที่ปรึกษา',
  Audit: 'ผู้ตรวจสอบ',
}

const DEFAULT_RESEND_FROM = 'IdeaCarb CFO <onboarding@resend.dev>'

function escapeHtml (s: string): string {
  return s
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
}

export async function sendAdminNewRegistrationNotice (params: {
  name: string
  username: string
  email: string
  role: 'Consult' | 'Audit'
  requestOrigin?: string
  adminEmails: string[]
}): Promise<{ sent: boolean; skipReason?: string }> {
  const apiKey =
    process.env.RESEND_API_KEY?.trim() || process.env.RESEND_KEY?.trim()

  if (!apiKey) {
    const reason = 'ไม่พบ RESEND_API_KEY'
    console.warn(`[email] ข้ามแจ้งเตือน Admin: ${reason}`)
    return { sent: false, skipReason: reason }
  }

  if (params.adminEmails.length === 0) {
    console.warn('[email] ข้ามแจ้งเตือน Admin: ไม่พบอีเมลผู้ดูแล')
    return { sent: false, skipReason: 'no_admin_emails' }
  }

  /** Resend single-message recipient limits; unlikely for Admin count. */
  const MAX_RECIPIENTS = 50
  let adminEmails = params.adminEmails
  if (adminEmails.length > MAX_RECIPIENTS) {
    console.warn(
      `[email] จำกัดผู้รับแจ้งเตือน Admin ที่ ${MAX_RECIPIENTS} คน (ขีดจำกัด Resend)`
    )
    adminEmails = adminEmails.slice(0, MAX_RECIPIENTS)
  }

  const from =
    process.env.RESEND_FROM_EMAIL?.trim() || DEFAULT_RESEND_FROM

  const baseUrl = resolveBaseUrlForEmail(params.requestOrigin ?? '')
  if (!baseUrl) {
    const reason = 'ไม่พบ URL แอปสำหรับลิงก์ในอีเมล'
    console.warn(`[email] ข้ามแจ้งเตือน Admin: ${reason}`)
    return { sent: false, skipReason: reason }
  }

  const adminUsersUrl = buildAdminConsoleUsersUrl(baseUrl)
  const roleTh = ROLE_LABEL_TH[params.role]

  const safe = {
    name: escapeHtml(params.name),
    username: escapeHtml(params.username),
    email: escapeHtml(params.email),
    roleTh: escapeHtml(roleTh),
    adminUsersHref: escapeHtml(adminUsersUrl),
  }

  const subject =
    '[ผู้ดูแล] มีผู้ใช้ลงทะเบียนใหม่ — รออนุมัติ'

  const text = [
    'มีผู้ลงทะเบียนผ่านหน้าเปิดบัญชีสาธารณะ',
    '',
    'ข้อมูลผู้สมัคร:',
    `- ชื่อ-นามสกุล: ${params.name}`,
    `- ชื่อผู้ใช้: ${params.username}`,
    `- อีเมล: ${params.email}`,
    `- บทบาท: ${roleTh}`,
    '- สถานะ: รอผู้ดูแลอนุมัติ',
    '',
    `จัดการผู้ใช้: ${adminUsersUrl}`,
  ].join('\n')

  const html = `
<!DOCTYPE html>
<html>
<body style="font-family: system-ui, sans-serif; line-height: 1.5; color: #0f172a;">
  <p><strong>มีผู้ลงทะเบียนใหม่</strong> (รออนุมัติ)</p>
  <p>ผู้สมัครลงทะเบียนผ่านหน้าเปิดบัญชีสาธารณะ</p>
  <ul>
    <li>ชื่อ-นามสกุล: ${safe.name}</li>
    <li>ชื่อผู้ใช้: ${safe.username}</li>
    <li>อีเมล: ${safe.email}</li>
    <li>บทบาท: ${safe.roleTh}</li>
    <li>สถานะ: รอผู้ดูแลอนุมัติ</li>
  </ul>
  <p><a href="${safe.adminUsersHref}">ไปหน้าจัดการผู้ใช้</a></p>
  <p style="font-size:12px;color:#64748b;">อีเมลอัตโนมัติ ไม่ต้องตอบกลับ</p>
</body>
</html>`.trim()

  const to = adminEmails[0]
  const bcc =
    adminEmails.length > 1 ? adminEmails.slice(1) : undefined

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
    console.error('[email] Resend admin notice error:', result.error)
    throw new Error(result.error.message ?? 'ส่งอีเมลแจ้ง Admin ไม่สำเร็จ')
  }

  if (process.env.NODE_ENV === 'development') {
    console.log('[email] แจ้ง Admin ลงทะเบียนแล้ว id=', result.data?.id)
  }

  return { sent: true }
}
