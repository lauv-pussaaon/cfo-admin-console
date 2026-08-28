import type { SupabaseClient } from '@supabase/supabase-js'
import { isAnnualMembershipRequest } from '@/types/org-request-kind'

const ACTIVE_REQUEST_STATUSES = ['pending', 'processing'] as const

export type ActiveTrialRequestRow = {
  id: string
  company_code: string | null
  organization_name: string
  contact_first_name: string
  contact_last_name: string
  contact_email: string
  contact_phone: string
  request_kind: string
  status: string
  organization_id: string | null
}

const REQUEST_SELECT =
  'id, company_code, organization_name, contact_first_name, contact_last_name, contact_email, contact_phone, request_kind, status, organization_id'

export async function findActiveTrialRequestByCode (
  supabase: SupabaseClient,
  code: string
): Promise<ActiveTrialRequestRow | null> {
  const { data, error } = await supabase
    .from('organization_trial_requests')
    .select(REQUEST_SELECT)
    .eq('company_code', code)
    .in('status', [...ACTIVE_REQUEST_STATUSES])
    .order('created_at', { ascending: true })
    .limit(1)
    .maybeSingle()

  if (error) {
    console.error('[trial-request-deploy] load request by code:', error)
    return null
  }
  return data
}

export async function linkActiveTrialRequestToOrganization (
  supabase: SupabaseClient,
  params: { code: string; organizationId: string }
): Promise<ActiveTrialRequestRow | null> {
  const request = await findActiveTrialRequestByCode(supabase, params.code)
  if (!request) return null

  const now = new Date().toISOString()
  const { error: requestError } = await supabase
    .from('organization_trial_requests')
    .update({
      organization_id: params.organizationId,
      updated_at: now,
    })
    .eq('id', request.id)
    .in('status', [...ACTIVE_REQUEST_STATUSES])

  if (requestError) {
    console.error('[trial-request-deploy] link request:', requestError)
    return request
  }

  const contactEmail = request.contact_email?.trim() || ''
  const { error: orgError } = await supabase
    .from('organizations')
    .update({
      contact_first_name: request.contact_first_name || null,
      contact_last_name: request.contact_last_name || null,
      contact_phone: request.contact_phone || null,
      ...(contactEmail ? { factory_admin_email: contactEmail } : {}),
      updated_at: now,
    })
    .eq('id', params.organizationId)

  if (orgError) {
    console.error('[trial-request-deploy] copy contact onto org:', orgError)
  }

  return {
    ...request,
    organization_id: params.organizationId,
  }
}

export async function approveActiveTrialRequestByCode (
  supabase: SupabaseClient,
  params: { code: string; organizationId: string; accountType: string }
): Promise<{ approved: boolean; requestId?: string }> {
  const request = await findActiveTrialRequestByCode(supabase, params.code)
  if (!request) return { approved: false }

  const accountType = isAnnualMembershipRequest(request.request_kind)
    ? 'general customers'
    : params.accountType
  const now = new Date().toISOString()

  const { error } = await supabase
    .from('organization_trial_requests')
    .update({
      status: 'approved',
      organization_id: params.organizationId,
      approved_account_type: accountType,
      reviewed_at: now,
      updated_at: now,
    })
    .eq('id', request.id)
    .in('status', [...ACTIVE_REQUEST_STATUSES])

  if (error) {
    console.error('[trial-request-deploy] approve request:', error)
    return { approved: false, requestId: request.id }
  }

  return { approved: true, requestId: request.id }
}
