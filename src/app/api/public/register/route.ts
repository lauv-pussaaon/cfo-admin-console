import { NextRequest, NextResponse } from 'next/server'
import { z } from 'zod'
import { createUser, deleteUser } from '@/lib/api/auth'
import { createUserConsent } from '@/lib/api/user-consents'
import { AppError } from '@/lib/utils/errors'
import { registrationConsentFields } from '@/components/register/consent-schema'
import { getPolicyUrls } from '@/components/register/policy-documents'
import { listActiveIndustryOptions } from '@/lib/api/emission-templates'
import {
  deleteConsultingFirm,
  findOrCreateConsultingFirm,
  firmHasContact,
} from '@/lib/api/consulting-firms'
import { notifyConsultRegistration } from '@/lib/register/notify-consult-registration'

const phonePattern = /^[0-9+\-\s()]{8,20}$/

const sharedRegistrationFields = {
  username: z.string().min(3).max(50).regex(/^[a-zA-Z0-9_]+$/),
  email: z.string().email(),
  password: z.string().min(6),
  name: z.string().min(1).max(120),
  phone: z.string().min(1).regex(phonePattern),
  yearExperiences: z.number().int().min(0).max(80).optional(),
  industries: z.array(z.string()).optional(),
  ...registrationConsentFields,
}

const publicRegistrationSchema = z.discriminatedUnion('registrantType', [
  z.object({
    registrantType: z.literal('individual'),
    role: z.enum(['Consult', 'Audit']),
    organizationName: z.string().min(1).max(200),
    ...sharedRegistrationFields,
  }),
  z.object({
    registrantType: z.literal('firm'),
    role: z.literal('Consult'),
    firmName: z.string().min(1).max(200),
    ...sharedRegistrationFields,
  }),
])

async function rollbackRegistration (userId: string | null, firmId: string | null) {
  if (userId) {
    try {
      await deleteUser(userId)
    } catch (rollbackErr) {
      console.error('Failed to rollback user:', rollbackErr)
    }
  }
  if (firmId) {
    try {
      await deleteConsultingFirm(firmId)
    } catch (rollbackErr) {
      console.error('Failed to rollback consulting firm:', rollbackErr)
    }
  }
}

export async function POST (request: NextRequest) {
  let createdUserId: string | null = null
  let createdFirmId: string | null = null

  try {
    const body = await request.json()
    const payload = publicRegistrationSchema.parse(body)

    const emailNormalized = payload.email.trim().toLowerCase()
    const industryOptions = await listActiveIndustryOptions()
    const allowedCodes = new Set(industryOptions.map((i) => i.industry_code))
    const industries = [...new Set(payload.industries ?? [])].filter((code) =>
      allowedCodes.has(code)
    )

    const industryLabelByCode = new Map(
      industryOptions.map((i) => [i.industry_code, i.name_th])
    )
    const industryLabels = industries.map(
      (code) => industryLabelByCode.get(code) || code
    )

    let organizationName = payload.registrantType === 'firm'
      ? payload.firmName.trim()
      : payload.organizationName.trim()
    let consultingFirmId: string | null = null
    let isFirmContact = false

    if (payload.registrantType === 'firm') {
      const { firm, created } = await findOrCreateConsultingFirm(payload.firmName)
      if (created) createdFirmId = firm.id
      consultingFirmId = firm.id
      organizationName = firm.name
      isFirmContact = !(await firmHasContact(firm.id))
    }

    const user = await createUser({
      username: payload.username.trim(),
      email: emailNormalized,
      password: payload.password,
      name: payload.name.trim(),
      role: payload.role,
      status: 'requested',
      organization_name: organizationName,
      phone: payload.phone.trim(),
      year_experiences:
        typeof payload.yearExperiences === 'number' ? payload.yearExperiences : null,
      industries,
      consulting_firm_id: consultingFirmId,
      is_firm_contact_person: isFirmContact,
    })
    createdUserId = user.id

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
      await rollbackRegistration(createdUserId, createdFirmId)
      return NextResponse.json(
        { error: 'ส่งไม่สำเร็จ ลองใหม่ภายหลัง' },
        { status: 500 }
      )
    }

    try {
      await notifyConsultRegistration(request, {
        userId: user.id,
        name: payload.name.trim(),
        username: payload.username.trim(),
        email: emailNormalized,
        role: payload.role,
        profile: {
          organizationName,
          phone: payload.phone.trim(),
          yearExperiences:
            typeof payload.yearExperiences === 'number' ? payload.yearExperiences : null,
          industryLabels,
        },
      })
    } catch (verificationErr) {
      console.error('Failed to create verification row, rolling back user:', verificationErr)
      await rollbackRegistration(createdUserId, createdFirmId)
      return NextResponse.json(
        { error: 'ส่งไม่สำเร็จ ลองใหม่ภายหลัง' },
        { status: 500 }
      )
    }

    return NextResponse.json({
      success: true,
      message: 'ส่งคำขอแล้ว กรุณาตรวจอีเมลเพื่ออัปโหลดเอกสารยืนยัน',
    })
  } catch (error) {
    if (createdUserId || createdFirmId) {
      await rollbackRegistration(createdUserId, createdFirmId)
    }

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
