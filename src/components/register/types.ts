export type RegisterFlowKey = 'consult' | (string & {})

export interface RegistrationConsentPayload {
  termsAccepted: true
  privacyAcknowledged: true
  collectShareDataConsent: boolean
  marketingConsent: boolean
}

export interface RegisterConsentContextValue {
  hasAcceptedConsent: boolean
  consent: RegistrationConsentPayload | null
  acceptConsent: (payload: RegistrationConsentPayload) => void
  clearConsent: () => void
}
