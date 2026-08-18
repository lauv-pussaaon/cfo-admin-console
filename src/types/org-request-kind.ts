import type { ChipProps } from '@mui/material'

export const ORG_REQUEST_KIND_VALUES = ['trial', 'annual_membership'] as const

export type OrgRequestKind = typeof ORG_REQUEST_KIND_VALUES[number]

export const DEFAULT_ORG_REQUEST_KIND: OrgRequestKind = 'trial'

export const ORG_REQUEST_KIND_OPTIONS: {
  value: OrgRequestKind
  label: string
  chipColor: ChipProps['color']
}[] = [
  { value: 'trial', label: 'ทดลองใช้งาน', chipColor: 'info' },
  { value: 'annual_membership', label: 'สมาชิกรายปี', chipColor: 'success' },
]

const KIND_MAP = Object.fromEntries(
  ORG_REQUEST_KIND_OPTIONS.map((option) => [option.value, option])
) as Record<OrgRequestKind, (typeof ORG_REQUEST_KIND_OPTIONS)[number]>

export function isOrgRequestKind (value: unknown): value is OrgRequestKind {
  return ORG_REQUEST_KIND_VALUES.includes(value as OrgRequestKind)
}

export function normalizeOrgRequestKind (value: unknown): OrgRequestKind {
  return isOrgRequestKind(value) ? value : DEFAULT_ORG_REQUEST_KIND
}

export function getOrgRequestKindLabel (kind: unknown): string {
  return KIND_MAP[normalizeOrgRequestKind(kind)]?.label ?? DEFAULT_ORG_REQUEST_KIND
}

export function getOrgRequestKindChipColor (kind: unknown): ChipProps['color'] {
  return KIND_MAP[normalizeOrgRequestKind(kind)]?.chipColor ?? 'default'
}

export function isAnnualMembershipRequest (kind: unknown): boolean {
  return normalizeOrgRequestKind(kind) === 'annual_membership'
}
