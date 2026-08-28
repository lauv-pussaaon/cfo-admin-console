import type { AccountType } from './account-types'

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

export function getDefaultPackagePeriod (accountType: AccountType): {
  package_start: string
  package_end: string | null
} {
  if (accountType === 'general customers') {
    return getDefaultAnnualPackagePeriod()
  }

  const start = new Date()
  if (accountType === 'demo') {
    const end = new Date(start)
    end.setDate(end.getDate() + 30)
    return {
      package_start: toLocalDateInputValue(start),
      package_end: toLocalDateInputValue(end),
    }
  }

  return {
    package_start: toLocalDateInputValue(start),
    package_end: null,
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
