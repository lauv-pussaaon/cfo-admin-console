import { NextRequest, NextResponse } from 'next/server'
import { ValidationError } from '@/lib/utils/errors'
import { getStaffUserFromRequest } from '@/lib/support-chat/auth'
import { markStaffRead } from '@/lib/api/support-chat'

export async function POST (request: NextRequest) {
  try {
    const user = await getStaffUserFromRequest(request)
    if (!user) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const body = await request.json()
    const organizationId = body.organization_id as string | undefined
    if (!organizationId) {
      return NextResponse.json({ error: 'organization_id is required' }, { status: 400 })
    }

    await markStaffRead(organizationId)
    return NextResponse.json({ success: true })
  } catch (error) {
    if (error instanceof ValidationError) {
      return NextResponse.json({ error: error.message }, { status: 400 })
    }
    console.error('POST /api/support/staff/mark-read error:', error)
    return NextResponse.json({ error: 'Failed to mark messages as read' }, { status: 500 })
  }
}

