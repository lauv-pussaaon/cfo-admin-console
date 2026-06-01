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
  getOrganizationsForConsultAudit as getOrganizationsForConsultAuditAPI,
  getOrganizationsForAdmin as getOrganizationsForAdminAPI,
  getOrganizationForAdminById as getOrganizationForAdminByIdAPI,
  getDealers as getDealersAPI,
  getDealerByOrganization as getDealerByOrganizationAPI,
  setDealerForOrganization as setDealerForOrganizationAPI,
  type OrganizationWithCreator,
} from '../api/organizations'
import type { User } from '../api'
import type { AccountType } from '@/types/account-types'

export class OrganizationService {
  async getOrganizations (): Promise<Organization[]> {
    return getOrganizationsAPI()
  }

  async getOrganizationsWithStats (): Promise<OrganizationWithStats[]> {
    return getOrganizationsWithStatsAPI()
  }

  async getOrganizationById (id: string): Promise<Organization | null> {
    return getOrganizationByIdAPI(id)
  }

  async createOrganization (
    data: {
      name: string
      code?: string | null
      description?: string | null
      app_url?: string | null
      factory_admin_email?: string | null
      account_type?: AccountType
      created_by?: string | null
      assignedUserId?: string | null
    }
  ): Promise<Organization> {
    return createOrganizationAPI(data)
  }

  async getOrganizationsForDealer (userId: string): Promise<OrganizationWithStats[]> {
    return getOrganizationsForDealerAPI(userId)
  }

  async getOrganizationsForConsultAudit (userId: string): Promise<OrganizationWithStats[]> {
    return getOrganizationsForConsultAuditAPI(userId)
  }

  async getOrganizationsForAdmin (): Promise<OrganizationWithCreator[]> {
    return getOrganizationsForAdminAPI()
  }

  async getOrganizationForAdminById (id: string): Promise<OrganizationWithCreator | null> {
    return getOrganizationForAdminByIdAPI(id)
  }

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
      account_type: AccountType
    }>
  ): Promise<Organization> {
    return updateOrganizationAPI(id, updates)
  }

  async getOrganizationAppUrl (organizationId: string): Promise<string> {
    const org = await this.getOrganizationById(organizationId)
    if (!org || !org.app_url) {
      throw new Error('Organization app URL not configured')
    }
    return org.app_url
  }

  async deleteOrganization (id: string): Promise<void> {
    return deleteOrganizationAPI(id)
  }

  async getUserOrganizations (userId: string): Promise<UserOrganization[]> {
    return getUserOrganizationsAPI(userId)
  }

  async getUsersByOrganization (organizationId: string): Promise<User[]> {
    return getUsersByOrganizationAPI(organizationId)
  }

  async addUserToOrganization (organizationId: string, userId: string): Promise<UserOrganization> {
    return addUserToOrganizationAPI(organizationId, userId)
  }

  async removeUserFromOrganization (organizationId: string, userId: string): Promise<void> {
    return removeUserFromOrganizationAPI(organizationId, userId)
  }

  async getDealers (): Promise<User[]> {
    return getDealersAPI()
  }

  async getDealerByOrganization (organizationId: string): Promise<User | null> {
    return getDealerByOrganizationAPI(organizationId)
  }

  async setDealerForOrganization (
    organizationId: string,
    dealerId: string | null,
    assignedBy: string | null
  ): Promise<void> {
    return setDealerForOrganizationAPI(organizationId, dealerId, assignedBy)
  }
}

export const organizationService = new OrganizationService()
