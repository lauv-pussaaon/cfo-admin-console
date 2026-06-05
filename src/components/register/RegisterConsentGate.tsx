'use client'

import RegistrationConsentModal from './RegistrationConsentModal'
import { RegisterConsentContext } from './RegisterConsentContext'
import { useRegistrationConsent } from './useRegistrationConsent'
import type { RegisterFlowKey } from './types'

interface RegisterConsentGateProps {
  flowKey: RegisterFlowKey
  onCancel: () => void
  children: React.ReactNode
}

export default function RegisterConsentGate({
  flowKey,
  onCancel,
  children,
}: RegisterConsentGateProps) {
  const { hasAcceptedConsent, consent, acceptConsent, clearConsent } =
    useRegistrationConsent(flowKey)

  return (
    <RegisterConsentContext.Provider
      value={{ hasAcceptedConsent, consent, acceptConsent, clearConsent }}
    >
      <RegistrationConsentModal
        open={!hasAcceptedConsent}
        onConfirm={acceptConsent}
        onCancel={onCancel}
      />
      {hasAcceptedConsent ? children : null}
    </RegisterConsentContext.Provider>
  )
}
