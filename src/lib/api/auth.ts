import { supabase } from '../supabase'
import type { User } from './types'
import type { Organization } from '@/types/database'
import { throwIfError, handleSupabaseError, ValidationError } from '@/lib/utils/errors'
import { verifyPassword } from '@/lib/utils/password'

// Users API
export const getUsers = async (): Promise<User[]> => {
  try {
    // Get all users
    const result = await supabase
      .from('users')
      .select('id, username, email, name, avatar_url, role, invite_hashcode, created_at')
      .order('name', { ascending: true })

    if (result.error) {
      handleSupabaseError(result.error)
    }

    const users = result.data || []

    // Get all user-organizations relationships
    const userIds = users.map(u => u.id)
    if (userIds.length === 0) {
      return []
    }

    const { data: userOrgs, error: userOrgsError } = await supabase
      .from('user_organizations')
      .select(`
        user_id,
        organization:organizations(*)
      `)
      .in('user_id', userIds)
      .order('assigned_at', { ascending: true })

    if (userOrgsError) {
      handleSupabaseError(userOrgsError)
    }

    // Create a map of user_id -> array of organizations
    const orgMap = new Map<string, Organization[]>()
    if (userOrgs) {
      userOrgs.forEach((uo: { user_id: string; organization: Organization | Organization[] | null }) => {
        if (uo.organization) {
          const orgs = Array.isArray(uo.organization) ? uo.organization : [uo.organization]
          const existingOrgs = orgMap.get(uo.user_id) || []
          orgMap.set(uo.user_id, [...existingOrgs, ...orgs])
        }
      })
    }

    // Attach organizations to users
    return users.map(user => ({
      ...user,
      organizations: orgMap.get(user.id) || []
    }))
  } catch (error) {
    // Re-throw network errors with better context
    if (error instanceof Error && error.message.includes('fetch')) {
      throw new Error('Failed to connect to the database. Please check your Supabase configuration and network connection.')
    }
    throw error
  }
}

export const getCurrentUser = async (): Promise<User | null> => {
  // Get user from localStorage (set by AuthContext)
  const userId = localStorage.getItem('cfo_user_id')
  if (!userId) return null

  const { data, error } = await supabase
    .from('users')
    .select('id, username, email, name, avatar_url, role, invite_hashcode, created_at')
    .eq('id', userId)
    .single()

  if (error && error.code !== 'PGRST116') {
    handleSupabaseError(error)
  }
  return data
}

export const getUserById = async (userId: string): Promise<User | null> => {
  const { data, error } = await supabase
    .from('users')
    .select('id, username, email, name, avatar_url, role, invite_hashcode, created_at')
    .eq('id', userId)
    .single()

  if (error && error.code !== 'PGRST116') {
    handleSupabaseError(error)
  }

  if (!data) {
    return null
  }

  // Get user's organizations through the junction table
  const { data: userOrgs, error: userOrgsError } = await supabase
    .from('user_organizations')
    .select(`
      organization:organizations(*)
    `)
    .eq('user_id', userId)
    .order('assigned_at', { ascending: true })

  if (userOrgsError && userOrgsError.code !== 'PGRST116') {
    handleSupabaseError(userOrgsError)
  }

  const organizations: Organization[] = []
  if (userOrgs) {
    userOrgs.forEach((uo: { organization: Organization | Organization[] | null }) => {
      if (uo.organization) {
        const orgs = Array.isArray(uo.organization) ? uo.organization : [uo.organization]
        organizations.push(...orgs)
      }
    })
  }

  return {
    ...data,
    organizations
  }
}

export const createUser = async (data: {
  username: string
  email: string
  password: string
  name: string
  avatar_url?: string | null
  role?: string
}): Promise<User> => {
  // Validate role - only allow admin console roles
  const allowedRoles = ['Admin', 'Dealer', 'Consult', 'Audit']
  const role = data.role || 'Consult'

  if (!allowedRoles.includes(role)) {
    throw new ValidationError(`Invalid role. Allowed roles: ${allowedRoles.join(', ')}`)
  }

  const { hashPassword } = await import('@/lib/utils/password')
  const password_hash = await hashPassword(data.password)

  // Generate invite hashcode for Consult and Audit users
  const invite_hashcode = (role === 'Consult' || role === 'Audit')
    ? crypto.randomUUID()
    : null

  const insertData: {
    username: string
    email: string
    password_hash: string
    name: string
    avatar_url: string | null
    role: string
    invite_hashcode: string | null
  } = {
    username: data.username,
    email: data.email,
    password_hash,
    name: data.name,
    avatar_url: data.avatar_url || null,
    role,
    invite_hashcode,
  }

  const result = await supabase
    .from('users')
    .insert(insertData)
    .select('id, username, email, name, avatar_url, role, invite_hashcode, created_at')
    .single()

  return throwIfError(result)
}

export const updateUser = async (
  id: string,
  updates: Partial<{
    username: string
    email: string
    password?: string
    name: string
    avatar_url: string | null
    role: string
  }>
): Promise<User> => {
  const updateData: {
    username?: string
    email?: string
    password?: string
    password_hash?: string
    name?: string
    avatar_url?: string | null
    role?: string
  } = { ...updates }

  // If password is provided, hash it
  if (updates.password) {
    const { hashPassword } = await import('@/lib/utils/password')
    updateData.password_hash = await hashPassword(updates.password)
    delete updateData.password
  }

  const result = await supabase
    .from('users')
    .update(updateData)
    .eq('id', id)
    .select('id, username, email, name, avatar_url, role, created_at')
    .single()

  return throwIfError(result)
}

export const login = async (usernameOrEmail: string, password: string): Promise<User> => {
  // Find user by username or email
  const { data: users, error } = await supabase
    .from('users')
    .select('*')
    .or(`username.eq.${usernameOrEmail},email.eq.${usernameOrEmail}`)
    .limit(1)

  if (error) {
    handleSupabaseError(error)
  }

  if (!users || users.length === 0) {
    throw new ValidationError('ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง')
  }

  const user = users[0]

  // Verify password
  const isValid = await verifyPassword(password, user.password_hash)
  if (!isValid) {
    throw new ValidationError('ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง')
  }

  // Return user without password_hash
  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  const { password_hash, ...userWithoutPassword } = user
  return userWithoutPassword as User
}

export const deleteUser = async (id: string): Promise<void> => {
  // Delete user - related records in conversations, messages, tasks, and approvals will have their user references set to NULL
  const { error } = await supabase
    .from('users')
    .delete()
    .eq('id', id)

  if (error) {
    handleSupabaseError(error)
  }
}
