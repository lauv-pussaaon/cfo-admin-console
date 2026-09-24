import { z } from 'zod'

export const usernamePattern = /^[a-zA-Z0-9_]+$/

export const consultAccountSchema = {
  name: z.string().min(1, 'กรุณากรอกชื่อ-นามสกุล'),
  username: z
    .string()
    .min(3, 'ชื่อผู้ใช้อย่างน้อย 3 ตัวอักษร')
    .max(50, 'ชื่อผู้ใช้สูงสุด 50 ตัวอักษร')
    .regex(/^[a-zA-Z0-9_]+$/, 'ใช้ได้เฉพาะ a–z, 0–9 และ _'),
  email: z.string().email('กรุณากรอกอีเมลให้ถูกต้อง'),
  password: z.string().min(6, 'รหัสผ่านอย่างน้อย 6 ตัว'),
  phone: z
    .string()
    .min(1, 'กรุณากรอกเบอร์โทร')
    .regex(/^[0-9+\-\s()]{8,20}$/, 'รูปแบบเบอร์โทรไม่ถูกต้อง'),
  yearExperiences: z
    .number()
    .int('ต้องเป็นจำนวนเต็ม')
    .min(0, 'ต้องไม่ติดลบ')
    .max(80, 'ค่าสูงสุด 80 ปี')
    .optional(),
  industries: z.array(z.string()),
}

export const consultFormGridSx = {
  display: 'grid',
  gap: 2.5,
  gridTemplateColumns: { xs: '1fr', sm: '1fr 1fr' },
  '& .MuiFormLabel-asterisk': {
    color: 'error.main',
    fontSize: '1.05rem',
    fontWeight: 700,
  },
} as const

export function fieldIsValid (
  value: string | undefined,
  error: unknown,
  options?: { email?: boolean; username?: boolean; password?: boolean; phone?: boolean }
): boolean {
  const trimmed = (value ?? '').trim()
  if (!trimmed || error) return false
  if (options?.email) {
    return z.string().email().safeParse(trimmed).success
  }
  if (options?.username) {
    return trimmed.length >= 3 && trimmed.length <= 50 && usernamePattern.test(trimmed)
  }
  if (options?.password) {
    return trimmed.length >= 6
  }
  if (options?.phone) {
    return /^[0-9+\-\s()]{8,20}$/.test(trimmed)
  }
  return true
}

export function yearExperiencesSetValueAs (value: unknown): number | undefined {
  if (value === '' || value === null || value === undefined) return undefined
  const num = Number(value)
  return Number.isNaN(num) ? undefined : num
}

export function yearIsValid (value: unknown, error: unknown): boolean {
  return (
    !error &&
    typeof value === 'number' &&
    !Number.isNaN(value) &&
    Number.isInteger(value) &&
    value >= 0 &&
    value <= 80
  )
}

export type IndustryOption = {
  industry_code: string
  name_th: string
}
