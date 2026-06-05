'use client'

import { useCallback } from 'react'
import { useRouter, useSearchParams } from 'next/navigation'

export function useRegisterBack() {
  const router = useRouter()
  const searchParams = useSearchParams()
  const fromWeb = searchParams.get('fromWeb') === '1'

  return useCallback(() => {
    if (fromWeb) {
      window.location.href = 'https://www.ideacarb.com'
      return
    }
    router.push('/')
  }, [fromWeb, router])
}
