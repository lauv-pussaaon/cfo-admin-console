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

export function formatPackagePeriod (
  packageStart: string | null,
  packageEnd: string | null
): string {
  if (!packageStart) return '-'
  if (!packageEnd) return `${packageStart} – ไม่มีกำหนดสิ้นสุด`
  return `${packageStart} – ${packageEnd}`
}
