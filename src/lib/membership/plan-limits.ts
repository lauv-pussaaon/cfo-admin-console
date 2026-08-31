import type { AccountType } from '@/types/account-types'

export type ClientPlan = 'demo' | 'premium'

export interface PlanLimits {
  maxReports: number | null
  maxUploadBytes: number | null
  maxBusinessUnits: number | null
}

export interface OrganizationMembership {
  organizationId: string
  accountType: AccountType
  plan: ClientPlan
  packageStart: string | null
  packageEnd: string | null
  daysLeft: number | null
  expired: boolean
  limits: PlanLimits
}

const DEMO_LIMITS: PlanLimits = {
  maxReports: 10,
  maxUploadBytes: null,
  maxBusinessUnits: 10,
}

const PREMIUM_LIMITS: PlanLimits = {
  maxReports: null,
  maxUploadBytes: null,
  maxBusinessUnits: null,
}

export function toDateOnly (value: string | null | undefined): string | null {
  if (!value) return null
  const trimmed = value.trim()
  if (!trimmed) return null
  const match = /^(\d{4}-\d{2}-\d{2})/.exec(trimmed)
  return match?.[1] ?? null
}

export function toClientPlan (accountType: string): ClientPlan {
  return accountType === 'demo' ? 'demo' : 'premium'
}

export function getPlanLimits (plan: ClientPlan): PlanLimits {
  return plan === 'demo' ? DEMO_LIMITS : PREMIUM_LIMITS
}

function parseYmd (value: string): { y: number; m: number; d: number } | null {
  const match = /^(\d{4})-(\d{2})-(\d{2})$/.exec(value)
  if (!match) return null
  return { y: Number(match[1]), m: Number(match[2]), d: Number(match[3]) }
}

function ymdOrdinal (parts: { y: number; m: number; d: number }): number {
  return Date.UTC(parts.y, parts.m - 1, parts.d)
}

export function todayYmd (now = new Date()): string {
  const y = now.getFullYear()
  const m = String(now.getMonth() + 1).padStart(2, '0')
  const d = String(now.getDate()).padStart(2, '0')
  return `${y}-${m}-${d}`
}

export function calendarDaysLeft (packageEnd: string | null, today = todayYmd()): number | null {
  const end = packageEnd ? parseYmd(packageEnd) : null
  const start = parseYmd(today)
  if (!end || !start) return null
  const diff = Math.round((ymdOrdinal(end) - ymdOrdinal(start)) / 86_400_000)
  return Math.max(0, diff)
}

export function isPackageExpired (packageEnd: string | null, today = todayYmd()): boolean {
  const end = packageEnd ? parseYmd(packageEnd) : null
  const start = parseYmd(today)
  if (!end || !start) return false
  return ymdOrdinal(start) > ymdOrdinal(end)
}

export function buildOrganizationMembership (input: {
  organizationId: string
  accountType: AccountType
  packageStart: string | null
  packageEnd: string | null
  today?: string
}): OrganizationMembership {
  const packageStart = toDateOnly(input.packageStart)
  const packageEnd = toDateOnly(input.packageEnd)
  const today = input.today ?? todayYmd()
  const plan = toClientPlan(input.accountType)
  return {
    organizationId: input.organizationId,
    accountType: input.accountType,
    plan,
    packageStart,
    packageEnd,
    daysLeft: calendarDaysLeft(packageEnd, today),
    expired: isPackageExpired(packageEnd, today),
    limits: getPlanLimits(plan),
  }
}
