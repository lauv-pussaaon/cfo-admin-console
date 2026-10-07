import { ACCOUNT_TYPE_OPTIONS, DEFAULT_ACCOUNT_TYPE, type AccountType } from '@/types/account-types'

export interface OrganizationSummarySource {
  account_type?: string | null
  package_start?: string | null
  package_end?: string | null
}

export interface AccountTypeCount {
  accountType: AccountType
  label: string
  count: number
}

export interface MonthCount {
  key: string
  label: string
  tooltipLabel: string
  count: number
}

export interface OrganizationSummary {
  total: number
  byType: AccountTypeCount[]
  packageStarts: MonthCount[]
  packageEnds: MonthCount[]
}

const MONTH_WINDOW = 6

export function bangkokYearMonth (now = new Date()): string {
  return new Intl.DateTimeFormat('en-CA', {
    timeZone: 'Asia/Bangkok',
    year: 'numeric',
    month: '2-digit',
  }).format(now)
}

export function formatMonthAxisLabel (yearMonth: string): string {
  return formatMonth(yearMonth, { month: 'short', year: '2-digit' })
}

export function formatMonthTooltipLabel (yearMonth: string): string {
  return formatMonth(yearMonth, { month: 'long', year: 'numeric' })
}

export function buildOrganizationSummary (
  organizations: OrganizationSummarySource[],
  now = new Date(),
): OrganizationSummary {
  const current = bangkokYearMonth(now)
  const startKeys = monthKeys(current, -MONTH_WINDOW, 0)
  const endKeys = monthKeys(current, 0, MONTH_WINDOW)
  const startCounts = new Map(startKeys.map((key) => [key, 0]))
  const endCounts = new Map(endKeys.map((key) => [key, 0]))
  const typeCounts = new Map(ACCOUNT_TYPE_OPTIONS.map((option) => [option.value, 0]))
  let total = 0

  for (const organization of organizations) {
    if (organization.account_type === 'demo' || organization.account_type === 'internal') continue
    total += 1
    const accountType = normalizeAccountType(organization.account_type)
    typeCounts.set(accountType, (typeCounts.get(accountType) || 0) + 1)

    const startKey = yearMonthKey(organization.package_start)
    if (startKey && startCounts.has(startKey)) {
      startCounts.set(startKey, (startCounts.get(startKey) || 0) + 1)
    }

    const endKey = yearMonthKey(organization.package_end)
    if (endKey && endCounts.has(endKey)) {
      endCounts.set(endKey, (endCounts.get(endKey) || 0) + 1)
    }
  }

  return {
    total,
    byType: ACCOUNT_TYPE_OPTIONS.map((option) => ({
      accountType: option.value,
      label: option.label,
      count: typeCounts.get(option.value) || 0,
    })),
    packageStarts: startKeys.map((key) => toMonthCount(key, startCounts.get(key) || 0)),
    packageEnds: endKeys.map((key) => toMonthCount(key, endCounts.get(key) || 0)),
  }
}

function normalizeAccountType (value: string | null | undefined): AccountType {
  const match = ACCOUNT_TYPE_OPTIONS.find((option) => option.value === value)
  return match?.value ?? DEFAULT_ACCOUNT_TYPE
}

function yearMonthKey (value: string | null | undefined): string | null {
  if (!value) return null
  const key = value.slice(0, 7)
  return /^\d{4}-\d{2}$/.test(key) ? key : null
}

function monthKeys (anchor: string, fromDelta: number, toDelta: number): string[] {
  const keys: string[] = []
  for (let delta = fromDelta; delta <= toDelta; delta += 1) {
    keys.push(addMonths(anchor, delta))
  }
  return keys
}

function addMonths (yearMonth: string, delta: number): string {
  const [yearText, monthText] = yearMonth.split('-')
  const monthIndex = Number(monthText) - 1 + delta
  const year = Number(yearText) + Math.floor(monthIndex / 12)
  const month = ((monthIndex % 12) + 12) % 12 + 1
  return `${year}-${String(month).padStart(2, '0')}`
}

function toMonthCount (key: string, count: number): MonthCount {
  return {
    key,
    label: formatMonthAxisLabel(key),
    tooltipLabel: formatMonthTooltipLabel(key),
    count,
  }
}

function formatMonth (yearMonth: string, options: Intl.DateTimeFormatOptions): string {
  const [yearText, monthText] = yearMonth.split('-')
  const date = new Date(Date.UTC(Number(yearText), Number(monthText) - 1, 15))
  return new Intl.DateTimeFormat('th-TH-u-nu-latn', {
    ...options,
    timeZone: 'UTC',
  }).format(date)
}
