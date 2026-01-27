import { NextRequest, NextResponse } from 'next/server'
import { supabase } from '@/lib/supabase'
import type { AnalyticsResponse } from '@/types/analytics'

/**
 * GET /api/analytics/usage
 * Returns aggregated analytics data grouped by date
 * Query parameters:
 *   - domain (optional): Filter by domain
 *   - startDate (required): Start date in YYYY-MM-DD format
 *   - endDate (required): End date in YYYY-MM-DD format
 * Only accessible to Admin users (auth check should be added)
 */
export async function GET(request: NextRequest) {
  try {
    // TODO: Add Admin authentication check here
    // Verify user is Admin before allowing access

    const { searchParams } = new URL(request.url)
    const domain = searchParams.get('domain')
    const startDate = searchParams.get('startDate')
    const endDate = searchParams.get('endDate')

    // Validate required parameters
    if (!startDate || !endDate) {
      return NextResponse.json(
        { error: 'startDate and endDate are required' },
        { status: 400 }
      )
    }

    // Validate date format
    const startDateObj = new Date(startDate)
    const endDateObj = new Date(endDate)

    if (isNaN(startDateObj.getTime()) || isNaN(endDateObj.getTime())) {
      return NextResponse.json(
        { error: 'Invalid date format. Use YYYY-MM-DD' },
        { status: 400 }
      )
    }

    // Set end date to end of day (inclusive)
    const endDateEndOfDay = new Date(endDateObj)
    endDateEndOfDay.setHours(23, 59, 59, 999)

    // Build query
    let query = supabase
      .from('app_usage_tracking')
      .select('created_at, user_id, session_id, domain')

    // Apply domain filter if provided
    if (domain) {
      query = query.eq('domain', domain)
    }

    // Apply date range filter
    query = query
      .gte('created_at', startDateObj.toISOString())
      .lte('created_at', endDateEndOfDay.toISOString())

    const { data, error } = await query.order('created_at', { ascending: true })

    if (error) {
      console.error('Error fetching analytics data:', error)
      return NextResponse.json(
        { error: 'Failed to fetch analytics data' },
        { status: 500 }
      )
    }

    // Aggregate data by date
    const aggregatedData = new Map<string, { uniqueUsers: Set<string>, totalPageViews: number }>()

    data?.forEach((record) => {
      const date = new Date(record.created_at).toISOString().split('T')[0] // YYYY-MM-DD
      
      if (!aggregatedData.has(date)) {
        aggregatedData.set(date, {
          uniqueUsers: new Set<string>(),
          totalPageViews: 0,
        })
      }

      const dayData = aggregatedData.get(date)!
      dayData.totalPageViews++

      // Use user_id if available, otherwise use session_id
      const userIdentifier = record.user_id || record.session_id
      if (userIdentifier) {
        dayData.uniqueUsers.add(String(userIdentifier))
      }
    })

    // Convert to array format
    const result = Array.from(aggregatedData.entries())
      .map(([date, data]) => ({
        date,
        uniqueUsers: data.uniqueUsers.size,
        totalPageViews: data.totalPageViews,
      }))
      .sort((a, b) => a.date.localeCompare(b.date))

    const response: AnalyticsResponse = {
      data: result,
    }

    return NextResponse.json(response)
  } catch (error) {
    console.error('Error in usage analytics endpoint:', error)
    return NextResponse.json(
      { error: 'Internal server error' },
      { status: 500 }
    )
  }
}
