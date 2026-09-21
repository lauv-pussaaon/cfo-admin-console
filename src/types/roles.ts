// User role types and utilities

/**
 * Valid user roles in the admin console
 */
export type UserRole =
  | 'Admin'
  | 'Dealer'
  | 'Consult'
  | 'Audit'
  | 'Support'

/**
 * All possible user roles (current + legacy)
 */
export type AllUserRole = UserRole

/**
 * Role option for UI components
 */
export interface RoleOption {
  value: UserRole
  label: string
}

/**
 * Available role options for selection in forms
 */
export const ROLE_OPTIONS: RoleOption[] = [
  { value: 'Admin', label: 'ผู้ดูแลระบบ' },
  { value: 'Dealer', label: 'ตัวแทนจำหน่าย' },
  { value: 'Consult', label: 'ที่ปรึกษา' },
  { value: 'Audit', label: 'ผู้ทวนสอบ' },
  { value: 'Support', label: 'ฝ่ายสนับสนุน' },
]

/**
 * Role label mapping (includes legacy roles for backward compatibility)
 */
export const ROLE_LABELS: Record<AllUserRole, string> = {
  Admin: 'ผู้ดูแลระบบ',
  Dealer: 'ตัวแทนจำหน่าย',
  Consult: 'ที่ปรึกษา',
  Audit: 'ผู้ทวนสอบ',
  Support: 'ฝ่ายสนับสนุน',
}

/**
 * Get display label for a role
 */
export function getRoleLabel (role: string, lang: 'th' | 'en'): string {
  if (lang === 'th') return ROLE_LABELS[role as AllUserRole] || role
  return role === 'Audit' ? 'Verifier' : role
}

/**
 * Get color for role badge/chip
 */
export function getRoleColor (
  role: string
): 'default' | 'primary' | 'secondary' | 'error' | 'info' | 'success' | 'warning' {
  if (role === 'Admin' || role === 'project_owner') return 'error'
  if (role === 'Dealer') return 'warning'
  if (role === 'Consult' || role === 'consultant') return 'info'
  if (role === 'Audit' || role === 'Internal Audit') return 'secondary'
  if (role === 'Support') return 'success'
  return 'default'
}

/**
 * Check if role is a current/active role
 */
export function isCurrentRole (role: string): role is UserRole {
  return ROLE_OPTIONS.some(option => option.value === role)
}

/**
 * Admin type for filtering roles and users in admin console
 */
export type AdminType = 'system'

/**
 * Get role options available for admin console
 * Admin can manage all roles: Admin, Dealer, Consult, Audit
 */
export function getRoleOptionsForAdmin (adminType: AdminType = 'system'): RoleOption[] {
  return ROLE_OPTIONS
}

/**
 * Check if a role is manageable by admin
 * In admin console, admin can manage all roles
 */
export function canManageRole (adminType: AdminType, role: string): boolean {
  return ROLE_OPTIONS.some(option => option.value === role as UserRole)
}

