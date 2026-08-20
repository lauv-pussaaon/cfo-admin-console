import { z } from 'zod'

const ORGANIZATION_CODE_PATTERN = /^[a-z0-9](?:[a-z0-9-]{0,61}[a-z0-9])?$/

export function normalizeOrganizationCode (value: string): string {
  return value.trim().toLowerCase()
}

export const organizationCodeValueSchema = z
  .string()
  .min(2, 'รหัสบริษัทอย่างน้อย 2 ตัวอักษร')
  .max(63, 'รหัสบริษัทสูงสุด 63 ตัวอักษร')
  .regex(
    ORGANIZATION_CODE_PATTERN,
    'ใช้ได้เฉพาะ a–z, 0–9 และ - (ห้ามขึ้นต้นหรือลงท้ายด้วย -)'
  )

export const organizationCodeSchema = z
  .string()
  .min(1, 'กรุณากรอกรหัสบริษัท')
  .transform(normalizeOrganizationCode)
  .pipe(organizationCodeValueSchema)

export const optionalOrganizationCodeSchema = z
  .string()
  .optional()
  .nullable()
  .superRefine((value, ctx) => {
    const normalized = normalizeOrganizationCode(value ?? '')
    if (normalized === '') return
    const parsed = organizationCodeValueSchema.safeParse(normalized)
    if (parsed.success) return
    for (const issue of parsed.error.issues) {
      ctx.addIssue({
        code: 'custom',
        message: issue.message,
      })
    }
  })

export function isValidOrganizationCode (value: string | undefined): boolean {
  return organizationCodeSchema.safeParse(value ?? '').success
}
