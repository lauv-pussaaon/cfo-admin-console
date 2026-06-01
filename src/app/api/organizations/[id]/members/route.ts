import { NextRequest } from 'next/server'
import { jsonResponse, withErrorHandling } from '@/lib/api/api-utils'
import { requireAuth } from '@/lib/api/auth-helper'
import { canManageOrganization } from '@/lib/permissions'
import { ValidationError } from '@/lib/utils/errors'
import {
  getUsersByOrganization,
  addUserToOrganization,
  removeUserFromOrganization,
} from '@/lib/server/organizations'

export const GET = withErrorHandling(async (
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) => {
  const user = await requireAuth(request)
  const { id } = await params

  if (!(await canManageOrganization(user, id))) {
    throw new Error('Unauthorized')
  }

  const members = await getUsersByOrganization(id)
  return jsonResponse(members)
})

export const POST = withErrorHandling(async (
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) => {
  const user = await requireAuth(request)
  const { id } = await params

  if (!(await canManageOrganization(user, id))) {
    throw new Error('Unauthorized')
  }

  const body = await request.json()
  const { userId, assignedBy } = body
  if (!userId) {
    throw new ValidationError('userId is required')
  }

  const assignment = await addUserToOrganization(id, userId, assignedBy ?? user.id)
  return jsonResponse(assignment, 201)
})

export const DELETE = withErrorHandling(async (
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) => {
  const user = await requireAuth(request)
  const { id } = await params
  const { searchParams } = new URL(request.url)
  const userId = searchParams.get('userId')

  if (!(await canManageOrganization(user, id))) {
    throw new Error('Unauthorized')
  }

  if (!userId) {
    throw new ValidationError('userId query parameter is required')
  }

  await removeUserFromOrganization(id, userId)
  return jsonResponse({ success: true })
})
