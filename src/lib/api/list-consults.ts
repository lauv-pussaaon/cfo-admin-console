import type { SupabaseClient } from '@supabase/supabase-js'
import type { ConsultAuditVerificationStatus, UserStatus } from '@/lib/api/types'
import {
  bangkokDayAfterStartIso,
  bangkokDayStartIso,
} from '@/lib/api/list-organization-trial-requests'

export const CONSULT_LIST_PAGE_SIZE = 50

export const CONSULT_LIST_STAGES = [
  'register',
  'review',
  'approved',
  'rejected',
  'inactive',
] as const

export type ConsultListStage = (typeof CONSULT_LIST_STAGES)[number]

const USER_SELECT = [
  'id',
  'name',
  'username',
  'email',
  'phone',
  'organization_name',
  'consulting_firm_id',
  'is_firm_contact_person',
  'status',
  'rejection_reason',
  'created_at',
].join(', ')

type ConsultUserRow = {
  id: string
  name: string
  username: string
  email: string
  phone: string | null
  organization_name: string | null
  consulting_firm_id: string | null
  is_firm_contact_person: boolean
  status: UserStatus
  rejection_reason: string | null
  created_at: string
}

type VerificationRow = {
  id: string
  user_id: string
  status: ConsultAuditVerificationStatus
  verified_date: string | null
}

export type ConsultListItem = {
  id: string
  name: string
  username: string
  email: string
  phone: string | null
  organization_name: string | null
  consulting_firm_name: string | null
  is_firm_contact_person: boolean
  created_at: string
  status: ConsultListStage
  user_status: UserStatus
  verification_status: ConsultAuditVerificationStatus | null
  rejection_reason: string | null
  verified_date: string | null
  document_count: number
}

export function isConsultListStage (value: string): value is ConsultListStage {
  return (CONSULT_LIST_STAGES as readonly string[]).includes(value)
}

export function consultListStage (input: {
  userStatus: UserStatus
  verificationStatus: ConsultAuditVerificationStatus | null
}): ConsultListStage {
  if (input.userStatus === 'inactive') return 'inactive'
  if (input.userStatus === 'rejected' || input.verificationStatus === 'rejected') return 'rejected'
  if (input.userStatus === 'active' || input.verificationStatus === 'approved') return 'approved'
  if (input.verificationStatus === 'pending_review') return 'review'
  return 'register'
}

function chunks<T> (items: T[], size: number): T[][] {
  const groups: T[][] = []
  for (let index = 0; index < items.length; index += size) {
    groups.push(items.slice(index, index + size))
  }
  return groups
}

function applyRegisteredDates<T extends { gte: (column: string, value: string) => T; lt: (column: string, value: string) => T }> (
  query: T,
  params: { registeredDateFrom?: string; registeredDateBy?: string }
): T {
  let next = query
  if (params.registeredDateFrom) {
    next = next.gte('created_at', bangkokDayStartIso(params.registeredDateFrom))
  }
  if (params.registeredDateBy) {
    next = next.lt('created_at', bangkokDayAfterStartIso(params.registeredDateBy))
  }
  return next
}

async function fetchConsultUsers (
  supabase: SupabaseClient,
  params: { registeredDateFrom?: string; registeredDateBy?: string }
): Promise<ConsultUserRow[]> {
  const pageSize = 1000
  const rows: ConsultUserRow[] = []
  for (let from = 0; ; from += pageSize) {
    let query = supabase
      .from('users')
      .select(USER_SELECT)
      .eq('role', 'Consult')
      .order('created_at', { ascending: false })
      .order('id', { ascending: false })
    query = applyRegisteredDates(query, params)
    const { data, error } = await query.range(from, from + pageSize - 1)
    if (error) {
      console.error('[list-consults] users', error)
      throw error
    }
    const batch = (data ?? []) as unknown as ConsultUserRow[]
    rows.push(...batch)
    if (batch.length < pageSize) break
  }
  return rows
}

