import type { SupabaseClient } from '@supabase/supabase-js'
import {
  isAnnualMembershipRequest,
  isOrgRequestKind,
  type OrgRequestKind,
} from '@/types/org-request-kind'

const ACTIVE_REQUEST_STATUSES = ['open', 'started', 'deploying'] as const
const DEPLOY_STATUS_MATCH = ['deploying', 'started'] as const
const DEPLOY_LOG_MAX_CHARS = 32000

type DeployFailureFields = {
  error?: string
  log?: string
  logPath?: string
}

function trimDeployText (value: string | undefined, max = DEPLOY_LOG_MAX_CHARS): string | null {
  const text = value?.replace(/\r\n/g, '\n').trim() || ''
  if (!text) return null
  return text.length > max ? text.slice(-max) : text
}

function deployFailureUpdate (params: DeployFailureFields) {
  return {
    deploy_error: trimDeployText(params.error, 2000),
    deploy_log: trimDeployText(params.log),
    deploy_log_path: trimDeployText(params.logPath, 500),
  }
}

function clearDeployFailureUpdate () {
  return {
    deploy_error: null,
    deploy_log: null,
    deploy_log_path: null,
  }
}

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
): Promise<{ deployed: boolean; requestId?: string }> {
  const request = await findActiveTrialRequestByCode(supabase, params.code)
  if (!request) return { deployed: false }

  const accountType = isAnnualMembershipRequest(request.request_kind)
    ? 'general customers'
    : params.accountType
  const now = new Date().toISOString()

  const { error } = await supabase
    .from('organization_trial_requests')
    .update({
      status: 'deployed',
      organization_id: params.organizationId,
      approved_account_type: accountType,
      reviewed_at: now,
      updated_at: now,
      ...clearDeployFailureUpdate(),
    })
    .eq('id', request.id)
    .in('status', [...ACTIVE_REQUEST_STATUSES])

  if (error) {
    console.error('[trial-request-deploy] mark request deployed:', error)
    return { deployed: false, requestId: request.id }
  }

  return { deployed: true, requestId: request.id }
}

export async function applyTrialRequestDeployStatusByCompanyCode (
  supabase: SupabaseClient,
  params: {
    companyCode: string
    status: 'deployed' | 'deployment_failed'
    error?: string
    log?: string
    logPath?: string
  }
): Promise<{ updated: boolean; requestId?: string; currentStatus?: string }> {
  const { data, error } = await supabase
    .from('organization_trial_requests')
    .select(REQUEST_SELECT)
    .eq('company_code', params.companyCode)
    .in('status', [...DEPLOY_STATUS_MATCH])
    .order('created_at', { ascending: false })
    .limit(1)
    .maybeSingle()

  if (error) {
    console.error('[trial-request-deploy] load request for deploy-status:', error)
    return { updated: false }
  }
  if (!data) {
    const { data: existing } = await supabase
      .from('organization_trial_requests')
      .select(REQUEST_SELECT)
      .eq('company_code', params.companyCode)
      .eq('status', params.status)
      .order('created_at', { ascending: false })
      .limit(1)
      .maybeSingle()
    if (existing) {
      if (params.status === 'deployment_failed') {
        await supabase
          .from('organization_trial_requests')
          .update({
            updated_at: new Date().toISOString(),
            ...deployFailureUpdate(params),
          })
          .eq('id', existing.id)
      }
      return { updated: true, requestId: existing.id, currentStatus: existing.status }
    }
    return { updated: false }
  }

  const now = new Date().toISOString()
  const failFields =
    params.status === 'deployment_failed'
      ? deployFailureUpdate(params)
      : clearDeployFailureUpdate()
  const { error: updateError } = await supabase
    .from('organization_trial_requests')
    .update({
      status: params.status,
      updated_at: now,
      ...(params.status === 'deployed' ? { reviewed_at: now } : {}),
      ...failFields,
    })
    .eq('id', data.id)
    .in('status', [...DEPLOY_STATUS_MATCH])

  if (updateError) {
    console.error('[trial-request-deploy] apply deploy-status:', updateError)
    return { updated: false, requestId: data.id, currentStatus: data.status }
  }

  if (params.error) {
    console.warn(
      `[trial-request-deploy] deploy-status ${params.status} for ${params.companyCode}: ${params.error}`
    )
  }

  return { updated: true, requestId: data.id, currentStatus: params.status }
}

export async function markTrialRequestDeploying (
  supabase: SupabaseClient,
  params: { id: string }
): Promise<{ updated: boolean; requestId?: string; previousStatus?: string }> {
  const { data, error } = await supabase
    .from('organization_trial_requests')
    .select(REQUEST_SELECT)
    .eq('id', params.id)
    .maybeSingle()

  if (error || !data) {
    if (error) console.error('[trial-request-deploy] load request for deploying:', error)
    return { updated: false }
  }

  if (data.status !== 'started' && data.status !== 'deployment_failed') {
    return { updated: false, requestId: data.id, previousStatus: data.status }
  }

  const now = new Date().toISOString()
  const { error: updateError } = await supabase
    .from('organization_trial_requests')
    .update({
      status: 'deploying',
      updated_at: now,
      ...clearDeployFailureUpdate(),
    })
    .eq('id', data.id)
    .in('status', ['started', 'deployment_failed'])

  if (updateError) {
    console.error('[trial-request-deploy] mark deploying:', updateError)
    return { updated: false, requestId: data.id, previousStatus: data.status }
  }

  return { updated: true, requestId: data.id, previousStatus: data.status }
}

export async function markTrialRequestDeploymentFailed (
  supabase: SupabaseClient,
  params: { id: string; error?: string; log?: string; logPath?: string }
): Promise<boolean> {
  const now = new Date().toISOString()
  const { error } = await supabase
    .from('organization_trial_requests')
    .update({
      status: 'deployment_failed',
      updated_at: now,
      ...deployFailureUpdate(params),
    })
    .eq('id', params.id)
    .in('status', ['deploying', 'started'])

  if (error) {
    console.error('[trial-request-deploy] mark deployment_failed:', error)
    return false
  }
  if (params.error) {
    console.warn(`[trial-request-deploy] deployment_failed for ${params.id}: ${params.error}`)
  }
  return true
}

export async function resolveOnboardRequestKind (
  supabase: SupabaseClient,
  params: { organizationId: string; code?: string | null; accountType?: string | null }
): Promise<OrgRequestKind> {
  const { data: byOrg, error: byOrgError } = await supabase
    .from('organization_trial_requests')
    .select('request_kind')
    .eq('organization_id', params.organizationId)
    .order('created_at', { ascending: false })
    .limit(1)
    .maybeSingle()

  if (byOrgError) {
    console.error('[trial-request-deploy] load request by org:', byOrgError)
  } else if (isOrgRequestKind(byOrg?.request_kind)) {
    return byOrg.request_kind
  }

  const code = params.code?.trim() || ''
  if (code) {
    const active = await findActiveTrialRequestByCode(supabase, code)
    if (active && isOrgRequestKind(active.request_kind)) {
      return active.request_kind
    }
  }

  return params.accountType === 'general customers' ? 'annual_membership' : 'trial'
}
