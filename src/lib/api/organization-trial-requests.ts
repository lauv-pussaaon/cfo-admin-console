import { supabase } from '../supabase'
import { ConflictError, ValidationError, throwIfError } from '@/lib/utils/errors'
import { normalizeOrganizationCode } from '@/lib/organization-code'
import type {
  OrganizationTrialRequest,
  OrganizationTrialRequestConsent,
  OrganizationTrialRequestStatus,
} from '@/types/database'
import {
  DEFAULT_ORG_REQUEST_KIND,
  type OrgRequestKind,
} from '@/types/org-request-kind'
import { canTransitionTrialRequestStatus } from '@/types/trial-request-status'

export interface CreateTrialRequestInput {
  organizationName: string
  companyCode: string
  contactFirstName: string
  contactLastName: string
  contactEmail: string
  contactPhone: string
  requestKind?: OrgRequestKind
  termsAccepted: boolean
  privacyAcknowledged: boolean
  collectShareDataConsent: boolean
  marketingConsent: boolean
  termsDocumentUrl: string
  privacyDocumentUrl: string
  collectShareDataConsentUrl: string
}

export interface UpdateTrialRequestStatusInput {
  status: 'processing' | 'cancelled'
  reviewedBy: string
}

const APPROVABLE_STATUSES: OrganizationTrialRequestStatus[] = ['pending', 'processing']

const deleteTrialRequest = async (id: string): Promise<void> => {
  const result = await supabase
    .from('organization_trial_requests')
    .delete()
    .eq('id', id)
  throwIfError(result)
}

export const createTrialRequest = async (
  input: CreateTrialRequestInput
): Promise<OrganizationTrialRequest> => {
  const contactEmail = input.contactEmail.trim().toLowerCase()
  const companyCode = normalizeOrganizationCode(input.companyCode)
  const requestKind = input.requestKind ?? DEFAULT_ORG_REQUEST_KIND

  const existingResult = await supabase
    .from('organization_trial_requests')
    .select('id')
    .eq('contact_email', contactEmail)
    .in('status', APPROVABLE_STATUSES)
    .limit(1)

  const existing = throwIfError(existingResult)
  if (existing.length > 0) {
    throw new ConflictError('มีคำขอที่รออนุมัติสำหรับอีเมลนี้อยู่แล้ว')
  }

  const existingCodeResult = await supabase
    .from('organization_trial_requests')
    .select('id')
    .eq('company_code', companyCode)
    .in('status', APPROVABLE_STATUSES)
    .limit(1)

  const existingCode = throwIfError(existingCodeResult)
  if (existingCode.length > 0) {
    throw new ConflictError('รหัสบริษัทนี้ถูกใช้ในคำขอที่รออนุมัติอยู่แล้ว')
  }

  const existingOrgResult = await supabase
    .from('organizations')
    .select('id')
    .eq('code', companyCode)
    .limit(1)

  const existingOrg = throwIfError(existingOrgResult)
  if (existingOrg.length > 0) {
    throw new ConflictError('รหัสบริษัทนี้ถูกใช้แล้ว')
  }

  const requestResult = await supabase
    .from('organization_trial_requests')
    .insert({
      organization_name: input.organizationName.trim(),
      company_code: companyCode,
      contact_first_name: input.contactFirstName.trim(),
      contact_last_name: input.contactLastName.trim(),
      contact_email: contactEmail,
      contact_phone: input.contactPhone.trim(),
      request_kind: requestKind,
      status: 'pending',
    })
    .select()
    .single()

  const request = throwIfError(requestResult)

  try {
    const consentResult = await supabase
      .from('organization_trial_request_consents')
      .insert({
        trial_request_id: request.id,
        terms_accepted: input.termsAccepted,
        privacy_acknowledged: input.privacyAcknowledged,
        collect_share_data_consent: input.collectShareDataConsent ?? false,
        marketing_consent: input.marketingConsent ?? false,
        terms_document_url: input.termsDocumentUrl,
        privacy_document_url: input.privacyDocumentUrl,
        collect_share_data_consent_url: input.collectShareDataConsentUrl,
      })
      .select()
      .single()

    throwIfError(consentResult)
  } catch (consentErr) {
    console.error('Failed to save trial request consent, rolling back request:', consentErr)
    try {
      await deleteTrialRequest(request.id)
    } catch (rollbackErr) {
      console.error('Failed to rollback trial request after consent error:', rollbackErr)
    }
    throw consentErr
  }

  return request
}

export const getTrialRequests = async (): Promise<OrganizationTrialRequest[]> => {
  const result = await supabase
    .from('organization_trial_requests')
    .select('*')
    .order('created_at', { ascending: false })

  return throwIfError(result) ?? []
}

export const getTrialRequestById = async (
  id: string
): Promise<OrganizationTrialRequest | null> => {
  const result = await supabase
    .from('organization_trial_requests')
    .select('*')
    .eq('id', id)
    .single()

  if (result.error?.code === 'PGRST116') {
    return null
  }

  return throwIfError(result)
}

export const getTrialRequestConsent = async (
  trialRequestId: string
): Promise<OrganizationTrialRequestConsent | null> => {
  const result = await supabase
    .from('organization_trial_request_consents')
    .select('*')
    .eq('trial_request_id', trialRequestId)
    .single()

  if (result.error?.code === 'PGRST116') {
    return null
  }

  return throwIfError(result)
}

export const updateTrialRequestStatus = async (
  id: string,
  input: UpdateTrialRequestStatusInput
): Promise<OrganizationTrialRequest> => {
  const request = await getTrialRequestById(id)

  if (!request) {
    throw new ValidationError('ไม่พบคำขอสมัครองค์กร')
  }

  if (!canTransitionTrialRequestStatus(request.status, input.status)) {
    throw new ValidationError('ไม่สามารถเปลี่ยนสถานะคำขอนี้ได้')
  }

  const now = new Date().toISOString()
  const updatePayload =
    input.status === 'processing'
      ? {
          status: input.status,
          updated_at: now,
        }
      : {
          status: input.status,
          reviewed_by: input.reviewedBy,
          reviewed_at: now,
          updated_at: now,
        }

  const updateResult = await supabase
    .from('organization_trial_requests')
    .update(updatePayload)
    .eq('id', id)
    .in('status', APPROVABLE_STATUSES)
    .select()
    .single()

  return throwIfError(updateResult)
}
