import type { AccountType } from './account-types'

export const PACKAGE_PERIOD_DEFAULTS: Record<AccountType, { start: string; end: string | null }> = {
  demo: { start: '2026-06-26', end: '2026-07-31' },
  employee: { start: '2026-06-01', end: null },
  'general customers': { start: '2026-06-01', end: '2026-07-31' },
  project: { start: '2026-06-01', end: null },
}

export function getDefaultPackagePeriod (accountType: AccountType): {
  package_start: string
  package_end: string | null
} {
  const defaults = PACKAGE_PERIOD_DEFAULTS[accountType]
  return {
    package_start: defaults.start,
    package_end: defaults.end,
  }
}

function toLocalDateInputValue (date: Date): string {
  const year = date.getFullYear()
  const month = String(date.getMonth() + 1).padStart(2, '0')
  const day = String(date.getDate()).padStart(2, '0')
  return `${year}-${month}-${day}`
}

export function getDefaultAnnualPackagePeriod (): {
  package_start: string
  package_end: string
} {
  const start = new Date()
  const end = new Date(start)
  end.setFullYear(end.getFullYear() + 1)
  return {
    package_start: toLocalDateInputValue(start),
    package_end: toLocalDateInputValue(end),
  }
}

export function formatPackagePeriod (
  packageStart: string | null,
  packageEnd: string | null
): string {
  if (!packageStart) return '-'
  if (!packageEnd) return `${packageStart} – ไม่มีกำหนดสิ้นสุด`
  return `${packageStart} – ${packageEnd}`
}
