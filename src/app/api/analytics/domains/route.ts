import { NextRequest } from 'next/server'
import { jsonResponse, withErrorHandling } from '@/lib/api/api-utils'
import { requireAuth } from '@/lib/api/auth-helper'
import { isAdmin } from '@/lib/permissions'
import { getUniqueDomains } from '@/lib/server/analytics'

export const GET = withErrorHandling(async (request: NextRequest) => {
  const user = await requireAuth(request)
  if (!isAdmin(user)) {
    throw new Error('Unauthorized')
  }

  const response = await getUniqueDomains()
  return jsonResponse(response)
})
