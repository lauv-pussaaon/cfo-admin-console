import { supabase } from '../supabase'
import type { User, UserStatus } from './types'
import type { Organization } from '@/types/database'
import { throwIfError, handleSupabaseError, ValidationError, ConflictError } from '@/lib/utils/errors'
import { verifyPassword } from '@/lib/utils/password'

const USER_SELECT =
  'id, username, email, name, avatar_url, role, status, rejection_reason, invite_hashcode, organization_name, phone, year_experiences, industries, consulting_firm_id, is_firm_contact_person, created_at'

const TOGGLEABLE_STATUSES: UserStatus[] = ['active', 'inactive']

function rethrowUsernameConflict (error: unknown): never {
  if (
    error instanceof ConflictError &&
    /users_username_key|username/i.test(error.message)
  ) {
    throw new ConflictError('ชื่อผู้ใช้นี้ถูกใช้แล้ว')
  }
  throw error
}

function statusLoginError (status: string): string {
  if (status === 'rejected') {
    return 'บัญชีของคุณถูกปฏิเสธ กรุณาติดต่อผู้ดูแลระบบ'
  }
  if (status === 'inactive') {
    return 'บัญชีของคุณถูกปิดใช้งาน กรุณาติดต่อผู้ดูแลระบบ'
  }
  return 'บัญชีของคุณยังไม่ได้รับการอนุมัติ กรุณาติดต่อผู้ดูแลระบบ'
}

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

    const firmNameById = await loadConsultingFirmNames(
      users.map((user) => user.consulting_firm_id).filter((id): id is string => Boolean(id))
    )

    return users.map(user => ({
      ...user,
      organizations: orgMap.get(user.id) || [],
      consulting_firm_name: user.consulting_firm_id
        ? firmNameById.get(user.consulting_firm_id) ?? null
        : null,
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

  const firmNameById = data.consulting_firm_id
    ? await loadConsultingFirmNames([data.consulting_firm_id])
    : new Map<string, string>()

  return {
    ...data,
    organizations,
    consulting_firm_name: data.consulting_firm_id
      ? firmNameById.get(data.consulting_firm_id) ?? null
      : null,
  }
}

async function loadConsultingFirmNames (ids: string[]): Promise<Map<string, string>> {
  const uniqueIds = [...new Set(ids)]
  const names = new Map<string, string>()
  if (uniqueIds.length === 0) return names

  const { data, error } = await supabase
    .from('consulting_firms')
    .select('id, name')
    .in('id', uniqueIds)

  if (error) {
    handleSupabaseError(error)
  }

  for (const firm of data ?? []) {
    names.set(firm.id, firm.name)
  }
  return names
}

export const createUser = async (data: {
  username: string
  email: string
  password: string
  name: string
  avatar_url?: string | null
  role?: string
  status?: UserStatus
  organization_name?: string | null
  phone?: string | null
  year_experiences?: number | null
  industries?: string[]
  consulting_firm_id?: string | null
  is_firm_contact_person?: boolean
}): Promise<User> => {
  // Validate role - only allow admin console roles
  const allowedRoles = ['Admin', 'Dealer', 'Consult', 'Audit', 'Support']
  const role = data.role || 'Consult'

  if (!allowedRoles.includes(role)) {
    throw new ValidationError(`Invalid role. Allowed roles: ${allowedRoles.join(', ')}`)
  }

  const status = data.status ?? 'active'
  const allowedStatuses: UserStatus[] = ['requested', 'active', 'rejected', 'inactive']
  if (!allowedStatuses.includes(status)) {
    throw new ValidationError(`Invalid status. Allowed: ${allowedStatuses.join(', ')}`)
  }

  const { hashPassword } = await import('@/lib/utils/password')
  const password_hash = await hashPassword(data.password)

  // Generate invite hashcode for Consult and Audit users
  const invite_hashcode = (role === 'Consult' || role === 'Audit')
    ? crypto.randomUUID()
    : null

  const insertData = {
    username: data.username,
    email: data.email,
    password_hash,
    name: data.name,
    avatar_url: data.avatar_url || null,
    role,
    status,
    rejection_reason: null,
    invite_hashcode,
    organization_name: data.organization_name?.trim() || null,
    phone: data.phone?.trim() || null,
    year_experiences:
      typeof data.year_experiences === 'number' ? data.year_experiences : null,
    industries: data.industries ?? [],
    consulting_firm_id: data.consulting_firm_id || null,
    is_firm_contact_person: data.is_firm_contact_person === true,
  }

  const result = await supabase
    .from('users')
    .insert(insertData)
    .select(USER_SELECT)
    .single()

  try {
    return throwIfError(result)
  } catch (error) {
    rethrowUsernameConflict(error)
  }
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
    status: UserStatus
    organization_name?: string | null
    phone?: string | null
    year_experiences?: number | null
    industries?: string[]
    consulting_firm_id?: string | null
    is_firm_contact_person?: boolean
  }>
): Promise<User> => {
  const allowedRoles = ['Admin', 'Dealer', 'Consult', 'Audit', 'Support']
  if (updates.role !== undefined && !allowedRoles.includes(updates.role)) {
    throw new ValidationError(`Invalid role. Allowed roles: ${allowedRoles.join(', ')}`)
  }

  if (updates.status !== undefined) {
    if (!TOGGLEABLE_STATUSES.includes(updates.status)) {
      throw new ValidationError('สถานะนี้เปลี่ยนได้เฉพาะผ่านการอนุมัติหรือปฏิเสธ')
    }
    const { data: current, error: currentError } = await supabase
      .from('users')
      .select('status')
      .eq('id', id)
      .single()
    if (currentError) {
      handleSupabaseError(currentError)
    }
    if (!current || !TOGGLEABLE_STATUSES.includes(current.status as UserStatus)) {
      throw new ValidationError('เปลี่ยนสถานะใช้งานได้เฉพาะผู้ใช้ที่อนุมัติแล้ว')
    }
  }

  const {
    password,
    organization_name,
    phone,
    year_experiences,
    industries,
    consulting_firm_id,
    is_firm_contact_person,
    status,
    ...rest
  } = updates

  const updateData: Record<string, unknown> = { ...rest }

  if (status !== undefined) {
    updateData.status = status
    if (status === 'active') {
      updateData.rejection_reason = null
    }
  }

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
  if (consulting_firm_id !== undefined) {
    updateData.consulting_firm_id = consulting_firm_id || null
  }
  if (is_firm_contact_person !== undefined) {
    updateData.is_firm_contact_person = is_firm_contact_person
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

  try {
    return throwIfError(result)
  } catch (error) {
    rethrowUsernameConflict(error)
  }
}

export const login = async (username: string, password: string): Promise<User> => {
  const { data: users, error } = await supabase
    .from('users')
    .select('*')
    .eq('username', username)
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

  if (user.status !== 'active') {
    throw new ValidationError(statusLoginError(user.status))
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
