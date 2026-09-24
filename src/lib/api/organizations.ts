import { supabase } from '../supabase'
import type {
  Organization,
  UserOrganization,
} from '@/types/database'
import type { AccountType } from '@/types/account-types'
import { DEFAULT_ACCOUNT_TYPE } from '@/types/account-types'
import { getDefaultPackagePeriod } from '@/types/package-periods'
import { handleSupabaseError, ValidationError, throwIfError } from '@/lib/utils/errors'
import type { User } from './types'

// Organizations
export const getOrganizations = async (): Promise<Organization[]> => {
  const { data, error } = await supabase
    .from('organizations')
    .select('*')
    .order('created_at', { ascending: false })

  if (error) throw error
  return data || []
}

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
}

export const getOrganizationsWithStats = async (): Promise<OrganizationWithStats[]> => {
  // Get all organizations
  const { data: organizations, error: orgError } = await supabase
    .from('organizations')
    .select('*')
    .order('created_at', { ascending: false })

  if (orgError) throw orgError
  if (!organizations || organizations.length === 0) {
    return []
  }

  const organizationIds = organizations.map(org => org.id)

  // Get users count for each organization
  const { data: userOrgs, error: userError } = await supabase
    .from('user_organizations')
    .select('organization_id')
    .in('organization_id', organizationIds)

  if (userError) throw userError

  // Create map for counting
  const userCountMap = new Map<string, number>()

  // Count users per organization
  if (userOrgs) {
    userOrgs.forEach((uo: { organization_id: string }) => {
      const count = userCountMap.get(uo.organization_id) || 0
      userCountMap.set(uo.organization_id, count + 1)
    })
  }

  // Combine organizations with stats
  return organizations.map(org => ({
    ...org,
    userCount: userCountMap.get(org.id) || 0,
  }))
}

export const getOrganizationsForAdmin = async (): Promise<OrganizationWithCreator[]> => {
  // Get all organizations with creator info via join
  const { data: organizations, error: orgError } = await supabase
    .from('organizations')
    .select(`
      *,
      creator:users!organizations_created_by_fkey(id, name, email, role)
    `)
    .order('created_at', { ascending: false })

  if (orgError) throw orgError
  if (!organizations || organizations.length === 0) {
    return []
  }

  const organizationIds = organizations.map(org => org.id)

  // Get users count for each organization
  const { data: userOrgs, error: userError } = await supabase
    .from('user_organizations')
    .select('organization_id')
    .in('organization_id', organizationIds)

  if (userError) throw userError

  // Create map for counting
  const userCountMap = new Map<string, number>()

  // Count users per organization
  if (userOrgs) {
    userOrgs.forEach((uo: { organization_id: string }) => {
      const count = userCountMap.get(uo.organization_id) || 0
      userCountMap.set(uo.organization_id, count + 1)
    })
  }

  return organizations.map((org: any) => ({
    ...org,
    userCount: userCountMap.get(org.id) || 0,
    creator: org.creator ? {
      id: org.creator.id,
      name: org.creator.name,
      email: org.creator.email,
      role: org.creator.role,
    } : null,
  }))
}

export const getOrganizationsForConsultAudit = async (userId: string): Promise<OrganizationWithStats[]> => {
  // Get organizations assigned to this Consult/Audit through user_organizations
  const { data: userOrgs, error: userOrgsError } = await supabase
    .from('user_organizations')
    .select(`
      organization_id,
      organization:organizations(*)
    `)
    .eq('user_id', userId)
    .order('assigned_at', { ascending: false })

  if (userOrgsError) throw userOrgsError
  if (!userOrgs || userOrgs.length === 0) {
    return []
  }

  // Extract organization IDs
  const organizationIds = userOrgs
    .map((uo: { organization: Organization | Organization[] | null }) => {
      if (!uo.organization) return null
      return Array.isArray(uo.organization) ? uo.organization[0]?.id : uo.organization.id
    })
    .filter((id): id is string => id !== null)

  if (organizationIds.length === 0) {
    return []
  }

  // Get user count for each organization
  const { data: allUserOrgs, error: userError } = await supabase
    .from('user_organizations')
    .select('organization_id')
    .in('organization_id', organizationIds)

  if (userError) throw userError

  // Create map for counting
  const userCountMap = new Map<string, number>()

  // Count users per organization
  if (allUserOrgs) {
    allUserOrgs.forEach((uo: { organization_id: string }) => {
      const count = userCountMap.get(uo.organization_id) || 0
      userCountMap.set(uo.organization_id, count + 1)
    })
  }

  // Extract organizations and add stats
  const organizations: Organization[] = userOrgs
    .map((uo: { organization: Organization | Organization[] | null }) => {
      if (!uo.organization) return null
      return Array.isArray(uo.organization) ? uo.organization[0] : uo.organization
    })
    .filter((org): org is Organization => org !== null)

  // Combine organizations with stats
  return organizations.map(org => ({
    ...org,
    userCount: userCountMap.get(org.id) || 0,
  }))
}

export const getOrganizationById = async (id: string): Promise<Organization | null> => {
  const { data, error } = await supabase
    .from('organizations')
    .select('*')
    .eq('id', id)
    .single()

  if (error && error.code !== 'PGRST116') throw error
  return data
}

