import { query, queryOne } from '@/lib/db'
import type { User } from '@/lib/api/types'
import type { Organization } from '@/types/database'
import { handleSupabaseError, ValidationError, NotFoundError } from '@/lib/utils/errors'
import { verifyPassword } from '@/lib/utils/password'

const USER_COLUMNS = `id, username, email, name, avatar_url, role, is_approved, invite_hashcode, created_at`

function toUser (row: Record<string, unknown>): User {
  return {
    ...row,
    avatar_url: (row.avatar_url as string | null) ?? undefined,
    invite_hashcode: (row.invite_hashcode as string | null) ?? undefined,
    role: row.role as User['role'],
  } as User
}

async function fetchOrganizationsForUsers (userIds: string[]): Promise<Map<string, Organization[]>> {
  const orgMap = new Map<string, Organization[]>()
  if (userIds.length === 0) return orgMap

  const { rows } = await query<Organization & { user_id: string }>(
    `SELECT uo.user_id, o.*
     FROM user_organizations uo
     JOIN organizations o ON o.id = uo.organization_id
     WHERE uo.user_id = ANY($1::uuid[])
     ORDER BY uo.assigned_at ASC`,
    [userIds]
  )

  for (const row of rows) {
    const { user_id, ...org } = row
    const existing = orgMap.get(user_id) || []
    existing.push(org as Organization)
    orgMap.set(user_id, existing)
  }

  return orgMap
}

export async function getUsers (): Promise<User[]> {
  try {
    const { rows } = await query<Record<string, unknown>>(
      `SELECT ${USER_COLUMNS}
       FROM users
       ORDER BY name ASC`
    )

    const users = rows.map(toUser)
    const orgMap = await fetchOrganizationsForUsers(users.map((u) => u.id))

    return users.map((user) => ({
      ...user,
      organizations: orgMap.get(user.id) || [],
    }))
  } catch (error) {
    if (error instanceof Error && error.message.includes('fetch')) {
      throw new Error('Failed to connect to the database. Please check your DATABASE_URL and network connection.')
    }
    throw error
  }
}

export async function getUserById (userId: string): Promise<User | null> {
  const user = await queryOne<Record<string, unknown>>(
    `SELECT ${USER_COLUMNS} FROM users WHERE id = $1`,
    [userId]
  )

  if (!user) return null

  const orgMap = await fetchOrganizationsForUsers([userId])
  return {
    ...toUser(user),
    organizations: orgMap.get(userId) || [],
  }
}

export async function createUser (data: {
  username: string
  email: string
  password: string
  name: string
  avatar_url?: string | null
  role?: string
  is_approved?: boolean
}): Promise<User> {
  const allowedRoles = ['Admin', 'Dealer', 'Consult', 'Audit', 'Support']
  const role = data.role || 'Consult'

  if (!allowedRoles.includes(role)) {
    throw new ValidationError(`Invalid role. Allowed roles: ${allowedRoles.join(', ')}`)
  }

  const { hashPassword } = await import('@/lib/utils/password')
  const password_hash = await hashPassword(data.password)

  const invite_hashcode = (role === 'Consult' || role === 'Audit')
    ? crypto.randomUUID()
    : null

  try {
    const row = await queryOne<Record<string, unknown>>(
      `INSERT INTO users (username, email, password_hash, name, avatar_url, role, is_approved, invite_hashcode)
       VALUES ($1, $2, $3, $4, $5, $6, $7, $8)
       RETURNING ${USER_COLUMNS}`,
      [
        data.username,
        data.email,
        password_hash,
        data.name,
        data.avatar_url || null,
        role,
        data.is_approved ?? true,
        invite_hashcode,
      ]
    )

    if (!row) {
      throw new NotFoundError('Failed to create user')
    }

    return toUser(row)
  } catch (error) {
    handleSupabaseError(error)
  }
}

