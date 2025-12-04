import { supabase } from '../supabase'
import type { SupabaseClient } from '@supabase/supabase-js'
import type {
  Organization,
  OrganizationWithStats,
  UserOrganization,
} from '@/types/database'
import {
  getOrganizations as getOrganizationsAPI,
  getOrganizationById as getOrganizationByIdAPI,
  createOrganization as createOrganizationAPI,
  updateOrganization as updateOrganizationAPI,
  deleteOrganization as deleteOrganizationAPI,
  getUserOrganizations as getUserOrganizationsAPI,
  getUsersByOrganization as getUsersByOrganizationAPI,
  addUserToOrganization as addUserToOrganizationAPI,
  removeUserFromOrganization as removeUserFromOrganizationAPI,
  getOrganizationsWithStats as getOrganizationsWithStatsAPI,
} from '../api/emissions'
import { User } from '../api'

export class OrganizationService {
  private supabase: SupabaseClient

  constructor(supabaseClient?: SupabaseClient) {
    this.supabase = supabaseClient || supabase
  }

  // Get all organizations
  async getOrganizations (): Promise<Organization[]> {
    return getOrganizationsAPI()
  }

  // Get all organizations with statistics
  async getOrganizationsWithStats (): Promise<OrganizationWithStats[]> {
    return getOrganizationsWithStatsAPI()
  }

  // Get organization by ID
  async getOrganizationById (id: string): Promise<Organization | null> {
    return getOrganizationByIdAPI(id)
  }

  // Create organization
  async createOrganization (
    data: {
      name: string
      code?: string | null
      description?: string | null
      app_url?: string | null
      factory_admin_email?: string | null
      created_by?: string | null
    }
  ): Promise<Organization> {
    return createOrganizationAPI(data)
  }

  // Update organization
  async updateOrganization (
    id: string,
    updates: Partial<{
      name: string
      code: string | null
      description: string | null
      app_url: string | null
      is_initialized: boolean
      initialized_at: string | null
      factory_admin_email: string | null
    }>
  ): Promise<Organization> {
    return updateOrganizationAPI(id, updates)
  }

  // Get organization app URL
  async getOrganizationAppUrl (organizationId: string): Promise<string> {
    const org = await this.getOrganizationById(organizationId)
    if (!org || !org.app_url) {
      throw new Error('Organization app URL not configured')
    }
    return org.app_url
  }

  // Delete organization
  async deleteOrganization (id: string): Promise<void> {
    return deleteOrganizationAPI(id)
  }

  // Get user's organizations
  async getUserOrganizations (userId: string): Promise<UserOrganization[]> {
    return getUserOrganizationsAPI(userId)
  }

  // Get users by organization
  async getUsersByOrganization (organizationId: string): Promise<User[]> {
    return getUsersByOrganizationAPI(organizationId)
  }

  // Add user to organization
  async addUserToOrganization (organizationId: string, userId: string): Promise<UserOrganization> {
    return addUserToOrganizationAPI(organizationId, userId)
  }

  // Remove user from organization
  async removeUserFromOrganization (organizationId: string, userId: string): Promise<void> {
    return removeUserFromOrganizationAPI(organizationId, userId)
  }
}

// Export singleton instance
export const organizationService = new OrganizationService()



