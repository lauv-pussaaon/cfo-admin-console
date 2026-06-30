import type { ChipProps } from '@mui/material'
import type { OrganizationTrialRequestStatus } from '@/types/database'

export const TRIAL_REQUEST_STATUS_OPTIONS: {
  value: OrganizationTrialRequestStatus
  label: string
  chipColor: ChipProps['color']
}[] = [
  { value: 'pending', label: 'รออนุมัติ', chipColor: 'warning' },
  { value: 'processing', label: 'กำลังดำเนินการ', chipColor: 'info' },
  { value: 'approved', label: 'อนุมัติแล้ว', chipColor: 'success' },
  { value: 'cancelled', label: 'ยกเลิกแล้ว', chipColor: 'default' },
]

const STATUS_MAP = Object.fromEntries(
  TRIAL_REQUEST_STATUS_OPTIONS.map((option) => [option.value, option])
) as Record<OrganizationTrialRequestStatus, (typeof TRIAL_REQUEST_STATUS_OPTIONS)[number]>

export function getTrialRequestStatusLabel (status: OrganizationTrialRequestStatus): string {
  return STATUS_MAP[status]?.label ?? status
}

export function getTrialRequestStatusChipColor (
  status: OrganizationTrialRequestStatus
): ChipProps['color'] {
  return STATUS_MAP[status]?.chipColor ?? 'default'
}

const ACTIVE_STATUSES: OrganizationTrialRequestStatus[] = ['pending', 'processing']

export function isActiveTrialRequestStatus (status: OrganizationTrialRequestStatus): boolean {
  return ACTIVE_STATUSES.includes(status)
}

export function canTransitionTrialRequestStatus (
  from: OrganizationTrialRequestStatus,
  to: OrganizationTrialRequestStatus
): boolean {
  if (from === to) return false
  if (from === 'approved' || from === 'cancelled') return false
  if (to === 'approved') return from === 'pending' || from === 'processing'
  if (to === 'cancelled') return from === 'pending' || from === 'processing'
  if (to === 'processing') return from === 'pending'
  return false
}
