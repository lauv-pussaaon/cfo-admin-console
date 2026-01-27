import { NextRequest, NextResponse } from 'next/server'
import { supabase } from '@/lib/supabase'
import type { DomainResponse } from '@/types/analytics'

/**
 * GET /api/analytics/domains
 * Returns unique domains from app_usage_tracking table
 * Only accessible to Admin users (auth check should be added)
 */
export async function GET(request: NextRequest) {
  try {
    // TODO: Add Admin authentication check here
    // Verify user is Admin before allowing access

    // Query distinct domains from app_usage_tracking
    const { data, error } = await supabase
      .from('app_usage_tracking')
      .select('domain')
      .order('domain', { ascending: true })

    if (error) {
      console.error('Error fetching domains:', error)
      return NextResponse.json(
        { error: 'Failed to fetch domains' },
        { status: 500 }
      )
    }

    // Extract unique domains
    const uniqueDomains = Array.from(
      new Set((data || []).map((item) => item.domain).filter(Boolean))
    ).sort()

    const response: DomainResponse = {
      domains: uniqueDomains,
    }

    return NextResponse.json(response)
  } catch (error) {
    console.error('Error in domains endpoint:', error)
    return NextResponse.json(
      { error: 'Internal server error' },
      { status: 500 }
    )
  }
}
