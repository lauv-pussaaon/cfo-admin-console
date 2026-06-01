import { NextRequest } from 'next/server'
import { jsonResponse, withErrorHandling } from '@/lib/api/api-utils'
import { requireAuth } from '@/lib/api/auth-helper'
import { canManageOrganization } from '@/lib/permissions'
import {
  getDealerByOrganization,
  setDealerForOrganization,
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

  const dealer = await getDealerByOrganization(id)
  return jsonResponse(dealer)
})

export const PUT = withErrorHandling(async (
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) => {
  const user = await requireAuth(request)
  const { id } = await params

  if (!(await canManageOrganization(user, id))) {
    throw new Error('Unauthorized')
  }

  const body = await request.json()
  const { dealerId, assignedBy } = body

  await setDealerForOrganization(id, dealerId ?? null, assignedBy ?? user.id)
  return jsonResponse({ success: true })
})
