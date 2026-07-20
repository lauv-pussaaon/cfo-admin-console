import { NextRequest, NextResponse } from 'next/server'
import { getStaffUserFromRequest } from '@/lib/support-chat/auth'
import { getOrganizationForAdminById } from '@/lib/api/organizations'
import { supabase } from '@/lib/supabase'

function domainFromAppUrl (appUrl: string | null | undefined): string | null {
  if (!appUrl?.trim()) return null
  try {
    const parsed = new URL(appUrl.includes('://') ? appUrl : `https://${appUrl}`)
    return parsed.hostname || null
  } catch {
    return null
  }
}

function toDateKey (value: string): string {
  return new Date(value).toISOString().split('T')[0]
}

export async function GET (request: NextRequest) {
  try {
    const user = await getStaffUserFromRequest(request)
    if (!user) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const organizationId = request.nextUrl.searchParams.get('organization_id')?.trim()
    if (!organizationId) {
      return NextResponse.json({ error: 'organization_id is required' }, { status: 400 })
    }

    const organization = await getOrganizationForAdminById(organizationId)
    if (!organization) {
      return NextResponse.json({ error: 'Organization not found' }, { status: 404 })
    }

    const domain = domainFromAppUrl(organization.app_url)
    if (!domain) {
      return NextResponse.json({
        data: {
          domain: null,
          unique_users: 0,
          total_page_views: 0,
          last_activity_date: null,
          days: 7,
        },
      })
    }

    const endDate = new Date()
    const startDate = new Date()
    startDate.setDate(startDate.getDate() - 6)
    startDate.setHours(0, 0, 0, 0)
    endDate.setHours(23, 59, 59, 999)

    const { data, error } = await supabase
      .from('app_usage_tracking')
      .select('created_at, user_id, session_id')
      .eq('domain', domain)
      .gte('created_at', startDate.toISOString())
      .lte('created_at', endDate.toISOString())
      .order('created_at', { ascending: false })

    if (error) {
      console.error('GET /api/support/staff/client-usage analytics error:', error)
      return NextResponse.json({ error: 'Failed to fetch client usage' }, { status: 500 })
    }

    const uniqueUsers = new Set<string>()
    let totalPageViews = 0
    let lastActivityDate: string | null = null

    for (const record of data ?? []) {
      totalPageViews += 1
      const userIdentifier = record.user_id || record.session_id
      if (userIdentifier) {
        uniqueUsers.add(String(userIdentifier))
      }
      if (!lastActivityDate && record.created_at) {
        lastActivityDate = toDateKey(record.created_at)
      }
    }

    return NextResponse.json({
      data: {
        domain,
        unique_users: uniqueUsers.size,
        total_page_views: totalPageViews,
        last_activity_date: lastActivityDate,
        days: 7,
      },
    })
  } catch (error) {
    console.error('GET /api/support/staff/client-usage error:', error)
    return NextResponse.json({ error: 'Failed to fetch client usage' }, { status: 500 })
  }
}
