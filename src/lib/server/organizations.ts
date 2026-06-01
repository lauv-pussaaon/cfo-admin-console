import { query, queryOne } from '@/lib/db'
import type {
  Organization,
  UserOrganization,
} from '@/types/database'
import type { AccountType } from '@/types/account-types'
import { DEFAULT_ACCOUNT_TYPE } from '@/types/account-types'
import { handleSupabaseError, ValidationError, NotFoundError } from '@/lib/utils/errors'
import type { User } from '@/lib/api/types'

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

const ORG_COLUMNS = `o.id, o.name, o.code, o.description, o.app_url, o.is_initialized,
  o.initialized_at, o.factory_admin_email, o.account_type, o.created_by, o.created_at, o.updated_at`

function mapOrganization (row: Record<string, unknown>): Organization {
  return row as unknown as Organization
}

async function countUsersByOrganization (organizationIds: string[]): Promise<Map<string, number>> {
  const userCountMap = new Map<string, number>()
  if (organizationIds.length === 0) return userCountMap

  const { rows } = await query<{ organization_id: string; count: string }>(
    `SELECT organization_id, COUNT(*)::text AS count
     FROM user_organizations
     WHERE organization_id = ANY($1::uuid[])
     GROUP BY organization_id`,
    [organizationIds]
  )

  for (const row of rows) {
    userCountMap.set(row.organization_id, parseInt(row.count, 10))
  }

  return userCountMap
}

async function fetchDealersByOrganization (organizationIds: string[]): Promise<Map<string, User>> {
  const dealersMap = new Map<string, User>()
  if (organizationIds.length === 0) return dealersMap

  const { rows } = await query<Record<string, unknown> & { organization_id: string }>(
    `SELECT uo.organization_id, u.id, u.username, u.email, u.name, u.avatar_url, u.role, u.is_approved, u.created_at
     FROM user_organizations uo
     JOIN users u ON u.id = uo.user_id
     WHERE uo.organization_id = ANY($1::uuid[])
       AND u.role = 'Dealer'`,
    [organizationIds]
  )

  for (const row of rows) {
    const { organization_id, ...userFields } = row
    if (!dealersMap.has(organization_id)) {
      dealersMap.set(organization_id, {
        ...userFields,
        avatar_url: (userFields.avatar_url as string | null) ?? undefined,
        role: userFields.role as User['role'],
      } as User)
    }
  }

  return dealersMap
}

export async function getOrganizations (): Promise<Organization[]> {
  const { rows } = await query<Record<string, unknown>>(
    `SELECT * FROM organizations ORDER BY created_at DESC`
  )
  return rows.map(mapOrganization)
}

export async function getOrganizationsWithStats (): Promise<OrganizationWithStats[]> {
  const organizations = await getOrganizations()
  if (organizations.length === 0) return []

  const userCountMap = await countUsersByOrganization(organizations.map((o) => o.id))

  return organizations.map((org) => ({
    ...org,
    userCount: userCountMap.get(org.id) || 0,
  }))
}

export async function getOrganizationsForAdmin (): Promise<OrganizationWithCreator[]> {
  const { rows } = await query<Record<string, unknown> & {
    creator_id: string | null
    creator_name: string | null
    creator_email: string | null
    creator_role: string | null
  }>(
    `SELECT ${ORG_COLUMNS},
       c.id AS creator_id, c.name AS creator_name, c.email AS creator_email, c.role AS creator_role
     FROM organizations o
     LEFT JOIN users c ON c.id = o.created_by
     ORDER BY o.created_at DESC`
  )

  if (rows.length === 0) return []

  const organizationIds = rows.map((r) => r.id as string)
  const [userCountMap, dealersMap] = await Promise.all([
    countUsersByOrganization(organizationIds),
    fetchDealersByOrganization(organizationIds),
  ])

  return rows.map((row) => {
    const org = mapOrganization(row)
    const dealer = dealersMap.get(org.id)
    return {
      ...org,
      userCount: userCountMap.get(org.id) || 0,
      creator: row.creator_id
        ? {
            id: row.creator_id,
            name: row.creator_name!,
            email: row.creator_email!,
            role: row.creator_role!,
          }
        : null,
      dealer: dealer
        ? { id: dealer.id, name: dealer.name, email: dealer.email }
        : null,
    }
  })
}

async function getOrganizationsForUserWithStats (userId: string): Promise<OrganizationWithStats[]> {
  const { rows } = await query<Record<string, unknown>>(
    `SELECT ${ORG_COLUMNS}
     FROM user_organizations uo
     JOIN organizations o ON o.id = uo.organization_id
     WHERE uo.user_id = $1
     ORDER BY uo.assigned_at DESC`,
    [userId]
  )

  if (rows.length === 0) return []

  const organizations = rows.map(mapOrganization)
  const userCountMap = await countUsersByOrganization(organizations.map((o) => o.id))

  return organizations.map((org) => ({
    ...org,
    userCount: userCountMap.get(org.id) || 0,
  }))
}

