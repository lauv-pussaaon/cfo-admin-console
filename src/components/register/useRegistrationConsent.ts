'use client'

import { useCallback, useState } from 'react'
import type { RegisterFlowKey, RegistrationConsentPayload } from './types'

function storageKey(flowKey: RegisterFlowKey) {
  return `register-consent:${flowKey}`
}

function readStoredConsent(flowKey: RegisterFlowKey): RegistrationConsentPayload | null {
  if (typeof window === 'undefined') return null
  try {
    const raw = sessionStorage.getItem(storageKey(flowKey))
    if (!raw) return null
    const parsed = JSON.parse(raw) as RegistrationConsentPayload
    if (parsed.termsAccepted === true && parsed.privacyAcknowledged === true) {
      return parsed
    }
    return null
  } catch {
    return null
  }
}

function getInitialConsentState(flowKey: RegisterFlowKey) {
  const stored = readStoredConsent(flowKey)
  return {
    consent: stored,
    hasAcceptedConsent: stored !== null,
  }
}

export function useRegistrationConsent(flowKey: RegisterFlowKey) {
  const [{ consent, hasAcceptedConsent }, setConsentState] = useState(() =>
    getInitialConsentState(flowKey)
  )

  const acceptConsent = useCallback(
    (payload: RegistrationConsentPayload) => {
      setConsentState({ consent: payload, hasAcceptedConsent: true })
      sessionStorage.setItem(storageKey(flowKey), JSON.stringify(payload))
    },
    [flowKey]
  )

  const clearConsent = useCallback(() => {
    setConsentState({ consent: null, hasAcceptedConsent: false })
    sessionStorage.removeItem(storageKey(flowKey))
  }, [flowKey])

  return {
    hasAcceptedConsent,
    consent,
    acceptConsent,
    clearConsent,
  }
}
