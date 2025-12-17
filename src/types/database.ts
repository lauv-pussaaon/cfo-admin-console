export interface Organization {
  id: string
  name: string
  code: string | null
  description: string | null
  app_url: string | null
  is_initialized: boolean
  initialized_at: string | null
  factory_admin_email: string | null
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

