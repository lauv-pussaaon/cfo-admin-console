// Shared API types
import type { UserRole } from '@/types/roles'
import type { Organization } from '@/types/database'

export type UserStatus = 'requested' | 'active' | 'rejected' | 'inactive'

export interface User {
  id: string
  username: string
  email: string
  name: string
  avatar_url?: string
  role: UserRole
  status: UserStatus
  rejection_reason?: string | null
  invite_hashcode?: string
  organization_name?: string | null
  phone?: string | null
  has_verification?: boolean
  certified_date?: string | null
  certification_expiry?: string | null
  verification_documents?: string[]
  year_experiences?: number | null
  industries?: string[]
  created_at: string
  organizations?: Organization[]
  // Note: password_hash is never returned in API responses for security
}
