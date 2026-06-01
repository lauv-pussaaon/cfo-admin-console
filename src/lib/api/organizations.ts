import type {
  Organization,
  UserOrganization,
} from '@/types/database'
import type { AccountType } from '@/types/account-types'
import { fetchJson } from './fetch-client'
import type { User } from './types'

export interface OrganizationWithStats extends Organization {
  userCount: number
}

export interface OrganizationWithCreator extends OrganizationWithStats {
  creator?: {
    id: string
    name: string
    email: string
    role: string
  } | null
  dealer?: {
    id: string
    name: string
    email: string
  } | null
}

function orgListUrl (view: string, userId?: string): string {
  const params = new URLSearchParams({ view })
  if (userId) params.set('userId', userId)
  return `/api/organizations?${params.toString()}`
}

export const getOrganizations = async (): Promise<Organization[]> => {
  return fetchJson<Organization[]>(orgListUrl('all'))
}

export const getOrganizationsWithStats = async (): Promise<OrganizationWithStats[]> => {
  return fetchJson<OrganizationWithStats[]>(orgListUrl('stats'))
}

export const getOrganizationsForAdmin = async (): Promise<OrganizationWithCreator[]> => {
  return fetchJson<OrganizationWithCreator[]>(orgListUrl('admin'))
}

export const getOrganizationsForDealer = async (userId: string): Promise<OrganizationWithStats[]> => {
  return fetchJson<OrganizationWithStats[]>(orgListUrl('dealer', userId))
}

export const getOrganizationsForConsultAudit = async (userId: string): Promise<OrganizationWithStats[]> => {
  return fetchJson<OrganizationWithStats[]>(orgListUrl('consult', userId))
}

export const getOrganizationById = async (id: string): Promise<Organization | null> => {
  try {
    return await fetchJson<Organization | null>(`/api/organizations/${id}`)
  } catch (error) {
    if (error instanceof Error && (error.message.includes('404') || error.message.includes('not found'))) {
      return null
    }
    throw error
  }
}

export const getOrganizationForAdminById = async (id: string): Promise<OrganizationWithCreator | null> => {
  try {
    return await fetchJson<OrganizationWithCreator | null>(`/api/organizations/${id}?view=admin`)
  } catch (error) {
    if (error instanceof Error && (error.message.includes('404') || error.message.includes('not found'))) {
      return null
    }
    throw error
  }
}

export const createOrganization = async (
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
): Promise<Organization> => {
  return fetchJson<Organization>('/api/organizations', {
    method: 'POST',
    body: JSON.stringify(data),
  })
}

export const updateOrganization = async (
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
): Promise<Organization> => {
  return fetchJson<Organization>(`/api/organizations/${id}`, {
    method: 'PATCH',
    body: JSON.stringify(updates),
  })
}

export const deleteOrganization = async (id: string): Promise<void> => {
  await fetchJson(`/api/organizations/${id}`, { method: 'DELETE' })
}

export const getUserOrganizations = async (userId: string): Promise<UserOrganization[]> => {
  return fetchJson<UserOrganization[]>(`/api/organizations?view=user-orgs&userId=${encodeURIComponent(userId)}`)
}

export const getUsersByOrganization = async (organizationId: string): Promise<User[]> => {
  return fetchJson<User[]>(`/api/organizations/${organizationId}/members`)
}

export const addUserToOrganization = async (
  organizationId: string,
  userId: string,
  assignedBy?: string | null
): Promise<UserOrganization> => {
  return fetchJson<UserOrganization>(`/api/organizations/${organizationId}/members`, {
    method: 'POST',
    body: JSON.stringify({ userId, assignedBy }),
  })
}

export const removeUserFromOrganization = async (
  organizationId: string,
  userId: string
): Promise<void> => {
  await fetchJson(`/api/organizations/${organizationId}/members?userId=${encodeURIComponent(userId)}`, {
    method: 'DELETE',
  })
}

export const getDealers = async (): Promise<User[]> => {
  return fetchJson<User[]>('/api/dealers')
}

export const getDealerByOrganization = async (organizationId: string): Promise<User | null> => {
  try {
    return await fetchJson<User | null>(`/api/organizations/${organizationId}/dealer`)
  } catch (error) {
    if (error instanceof Error && (error.message.includes('404') || error.message.includes('not found'))) {
      return null
    }
    throw error
  }
}

export const setDealerForOrganization = async (
  organizationId: string,
  dealerId: string | null,
  assignedBy: string | null
): Promise<void> => {
  await fetchJson(`/api/organizations/${organizationId}/dealer`, {
    method: 'PUT',
    body: JSON.stringify({ dealerId, assignedBy }),
  })
}