async function verificationsForUsers (
  supabase: SupabaseClient,
  userIds: string[]
): Promise<Map<string, VerificationRow>> {
  const byUser = new Map<string, VerificationRow>()
  for (const group of chunks(userIds, 200)) {
    if (group.length === 0) continue
    const { data, error } = await supabase
      .from('consult_audit_verification')
      .select('id, user_id, status, verified_date')
      .in('user_id', group)
    if (error) {
      console.error('[list-consults] verifications', error)
      throw error
    }
    for (const row of (data ?? []) as VerificationRow[]) {
      byUser.set(row.user_id, row)
    }
  }
  return byUser
}

async function firmNames (
  supabase: SupabaseClient,
  firmIds: string[]
): Promise<Map<string, string>> {
  const names = new Map<string, string>()
  if (firmIds.length === 0) return names
  const { data, error } = await supabase
    .from('consulting_firms')
    .select('id, name')
    .in('id', firmIds)
  if (error) {
    console.error('[list-consults] firms', error)
    throw error
  }
  for (const row of data ?? []) {
    names.set(row.id as string, row.name as string)
  }
  return names
}

async function documentCounts (
  supabase: SupabaseClient,
  verificationIds: string[]
): Promise<Map<string, number>> {
  const counts = new Map<string, number>()
  for (const group of chunks(verificationIds, 200)) {
    if (group.length === 0) continue
    const { data, error } = await supabase
      .from('verification_documents')
      .select('consult_audit_verification_id')
      .in('consult_audit_verification_id', group)
    if (error) {
      console.error('[list-consults] documents', error)
      throw error
    }
    for (const row of data ?? []) {
      const key = row.consult_audit_verification_id as string
      counts.set(key, (counts.get(key) ?? 0) + 1)
    }
  }
  return counts
}

function toListItem (
  user: ConsultUserRow,
  verification: VerificationRow | undefined,
  firms: Map<string, string>,
  documents: Map<string, number>
): ConsultListItem {
  return {
    id: user.id,
    name: user.name,
    username: user.username,
    email: user.email,
    phone: user.phone,
    organization_name: user.organization_name,
    consulting_firm_name: user.consulting_firm_id
      ? firms.get(user.consulting_firm_id) ?? null
      : null,
    is_firm_contact_person: user.is_firm_contact_person,
    created_at: user.created_at,
    status: consultListStage({
      userStatus: user.status,
      verificationStatus: verification?.status ?? null,
    }),
    user_status: user.status,
    verification_status: verification?.status ?? null,
    rejection_reason: user.rejection_reason,
    verified_date: verification?.verified_date ?? null,
    document_count: verification ? documents.get(verification.id) ?? 0 : 0,
  }
}

export async function listConsults (
  supabase: SupabaseClient,
  params: {
    page: number
    registeredDateFrom?: string
    registeredDateBy?: string
    status?: ConsultListStage
  }
): Promise<{ consults: ConsultListItem[]; total: number }> {
  const users = await fetchConsultUsers(supabase, params)
  const verifications = await verificationsForUsers(
    supabase,
    users.map((user) => user.id)
  )
  const matched = users.filter((user) => {
    if (!params.status) return true
    const verification = verifications.get(user.id)
    return consultListStage({
      userStatus: user.status,
      verificationStatus: verification?.status ?? null,
    }) === params.status
  })

  const from = (params.page - 1) * CONSULT_LIST_PAGE_SIZE
  const pageUsers = matched.slice(from, from + CONSULT_LIST_PAGE_SIZE)
  const firmIds = [...new Set(
    pageUsers
      .map((user) => user.consulting_firm_id)
      .filter((id): id is string => Boolean(id))
  )]
  const verificationIds = pageUsers
    .map((user) => verifications.get(user.id)?.id)
    .filter((id): id is string => Boolean(id))
  const [firms, documents] = await Promise.all([
    firmNames(supabase, firmIds),
    documentCounts(supabase, verificationIds),
  ])

  return {
    consults: pageUsers.map((user) =>
      toListItem(user, verifications.get(user.id), firms, documents)
    ),
    total: matched.length,
  }
}