export async function updateUser (
  id: string,
  updates: Partial<{
    username: string
    email: string
    password?: string
    name: string
    avatar_url: string | null
    role: string
    is_approved: boolean
  }>
): Promise<User> {
  const allowedRoles = ['Admin', 'Dealer', 'Consult', 'Audit', 'Support']
  if (updates.role !== undefined && !allowedRoles.includes(updates.role)) {
    throw new ValidationError(`Invalid role. Allowed roles: ${allowedRoles.join(', ')}`)
  }

  const setClauses: string[] = []
  const params: unknown[] = []
  let paramIndex = 1

  if (updates.username !== undefined) {
    setClauses.push(`username = $${paramIndex++}`)
    params.push(updates.username)
  }
  if (updates.email !== undefined) {
    setClauses.push(`email = $${paramIndex++}`)
    params.push(updates.email)
  }
  if (updates.name !== undefined) {
    setClauses.push(`name = $${paramIndex++}`)
    params.push(updates.name)
  }
  if (updates.avatar_url !== undefined) {
    setClauses.push(`avatar_url = $${paramIndex++}`)
    params.push(updates.avatar_url)
  }
  if (updates.role !== undefined) {
    setClauses.push(`role = $${paramIndex++}`)
    params.push(updates.role)
  }
  if (updates.is_approved !== undefined) {
    setClauses.push(`is_approved = $${paramIndex++}`)
    params.push(updates.is_approved)
  }
  if (updates.password) {
    const { hashPassword } = await import('@/lib/utils/password')
    const password_hash = await hashPassword(updates.password)
    setClauses.push(`password_hash = $${paramIndex++}`)
    params.push(password_hash)
  }

  if (setClauses.length === 0) {
    const existing = await getUserById(id)
    if (!existing) throw new NotFoundError('User not found')
    return existing
  }

  params.push(id)

  try {
    const row = await queryOne<Record<string, unknown>>(
      `UPDATE users SET ${setClauses.join(', ')}
       WHERE id = $${paramIndex}
       RETURNING ${USER_COLUMNS}`,
      params
    )

    if (!row) {
      throw new NotFoundError('User not found')
    }

    return toUser(row)
  } catch (error) {
    handleSupabaseError(error)
  }
}

export async function deleteUser (id: string): Promise<void> {
  try {
    const { rowCount } = await query(
      `DELETE FROM users WHERE id = $1`,
      [id]
    )
    if (rowCount === 0) {
      throw new NotFoundError('User not found')
    }
  } catch (error) {
    if (error instanceof NotFoundError) throw error
    handleSupabaseError(error)
  }
}

type UserWithPassword = Record<string, unknown> & { password_hash: string }

async function findUserByUsernameOrEmail (usernameOrEmail: string): Promise<UserWithPassword | null> {
  return queryOne<UserWithPassword>(
    `SELECT * FROM users WHERE username = $1 OR email = $1 LIMIT 1`,
    [usernameOrEmail]
  )
}

function stripPasswordHash (user: UserWithPassword): User {
  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  const { password_hash, ...userWithoutPassword } = user
  return toUser(userWithoutPassword)
}

/** Admin console login — requires approved account. */
export async function loginUser (usernameOrEmail: string, password: string): Promise<User> {
  const user = await findUserByUsernameOrEmail(usernameOrEmail)
  if (!user) {
    throw new ValidationError('ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง')
  }

  const isValid = await verifyPassword(password, user.password_hash)
  if (!isValid) {
    throw new ValidationError('ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง')
  }

  if (!user.is_approved) {
    throw new ValidationError('บัญชีของคุณยังไม่ได้รับการอนุมัติ กรุณาติดต่อผู้ดูแลระบบ')
  }

  return stripPasswordHash(user)
}

/** External org-app auth — Consult/Audit only. */
export async function authenticateExternalUser (
  usernameOrEmail: string,
  password: string
): Promise<User> {
  const user = await findUserByUsernameOrEmail(usernameOrEmail)
  if (!user) {
    throw new ValidationError('Invalid username/email or password')
  }

  if (user.role !== 'Consult' && user.role !== 'Audit') {
    throw new ValidationError('This account is not authorized to access the organization app')
  }

  if (!user.is_approved) {
    throw new ValidationError('บัญชียังไม่ได้รับการอนุมัติ')
  }

  const isValid = await verifyPassword(password, user.password_hash)
  if (!isValid) {
    throw new ValidationError('Invalid username/email or password')
  }

  return stripPasswordHash(user)
}

/** Validate Consult/Audit invite hashcode for org-app. */
export async function validateInviteHashcode (hashcode: string): Promise<{
  id: string
  username: string
  email: string
  name: string
  avatar_url: string | null
  role: string
} | null> {
  const row = await queryOne<{
    id: string
    username: string
    email: string
    name: string
    avatar_url: string | null
    role: string
    invite_hashcode: string | null
  }>(
    `SELECT id, username, email, name, avatar_url, role, invite_hashcode
     FROM users
     WHERE invite_hashcode = $1 AND role IN ('Consult', 'Audit')`,
    [hashcode]
  )

  if (!row || row.invite_hashcode !== hashcode) {
    return null
  }

  if (row.role !== 'Consult' && row.role !== 'Audit') {
    return null
  }

  return {
    id: row.id,
    username: row.username,
    email: row.email,
    name: row.name,
    avatar_url: row.avatar_url,
    role: row.role,
  }
}
