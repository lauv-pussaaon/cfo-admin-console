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

// Business Unit types (stub - not used in admin console, but referenced by some components)
export interface BusinessUnit {
  id: string
  organization_id: string
  name: string
  code: string | null
  description: string | null
  is_active: boolean
  created_at: string
  updated_at: string | null
  organization?: Organization
  staff_count?: number
}

export interface UserBusinessUnit {
  id: string
  user_id: string
  business_unit_id: string
  assigned_at: string
  assigned_by: string | null
  business_unit?: BusinessUnit
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

