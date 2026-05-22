/**
 * ส่งอีเมลยืนยันหลังลงทะเบียนสาธารณะ (เรียกจาก API route เท่านั้น)
 *
 * ตัวแปรสภาพแวดล้อม:
 * - `RESEND_API_KEY` (หรือ `RESEND_KEY`) — คีย์ Resend (จำเป็น)
 * - `RESEND_FROM_EMAIL` — ผู้ส่ง หากไม่ตั้งค่า จะใช้ `IdeaCarb CFO <onboarding@resend.dev>` สำหรับทดสอบ (Resend)
 * - `APP_URL` หรือ `NEXT_PUBLIC_APP_URL` — โดเมนของแอป (ลิงก์ login) หากไม่มีจะใช้ origin จากคำขอ หรือ `VERCEL_URL`
 */

import { Resend } from 'resend'
import { resolveBaseUrlForEmail } from '@/lib/email/resolve-site-origin'

const ROLE_LABEL_TH: Record<'Consult' | 'Audit', string> = {
  Consult: 'ที่ปรึกษา',
  Audit: 'ผู้ตรวจสอบ',
}

/** Resend-documented test sender; use until your domain is verified. */
const DEFAULT_RESEND_FROM = 'IdeaCarb CFO <onboarding@resend.dev>'

export function buildLoginUrl (baseUrl: string): string {
  const trimmed = baseUrl.trim().replace(/\/+$/, '')
  if (!trimmed) return '/login'
  return `${trimmed}/login`
}

function escapeHtml (s: string): string {
  return s
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
}

export async function sendRegistrationConfirmationEmail (params: {
  to: string
  name: string
  username: string
  email: string
  role: 'Consult' | 'Audit'
  /** Set from the HTTP request (e.g. https://localhost:3000) when env URL is unset */
  requestOrigin?: string
}): Promise<{ sent: boolean; skipReason?: string }> {
  const apiKey =
    process.env.RESEND_API_KEY?.trim() || process.env.RESEND_KEY?.trim()

  if (!apiKey) {
    const reason = 'ไม่พบ RESEND_API_KEY'
    console.warn(`[email] ข้ามส่งอีเมลยืนยัน: ${reason}`)
    return { sent: false, skipReason: reason }
  }

  const from =
    process.env.RESEND_FROM_EMAIL?.trim() || DEFAULT_RESEND_FROM

  const baseUrl = resolveBaseUrlForEmail(params.requestOrigin ?? '')
  if (!baseUrl) {
    const reason =
      'ไม่พบ URL แอป (ตั้ง APP_URL หรือ NEXT_PUBLIC_APP_URL หรือส่ง requestOrigin)'
    console.warn(`[email] ข้ามส่งอีเมลยืนยัน: ${reason}`)
    return { sent: false, skipReason: reason }
  }

  const loginUrl = buildLoginUrl(baseUrl)
  const roleTh = ROLE_LABEL_TH[params.role]

  const safe = {
    name: escapeHtml(params.name),
    username: escapeHtml(params.username),
    email: escapeHtml(params.email),
    roleTh: escapeHtml(roleTh),
  }
  const safeLoginHref = escapeHtml(loginUrl)

  const subject = 'รับคำขอเปิดบัญชีแล้ว — รอผู้ดูแลอนุมัติ'

  const text = [
    `สวัสดี ${params.name}`,
    '',
    'ระบบได้รับข้อมูลลงทะเบียนของคุณแล้ว บัญชีใช้งานได้หลังผู้ดูแลอนุมัติ',
    '',
    'ข้อมูลที่ส่งมา:',
    `- ชื่อ-นามสกุล: ${params.name}`,
    `- ชื่อผู้ใช้: ${params.username}`,
    `- อีเมล: ${params.email}`,
    `- บทบาท: ${roleTh}`,
    '',
    `เข้าสู่ระบบ: ${loginUrl}`,
    '',
    'อีเมลอัตโนมัติ ไม่ต้องตอบกลับ',
  ].join('\n')

  const html = `
<!DOCTYPE html>
<html>
<body style="font-family: system-ui, sans-serif; line-height: 1.5; color: #0f172a;">
  <p>สวัสดี ${safe.name}</p>
  <p>ทีม Ideacarb ได้รับข้อมูลลงทะเบียนของคุณแล้ว ระบบจะตรวจสอบและอนุมัติหลังจากนั้นคุณสามารถเข้าสู่ระบบได้</p>
  <p><strong>ข้อมูลที่ส่งมา</strong></p>
  <ul>
    <li>ชื่อ-นามสกุล: ${safe.name}</li>
    <li>ชื่อผู้ใช้: ${safe.username}</li>
    <li>อีเมล: ${safe.email}</li>
    <li>บทบาท: ${safe.roleTh}</li>
  </ul>
  <p><a href="${safeLoginHref}">เข้าสู่ระบบ</a></p>
  <p style="font-size:12px;color:#64748b;">อีเมลอัตโนมัติ ไม่ต้องตอบกลับ</p>
</body>
</html>`.trim()

  const resend = new Resend(apiKey)
  const result = await resend.emails.send({
    from,
    to: params.to,
    subject,
    text,
    html,
  })

  if (result.error) {
    console.error('[email] Resend API error:', result.error)
    throw new Error(result.error.message ?? 'ส่งอีเมลผ่าน Resend ไม่สำเร็จ')
  }

  if (process.env.NODE_ENV === 'development') {
    console.log('[email] ส่งอีเมลยืนยันลงทะเบียนแล้ว id=', result.data?.id)
  }

  return { sent: true }
}
