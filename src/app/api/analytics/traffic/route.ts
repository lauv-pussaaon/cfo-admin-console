import { NextRequest, NextResponse } from 'next/server'
import { supabase } from '@/lib/supabase'
import type { TrafficResponse } from '@/types/analytics'

/**
 * GET /api/analytics/traffic
 * Returns granular traffic records (raw page views)
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
      .select('created_at, domain, user_role, page')

    // Apply domain filter if provided
    if (domain) {
      query = query.eq('domain', domain)
    }

    // Apply date range filter
    query = query
      .gte('created_at', startDateObj.toISOString())
      .lte('created_at', endDateEndOfDay.toISOString())

    // Order by created_at DESC (latest first)
    const { data, error } = await query.order('created_at', { ascending: false })

    if (error) {
      console.error('Error fetching traffic data:', error)
      return NextResponse.json(
        { error: 'Failed to fetch traffic data' },
        { status: 500 }
      )
    }

    // Format data for response
    const result = (data || []).map((record) => ({
      date: new Date(record.created_at).toISOString(),
      domain: record.domain,
      user_role: record.user_role || null,
      page: record.page,
    }))

    const response: TrafficResponse = {
      data: result,
    }

    return NextResponse.json(response)
  } catch (error) {
    console.error('Error in traffic analytics endpoint:', error)
    return NextResponse.json(
      { error: 'Internal server error' },
      { status: 500 }
    )
  }
}
