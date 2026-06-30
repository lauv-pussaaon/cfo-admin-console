export const ACCOUNT_TYPE_VALUES = [
  'general customers',
  'demo',
  'employee',
  'project',
] as const

export type AccountType = typeof ACCOUNT_TYPE_VALUES[number]

export const DEFAULT_ACCOUNT_TYPE: AccountType = 'general customers'

export interface AccountTypeOption {
  value: AccountType
  label: string
}

export const ACCOUNT_TYPE_OPTIONS: AccountTypeOption[] = [
  { value: 'general customers', label: 'general customers' },
  { value: 'demo', label: 'demo' },
  { value: 'employee', label: 'employee' },
  { value: 'project', label: 'project' },
]
