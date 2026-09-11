import type { SupabaseClient } from '@supabase/supabase-js'
import {
  bangkokDayAfterStartIso,
  bangkokDayStartIso,
} from '@/lib/api/list-organization-trial-requests'
import { toDateOnly } from '@/lib/membership/plan-limits'
import type { AccountType } from '@/types/account-types'

export const ORGANIZATION_LIST_PAGE_SIZE = 50

const LIST_SELECT = [
  'id',
  'name',
  'code',
  'app_url',
  'is_initialized',
  'initialized_at',
  'factory_admin_email',
  'contact_first_name',
  'contact_last_name',
  'contact_phone',
  'username',
  'account_type',
  'package_start',
  'package_end',
  'created_at',
  'updated_at',
].join(', ')

type OrganizationListRow = {
  id: string
  name: string
  code: string | null
  app_url: string | null
  is_initialized: boolean
  initialized_at: string | null
  factory_admin_email: string | null
  contact_first_name: string | null
  contact_last_name: string | null
  contact_phone: string | null
  username: string | null
  account_type: AccountType
  package_start: string | null
  package_end: string | null
  created_at: string
  updated_at: string | null
}

export type OrganizationListItem = {
  id: string
  name: string
  code: string | null
  createdDate: string
  packageStart: string | null
  packageEnd: string | null
  accountType: AccountType
  appUrl: string | null
  isInitialized: boolean
  initializedAt: string | null
  factoryAdminEmail: string | null
  contactFirstName: string | null
  contactLastName: string | null
  contactPhone: string | null
  username: string | null
  updatedAt: string | null
}

function toListItem (row: OrganizationListRow): OrganizationListItem {
  return {
    id: row.id,
    name: row.name,
    code: row.code,
    createdDate: row.created_at,
    packageStart: toDateOnly(row.package_start),
    packageEnd: toDateOnly(row.package_end),
    accountType: row.account_type,
    appUrl: row.app_url,
    isInitialized: row.is_initialized,
    initializedAt: row.initialized_at,
    factoryAdminEmail: row.factory_admin_email,
    contactFirstName: row.contact_first_name,
    contactLastName: row.contact_last_name,
    contactPhone: row.contact_phone,
    username: row.username,
    updatedAt: row.updated_at,
  }
}

export async function listOrganizations (
  supabase: SupabaseClient,
  params: {
    page: number
    createdDateFrom?: string
    createdDateBy?: string
    packageStartFrom?: string
    packageStartBy?: string
    packageEndFrom?: string
    packageEndBy?: string
    accountType?: AccountType
  }
): Promise<{ organizations: OrganizationListItem[]; total: number }> {
  const from = (params.page - 1) * ORGANIZATION_LIST_PAGE_SIZE
  const to = from + ORGANIZATION_LIST_PAGE_SIZE - 1

  let query = supabase
    .from('organizations')
    .select(LIST_SELECT, { count: 'exact' })
    .order('created_at', { ascending: false })

  if (params.createdDateFrom) {
    query = query.gte('created_at', bangkokDayStartIso(params.createdDateFrom))
  }
  if (params.createdDateBy) {
    query = query.lt('created_at', bangkokDayAfterStartIso(params.createdDateBy))
  }
  if (params.packageStartFrom) {
    query = query.gte('package_start', params.packageStartFrom)
  }
  if (params.packageStartBy) {
    query = query.lte('package_start', params.packageStartBy)
  }
  if (params.packageEndFrom) {
    query = query.gte('package_end', params.packageEndFrom)
  }
  if (params.packageEndBy) {
    query = query.lte('package_end', params.packageEndBy)
  }
  if (params.accountType) {
    query = query.eq('account_type', params.accountType)
  }

  const { data, error, count } = await query.range(from, to)

  if (error) {
    console.error('[list-organizations]', error)
    throw error
  }

  return {
    organizations: ((data ?? []) as unknown as OrganizationListRow[]).map(toListItem),
    total: count ?? 0,
  }
}
