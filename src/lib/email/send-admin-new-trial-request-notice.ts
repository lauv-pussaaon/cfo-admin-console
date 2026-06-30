/**
 * แจ้งผู้ดูแลเมื่อมีคำขอทดลองใช้งานใหม่ — เรียกจาก API route เท่านั้น
 */

import { Resend } from 'resend'
import {
  resolveBaseUrlForEmail,
  buildAdminConsoleTrialRequestsUrl,
} from '@/lib/email/resolve-site-origin'

const DEFAULT_RESEND_FROM = 'IdeaCarb CFO <onboarding@resend.dev>'

function escapeHtml (s: string): string {
  return s
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
}

function formatSubmittedAt (value: string): string {
  return new Date(value).toLocaleString('th-TH', {
    year: 'numeric',
    month: 'short',
    day: 'numeric',
    hour: '2-digit',
    minute: '2-digit',
  })
}

export async function sendAdminNewTrialRequestNotice (params: {
  organizationName: string
  contactFirstName: string
  contactLastName: string
  contactEmail: string
  contactPhone: string
  createdAt: string
  requestOrigin?: string
  adminEmails: string[]
}): Promise<{ sent: boolean; skipReason?: string }> {
  const apiKey =
    process.env.RESEND_API_KEY?.trim() || process.env.RESEND_KEY?.trim()

  if (!apiKey) {
    const reason = 'ไม่พบ RESEND_API_KEY'
    console.warn(`[email] ข้ามแจ้งเตือนคำขอทดลองใช้งาน: ${reason}`)
    return { sent: false, skipReason: reason }
  }

  if (params.adminEmails.length === 0) {
    console.warn('[email] ข้ามแจ้งเตือนคำขอทดลองใช้งาน: ไม่พบอีเมลผู้รับแจ้งเตือน')
    return { sent: false, skipReason: 'no_recipient_emails' }
  }

  const MAX_RECIPIENTS = 50
  let adminEmails = params.adminEmails
  if (adminEmails.length > MAX_RECIPIENTS) {
    console.warn(
      `[email] จำกัดผู้รับแจ้งเตือนคำขอทดลองใช้งานที่ ${MAX_RECIPIENTS} คน`
    )
    adminEmails = adminEmails.slice(0, MAX_RECIPIENTS)
  }

  const from =
    process.env.RESEND_FROM_EMAIL?.trim() || DEFAULT_RESEND_FROM

  const baseUrl = resolveBaseUrlForEmail(params.requestOrigin ?? '')
  if (!baseUrl) {
    const reason = 'ไม่พบ URL แอปสำหรับลิงก์ในอีเมล'
    console.warn(`[email] ข้ามแจ้งเตือนคำขอทดลองใช้งาน: ${reason}`)
    return { sent: false, skipReason: reason }
  }

  const trialRequestsUrl = buildAdminConsoleTrialRequestsUrl(baseUrl)
  const contactName = `${params.contactFirstName} ${params.contactLastName}`.trim()
  const submittedAt = formatSubmittedAt(params.createdAt)

  const safe = {
    organizationName: escapeHtml(params.organizationName),
    contactName: escapeHtml(contactName),
    contactEmail: escapeHtml(params.contactEmail),
    contactPhone: escapeHtml(params.contactPhone),
    submittedAt: escapeHtml(submittedAt),
    trialRequestsHref: escapeHtml(trialRequestsUrl),
  }

  const subject = '[ผู้ดูแล] มีคำขอทดลองใช้งานใหม่'

  const text = [
    'มีคำขอทดลองใช้งานองค์กรใหม่',
    '',
    'ข้อมูลคำขอ:',
    `- ชื่อองค์กร: ${params.organizationName}`,
    `- ผู้ติดต่อ: ${contactName}`,
    `- อีเมล: ${params.contactEmail}`,
    `- เบอร์โทร: ${params.contactPhone}`,
    `- วันที่ส่งคำขอ: ${submittedAt}`,
    '',
    `จัดการคำขอ: ${trialRequestsUrl}`,
  ].join('\n')

  const html = `
<!DOCTYPE html>
<html>
<body style="font-family: system-ui, sans-serif; line-height: 1.5; color: #0f172a;">
  <p><strong>มีคำขอทดลองใช้งานใหม่</strong></p>
  <ul>
    <li>ชื่อองค์กร: ${safe.organizationName}</li>
    <li>ผู้ติดต่อ: ${safe.contactName}</li>
    <li>อีเมล: ${safe.contactEmail}</li>
    <li>เบอร์โทร: ${safe.contactPhone}</li>
    <li>วันที่ส่งคำขอ: ${safe.submittedAt}</li>
  </ul>
  <p><a href="${safe.trialRequestsHref}">ไปหน้าคำขอทดลองใช้งาน</a></p>
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
    console.error('[email] Resend trial request notice error:', result.error)
    throw new Error(result.error.message ?? 'ส่งอีเมลแจ้ง Admin ไม่สำเร็จ')
  }

  if (process.env.NODE_ENV === 'development') {
    console.log('[email] แจ้ง Admin คำขอทดลองใช้งานแล้ว id=', result.data?.id)
  }

  return { sent: true }
}
