import { query, queryOne } from '@/lib/db'
import type { Organization, OrganizationInvitation } from '@/types/database'
import { handleSupabaseError, ValidationError, NotFoundError } from '@/lib/utils/errors'

const INVITATION_ORG_JOIN = `
  o.id AS org_id, o.name AS org_name, o.code AS org_code, o.description AS org_description,
  o.app_url AS org_app_url, o.is_initialized AS org_is_initialized,
  o.initialized_at AS org_initialized_at, o.factory_admin_email AS org_factory_admin_email,
  o.account_type AS org_account_type, o.created_by AS org_created_by,
  o.created_at AS org_created_at, o.updated_at AS org_updated_at
`

function mapInvitationWithOrganization (row: Record<string, unknown>): OrganizationInvitation {
  const hasOrg = row.org_id != null

  return {
    id: row.id as string,
    organization_id: row.organization_id as string,
    email: row.email as string,
    token: row.token as string,
    status: row.status as OrganizationInvitation['status'],
    role: row.role as string,
    created_by: (row.created_by as string | null) ?? null,
    created_at: row.created_at as string,
    expires_at: row.expires_at as string,
    accepted_at: (row.accepted_at as string | null) ?? null,
    organization: hasOrg
      ? {
          id: row.org_id as string,
          name: row.org_name as string,
          code: row.org_code as string | null,
          description: row.org_description as string | null,
          app_url: row.org_app_url as string | null,
          is_initialized: row.org_is_initialized as boolean,
          initialized_at: row.org_initialized_at as string | null,
          factory_admin_email: row.org_factory_admin_email as string | null,
          account_type: row.org_account_type as Organization['account_type'],
          created_by: row.org_created_by as string | null,
          created_at: row.org_created_at as string,
          updated_at: row.org_updated_at as string | null,
        }
      : undefined,
  }
}

function generateInvitationToken (): string {
  return crypto.randomUUID()
}

export async function createInvitation (
  organizationId: string,
  email: string,
  createdBy: string | null
): Promise<OrganizationInvitation> {
  await query(
    `DELETE FROM organization_invitations
     WHERE organization_id = $1 AND email = $2 AND status = 'pending'`,
    [organizationId, email]
  )

  const token = generateInvitationToken()
  const expiresAt = new Date()
  expiresAt.setDate(expiresAt.getDate() + 7)

  try {
    const row = await queryOne<Record<string, unknown>>(
      `INSERT INTO organization_invitations
         (organization_id, email, token, status, role, created_by, expires_at)
       VALUES ($1, $2, $3, 'pending', 'Factory Admin', $4, $5)
       RETURNING *`,
      [organizationId, email, token, createdBy, expiresAt.toISOString()]
    )

    if (!row) {
      throw new NotFoundError('Failed to create invitation')
    }

    const org = await queryOne<Record<string, unknown>>(
      `SELECT * FROM organizations WHERE id = $1`,
      [organizationId]
    )

    return {
      ...mapInvitationWithOrganization({ ...row, org_id: org?.id }),
      organization: org ? (org as unknown as Organization) : undefined,
    }
  } catch (error) {
    handleSupabaseError(error)
  }
}

export async function getInvitationByToken (token: string): Promise<OrganizationInvitation | null> {
  const row = await queryOne<Record<string, unknown>>(
    `SELECT i.*, ${INVITATION_ORG_JOIN}
     FROM organization_invitations i
     LEFT JOIN organizations o ON o.id = i.organization_id
     WHERE i.token = $1`,
    [token]
  )

  if (!row) return null

  const invitation = mapInvitationWithOrganization(row)

  if (new Date(invitation.expires_at) < new Date()) {
    if (invitation.status === 'pending') {
      await query(
        `UPDATE organization_invitations SET status = 'expired' WHERE id = $1`,
        [invitation.id]
      )
    }
    return { ...invitation, status: 'expired' }
  }

  return invitation
}

export async function getInvitationsByOrganization (
  organizationId: string
): Promise<OrganizationInvitation[]> {
  const { rows } = await query<Record<string, unknown>>(
    `SELECT i.*, ${INVITATION_ORG_JOIN}
     FROM organization_invitations i
     LEFT JOIN organizations o ON o.id = i.organization_id
     WHERE i.organization_id = $1
     ORDER BY i.created_at DESC`,
    [organizationId]
  )

  return rows.map(mapInvitationWithOrganization)
}

export async function updateInvitationStatus (
  token: string,
  status: 'accepted' | 'expired',
  acceptedAt?: string
): Promise<OrganizationInvitation> {
  const accepted_at = status === 'accepted' ? (acceptedAt || new Date().toISOString()) : null

  try {
    const row = await queryOne<Record<string, unknown>>(
      `UPDATE organization_invitations
       SET status = $1, accepted_at = $2
       WHERE token = $3
       RETURNING *`,
      [status, accepted_at, token]
    )

    if (!row) {
      throw new ValidationError('ไม่พบคำเชิญ')
    }

    const org = await queryOne<Record<string, unknown>>(
      `SELECT * FROM organizations WHERE id = $1`,
      [row.organization_id]
    )

    return {
      ...mapInvitationWithOrganization({
        ...row,
        org_id: org?.id,
        org_name: org?.name,
        org_code: org?.code,
        org_description: org?.description,
        org_app_url: org?.app_url,
        org_is_initialized: org?.is_initialized,
        org_initialized_at: org?.initialized_at,
        org_factory_admin_email: org?.factory_admin_email,
        org_account_type: org?.account_type,
        org_created_by: org?.created_by,
        org_created_at: org?.created_at,
        org_updated_at: org?.updated_at,
      }),
    }
  } catch (error) {
    if (error instanceof ValidationError) throw error
    handleSupabaseError(error)
  }
}
