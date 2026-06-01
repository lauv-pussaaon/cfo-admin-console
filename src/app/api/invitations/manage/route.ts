import { NextRequest } from 'next/server'
import { jsonResponse, withErrorHandling } from '@/lib/api/api-utils'
import { requireAuth } from '@/lib/api/auth-helper'
import { canManageOrganizations } from '@/lib/permissions'
import { ValidationError } from '@/lib/utils/errors'
import {
  createInvitation,
  getInvitationsByOrganization,
} from '@/lib/server/invitations'

export const GET = withErrorHandling(async (request: NextRequest) => {
  await requireAuth(request)
  const { searchParams } = new URL(request.url)
  const organizationId = searchParams.get('organizationId')

  if (!organizationId) {
    throw new ValidationError('organizationId is required')
  }

  const invitations = await getInvitationsByOrganization(organizationId)
  return jsonResponse(invitations)
})

export const POST = withErrorHandling(async (request: NextRequest) => {
  const user = await requireAuth(request)
  if (!canManageOrganizations(user)) {
    throw new Error('Unauthorized')
  }

  const body = await request.json()
  const { organizationId, email, createdBy } = body

  if (!organizationId || !email) {
    throw new ValidationError('organizationId and email are required')
  }

  const invitation = await createInvitation(
    organizationId,
    email,
    createdBy ?? user.id
  )

  return jsonResponse(invitation, 201)
})
