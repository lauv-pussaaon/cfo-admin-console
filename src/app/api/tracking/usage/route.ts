import { NextRequest, NextResponse } from 'next/server'
import { supabase } from '@/lib/supabase'
import { createCorsHeaders, handleOptionsRequest } from '@/lib/utils/cors'
import type { UsageTrackingPayload } from '@/types/tracking'

// Handle OPTIONS preflight request
export async function OPTIONS(request: NextRequest) {
  return handleOptionsRequest(request)
}

/**
 * POST /api/tracking/usage
 * Accepts usage tracking data from org-app instances
 * Stores tracking data in app_usage_tracking table
 */
export async function POST(request: NextRequest) {
  try {
    const origin = request.headers.get('origin')
    const headers = createCorsHeaders(origin)

    // Parse request body
    let body: UsageTrackingPayload
    try {
      body = await request.json()
    } catch (error) {
      return NextResponse.json(
        { error: 'Invalid JSON payload' },
        { status: 400, headers }
      )
    }

    // Validate required fields
    if (!body.domain || !body.page || !body.user_agent) {
      return NextResponse.json(
        { error: 'Missing required fields: domain, page, and user_agent are required' },
        { status: 400, headers }
      )
    }

    // Extract IP address from headers
    // Check common proxy headers
    const forwardedFor = request.headers.get('x-forwarded-for')
    const realIp = request.headers.get('x-real-ip')
    const ipAddress = forwardedFor
      ? forwardedFor.split(',')[0].trim()
      : realIp || null

    // Prepare data for insertion
    const trackingData = {
      domain: body.domain,
      page: body.page,
      user_role: body.user_role || null,
      user_id: body.user_id || null,
      user_agent: body.user_agent,
      referrer: body.referrer || null,
      screen_width: body.screen_width || null,
      screen_height: body.screen_height || null,
      language: body.language || null,
      timezone: body.timezone || null,
      ip_address: ipAddress,
      session_id: body.session_id || null,
    }

    // Insert into database
    const { error } = await supabase
      .from('app_usage_tracking')
      .insert(trackingData)

    if (error) {
      console.error('Error inserting tracking data:', error)
      // Return 200 to prevent client retries, but log the error
      return NextResponse.json(
        { success: false, error: 'Failed to store tracking data' },
        { status: 200, headers }
      )
    }

    return NextResponse.json(
      { success: true },
      { status: 200, headers }
    )
  } catch (error) {
    console.error('Error in usage tracking endpoint:', error)
    const origin = request.headers.get('origin')
    const headers = createCorsHeaders(origin)
    // Return 200 to prevent client retries
    return NextResponse.json(
      { success: false, error: 'Internal server error' },
      { status: 200, headers }
    )
  }
}
