import { NextRequest } from 'next/server'
import { jsonResponse, withErrorHandling } from '@/lib/api/api-utils'
import { requireAuth } from '@/lib/api/auth-helper'
import { canManageOrganizations } from '@/lib/permissions'
import { getDealers } from '@/lib/server/organizations'

export const GET = withErrorHandling(async (request: NextRequest) => {
  const user = await requireAuth(request)
  if (!canManageOrganizations(user)) {
    throw new Error('Unauthorized')
  }

  const dealers = await getDealers()
  return jsonResponse(dealers)
})
