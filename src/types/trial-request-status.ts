import type { ChipProps } from '@mui/material'
import type { OrganizationTrialRequestStatus } from '@/types/database'

export const TRIAL_REQUEST_STATUS_OPTIONS: {
  value: OrganizationTrialRequestStatus
  label: string
  chipColor: ChipProps['color']
}[] = [
  { value: 'open', label: 'เปิด', chipColor: 'warning' },
  { value: 'started', label: 'เริ่มแล้ว', chipColor: 'info' },
  { value: 'deploying', label: 'กำลังติดตั้ง', chipColor: 'info' },
  { value: 'deployed', label: 'พร้อมใช้งาน', chipColor: 'success' },
  { value: 'deployment_failed', label: 'ติดตั้งไม่สำเร็จ', chipColor: 'error' },
  { value: 'cancelled', label: 'ยกเลิก', chipColor: 'default' },
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

const ACTIVE_STATUSES: OrganizationTrialRequestStatus[] = ['open', 'started']
const PIPELINE_STATUSES: OrganizationTrialRequestStatus[] = ['open', 'started', 'deploying']
const DEPLOYABLE_STATUSES: OrganizationTrialRequestStatus[] = ['started', 'deployment_failed']

export function isActiveTrialRequestStatus (status: OrganizationTrialRequestStatus): boolean {
  return ACTIVE_STATUSES.includes(status)
}

export function isPipelineTrialRequestStatus (status: OrganizationTrialRequestStatus): boolean {
  return PIPELINE_STATUSES.includes(status)
}

export function canDeployTrialRequest (status: OrganizationTrialRequestStatus): boolean {
  return DEPLOYABLE_STATUSES.includes(status)
}

export function canTransitionTrialRequestStatus (
  from: OrganizationTrialRequestStatus,
  to: OrganizationTrialRequestStatus
): boolean {
  if (from === to) return false
  if (from === 'deployed' || from === 'cancelled') return false
  if (to === 'started') return from === 'open'
  if (to === 'cancelled') return from === 'open' || from === 'started'
  if (to === 'deploying') return from === 'started' || from === 'deployment_failed'
  if (to === 'deployed' || to === 'deployment_failed') return from === 'deploying' || from === 'started'
  return false
}
