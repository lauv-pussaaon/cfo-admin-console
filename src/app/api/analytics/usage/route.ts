import { NextRequest } from 'next/server'
import { errorResponse, jsonResponse, withErrorHandling } from '@/lib/api/api-utils'
import { requireAuth } from '@/lib/api/auth-helper'
import { isAdmin } from '@/lib/permissions'
import { getAnalyticsUsage } from '@/lib/server/analytics'

export const GET = withErrorHandling(async (request: NextRequest) => {
  const user = await requireAuth(request)
  if (!isAdmin(user)) {
    throw new Error('Unauthorized')
  }

  const { searchParams } = new URL(request.url)
  const domain = searchParams.get('domain')
  const startDate = searchParams.get('startDate')
  const endDate = searchParams.get('endDate')

  if (!startDate || !endDate) {
    return errorResponse('startDate and endDate are required', 400)
  }

  const startDateObj = new Date(startDate)
  const endDateObj = new Date(endDate)
  if (isNaN(startDateObj.getTime()) || isNaN(endDateObj.getTime())) {
    return errorResponse('Invalid date format. Use YYYY-MM-DD', 400)
  }

  const response = await getAnalyticsUsage(startDate, endDate, domain)
  return jsonResponse(response)
})
