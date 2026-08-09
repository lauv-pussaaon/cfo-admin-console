/**
 * Consult/Audit verification helpers (server-only; prefer service role client).
 */

import type { SupabaseClient } from '@supabase/supabase-js'
import type {
  ConsultAuditVerification,
  ConsultAuditVerificationStatus,
  VerificationDocument,
} from '@/lib/api/types'
import { handleSupabaseError, throwIfError } from '@/lib/utils/errors'

const VERIFICATION_SELECT =
  'id, user_id, token, status, verified_date, expired_date, rejection_reason, created_at, updated_at'

const DOCUMENT_SELECT =
  'id, consult_audit_verification_id, file_url, file_name, uploaded_date'

export function generateVerificationToken (): string {
  return crypto.randomUUID().replace(/-/g, '')
}

export function buildVerificationUploadUrl (
  baseUrl: string,
  token: string
): string {
  const trimmed = baseUrl.trim().replace(/\/+$/, '')
  return `${trimmed}/register/consult/verify/${encodeURIComponent(token)}`
}

export async function createConsultAuditVerification (
  supabase: SupabaseClient,
  userId: string
): Promise<ConsultAuditVerification> {
  const token = generateVerificationToken()
  const result = await supabase
    .from('consult_audit_verification')
    .insert({
      user_id: userId,
      token,
      status: 'pending_upload',
    })
    .select(VERIFICATION_SELECT)
    .single()

  return throwIfError(result)
}

export async function getVerificationByToken (
  supabase: SupabaseClient,
  token: string
): Promise<ConsultAuditVerification | null> {
  const { data, error } = await supabase
    .from('consult_audit_verification')
    .select(VERIFICATION_SELECT)
    .eq('token', token)
    .maybeSingle()

  if (error) handleSupabaseError(error)
  return data
}

export async function getVerificationByUserId (
  supabase: SupabaseClient,
  userId: string
): Promise<ConsultAuditVerification | null> {
  const { data, error } = await supabase
    .from('consult_audit_verification')
    .select(VERIFICATION_SELECT)
    .eq('user_id', userId)
    .maybeSingle()

  if (error) handleSupabaseError(error)
  return data
}

export async function listDocumentsForVerification (
  supabase: SupabaseClient,
  verificationId: string
): Promise<VerificationDocument[]> {
  const { data, error } = await supabase
    .from('verification_documents')
    .select(DOCUMENT_SELECT)
    .eq('consult_audit_verification_id', verificationId)
    .order('uploaded_date', { ascending: true })

  if (error) handleSupabaseError(error)
  return data ?? []
}

export async function listVerificationSummaries (
  supabase: SupabaseClient
): Promise<
  Array<ConsultAuditVerification & { document_count: number }>
> {
  const { data: rows, error } = await supabase
    .from('consult_audit_verification')
    .select(VERIFICATION_SELECT)

  if (error) handleSupabaseError(error)
  const verifications = rows ?? []
  if (verifications.length === 0) return []

  const ids = verifications.map((v) => v.id)
  const { data: docs, error: docsError } = await supabase
    .from('verification_documents')
    .select('consult_audit_verification_id')
    .in('consult_audit_verification_id', ids)

  if (docsError) handleSupabaseError(docsError)

  const counts = new Map<string, number>()
  for (const doc of docs ?? []) {
    const key = doc.consult_audit_verification_id as string
    counts.set(key, (counts.get(key) ?? 0) + 1)
  }

  return verifications.map((v) => ({
    ...v,
    document_count: counts.get(v.id) ?? 0,
  }))
}

export async function insertVerificationDocuments (
  supabase: SupabaseClient,
  verificationId: string,
  files: Array<{ file_url: string; file_name: string }>
): Promise<VerificationDocument[]> {
  if (files.length === 0) return []

  const result = await supabase
    .from('verification_documents')
    .insert(
      files.map((file) => ({
        consult_audit_verification_id: verificationId,
        file_url: file.file_url,
        file_name: file.file_name,
      }))
    )
    .select(DOCUMENT_SELECT)

  return throwIfError(result) ?? []
}

export async function updateVerificationStatus (
  supabase: SupabaseClient,
  verificationId: string,
  updates: {
    status: ConsultAuditVerificationStatus
    verified_date?: string | null
    expired_date?: string | null
    rejection_reason?: string | null
  }
): Promise<ConsultAuditVerification> {
  const result = await supabase
    .from('consult_audit_verification')
    .update({
      ...updates,
      updated_at: new Date().toISOString(),
    })
    .eq('id', verificationId)
    .select(VERIFICATION_SELECT)
    .single()

  return throwIfError(result)
}

export function addYearsToDate (isoDate: string, years: number): string {
  const date = new Date(`${isoDate}T00:00:00.000Z`)
  date.setUTCFullYear(date.getUTCFullYear() + years)
  return date.toISOString().slice(0, 10)
}

export function todayUtcDate (): string {
  return new Date().toISOString().slice(0, 10)
}