export async function getOrganizationsForDealer (userId: string): Promise<OrganizationWithStats[]> {
  return getOrganizationsForUserWithStats(userId)
}

export async function getOrganizationsForConsultAudit (userId: string): Promise<OrganizationWithStats[]> {
  return getOrganizationsForUserWithStats(userId)
}

export async function getOrganizationById (id: string): Promise<Organization | null> {
  const row = await queryOne<Record<string, unknown>>(
    `SELECT * FROM organizations WHERE id = $1`,
    [id]
  )
  return row ? mapOrganization(row) : null
}

export async function getOrganizationForAdminById (id: string): Promise<OrganizationWithCreator | null> {
  const row = await queryOne<Record<string, unknown> & {
    creator_id: string | null
    creator_name: string | null
    creator_email: string | null
    creator_role: string | null
  }>(
    `SELECT ${ORG_COLUMNS},
       c.id AS creator_id, c.name AS creator_name, c.email AS creator_email, c.role AS creator_role
     FROM organizations o
     LEFT JOIN users c ON c.id = o.created_by
     WHERE o.id = $1`,
    [id]
  )

  if (!row) return null

  const org = mapOrganization(row)
  const [userCountMap, dealersMap] = await Promise.all([
    countUsersByOrganization([id]),
    fetchDealersByOrganization([id]),
  ])
  const dealer = dealersMap.get(id)

  return {
    ...org,
    userCount: userCountMap.get(id) || 0,
    creator: row.creator_id
      ? {
          id: row.creator_id,
          name: row.creator_name!,
          email: row.creator_email!,
          role: row.creator_role!,
        }
      : null,
    dealer: dealer
      ? { id: dealer.id, name: dealer.name, email: dealer.email }
      : null,
  }
}

export async function createOrganization (data: {
  name: string
  code?: string | null
  description?: string | null
  app_url?: string | null
  factory_admin_email?: string | null
  account_type?: AccountType
  created_by?: string | null
  assignedUserId?: string | null
}): Promise<Organization> {
  try {
    const row = await queryOne<Record<string, unknown>>(
      `INSERT INTO organizations (name, code, description, app_url, factory_admin_email, account_type, is_initialized, created_by)
       VALUES ($1, $2, $3, $4, $5, $6, FALSE, $7)
       RETURNING *`,
      [
        data.name,
        data.code || null,
        data.description || null,
        data.app_url || null,
        data.factory_admin_email || null,
        data.account_type ?? DEFAULT_ACCOUNT_TYPE,
        data.created_by || null,
      ]
    )

    if (!row) {
      throw new NotFoundError('Failed to create organization')
    }

    const organization = mapOrganization(row)

    if (data.assignedUserId && organization.id) {
      try {
        await addUserToOrganization(organization.id, data.assignedUserId, data.created_by || null)
      } catch (error) {
        console.error('Failed to auto-assign user to organization:', error)
      }
    }

    return organization
  } catch (error) {
    handleSupabaseError(error)
  }
}

export async function updateOrganization (
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
  const updateData: Record<string, unknown> = { ...updates }
  if (updates.is_initialized === true && !updates.initialized_at) {
    updateData.initialized_at = new Date().toISOString()
  }

  const setClauses: string[] = ['updated_at = NOW()']
  const params: unknown[] = []
  let paramIndex = 1

  for (const [key, value] of Object.entries(updateData)) {
    setClauses.push(`${key} = $${paramIndex++}`)
    params.push(value)
  }

  params.push(id)

  try {
    const row = await queryOne<Record<string, unknown>>(
      `UPDATE organizations SET ${setClauses.join(', ')}
       WHERE id = $${paramIndex}
       RETURNING *`,
      params
    )

    if (!row) {
      throw new NotFoundError('Organization not found')
    }

    return mapOrganization(row)
  } catch (error) {
    handleSupabaseError(error)
  }
}

export async function deleteOrganization (id: string): Promise<void> {
  try {
    await query(`DELETE FROM user_organizations WHERE organization_id = $1`, [id])
    const { rowCount } = await query(`DELETE FROM organizations WHERE id = $1`, [id])
    if (rowCount === 0) {
      throw new NotFoundError('Organization not found')
    }
  } catch (error) {
    if (error instanceof NotFoundError) throw error
    handleSupabaseError(error)
  }
}

