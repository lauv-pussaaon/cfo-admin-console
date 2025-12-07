// Shared API types
import type { UserRole } from '@/types/roles'
import type { Organization } from '@/types/database'

export interface User {
  id: string
  username: string
  email: string
  name: string
  avatar_url?: string
  role: UserRole
  invite_hashcode?: string
  created_at: string
  organizations?: Organization[]
  // Note: password_hash is never returned in API responses for security
}
