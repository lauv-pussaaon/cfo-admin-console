'use client'

import { useEffect, useState } from 'react'
import type { IndustryOption } from './consult-form-shared'

export function useIndustryOptions () {
  const [industryOptions, setIndustryOptions] = useState<IndustryOption[]>([])
  const [industriesLoading, setIndustriesLoading] = useState(true)
  const [loadError, setLoadError] = useState<string | null>(null)

  useEffect(() => {
    let cancelled = false
    ;(async () => {
      try {
        setIndustriesLoading(true)
        const response = await fetch('/api/public/industries')
        const result = await response.json()
        if (!response.ok) {
          throw new Error(result.error || 'โหลดอุตสาหกรรมไม่สำเร็จ')
        }
        if (!cancelled) {
          setIndustryOptions(result.industries ?? [])
        }
      } catch (error) {
        if (!cancelled) {
          setLoadError(error instanceof Error ? error.message : 'โหลดอุตสาหกรรมไม่สำเร็จ')
        }
      } finally {
        if (!cancelled) setIndustriesLoading(false)
      }
    })()
    return () => {
      cancelled = true
    }
  }, [])

  return { industryOptions, industriesLoading, loadError }
}
