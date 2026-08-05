import { NextRequest, NextResponse } from 'next/server'
import {
  ensureConsultAuditAssignedToOrganization,
  removeConsultAuditFromOrganization,
} from '@/lib/api/external-assign-organization'
import { isBridgeRequestAuthorized } from '@/lib/support-chat/auth'
import { ValidationError } from '@/lib/utils/errors'

function parseMembershipBody (body: unknown): { userId: string; organizationId: string } {
  if (!body || typeof body !== 'object') {
    throw new ValidationError('Request body is required')
  }
  const record = body as Record<string, unknown>
  const userId = typeof record.user_id === 'string' ? record.user_id.trim() : ''
  const organizationId =
    typeof record.organization_id === 'string' ? record.organization_id.trim() : ''
  if (!userId) {
    throw new ValidationError('user_id is required')
  }
  if (!organizationId) {
    throw new ValidationError('organization_id is required')
  }
  return { userId, organizationId }
}

/**
 * POST /api/external/assign-organization
 * Bridge: record Consult/Audit membership in user_organizations after client invite.
 */
export async function POST (request: NextRequest) {
  try {
    if (!isBridgeRequestAuthorized(request)) {
      return NextResponse.json({ error: 'Unauthorized bridge request' }, { status: 401 })
    }

    const { userId, organizationId } = parseMembershipBody(await request.json())
    const result = await ensureConsultAuditAssignedToOrganization(userId, organizationId)
    return NextResponse.json({ data: result })
  } catch (error) {
    if (error instanceof ValidationError) {
      return NextResponse.json({ error: error.message }, { status: 400 })
    }
    console.error('POST /api/external/assign-organization error:', error)
    return NextResponse.json({ error: 'Failed to assign organization' }, { status: 500 })
  }
}

/**
 * DELETE /api/external/assign-organization
 * Bridge: remove Consult/Audit membership when removed from client org.
 */
export async function DELETE (request: NextRequest) {
  try {
    if (!isBridgeRequestAuthorized(request)) {
      return NextResponse.json({ error: 'Unauthorized bridge request' }, { status: 401 })
    }

    const { userId, organizationId } = parseMembershipBody(await request.json())
    const result = await removeConsultAuditFromOrganization(userId, organizationId)
    return NextResponse.json({ data: result })
  } catch (error) {
    if (error instanceof ValidationError) {
      return NextResponse.json({ error: error.message }, { status: 400 })
    }
    console.error('DELETE /api/external/assign-organization error:', error)
    return NextResponse.json({ error: 'Failed to unassign organization' }, { status: 500 })
  }
}
