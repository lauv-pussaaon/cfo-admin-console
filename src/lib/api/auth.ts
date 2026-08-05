import { supabase } from '../supabase'
import type { User } from './types'
import type { Organization } from '@/types/database'
import { throwIfError, handleSupabaseError, ValidationError } from '@/lib/utils/errors'
import { verifyPassword } from '@/lib/utils/password'

const USER_SELECT =
  'id, username, email, name, avatar_url, role, is_approved, invite_hashcode, organization_name, phone, has_verification, certified_date, certification_expiry, year_experiences, industries, created_at'

// Users API
export const getUsers = async (): Promise<User[]> => {
  try {
    // Get all users
    const result = await supabase
      .from('users')
      .select(USER_SELECT)
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
    .select(USER_SELECT)
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
    .select(USER_SELECT)
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
  is_approved?: boolean
  organization_name?: string | null
  phone?: string | null
  has_verification?: boolean
  certified_date?: string | null
  certification_expiry?: string | null
  year_experiences?: number | null
  industries?: string[]
}): Promise<User> => {
  // Validate role - only allow admin console roles
  const allowedRoles = ['Admin', 'Dealer', 'Consult', 'Audit', 'Support']
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

  const hasVerification = data.has_verification ?? false

  const insertData = {
    username: data.username,
    email: data.email,
    password_hash,
    name: data.name,
    avatar_url: data.avatar_url || null,
    role,
    is_approved: data.is_approved ?? true,
    invite_hashcode,
    organization_name: data.organization_name?.trim() || null,
    phone: data.phone?.trim() || null,
    has_verification: hasVerification,
    certified_date: hasVerification ? (data.certified_date || null) : null,
    certification_expiry: hasVerification ? (data.certification_expiry || null) : null,
    year_experiences:
      typeof data.year_experiences === 'number' ? data.year_experiences : null,
    industries: data.industries ?? [],
  }

  const result = await supabase
    .from('users')
    .insert(insertData)
    .select(USER_SELECT)
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
    is_approved: boolean
    organization_name?: string | null
    phone?: string | null
    has_verification?: boolean
    certified_date?: string | null
    certification_expiry?: string | null
    year_experiences?: number | null
    industries?: string[]
  }>
): Promise<User> => {
  const allowedRoles = ['Admin', 'Dealer', 'Consult', 'Audit', 'Support']
  if (updates.role !== undefined && !allowedRoles.includes(updates.role)) {
    throw new ValidationError(`Invalid role. Allowed roles: ${allowedRoles.join(', ')}`)
  }

  const {
    password,
    has_verification,
    certified_date,
    certification_expiry,
    organization_name,
    phone,
    year_experiences,
    industries,
    ...rest
  } = updates

  const updateData: Record<string, unknown> = { ...rest }

  if (organization_name !== undefined) {
    updateData.organization_name = organization_name?.trim() || null
  }
  if (phone !== undefined) {
    updateData.phone = phone?.trim() || null
  }
  if (year_experiences !== undefined) {
    updateData.year_experiences =
      typeof year_experiences === 'number' ? year_experiences : null
  }
  if (industries !== undefined) {
    updateData.industries = industries ?? []
  }
  if (has_verification !== undefined) {
    updateData.has_verification = has_verification
    updateData.certified_date = has_verification ? (certified_date || null) : null
    updateData.certification_expiry = has_verification
      ? (certification_expiry || null)
      : null
  } else {
    if (certified_date !== undefined) updateData.certified_date = certified_date
    if (certification_expiry !== undefined) {
      updateData.certification_expiry = certification_expiry
    }
  }

  // If password is provided, hash it
  if (password) {
    const { hashPassword } = await import('@/lib/utils/password')
    updateData.password_hash = await hashPassword(password)
  }

  const result = await supabase
    .from('users')
    .update(updateData)
    .eq('id', id)
    .select(USER_SELECT)
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

  if (!user.is_approved) {
    throw new ValidationError('บัญชีของคุณยังไม่ได้รับการอนุมัติ กรุณาติดต่อผู้ดูแลระบบ')
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
