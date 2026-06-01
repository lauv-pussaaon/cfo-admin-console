import { NextRequest } from 'next/server'
import { jsonResponse, withErrorHandling } from '@/lib/api/api-utils'
import { requireAuth } from '@/lib/api/auth-helper'
import { canManageOrganization } from '@/lib/permissions'
import {
  getOrganizationById,
  getOrganizationForAdminById,
  updateOrganization,
  deleteOrganization,
} from '@/lib/server/organizations'
import type { Organization } from '@/types/database'

export const GET = withErrorHandling(async (
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) => {
  const user = await requireAuth(request)
  const { id } = await params
  const { searchParams } = new URL(request.url)
  const view = searchParams.get('view')

  if (!(await canManageOrganization(user, id))) {
    throw new Error('Unauthorized')
  }

  if (view === 'admin') {
    const org = await getOrganizationForAdminById(id)
    if (!org) {
      return jsonResponse(null, 404)
    }
    return jsonResponse(org)
  }

  const org = await getOrganizationById(id)
  if (!org) {
    return jsonResponse(null, 404)
  }
  return jsonResponse(org)
})

export const PATCH = withErrorHandling(async (
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) => {
  const user = await requireAuth(request)
  const { id } = await params

  if (!(await canManageOrganization(user, id))) {
    throw new Error('Unauthorized')
  }

  const body = await request.json()
  const organization = await updateOrganization(id, body)
  return jsonResponse<Organization>(organization)
})

export const DELETE = withErrorHandling(async (
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) => {
  const user = await requireAuth(request)
  const { id } = await params

  if (!(await canManageOrganization(user, id))) {
    throw new Error('Unauthorized')
  }

  await deleteOrganization(id)
  return jsonResponse({ success: true })
})
