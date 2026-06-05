import type { AccountType } from './account-types'

export interface Organization {
  id: string
  name: string
  code: string | null
  description: string | null
  app_url: string | null
  is_initialized: boolean
  initialized_at: string | null
  factory_admin_email: string | null
  contact_first_name: string | null
  contact_last_name: string | null
  contact_phone: string | null
  account_type: AccountType
  created_by: string | null
  created_at: string
  updated_at: string | null
}

export interface OrganizationWithStats extends Organization {
  userCount: number
}

export interface UserOrganization {
  id: string
  user_id: string
  organization_id: string
  assigned_at: string
  assigned_by: string | null
  organization?: Organization
  user?: {
    id: string
    email: string
    name: string
    avatar_url?: string
    role: string
  }
}

// Annual Report type (stub - not used in admin console, but referenced by some components)
export interface AnnualReport {
  id: string
  organization_id: string
  year: number
  name: string
  created_at: string
  updated_at: string | null
}

// Re-export emission resource types for convenience
export type { ScopeCategory, FuelResource, FuelResourceWithCategory } from './emission-resources'

export interface UserConsent {
  id: string
  user_id: string
  terms_accepted: boolean
  privacy_acknowledged: boolean
  marketing_consent: boolean
  collect_share_data_consent: boolean
  terms_document_url: string
  privacy_document_url: string
  collect_share_data_consent_url: string
  consented_at: string
  created_at: string
}

export type OrganizationTrialRequestStatus = 'pending' | 'approved'

export interface OrganizationTrialRequest {
  id: string
  organization_name: string
  contact_first_name: string
  contact_last_name: string
  contact_email: string
  contact_phone: string
  status: OrganizationTrialRequestStatus
  organization_id: string | null
  approved_account_type: string | null
  reviewed_by: string | null
  reviewed_at: string | null
  created_at: string
  updated_at: string | null
}

export interface OrganizationTrialRequestConsent {
  id: string
  trial_request_id: string
  terms_accepted: boolean
  privacy_acknowledged: boolean
  marketing_consent: boolean
  collect_share_data_consent: boolean
  terms_document_url: string
  privacy_document_url: string
  collect_share_data_consent_url: string
  consented_at: string
  created_at: string
}

// Organization Invitation type
export interface OrganizationInvitation {
  id: string
  organization_id: string
  email: string
  token: string
  status: 'pending' | 'accepted' | 'expired'
  role: string
  created_by: string | null
  created_at: string
  expires_at: string
  accepted_at: string | null
  organization?: Organization
}

