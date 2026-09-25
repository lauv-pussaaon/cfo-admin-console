import type { NextRequest } from 'next/server'
import { supabase } from '@/lib/supabase'
import type { User, UserStatus } from '@/lib/api/types'
import type { ConsultAuditVerificationStatus } from '@/lib/api/types'
import { ConflictError, handleSupabaseError, NotFoundError, throwIfError, ValidationError } from '@/lib/utils/errors'

export type FirmStaffMember = {
  id: string
  name: string
  email: string
  username: string
  status: UserStatus
  is_firm_contact_person: boolean
  verification_status: ConsultAuditVerificationStatus | null
}

export type ConsultingFirmSummary = {
  id: string
  name: string
  created_at: string
  contact: { id: string; name: string; email: string; status: UserStatus } | null
  staff_count: number
  staff: FirmStaffMember[]
}

type StaffUserRow = {
  id: string
  name: string
  email: string
  username: string
  status: UserStatus
  is_firm_contact_person: boolean
  consulting_firm_id: string
}

type FirmNameRow = { id: string; name: string; created_at: string }

export function firmNameKey (name: string): string {
  return name.trim().toLowerCase()
}

function isUniqueViolation (error: unknown): boolean {
  return Boolean(
    error &&
    typeof error === 'object' &&
    'code' in error &&
    (error as { code?: string }).code === '23505'
  )
}

async function findFirmByNameKey (key: string): Promise<{ id: string; name: string } | null> {
  const { data, error } = await supabase
    .from('consulting_firms')
    .select('id, name, created_at')

  if (error) handleSupabaseError(error)

  const matches = ((data ?? []) as FirmNameRow[])
    .filter((row) => firmNameKey(row.name) === key)
    .sort((a, b) => a.created_at.localeCompare(b.created_at))

  const oldest = matches[0]
  if (!oldest) return null
  return { id: oldest.id, name: oldest.name }
}

export async function findOrCreateConsultingFirm (name: string): Promise<{
  firm: { id: string; name: string }
  created: boolean
}> {
  const trimmed = name.trim()
  const key = trimmed.toLowerCase()
  const existing = await findFirmByNameKey(key)
  if (existing) return { firm: existing, created: false }

  const result = await supabase
    .from('consulting_firms')
    .insert({ name: trimmed })
    .select('id, name')
    .single()

  if (result.error && isUniqueViolation(result.error)) {
    const raced = await findFirmByNameKey(key)
    if (raced) return { firm: raced, created: false }
  }

  return { firm: throwIfError(result), created: true }
}

export async function firmHasContact (firmId: string): Promise<boolean> {
  const { data, error } = await supabase
    .from('users')
    .select('id')
    .eq('consulting_firm_id', firmId)
    .eq('is_firm_contact_person', true)
    .limit(1)

  if (error) handleSupabaseError(error)
  return (data ?? []).length > 0
}

export async function createConsultingFirm (name: string): Promise<{ id: string; name: string }> {
  const result = await supabase
    .from('consulting_firms')
    .insert({ name: name.trim() })
    .select('id, name')
    .single()
  return throwIfError(result)
}

export async function unlinkUsersFromFirm (firmId: string): Promise<void> {
  const { error } = await supabase
    .from('users')
    .update({ consulting_firm_id: null, is_firm_contact_person: false })
    .eq('consulting_firm_id', firmId)
  if (error) handleSupabaseError(error)
}

export async function deleteConsultingFirm (id: string): Promise<void> {
  await unlinkUsersFromFirm(id)
  const { error } = await supabase.from('consulting_firms').delete().eq('id', id)
  if (error) handleSupabaseError(error)
}

export async function assignConsultToFirm (firmId: string, userId: string): Promise<void> {
  const { data: firm, error: firmError } = await supabase
    .from('consulting_firms')
    .select('id')
    .eq('id', firmId)
    .maybeSingle()
  if (firmError) handleSupabaseError(firmError)
  if (!firm) throw new NotFoundError('ไม่พบบริษัทที่ปรึกษา')

  const { data: user, error } = await supabase
    .from('users')
    .select('id, role, consulting_firm_id')
    .eq('id', userId)
    .maybeSingle()
  if (error) handleSupabaseError(error)
  if (!user) throw new NotFoundError('ไม่พบผู้ใช้')
  if (user.role !== 'Consult') {
    throw new ValidationError('เพิ่มได้เฉพาะผู้ใช้บทบาทที่ปรึกษา')
  }
  if (user.consulting_firm_id && user.consulting_firm_id !== firmId) {
    throw new ConflictError('ที่ปรึกษานี้สังกัดบริษัทอื่นอยู่แล้ว')
  }
  if (user.consulting_firm_id === firmId) return

  const { error: updateError } = await supabase
    .from('users')
    .update({ consulting_firm_id: firmId })
    .eq('id', userId)
  if (updateError) handleSupabaseError(updateError)
}

