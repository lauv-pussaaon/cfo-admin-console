// Shared API types
import type { UserRole } from '@/types/roles'
import type { Organization } from '@/types/database'

export type UserStatus = 'requested' | 'active' | 'rejected' | 'inactive'

export type ConsultAuditVerificationStatus =
  | 'pending_upload'
  | 'pending_review'
  | 'approved'
  | 'rejected'

export interface VerificationDocument {
  id: string
  consult_audit_verification_id: string
  file_url: string
  file_name: string
  uploaded_date: string
}

export interface ConsultAuditVerification {
  id: string
  user_id: string
  token: string
  status: ConsultAuditVerificationStatus
  verified_date?: string | null
  expired_date?: string | null
  rejection_reason?: string | null
  created_at: string
  updated_at: string
  document_count?: number
  documents?: VerificationDocument[]
}

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
  year_experiences?: number | null
  industries?: string[]
  created_at: string
  organizations?: Organization[]
  verification?: ConsultAuditVerification | null
  // Note: password_hash is never returned in API responses for security
}
