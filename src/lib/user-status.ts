import type { UserStatus } from '@/lib/api/types'

export const USER_STATUS_LABELS: Record<UserStatus, string> = {
  requested: 'รออนุมัติ',
  active: 'ใช้งาน',
  rejected: 'ปฏิเสธ',
  inactive: 'ปิดใช้งาน',
}

export const VERIFICATION_STATUS_LABELS: Record<string, string> = {
  pending_upload: 'รออัปโหลดเอกสาร',
  pending_review: 'รอการอนุมัติ',
  approved: 'อนุมัติแล้ว',
  rejected: 'ปฏิเสธเอกสาร',
}

export const USER_STATUS_FILTER_OPTIONS: {
  value: UserStatus
  label: string
}[] = [
  { value: 'requested', label: USER_STATUS_LABELS.requested },
  { value: 'active', label: USER_STATUS_LABELS.active },
  { value: 'rejected', label: USER_STATUS_LABELS.rejected },
  { value: 'inactive', label: USER_STATUS_LABELS.inactive },
]
