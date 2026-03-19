import { NextRequest, NextResponse } from 'next/server'
import { getStaffUserFromRequest } from '@/lib/support-chat/auth'
import { getOrganizationsForAdmin } from '@/lib/api/organizations'
import { getUnreadFromClientMap } from '@/lib/api/support-chat'

export async function GET (request: NextRequest) {
  try {
    const user = await getStaffUserFromRequest(request)
    if (!user) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const organizations = await getOrganizationsForAdmin()
    const organizationIds = organizations.map(org => org.id)
    const unreadByOrganization = await getUnreadFromClientMap(organizationIds)

    return NextResponse.json({
      data: organizations.map(org => ({
        organization_id: org.id,
        has_unread_from_client: unreadByOrganization[org.id] ?? false,
      })),
    })
  } catch (error) {
    console.error('GET /api/support/staff/inbox error:', error)
    return NextResponse.json({ error: 'Failed to fetch support inbox' }, { status: 500 })
  }
}