/** Single org with same enrichment as getOrganizationsForAdmin (for detail page). */
export const getOrganizationForAdminById = async (id: string): Promise<OrganizationWithCreator | null> => {
  const { data: org, error } = await supabase
    .from('organizations')
    .select(`
      *,
      creator:users!organizations_created_by_fkey(id, name, email, role)
    `)
    .eq('id', id)
    .single()

  if (error && error.code !== 'PGRST116') throw error
  if (!org) return null

  const { data: userOrgs } = await supabase
    .from('user_organizations')
    .select('organization_id')
    .eq('organization_id', id)

  const userCount = userOrgs?.length ?? 0

  const o = org as Record<string, unknown>
  const creatorRaw = o.creator as { id: string; name: string; email: string; role: string } | null | undefined

  return {
    ...(org as Organization),
    userCount,
    creator: creatorRaw
      ? {
          id: creatorRaw.id,
          name: creatorRaw.name,
          email: creatorRaw.email,
          role: creatorRaw.role,
        }
      : null,
  }
}

export const createOrganization = async (
  data: {
    name: string
    code?: string | null
    description?: string | null
    app_url?: string | null
    factory_admin_email?: string | null
    contact_first_name?: string | null
    contact_last_name?: string | null
    contact_phone?: string | null
    username?: string | null
    password?: string | null
    account_type?: AccountType
    package_start?: string | null
    package_end?: string | null
    created_by?: string | null
    assignedUserId?: string | null
  }
): Promise<Organization> => {
  const accountType = data.account_type ?? DEFAULT_ACCOUNT_TYPE
  const defaultPeriod = getDefaultPackagePeriod(accountType)
  const result = await supabase
    .from('organizations')
    .insert({
      name: data.name,
      code: data.code || null,
      description: data.description || null,
      app_url: data.app_url || null,
      factory_admin_email: data.factory_admin_email || null,
      contact_first_name: data.contact_first_name || null,
      contact_last_name: data.contact_last_name || null,
      contact_phone: data.contact_phone || null,
      username: data.username || null,
      password: data.password || null,
      account_type: accountType,
      package_start: data.package_start ?? defaultPeriod.package_start,
      package_end: data.package_end !== undefined ? data.package_end : defaultPeriod.package_end,
      is_initialized: false,
      created_by: data.created_by || null,
    })
    .select()
    .single()

  const organization = throwIfError(result)

  // Auto-assign user to organization if assignedUserId is provided
  if (data.assignedUserId && organization.id) {
    try {
      await addUserToOrganization(organization.id, data.assignedUserId, data.created_by || null)
    } catch (error) {
      // If assignment fails, log but don't fail the organization creation
      // This allows organization to be created even if assignment has issues
      console.error('Failed to auto-assign user to organization:', error)
    }
  }

  return organization
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
    contact_first_name: string | null
    contact_last_name: string | null
    contact_phone: string | null
    username: string | null
    password: string | null
    account_type: AccountType
    package_start: string | null
    package_end: string | null
  }>
): Promise<Organization> => {
  // Get old record before update
  const { data: oldData } = await supabase
    .from('organizations')
    .select('*')
    .eq('id', id)
    .single()

  // If setting is_initialized to true, also set initialized_at
  const updateData: typeof updates = { ...updates }
  if (updates.is_initialized === true && !updates.initialized_at) {
    updateData.initialized_at = new Date().toISOString()
  }

  // Perform update
  const result = await supabase
    .from('organizations')
    .update({
      ...updateData,
      updated_at: new Date().toISOString(),
    })
    .eq('id', id)
    .select()
    .single()

  return throwIfError(result)
}

export const deleteOrganization = async (id: string): Promise<void> => {
  // Check if organization has user assignments before deletion
  const { error: errorDeleteUserOrganizations } = await supabase
    .from('user_organizations')
    .delete()
    .eq('organization_id', id)

  if (errorDeleteUserOrganizations) {
    handleSupabaseError(errorDeleteUserOrganizations)
  }

  // If no user assignments, proceed with deletion
  const { error } = await supabase
    .from('organizations')
    .delete()
    .eq('id', id)

  if (error) {
    handleSupabaseError(error)
  }
}

// User Organizations
export const getUserOrganizations = async (userId: string): Promise<UserOrganization[]> => {
  const { data, error } = await supabase
    .from('user_organizations')
    .select(`
      *,
      organization:organizations(*)
    `)
    .eq('user_id', userId)
    .order('assigned_at', { ascending: false })

  if (error) throw error
  return data || []
}

export const getUsersByOrganization = async (organizationId: string): Promise<User[]> => {
  const { data: userOrgs, error: userOrgsError } = await supabase
    .from('user_organizations')
    .select(`
      user:users!user_organizations_user_id_fkey(*)
    `)
    .eq('organization_id', organizationId)

  if (userOrgsError) throw userOrgsError

  if (!userOrgs || userOrgs.length === 0) {
    return []
  }

  // Extract users from the joined data
  return userOrgs
    .map((uo: { user: User | User[] | null }) => {
      if (!uo.user) return null
      return Array.isArray(uo.user) ? uo.user[0] : uo.user
    })
    .filter((user): user is User => user !== null)
}

export const addUserToOrganization = async (
  organizationId: string,
  userId: string,
  assignedBy?: string | null
): Promise<UserOrganization> => {
  // Check if assignment already exists
  const { data: existing } = await supabase
    .from('user_organizations')
    .select('id')
    .eq('user_id', userId)
    .eq('organization_id', organizationId)
    .single()

  if (existing) {
    throw new ValidationError('ผู้ใช้ถูกกำหนดให้กับองค์กรนี้แล้ว')
  }

  const result = await supabase
    .from('user_organizations')
    .insert({
      user_id: userId,
      organization_id: organizationId,
      assigned_by: assignedBy || null,
    })
    .select(`
      *,
      organization:organizations(*)
    `)
    .single()

  return throwIfError(result)
}

export const removeUserFromOrganization = async (
  organizationId: string,
  userId: string
): Promise<void> => {
  const { error } = await supabase
    .from('user_organizations')
    .delete()
    .eq('user_id', userId)
    .eq('organization_id', organizationId)

  if (error) {
    handleSupabaseError(error)
  }
}

