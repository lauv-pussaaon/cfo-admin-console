import { NextRequest, NextResponse } from 'next/server'
import { z } from 'zod'
import { createTrialRequest } from '@/lib/api/organization-trial-requests'
import { getEnabledNotificationEmails } from '@/lib/api/notification-recipients-server'
import { sendAdminNewTrialRequestNotice } from '@/lib/email/send-admin-new-trial-request-notice'
import { sendTrialRequestConfirmationEmail } from '@/lib/email/send-trial-request-confirmation'
import { resolveSiteOriginFromRequest } from '@/lib/email/resolve-site-origin'
import { registrationConsentFields } from '@/components/register/consent-schema'
import { getPolicyUrls } from '@/components/register/policy-documents'
import { AppError, ConflictError } from '@/lib/utils/errors'
import { organizationCodeSchema } from '@/lib/organization-code'
import {
  getOrgRequestKindLabel,
  isAnnualMembershipRequest,
  type OrgRequestKind,
} from '@/types/org-request-kind'

const orgSignupSchema = z.object({
  organizationName: z.string().min(1, 'กรุณากรอกชื่อองค์กร').max(200),
  companyCode: organizationCodeSchema,
  contactFirstName: z.string().min(1, 'กรุณากรอกชื่อผู้ติดต่อ').max(120),
  contactLastName: z.string().min(1, 'กรุณากรอกนามสกุลผู้ติดต่อ').max(120),
  contactEmail: z.string().email('กรุณากรอกอีเมลให้ถูกต้อง'),
  contactPhone: z.string().min(1, 'กรุณากรอกเบอร์โทรผู้ติดต่อ').max(30),
  ...registrationConsentFields,
})

export async function handlePublicOrgSignup (
  request: NextRequest,
  requestKind: OrgRequestKind
): Promise<NextResponse> {
  const kindLabel = getOrgRequestKindLabel(requestKind)
  const logLabel = isAnnualMembershipRequest(requestKind)
    ? 'คำขอสมัครสมาชิกรายปี'
    : 'คำขอทดลองใช้งาน'

  try {
    const body = await request.json()
    const payload = orgSignupSchema.parse(body)
    const policyUrls = getPolicyUrls()

    const orgRequest = await createTrialRequest({
      organizationName: payload.organizationName,
      companyCode: payload.companyCode,
      contactFirstName: payload.contactFirstName,
      contactLastName: payload.contactLastName,
      contactEmail: payload.contactEmail,
      contactPhone: payload.contactPhone,
      requestKind,
      termsAccepted: payload.termsAccepted,
      privacyAcknowledged: payload.privacyAcknowledged,
      collectShareDataConsent: payload.collectShareDataConsent ?? false,
      marketingConsent: payload.marketingConsent ?? false,
      termsDocumentUrl: policyUrls.termsDocumentUrl,
      privacyDocumentUrl: policyUrls.privacyDocumentUrl,
      collectShareDataConsentUrl: policyUrls.collectShareDataConsentUrl,
    })

    const requestOrigin = resolveSiteOriginFromRequest(request)

    try {
      const adminEmails = await getEnabledNotificationEmails()
      const noticeResult = await sendAdminNewTrialRequestNotice({
        organizationName: orgRequest.organization_name,
        companyCode: orgRequest.company_code,
        contactFirstName: orgRequest.contact_first_name,
        contactLastName: orgRequest.contact_last_name,
        contactEmail: orgRequest.contact_email,
        contactPhone: orgRequest.contact_phone,
        createdAt: orgRequest.created_at,
        requestKind,
        requestOrigin,
        adminEmails,
      })
      if (!noticeResult.sent) {
        console.warn(
          `[email] ไม่ได้ส่งอีเมลแจ้ง Admin ${logLabel}:`,
          noticeResult.skipReason ?? 'unknown'
        )
      }
    } catch (emailErr) {
      console.error(`[email] ส่งอีเมลแจ้ง Admin ${logLabel}ไม่สำเร็จ:`, emailErr)
    }

    try {
      const confirmResult = await sendTrialRequestConfirmationEmail({
        to: orgRequest.contact_email,
        contactFirstName: orgRequest.contact_first_name,
        contactLastName: orgRequest.contact_last_name,
        organizationName: orgRequest.organization_name,
        companyCode: orgRequest.company_code,
        contactEmail: orgRequest.contact_email,
        contactPhone: orgRequest.contact_phone,
        requestKind,
      })
      if (!confirmResult.sent) {
        console.warn(
          `[email] ไม่ได้ส่งอีเมลยืนยัน${logLabel}ถึงผู้สมัคร:`,
          confirmResult.skipReason ?? 'unknown'
        )
      }
    } catch (emailErr) {
      console.error(`[email] ส่งอีเมลยืนยัน${logLabel}ถึงผู้สมัครไม่สำเร็จ:`, emailErr)
    }

    return NextResponse.json({
      success: true,
      message: `ส่งคำขอ${kindLabel}แล้ว ทีมงานจะติดต่อกลับในเร็ว ๆ นี้`,
    })
  } catch (error) {
    if (error instanceof z.ZodError) {
      return NextResponse.json(
        { error: 'ข้อมูลไม่ถูกต้อง กรุณาตรวจสอบอีกครั้ง' },
        { status: 400 }
      )
    }

    if (error instanceof ConflictError) {
      return NextResponse.json(
        { error: error.message },
        { status: 409 }
      )
    }

    if (error instanceof AppError) {
      return NextResponse.json(
        { error: error.message },
        { status: error.statusCode || 400 }
      )
    }

    console.error(`Public ${requestKind} registration failed:`, error)
    return NextResponse.json(
      { error: 'ส่งไม่สำเร็จ ลองใหม่ภายหลัง' },
      { status: 500 }
    )
  }
}
