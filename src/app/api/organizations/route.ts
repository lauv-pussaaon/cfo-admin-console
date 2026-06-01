import { NextRequest } from 'next/server'
import { jsonResponse, withErrorHandling } from '@/lib/api/api-utils'
import { requireAuth } from '@/lib/api/auth-helper'
import { canManageOrganizations } from '@/lib/permissions'
import { ValidationError } from '@/lib/utils/errors'
import {
  getOrganizations,
  getOrganizationsWithStats,
  getOrganizationsForAdmin,
  getOrganizationsForDealer,
  getOrganizationsForConsultAudit,
  getUserOrganizations,
  createOrganization,
} from '@/lib/server/organizations'
import type { Organization } from '@/types/database'

export const GET = withErrorHandling(async (request: NextRequest) => {
  const user = await requireAuth(request)
  const { searchParams } = new URL(request.url)
  const view = searchParams.get('view') || 'all'
  const userId = searchParams.get('userId') || user.id

  if (view === 'user-orgs') {
    const targetUserId = searchParams.get('userId')
    if (!targetUserId) {
      throw new ValidationError('userId is required for user-orgs view')
    }
    const orgs = await getUserOrganizations(targetUserId)
    return jsonResponse(orgs)
  }

  if (!canManageOrganizations(user)) {
    throw new Error('Unauthorized')
  }

  switch (view) {
    case 'admin':
      return jsonResponse(await getOrganizationsForAdmin())
    case 'stats':
      return jsonResponse(await getOrganizationsWithStats())
    case 'dealer':
      return jsonResponse(await getOrganizationsForDealer(userId))
    case 'consult':
      return jsonResponse(await getOrganizationsForConsultAudit(userId))
    case 'all':
    default:
      return jsonResponse(await getOrganizations())
  }
})

export const POST = withErrorHandling(async (request: NextRequest) => {
  const user = await requireAuth(request)
  if (!canManageOrganizations(user)) {
    throw new Error('Unauthorized')
  }

  const body = await request.json()
  if (!body.name) {
    throw new ValidationError('name is required')
  }

  const organization = await createOrganization({
    ...body,
    created_by: body.created_by ?? user.id,
  })

  return jsonResponse<Organization>(organization, 201)
})
