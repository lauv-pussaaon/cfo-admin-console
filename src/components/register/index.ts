export { default as RegisterConsentGate } from './RegisterConsentGate'
export { default as RegistrationConsentModal } from './RegistrationConsentModal'
export { default as ConsentDocumentSection } from './ConsentDocumentSection'
export { useRegisterConsent } from './RegisterConsentContext'
export { useRegistrationConsent } from './useRegistrationConsent'
export { registrationConsentFields, registrationConsentSchema } from './consent-schema'
export {
  REGISTRATION_POLICY_DOCUMENTS,
  POLICY_DOCUMENTS,
  CONSENT_MODAL_COPY,
  getPolicyUrls,
} from './policy-documents'
export { getPolicyContent, PolicyDocumentBody } from './policy-content'
export { POLICY_SLUGS, isPolicySlug, getPolicyRoutePath } from '@/lib/register/policy-slugs'
export type {
  RegisterFlowKey,
  RegistrationConsentPayload,
  RegisterConsentContextValue,
} from './types'
export type { RegistrationConsentInput } from './consent-schema'
export type { PolicyContent, PolicySection, PolicyBlock } from './policy-content'
