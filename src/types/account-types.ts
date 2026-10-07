export const ACCOUNT_TYPE_VALUES = [
  'annual_member',
  'trial',
  'demo',
  'employee',
  'project',
] as const

export type AccountType = typeof ACCOUNT_TYPE_VALUES[number]

export const DEFAULT_ACCOUNT_TYPE: AccountType = 'annual_member'

export interface AccountTypeOption {
  value: AccountType
  label: string
}

export const ACCOUNT_TYPE_OPTIONS: AccountTypeOption[] = [
  { value: 'annual_member', label: 'annual_member' },
  { value: 'trial', label: 'trial' },
  { value: 'demo', label: 'demo' },
  { value: 'employee', label: 'employee' },
  { value: 'project', label: 'project' },
]
