import { getEnabledNotificationEmails } from '@/lib/api/notification-recipients-server'
import { sendResendEmail } from '@/lib/email/resend-client'
import {
  buildInstanceDeployFailedAdminContent,
  buildInstanceDeployFailedUserContent,
} from '@/lib/email/templates/instance-deploy-failed'

function uniqueEmails (values: string[]): string[] {
  const seen = new Set<string>()
  const emails: string[] = []
  for (const value of values) {
    const email = value.trim().toLowerCase()
    if (!email || seen.has(email) || !email.includes('@')) continue
    seen.add(email)
    emails.push(email)
  }
  return emails
}

export async function sendInstanceDeployFailedNotices (params: {
  organizationName: string
  companyCode: string
  contactEmail?: string | null
  contactFirstName?: string | null
  contactLastName?: string | null
  error: string
  logPath?: string | null
}): Promise<void> {
  const errorText = params.error.trim() || 'ติดตั้งไม่สำเร็จ'
  const organizationName = params.organizationName.trim() || params.companyCode

  try {
    const adminEmails = uniqueEmails(await getEnabledNotificationEmails())
    if (adminEmails.length > 0) {
      const admin = buildInstanceDeployFailedAdminContent({
        organizationName,
        companyCode: params.companyCode,
        contactEmail: params.contactEmail || '',
        error: errorText,
        logPath: params.logPath,
      })
      const sent = await sendResendEmail({
        to: adminEmails[0],
        bcc: adminEmails.slice(1, 50),
        subject: admin.subject,
        text: admin.text,
        html: admin.html,
      })
      if (!sent.sent) {
        console.warn('[email] ข้ามแจ้ง Admin ติดตั้งไม่สำเร็จ:', sent.skipReason)
      }
    }
  } catch (error) {
    console.error('[email] แจ้ง Admin ติดตั้งไม่สำเร็จไม่สำเร็จ:', error)
  }

  const contactEmail = params.contactEmail?.trim() || ''
  if (!contactEmail.includes('@')) return

  try {
    const user = buildInstanceDeployFailedUserContent({
      organizationName,
      companyCode: params.companyCode,
      contactFirstName: params.contactFirstName,
      contactLastName: params.contactLastName,
    })
    const sent = await sendResendEmail({
      to: contactEmail,
      subject: user.subject,
      text: user.text,
      html: user.html,
    })
    if (!sent.sent) {
      console.warn('[email] ข้ามแจ้งผู้สมัครติดตั้งไม่สำเร็จ:', sent.skipReason)
    }
  } catch (error) {
    console.error('[email] แจ้งผู้สมัครติดตั้งไม่สำเร็จไม่สำเร็จ:', error)
  }
}
