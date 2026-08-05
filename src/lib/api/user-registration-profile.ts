/**
 * Build registration email profile from a users row (server-only).
 */

import { listActiveIndustryOptions } from '@/lib/api/emission-templates'
import type { RegistrationEmailProfile } from '@/lib/email/registration-profile-lines'

type UserProfileRow = {
  role: string
  organization_name?: string | null
  phone?: string | null
  has_verification?: boolean | null
  certified_date?: string | null
  certification_expiry?: string | null
  verification_documents?: string[] | null
  year_experiences?: number | null
  industries?: string[] | null
}

export async function buildRegistrationEmailProfile (
  user: UserProfileRow
): Promise<RegistrationEmailProfile | null> {
  if (user.role !== 'Consult' && user.role !== 'Audit') {
    return null
  }

  const organizationName = user.organization_name?.trim() || ''
  const phone = user.phone?.trim() || ''
  if (!organizationName && !phone) {
    return null
  }

  const industryOptions = await listActiveIndustryOptions()
  const labelByCode = new Map(
    industryOptions.map((i) => [i.industry_code, i.name_th])
  )
  const industries = user.industries ?? []
  const industryLabels = industries.map(
    (code) => labelByCode.get(code) || code
  )

  return {
    organizationName,
    phone,
    hasVerification: Boolean(user.has_verification),
    certifiedDate: user.certified_date,
    certificationExpiry: user.certification_expiry,
    verificationDocuments: user.verification_documents ?? [],
    yearExperiences:
      typeof user.year_experiences === 'number' ? user.year_experiences : 0,
    industryLabels,
  }
}
