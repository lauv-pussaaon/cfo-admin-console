import type { NextRequest } from 'next/server'
import { supabase } from '@/lib/supabase'
import {
  buildVerificationUploadUrl,
  createConsultAuditVerification,
} from '@/lib/api/consult-audit-verification'
import { sendRegistrationConfirmationEmail } from '@/lib/email/send-registration-confirmation'
import { sendAdminNewRegistrationNotice } from '@/lib/email/send-admin-new-registration-notice'
import { resolveSiteOriginFromRequest, resolveBaseUrlForEmail } from '@/lib/email/resolve-site-origin'
import { getEnabledNotificationEmails } from '@/lib/api/notification-recipients-server'
import type { RegistrationEmailProfile } from '@/lib/email/registration-profile-lines'

export async function notifyConsultRegistration (
  request: NextRequest,
  params: {
    userId: string
    name: string
    username: string
    email: string
    role: 'Consult' | 'Audit'
    profile: RegistrationEmailProfile
  }
): Promise<void> {
  const verification = await createConsultAuditVerification(supabase, params.userId)
  const requestOrigin = resolveSiteOriginFromRequest(request)
  const baseUrl = resolveBaseUrlForEmail(requestOrigin)
  const verificationUploadUrl = buildVerificationUploadUrl(
    baseUrl || requestOrigin,
    verification.token
  )

  try {
    const emailResult = await sendRegistrationConfirmationEmail({
      to: params.email,
      name: params.name,
      username: params.username,
      email: params.email,
      role: params.role,
      profile: params.profile,
      verificationUploadUrl,
      requestOrigin,
    })
    if (!emailResult.sent) {
      console.warn(
        '[email] ไม่ได้ส่งอีเมลยืนยัน:',
        emailResult.skipReason ?? 'unknown'
      )
    }
  } catch (emailErr) {
    console.error('[email] ส่งอีเมลยืนยันลงทะเบียนไม่สำเร็จ:', emailErr)
  }

  try {
    const adminEmails = await getEnabledNotificationEmails()
    const noticeResult = await sendAdminNewRegistrationNotice({
      name: params.name,
      username: params.username,
      email: params.email,
      role: params.role,
      profile: params.profile,
      requestOrigin,
      adminEmails,
    })
    if (!noticeResult.sent) {
      console.warn(
        '[email] ไม่ได้ส่งอีเมลแจ้ง Admin:',
        noticeResult.skipReason ?? 'unknown'
      )
    }
  } catch (adminEmailErr) {
    console.error('[email] ส่งอีเมลแจ้ง Admin ไม่สำเร็จ:', adminEmailErr)
  }
}
