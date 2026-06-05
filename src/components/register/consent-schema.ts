import { z } from 'zod'

export const registrationConsentFields = {
  termsAccepted: z.literal(true),
  privacyAcknowledged: z.literal(true),
  collectShareDataConsent: z.boolean().optional().default(false),
  marketingConsent: z.boolean().optional().default(false),
}

export const registrationConsentSchema = z.object(registrationConsentFields)

export type RegistrationConsentInput = z.infer<typeof registrationConsentSchema>
