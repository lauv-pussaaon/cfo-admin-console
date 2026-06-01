import { NextRequest, NextResponse } from 'next/server'
import { insertUsageTracking } from '@/lib/server/analytics'
import { createCorsHeaders, handleOptionsRequest } from '@/lib/utils/cors'
import type { UsageTrackingPayload } from '@/types/tracking'

export async function OPTIONS (request: NextRequest) {
  return handleOptionsRequest(request)
}

export async function POST (request: NextRequest) {
  const origin = request.headers.get('origin')
  const headers = createCorsHeaders(origin)

  try {
    let body: UsageTrackingPayload
    try {
      body = await request.json()
    } catch {
      return NextResponse.json({ error: 'Invalid JSON payload' }, { status: 400, headers })
    }

    if (!body.domain || !body.page || !body.user_agent) {
      return NextResponse.json(
        { error: 'Missing required fields: domain, page, and user_agent are required' },
        { status: 400, headers }
      )
    }

    const forwardedFor = request.headers.get('x-forwarded-for')
    const realIp = request.headers.get('x-real-ip')
    const ipAddress = forwardedFor
      ? forwardedFor.split(',')[0].trim()
      : realIp || null

    await insertUsageTracking({
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
    })

    return NextResponse.json({ success: true }, { status: 200, headers })
  } catch (error) {
    console.error('Error in usage tracking endpoint:', error)
    return NextResponse.json(
      { success: false, error: 'Internal server error' },
      { status: 200, headers }
    )
  }
}
