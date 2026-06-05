import { NextRequest, NextResponse } from 'next/server'
import { z } from 'zod'
import { createTrialRequest } from '@/lib/api/organization-trial-requests'
import { registrationConsentFields } from '@/components/register/consent-schema'
import { getPolicyUrls } from '@/components/register/policy-documents'
import { AppError, ConflictError } from '@/lib/utils/errors'

const trialRegistrationSchema = z.object({
  organizationName: z.string().min(1, 'กรุณากรอกชื่อองค์กร').max(200),
  contactFirstName: z.string().min(1, 'กรุณากรอกชื่อผู้ติดต่อ').max(120),
  contactLastName: z.string().min(1, 'กรุณากรอกนามสกุลผู้ติดต่อ').max(120),
  contactEmail: z.string().email('กรุณากรอกอีเมลให้ถูกต้อง'),
  contactPhone: z.string().min(1, 'กรุณากรอกเบอร์โทรผู้ติดต่อ').max(30),
  ...registrationConsentFields,
})

export async function POST(request: NextRequest) {
  try {
    const body = await request.json()
    const payload = trialRegistrationSchema.parse(body)
    const policyUrls = getPolicyUrls()

    await createTrialRequest({
      organizationName: payload.organizationName,
      contactFirstName: payload.contactFirstName,
      contactLastName: payload.contactLastName,
      contactEmail: payload.contactEmail,
      contactPhone: payload.contactPhone,
      termsAccepted: payload.termsAccepted,
      privacyAcknowledged: payload.privacyAcknowledged,
      marketingConsent: payload.marketingConsent ?? false,
      termsDocumentUrl: policyUrls.termsDocumentUrl,
      privacyDocumentUrl: policyUrls.privacyDocumentUrl,
      cookiePolicyUrl: policyUrls.cookiePolicyUrl,
    })

    return NextResponse.json({
      success: true,
      message: 'ส่งคำขอทดลองใช้งานแล้ว รอการอนุมัติจากผู้ดูแลระบบ',
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
        { error: 'มีคำขอทดลองใช้งานที่รออนุมัติสำหรับอีเมลนี้อยู่แล้ว' },
        { status: 409 }
      )
    }

    if (error instanceof AppError) {
      return NextResponse.json(
        { error: error.message },
        { status: error.statusCode || 400 }
      )
    }

    console.error('Public trial registration failed:', error)
    return NextResponse.json(
      { error: 'ส่งไม่สำเร็จ ลองใหม่ภายหลัง' },
      { status: 500 }
    )
  }
}
