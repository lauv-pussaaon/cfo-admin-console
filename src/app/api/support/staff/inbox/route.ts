import { NextRequest, NextResponse } from 'next/server'
import { getStaffUserFromRequest } from '@/lib/support-chat/auth'
import { getOrganizationsForAdmin } from '@/lib/api/organizations'
import { getStaffInboxEntries } from '@/lib/api/support-chat'

export async function GET (request: NextRequest) {
  try {
    const user = await getStaffUserFromRequest(request)
    if (!user) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const organizations = await getOrganizationsForAdmin()
    const organizationIds = organizations.map(org => org.id)
    const data = await getStaffInboxEntries(organizationIds)

    return NextResponse.json({ data })
  } catch (error) {
    console.error('GET /api/support/staff/inbox error:', error)
    return NextResponse.json({ error: 'Failed to fetch support inbox' }, { status: 500 })
  }
}
