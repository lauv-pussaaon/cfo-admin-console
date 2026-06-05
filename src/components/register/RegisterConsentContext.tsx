'use client'

import { createContext, useContext } from 'react'
import type { RegisterConsentContextValue } from './types'

export const RegisterConsentContext = createContext<RegisterConsentContextValue | null>(null)

export function useRegisterConsent(): RegisterConsentContextValue {
  const context = useContext(RegisterConsentContext)
  if (!context) {
    throw new Error('useRegisterConsent must be used within RegisterConsentGate')
  }
  return context
}
