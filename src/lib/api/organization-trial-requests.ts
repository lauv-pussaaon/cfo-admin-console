import { supabase } from '../supabase'
import { createOrganization } from './organizations'
import { ValidationError, throwIfError } from '@/lib/utils/errors'
import type { AccountType } from '@/types/account-types'
import type {
  OrganizationTrialRequest,
  OrganizationTrialRequestConsent,
} from '@/types/database'

export interface CreateTrialRequestInput {
  organizationName: string
  contactFirstName: string
  contactLastName: string
  contactEmail: string
  contactPhone: string
  termsAccepted: boolean
  privacyAcknowledged: boolean
  marketingConsent: boolean
  termsDocumentUrl: string
  privacyDocumentUrl: string
  cookiePolicyUrl: string
}

export interface ApproveTrialRequestInput {
  reviewedBy: string
  accountType: AccountType
}

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

  const requestResult = await supabase
    .from('organization_trial_requests')
    .insert({
      organization_name: input.organizationName.trim(),
      contact_first_name: input.contactFirstName.trim(),
      contact_last_name: input.contactLastName.trim(),
      contact_email: contactEmail,
      contact_phone: input.contactPhone.trim(),
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
        marketing_consent: input.marketingConsent ?? false,
        terms_document_url: input.termsDocumentUrl,
        privacy_document_url: input.privacyDocumentUrl,
        cookie_policy_url: input.cookiePolicyUrl,
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

export const approveTrialRequest = async (
  id: string,
  input: ApproveTrialRequestInput
): Promise<OrganizationTrialRequest> => {
  const request = await getTrialRequestById(id)

  if (!request) {
    throw new ValidationError('ไม่พบคำขอทดลองใช้งาน')
  }

  if (request.status !== 'pending') {
    throw new ValidationError('คำขอนี้ได้รับการอนุมัติแล้ว')
  }

  const organization = await createOrganization({
    name: request.organization_name,
    factory_admin_email: request.contact_email,
    contact_first_name: request.contact_first_name,
    contact_last_name: request.contact_last_name,
    contact_phone: request.contact_phone,
    account_type: input.accountType,
    created_by: input.reviewedBy,
  })

  const updateResult = await supabase
    .from('organization_trial_requests')
    .update({
      status: 'approved',
      organization_id: organization.id,
      approved_account_type: input.accountType,
      reviewed_by: input.reviewedBy,
      reviewed_at: new Date().toISOString(),
      updated_at: new Date().toISOString(),
    })
    .eq('id', id)
    .eq('status', 'pending')
    .select()
    .single()

  return throwIfError(updateResult)
}
