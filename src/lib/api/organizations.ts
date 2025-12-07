import { supabase } from '../supabase'
import type {
  Organization,
  UserOrganization,
} from '@/types/database'
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
  dealer?: {
    id: string
    name: string
    email: string
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

  // Get dealers for all organizations
  const orgIdsForDealers = organizations.map((org: any) => org.id)
  const dealersMap = new Map<string, User>()

  if (orgIdsForDealers.length > 0) {
    // Get all user-organizations where user is a dealer
    const { data: dealerOrgs, error: dealerError } = await supabase
      .from('user_organizations')
      .select(`
        organization_id,
        user:users!user_organizations_user_id_fkey(id, username, email, name, avatar_url, role, created_at)
      `)
      .in('organization_id', orgIdsForDealers)

    if (!dealerError && dealerOrgs) {
      dealerOrgs.forEach((dealerOrg: { organization_id: string; user: User | User[] | null }) => {
        if (dealerOrg.user) {
          const user = Array.isArray(dealerOrg.user) ? dealerOrg.user[0] : dealerOrg.user
          if (user && user.role === 'Dealer') {
            dealersMap.set(dealerOrg.organization_id, user)
          }
        }
      })
    }
  }

  // Combine organizations with stats, creator info, and dealer info
  return organizations.map((org: any) => ({
    ...org,
    userCount: userCountMap.get(org.id) || 0,
    creator: org.creator ? {
      id: org.creator.id,
      name: org.creator.name,
      email: org.creator.email,
      role: org.creator.role,
    } : null,
    dealer: dealersMap.get(org.id) ? {
      id: dealersMap.get(org.id)!.id,
      name: dealersMap.get(org.id)!.name,
      email: dealersMap.get(org.id)!.email,
    } : null,
  }))
}

export const getOrganizationsForDealer = async (userId: string): Promise<OrganizationWithStats[]> => {
  // Get organizations assigned to this dealer through user_organizations
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

export const createOrganization = async (
  data: {
    name: string
    code?: string | null
    description?: string | null
    app_url?: string | null
    factory_admin_email?: string | null
    created_by?: string | null
    assignedUserId?: string | null
  }
): Promise<Organization> => {
  const result = await supabase
    .from('organizations')
    .insert({
      name: data.name,
      code: data.code || null,
      description: data.description || null,
      app_url: data.app_url || null,
      factory_admin_email: data.factory_admin_email || null,
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
  const { data: userOrgs, error: userOrgsError } = await supabase
    .from('user_organizations')
    .select('id')
    .eq('organization_id', id)
    .limit(1)

  if (userOrgsError && userOrgsError.code !== 'PGRST116') {
    handleSupabaseError(userOrgsError)
  }

  if (userOrgs && userOrgs.length > 0) {
    throw new ValidationError('ไม่สามารถลบองค์กรได้ เนื่องจากองค์กรยังมีผู้ใช้ที่ถูกกำหนดให้อยู่ กรุณาลบการกำหนดผู้ใช้ก่อน')
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
      user:users(*)
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

// Get dealers (users with role 'Dealer')
export const getDealers = async (): Promise<User[]> => {
  const { data, error } = await supabase
    .from('users')
    .select('id, username, email, name, avatar_url, role, created_at')
    .eq('role', 'Dealer')
    .order('name', { ascending: true })

  if (error) {
    handleSupabaseError(error)
  }

  return data || []
}

// Get dealer assigned to organization
export const getDealerByOrganization = async (organizationId: string): Promise<User | null> => {
  // Get all users assigned to this organization
  const users = await getUsersByOrganization(organizationId)

  // Find the dealer (should be only one)
  const dealer = users.find(user => user.role === 'Dealer')

  return dealer || null
}

// Set dealer for organization (removes old dealer, adds new one)
export const setDealerForOrganization = async (
  organizationId: string,
  dealerId: string | null,
  assignedBy: string | null
): Promise<void> => {
  // Get current dealer
  const currentDealer = await getDealerByOrganization(organizationId)

  // Remove current dealer if exists
  if (currentDealer) {
    await removeUserFromOrganization(organizationId, currentDealer.id)
  }

  // Add new dealer if provided
  if (dealerId) {
    await addUserToOrganization(organizationId, dealerId, assignedBy)
  }
}