export async function getUserOrganizations (userId: string): Promise<UserOrganization[]> {
  const { rows } = await query<Record<string, unknown> & { org_id: string }>(
    `SELECT uo.*,
       o.id AS org_id, o.name AS org_name, o.code AS org_code, o.description AS org_description,
       o.app_url AS org_app_url, o.is_initialized AS org_is_initialized,
       o.initialized_at AS org_initialized_at, o.factory_admin_email AS org_factory_admin_email,
       o.account_type AS org_account_type, o.created_by AS org_created_by,
       o.created_at AS org_created_at, o.updated_at AS org_updated_at
     FROM user_organizations uo
     JOIN organizations o ON o.id = uo.organization_id
     WHERE uo.user_id = $1
     ORDER BY uo.assigned_at DESC`,
    [userId]
  )

  return rows.map((row) => ({
    id: row.id as string,
    user_id: row.user_id as string,
    organization_id: row.organization_id as string,
    assigned_at: row.assigned_at as string,
    assigned_by: (row.assigned_by as string | null) ?? null,
    organization: {
      id: row.org_id,
      name: row.org_name as string,
      code: row.org_code as string | null,
      description: row.org_description as string | null,
      app_url: row.org_app_url as string | null,
      is_initialized: row.org_is_initialized as boolean,
      initialized_at: row.org_initialized_at as string | null,
      factory_admin_email: row.org_factory_admin_email as string | null,
      account_type: row.org_account_type as AccountType,
      created_by: row.org_created_by as string | null,
      created_at: row.org_created_at as string,
      updated_at: row.org_updated_at as string | null,
    },
  }))
}

export async function getUsersByOrganization (organizationId: string): Promise<User[]> {
  const { rows } = await query<Record<string, unknown>>(
    `SELECT u.*
     FROM user_organizations uo
     JOIN users u ON u.id = uo.user_id
     WHERE uo.organization_id = $1`,
    [organizationId]
  )

  return rows.map((row) => ({
    ...row,
    avatar_url: (row.avatar_url as string | null) ?? undefined,
    role: row.role as User['role'],
  })) as User[]
}

export async function addUserToOrganization (
  organizationId: string,
  userId: string,
  assignedBy?: string | null
): Promise<UserOrganization> {
  const existing = await queryOne<{ id: string }>(
    `SELECT id FROM user_organizations WHERE user_id = $1 AND organization_id = $2`,
    [userId, organizationId]
  )

  if (existing) {
    throw new ValidationError('ผู้ใช้ถูกกำหนดให้กับองค์กรนี้แล้ว')
  }

  try {
    const row = await queryOne<Record<string, unknown>>(
      `INSERT INTO user_organizations (user_id, organization_id, assigned_by)
       VALUES ($1, $2, $3)
       RETURNING *`,
      [userId, organizationId, assignedBy || null]
    )

    if (!row) {
      throw new NotFoundError('Failed to assign user to organization')
    }

    const org = await getOrganizationById(organizationId)

    return {
      id: row.id as string,
      user_id: row.user_id as string,
      organization_id: row.organization_id as string,
      assigned_at: row.assigned_at as string,
      assigned_by: (row.assigned_by as string | null) ?? null,
      organization: org ?? undefined,
    }
  } catch (error) {
    handleSupabaseError(error)
  }
}

export async function removeUserFromOrganization (
  organizationId: string,
  userId: string
): Promise<void> {
  try {
    const { rowCount } = await query(
      `DELETE FROM user_organizations WHERE user_id = $1 AND organization_id = $2`,
      [userId, organizationId]
    )
    if (rowCount === 0) {
      throw new NotFoundError('User organization assignment not found')
    }
  } catch (error) {
    if (error instanceof NotFoundError) throw error
    handleSupabaseError(error)
  }
}

export async function getDealers (): Promise<User[]> {
  const { rows } = await query<Record<string, unknown>>(
    `SELECT id, username, email, name, avatar_url, role, is_approved, created_at
     FROM users
     WHERE role = 'Dealer'
     ORDER BY name ASC`
  )

  return rows.map((row) => ({
    ...row,
    avatar_url: (row.avatar_url as string | null) ?? undefined,
    role: row.role as User['role'],
  })) as User[]
}

export async function getDealerByOrganization (organizationId: string): Promise<User | null> {
  const users = await getUsersByOrganization(organizationId)
  return users.find((user) => user.role === 'Dealer') || null
}

export async function setDealerForOrganization (
  organizationId: string,
  dealerId: string | null,
  assignedBy: string | null
): Promise<void> {
  const currentDealer = await getDealerByOrganization(organizationId)

  if (currentDealer) {
    await removeUserFromOrganization(organizationId, currentDealer.id)
  }

  if (dealerId) {
    await addUserToOrganization(organizationId, dealerId, assignedBy)
  }
}
