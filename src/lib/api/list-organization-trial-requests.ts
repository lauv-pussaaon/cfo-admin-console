import type { SupabaseClient } from '@supabase/supabase-js'
import type { OrganizationTrialRequestStatus } from '@/types/database'
import type { OrgRequestKind } from '@/types/org-request-kind'
import {
  getDbStatusesForApiStatus,
  wrapTrialRequestApiStatus,
  type TrialRequestApiStatus,
} from '@/types/trial-request-status'

export const TRIAL_REQUEST_LIST_PAGE_SIZE = 50

const LIST_SELECT = [
  'id',
  'organization_name',
  'company_code',
  'contact_first_name',
  'contact_last_name',
  'contact_email',
  'contact_phone',
  'request_kind',
  'status',
  'organization_id',
  'approved_account_type',
  'reviewed_by',
  'reviewed_at',
  'deploy_error',
  'deploy_log_path',
  'created_at',
  'updated_at',
].join(', ')

const REQUEST_DATE_FROM_PATTERN = /^(\d{4})-(\d{2})-(\d{2})$/

type TrialRequestListRow = {
  id: string
  organization_name: string
  company_code: string | null
  contact_first_name: string
  contact_last_name: string
  contact_email: string
  contact_phone: string
  request_kind: OrgRequestKind
  status: OrganizationTrialRequestStatus
  organization_id: string | null
  approved_account_type: string | null
  reviewed_by: string | null
  reviewed_at: string | null
  deploy_error: string | null
  deploy_log_path: string | null
  created_at: string
  updated_at: string | null
}

export type OrganizationTrialRequestListItem = Omit<TrialRequestListRow, 'status'> & {
  status: TrialRequestApiStatus
  requestStatus: OrganizationTrialRequestStatus
}

export function parseListPage (value: string | null): number | null {
  if (value == null || value === '') return 1
  if (!/^\d+$/.test(value)) return null
  const page = Number(value)
  if (!Number.isInteger(page) || page < 1) return null
  return page
}

export function parseRequestDateFrom (value: string | null): string | null | undefined {
  if (value == null) return undefined
  const date = value.trim()
  if (!date) return null
  const match = REQUEST_DATE_FROM_PATTERN.exec(date)
  if (!match) return null
  const year = Number(match[1])
  const month = Number(match[2])
  const day = Number(match[3])
  const probe = new Date(Date.UTC(year, month - 1, day))
  if (
    probe.getUTCFullYear() !== year ||
    probe.getUTCMonth() !== month - 1 ||
    probe.getUTCDate() !== day
  ) {
    return null
  }
  return date
}

export function bangkokDayStartIso (date: string): string {
  return new Date(`${date}T00:00:00+07:00`).toISOString()
}

function toListItem (row: TrialRequestListRow): OrganizationTrialRequestListItem {
  return {
    ...row,
    status: wrapTrialRequestApiStatus(row.status),
    requestStatus: row.status,
  }
}

export async function listOrganizationTrialRequests (
  supabase: SupabaseClient,
  params: {
    page: number
    requestDateFrom?: string
    status?: TrialRequestApiStatus
  }
): Promise<{ requests: OrganizationTrialRequestListItem[]; total: number }> {
  const from = (params.page - 1) * TRIAL_REQUEST_LIST_PAGE_SIZE
  const to = from + TRIAL_REQUEST_LIST_PAGE_SIZE - 1

  let query = supabase
    .from('organization_trial_requests')
    .select(LIST_SELECT, { count: 'exact' })
    .order('created_at', { ascending: false })

  if (params.requestDateFrom) {
    query = query.gte('created_at', bangkokDayStartIso(params.requestDateFrom))
  }
  if (params.status) {
    query = query.in('status', getDbStatusesForApiStatus(params.status))
  }

  const { data, error, count } = await query.range(from, to)
  if (error) {
    console.error('[list-organization-trial-requests]', error)
    throw error
  }

  return {
    requests: ((data ?? []) as TrialRequestListRow[]).map(toListItem),
    total: count ?? 0,
  }
}
