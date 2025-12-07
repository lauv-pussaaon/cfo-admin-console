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
  getOrganizationsForDealer as getOrganizationsForDealerAPI,
  getOrganizationsForAdmin as getOrganizationsForAdminAPI,
  getDealers as getDealersAPI,
  getDealerByOrganization as getDealerByOrganizationAPI,
  setDealerForOrganization as setDealerForOrganizationAPI,
  type OrganizationWithCreator,
} from '../api/organizations'
import type { User } from '../api'

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
      assignedUserId?: string | null
    }
  ): Promise<Organization> {
    return createOrganizationAPI(data)
  }

  // Get organizations for dealer (filtered by assignment)
  async getOrganizationsForDealer (userId: string): Promise<OrganizationWithStats[]> {
    return getOrganizationsForDealerAPI(userId)
  }

  // Get organizations for admin (with creator info)
  async getOrganizationsForAdmin (): Promise<OrganizationWithCreator[]> {
    return getOrganizationsForAdminAPI()
  }

  // Export organization details for operations team
  async exportOrganizationDetails (organizationId: string, dealerInfo?: User): Promise<{
    organization: OrganizationWithStats
    dealerInfo?: User
    exportData: {
      name: string
      code: string | null
      factory_admin_email: string | null
      status: string
      created_at: string
      app_url: string | null
      dealer_name?: string
      dealer_email?: string
    }
  }> {
    const organization = await this.getOrganizationById(organizationId)
    if (!organization) {
      throw new Error('Organization not found')
    }

    // Get user count for stats
    const users = await this.getUsersByOrganization(organizationId)
    const orgWithStats: OrganizationWithStats = {
      ...organization,
      userCount: users.length,
    }

    const status = organization.is_initialized ? 'Deployed' : 'Pending Deployment'

    return {
      organization: orgWithStats,
      dealerInfo,
      exportData: {
        name: organization.name,
        code: organization.code,
        factory_admin_email: organization.factory_admin_email,
        status,
        created_at: organization.created_at,
        app_url: organization.app_url,
        dealer_name: dealerInfo?.name,
        dealer_email: dealerInfo?.email,
      },
    }
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

  // Get all dealers
  async getDealers (): Promise<User[]> {
    return getDealersAPI()
  }

  // Get dealer assigned to organization
  async getDealerByOrganization (organizationId: string): Promise<User | null> {
    return getDealerByOrganizationAPI(organizationId)
  }

  // Set dealer for organization
  async setDealerForOrganization (
    organizationId: string,
    dealerId: string | null,
    assignedBy: string | null
  ): Promise<void> {
    return setDealerForOrganizationAPI(organizationId, dealerId, assignedBy)
  }
}

// Export singleton instance
export const organizationService = new OrganizationService()