export async function unassignConsultFromFirm (firmId: string, userId: string): Promise<void> {
  const { data: user, error } = await supabase
    .from('users')
    .select('id, consulting_firm_id')
    .eq('id', userId)
    .maybeSingle()
  if (error) handleSupabaseError(error)
  if (!user || user.consulting_firm_id !== firmId) {
    throw new NotFoundError('ไม่พบที่ปรึกษาในบริษัทนี้')
  }

  const { error: updateError } = await supabase
    .from('users')
    .update({ consulting_firm_id: null, is_firm_contact_person: false })
    .eq('id', userId)
    .eq('consulting_firm_id', firmId)
  if (updateError) handleSupabaseError(updateError)
}

export async function renameConsultingFirm (id: string, name: string): Promise<{ id: string; name: string }> {
  const trimmed = name.trim()
  const existing = await findFirmByNameKey(trimmed.toLowerCase())
  if (existing && existing.id !== id) {
    throw new ConflictError('ชื่อบริษัทนี้มีอยู่แล้ว')
  }

  const result = await supabase
    .from('consulting_firms')
    .update({ name: trimmed })
    .eq('id', id)
    .select('id, name')
    .single()
  return throwIfError(result)
}

export async function getFirmContactFromRequest (request: NextRequest): Promise<User | null> {
  const userId = request.headers.get('x-admin-user-id')?.trim()
  if (!userId) return null

  const { data, error } = await supabase
    .from('users')
    .select(
      'id, username, email, name, avatar_url, role, status, rejection_reason, invite_hashcode, organization_name, phone, year_experiences, industries, consulting_firm_id, is_firm_contact_person, created_at'
    )
    .eq('id', userId)
    .single()

  if (error || !data) return null
  if (data.role !== 'Consult') return null
  if (data.status !== 'active') return null
  if (!data.is_firm_contact_person || !data.consulting_firm_id) return null

  return data as User
}

async function attachVerificationStatus (rows: StaffUserRow[]): Promise<FirmStaffMember[]> {
  if (rows.length === 0) return []

  const { data, error } = await supabase
    .from('consult_audit_verification')
    .select('user_id, status')
    .in('user_id', rows.map((row) => row.id))

  if (error) handleSupabaseError(error)

  const statusByUser = new Map<string, ConsultAuditVerificationStatus>()
  for (const row of data ?? []) {
    statusByUser.set(row.user_id, row.status as ConsultAuditVerificationStatus)
  }

  return rows.map((row) => ({
    id: row.id,
    name: row.name,
    email: row.email,
    username: row.username,
    status: row.status,
    is_firm_contact_person: row.is_firm_contact_person,
    verification_status: statusByUser.get(row.id) ?? null,
  }))
}

export async function listStaffForFirm (firmId: string): Promise<FirmStaffMember[]> {
  const { data, error } = await supabase
    .from('users')
    .select('id, name, email, username, status, is_firm_contact_person, consulting_firm_id')
    .eq('consulting_firm_id', firmId)
    .order('created_at', { ascending: true })

  if (error) handleSupabaseError(error)
  return attachVerificationStatus((data ?? []) as StaffUserRow[])
}

export async function listConsultingFirmsWithStaff (): Promise<ConsultingFirmSummary[]> {
  const { data: firms, error } = await supabase
    .from('consulting_firms')
    .select('id, name, created_at')
    .order('created_at', { ascending: false })

  if (error) handleSupabaseError(error)
  if (!firms || firms.length === 0) return []

  const { data: users, error: usersError } = await supabase
    .from('users')
    .select('id, name, email, username, status, is_firm_contact_person, consulting_firm_id')
    .in('consulting_firm_id', firms.map((firm) => firm.id))
    .order('created_at', { ascending: true })

  if (usersError) handleSupabaseError(usersError)

  const rows = (users ?? []) as StaffUserRow[]
  const staff = await attachVerificationStatus(rows)
  const firmIdByUser = new Map(rows.map((row) => [row.id, row.consulting_firm_id]))
  const staffByFirm = new Map<string, FirmStaffMember[]>()
  for (const member of staff) {
    const firmId = firmIdByUser.get(member.id)
    if (!firmId) continue
    const list = staffByFirm.get(firmId) ?? []
    list.push(member)
    staffByFirm.set(firmId, list)
  }

  return firms.map((firm) => {
    const members = staffByFirm.get(firm.id) ?? []
    const contact = members.find((member) => member.is_firm_contact_person) ?? null
    return {
      id: firm.id,
      name: firm.name,
      created_at: firm.created_at,
      contact: contact
        ? { id: contact.id, name: contact.name, email: contact.email, status: contact.status }
        : null,
      staff_count: members.length,
      staff: members,
    }
  })
}
