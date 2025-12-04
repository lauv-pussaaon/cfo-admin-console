import type { User } from '@/lib/api/types'
import { organizationService } from '@/lib/services'

/**
 * Check if user has admin privileges (can do anything)
 * @param user - User object or null
 * @returns true if user role is 'Admin'
 */
export function isAdmin (user: User | null): boolean {
  return user?.role === 'Admin'
}

/**
 * Check if user is a dealer
 * @param user - User object or null
 * @returns true if user role is 'Dealer'
 */
export function isDealer (user: User | null): boolean {
  return user?.role === 'Dealer'
}

/**
 * Check if user is a consultant
 * @param user - User object or null
 * @returns true if user role is 'Consult'
 */
export function isConsult (user: User | null): boolean {
  return user?.role === 'Consult'
}

/**
 * Check if user is an auditor
 * @param user - User object or null
 * @returns true if user role is 'Audit'
 */
export function isAudit (user: User | null): boolean {
  return user?.role === 'Audit'
}

/**
 * Check if user can manage organizations
 * Admin and Dealer can manage organizations
 * @param user - User object or null
 * @returns true if user can manage organizations
 */
export function canManageOrganizations (user: User | null): boolean {
  if (!user) return false
  return user.role === 'Admin' || user.role === 'Dealer'
}

/**
 * Check if user can manage a specific organization
 * Admin can manage all organizations
 * Dealer can only manage organizations they are assigned to
 * @param user - User object or null
 * @param organizationId - Organization ID to check
 * @returns Promise<boolean> true if user can manage the organization
 */
export async function canManageOrganization (
  user: User | null,
  organizationId: string
): Promise<boolean> {
  if (!user) return false
  
  // Admin can manage all organizations
  if (user.role === 'Admin') return true
  
  // Dealer can only manage assigned organizations
  if (user.role === 'Dealer') {
    try {
      const userOrgs = await organizationService.getUserOrganizations(user.id)
      return userOrgs.some(uo => uo.organization_id === organizationId)
    } catch (error) {
      console.error('Error checking organization access:', error)
      return false
    }
  }
  
  return false
}

