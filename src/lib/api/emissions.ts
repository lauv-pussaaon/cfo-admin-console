import { supabase } from '../supabase'
import type {
  Organization,
  OrganizationWithStats,
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

  return throwIfError(result)
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

