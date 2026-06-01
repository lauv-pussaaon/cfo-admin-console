import { NextRequest } from 'next/server'
import { query, queryOne } from '@/lib/db'
import type { User } from './types'
import type { Organization } from '@/types/database'

const USER_COLUMNS = `id, username, email, name, avatar_url, role, is_approved, invite_hashcode, created_at`

function toUser (row: Record<string, unknown>): User {
  return {
    ...row,
    avatar_url: (row.avatar_url as string | null) ?? undefined,
    invite_hashcode: (row.invite_hashcode as string | null) ?? undefined,
    role: row.role as User['role'],
  } as User
}

function getUserIdFromRequest (request: NextRequest): string | null {
  return request.headers.get('x-admin-user-id') || request.headers.get('x-user-id')
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

/**
 * Get user by ID from users table (server-side only).
 */
export async function getUserByIdServer (userId: string): Promise<User | null> {
  if (!userId) return null

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

/**
 * Get authenticated admin user from request headers.
 * Reads x-admin-user-id (preferred) or x-user-id for parity.
 */
export async function getAuthenticatedUser (request: NextRequest): Promise<User | null> {
  const userId = getUserIdFromRequest(request)
  if (!userId) return null
  return getUserByIdServer(userId)
}

/**
 * Require authentication — throws if user not authenticated.
 */
export async function requireAuth (request: NextRequest): Promise<User> {
  const user = await getAuthenticatedUser(request)
  if (!user) {
    throw new Error('Unauthorized')
  }
  return user
}
