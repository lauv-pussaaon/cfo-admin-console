import { NextRequest, NextResponse } from 'next/server'
import { z } from 'zod'
import { createUser, deleteUser } from '@/lib/api/auth'
import { createUserConsent } from '@/lib/api/user-consents'
import {
  buildVerificationUploadUrl,
  createConsultAuditVerification,
} from '@/lib/api/consult-audit-verification'
import { AppError } from '@/lib/utils/errors'
import { sendRegistrationConfirmationEmail } from '@/lib/email/send-registration-confirmation'
import { sendAdminNewRegistrationNotice } from '@/lib/email/send-admin-new-registration-notice'
import { resolveSiteOriginFromRequest, resolveBaseUrlForEmail } from '@/lib/email/resolve-site-origin'
import { getEnabledNotificationEmails } from '@/lib/api/notification-recipients-server'
import { registrationConsentFields } from '@/components/register/consent-schema'
import { registrationProfileFields } from '@/components/register/registration-profile-schema'
import { getPolicyUrls } from '@/components/register/policy-documents'
import { listActiveIndustryOptions } from '@/lib/api/emission-templates'
import { supabase } from '@/lib/supabase'

const publicRegistrationSchema = z.object({
  username: z.string().min(3).max(50).regex(/^[a-zA-Z0-9_]+$/),
  email: z.string().email(),
  password: z.string().min(6),
  name: z.string().min(1).max(120),
  role: z.enum(['Consult', 'Audit']),
  ...registrationProfileFields,
  ...registrationConsentFields,
})

export async function POST (request: NextRequest) {
  try {
    const body = await request.json()
    const payload = publicRegistrationSchema.parse(body)

    const emailNormalized = payload.email.trim().toLowerCase()
    const industryOptions = await listActiveIndustryOptions()
    const allowedCodes = new Set(industryOptions.map((i) => i.industry_code))
    const industries = [...new Set(payload.industries)].filter((code) =>
      allowedCodes.has(code)
    )
    if (industries.length === 0) {
      return NextResponse.json(
        { error: 'กรุณาเลือกอุตสาหกรรมที่ถูกต้อง' },
        { status: 400 }
      )
    }

    const industryLabelByCode = new Map(
      industryOptions.map((i) => [i.industry_code, i.name_th])
    )
    const industryLabels = industries.map(
      (code) => industryLabelByCode.get(code) || code
    )

    const user = await createUser({
      username: payload.username.trim(),
      email: emailNormalized,
      password: payload.password,
      name: payload.name.trim(),
      role: payload.role,
      status: 'requested',
      organization_name: payload.organizationName.trim(),
      phone: payload.phone.trim(),
      year_experiences: payload.yearExperiences,
      industries,
    })

    const policyUrls = getPolicyUrls()

    try {
      await createUserConsent(user.id, {
        termsAccepted: payload.termsAccepted,
        privacyAcknowledged: payload.privacyAcknowledged,
        collectShareDataConsent: payload.collectShareDataConsent ?? false,
        marketingConsent: payload.marketingConsent ?? false,
        termsDocumentUrl: policyUrls.termsDocumentUrl,
        privacyDocumentUrl: policyUrls.privacyDocumentUrl,
        collectShareDataConsentUrl: policyUrls.collectShareDataConsentUrl,
      })
    } catch (consentErr) {
      console.error('Failed to save user consent, rolling back user:', consentErr)
      try {
        await deleteUser(user.id)
      } catch (rollbackErr) {
        console.error('Failed to rollback user after consent error:', rollbackErr)
      }
      return NextResponse.json(
        { error: 'ส่งไม่สำเร็จ ลองใหม่ภายหลัง' },
        { status: 500 }
      )
    }

    let verificationToken = ''
    try {
      const verification = await createConsultAuditVerification(supabase, user.id)
      verificationToken = verification.token
    } catch (verificationErr) {
      console.error('Failed to create verification row, rolling back user:', verificationErr)
      try {
        await deleteUser(user.id)
      } catch (rollbackErr) {
        console.error('Failed to rollback user after verification error:', rollbackErr)
      }
      return NextResponse.json(
        { error: 'ส่งไม่สำเร็จ ลองใหม่ภายหลัง' },
        { status: 500 }
      )
    }

    const requestOrigin = resolveSiteOriginFromRequest(request)
    const baseUrl = resolveBaseUrlForEmail(requestOrigin)
    const verificationUploadUrl = buildVerificationUploadUrl(
      baseUrl || requestOrigin,
      verificationToken
    )

    const profile = {
      organizationName: payload.organizationName.trim(),
      phone: payload.phone.trim(),
      yearExperiences: payload.yearExperiences,
      industryLabels,
    }

    try {
      const emailResult = await sendRegistrationConfirmationEmail({
        to: emailNormalized,
        name: payload.name.trim(),
        username: payload.username.trim(),
        email: emailNormalized,
        role: payload.role,
        profile,
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
        name: payload.name.trim(),
        username: payload.username.trim(),
        email: emailNormalized,
        role: payload.role,
        profile,
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

    return NextResponse.json({
      success: true,
      message: 'ส่งคำขอแล้ว กรุณาตรวจอีเมลเพื่ออัปโหลดเอกสารยืนยัน',
    })
  } catch (error) {
    if (error instanceof z.ZodError) {
      return NextResponse.json(
        { error: 'ข้อมูลไม่ถูกต้อง กรุณาตรวจสอบอีกครั้ง' },
        { status: 400 }
      )
    }

    if (error instanceof AppError) {
      return NextResponse.json(
        { error: error.message },
        { status: error.statusCode || 400 }
      )
    }

    console.error('Public registration failed:', error)
    return NextResponse.json(
      { error: 'ส่งไม่สำเร็จ ลองใหม่ภายหลัง' },
      { status: 500 }
    )
  }
}
