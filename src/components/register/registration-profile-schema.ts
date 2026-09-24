import { z } from 'zod'

const phonePattern = /^[0-9+\-\s()]{8,20}$/

export const registrationProfileFields = {
  organizationName: z.string().min(1, 'กรุณากรอกชื่อองค์กร').max(200),
  phone: z
    .string()
    .min(1, 'กรุณากรอกเบอร์โทร')
    .regex(phonePattern, 'รูปแบบเบอร์โทรไม่ถูกต้อง'),
  yearExperiences: z
    .number()
    .int('ต้องเป็นจำนวนเต็ม')
    .min(0, 'ต้องไม่ติดลบ')
    .max(80, 'ค่าสูงสุด 80 ปี')
    .optional(),
  industries: z.array(z.string()),
}

export type RegistrationProfileFields = {
  organizationName: string
  phone: string
  yearExperiences?: number
  industries: string[]
}
