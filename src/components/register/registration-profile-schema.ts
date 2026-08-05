import { z } from 'zod'
import { MAX_VERIFICATION_DOCUMENTS } from '@/lib/register/verification-documents'

const phonePattern = /^[0-9+\-\s()]{8,20}$/

export const registrationProfileFields = {
  organizationName: z.string().min(1, 'กรุณากรอกชื่อองค์กร').max(200),
  phone: z
    .string()
    .min(1, 'กรุณากรอกเบอร์โทร')
    .regex(phonePattern, 'รูปแบบเบอร์โทรไม่ถูกต้อง'),
  hasVerification: z.boolean(),
  certifiedDate: z.string().optional().or(z.literal('')),
  certificationExpiry: z.string().optional().or(z.literal('')),
  verificationDocuments: z.array(z.string().url('ลิงก์เอกสารไม่ถูกต้อง')).max(
    MAX_VERIFICATION_DOCUMENTS,
    `อัปโหลดได้สูงสุด ${MAX_VERIFICATION_DOCUMENTS} ไฟล์`
  ),
  yearExperiences: z
    .number({ message: 'กรุณากรอกปีประสบการณ์' })
    .int('ต้องเป็นจำนวนเต็ม')
    .min(0, 'ต้องไม่ติดลบ')
    .max(80, 'ค่าสูงสุด 80 ปี'),
  industries: z.array(z.string().min(1)).min(1, 'กรุณาเลือกอย่างน้อย 1 อุตสาหกรรม'),
}

export function refineRegistrationProfile (
  data: {
    hasVerification: boolean
    certifiedDate?: string
    certificationExpiry?: string
    verificationDocuments?: string[]
  },
  ctx: z.RefinementCtx
) {
  if (!data.hasVerification) return

  if (!data.certifiedDate) {
    ctx.addIssue({
      code: 'custom',
      message: 'กรุณากรอกวันที่ได้รับการรับรอง',
      path: ['certifiedDate'],
    })
  }
  if (!data.certificationExpiry) {
    ctx.addIssue({
      code: 'custom',
      message: 'กรุณากรอกวันหมดอายุการรับรอง',
      path: ['certificationExpiry'],
    })
  }
  if (
    data.certifiedDate &&
    data.certificationExpiry &&
    data.certificationExpiry < data.certifiedDate
  ) {
    ctx.addIssue({
      code: 'custom',
      message: 'วันหมดอายุต้องไม่ก่อนวันที่ได้รับการรับรอง',
      path: ['certificationExpiry'],
    })
  }

  const docs = data.verificationDocuments ?? []
  if (docs.length < 1) {
    ctx.addIssue({
      code: 'custom',
      message: 'กรุณาอัปโหลดเอกสารการรับรองอย่างน้อย 1 ไฟล์',
      path: ['verificationDocuments'],
    })
  }
  if (docs.length > MAX_VERIFICATION_DOCUMENTS) {
    ctx.addIssue({
      code: 'custom',
      message: `อัปโหลดได้สูงสุด ${MAX_VERIFICATION_DOCUMENTS} ไฟล์`,
      path: ['verificationDocuments'],
    })
  }
}

export type RegistrationProfileFields = {
  organizationName: string
  phone: string
  hasVerification: boolean
  certifiedDate?: string
  certificationExpiry?: string
  verificationDocuments: string[]
  yearExperiences: number
  industries: string[]
}
