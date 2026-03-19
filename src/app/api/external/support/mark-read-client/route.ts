import { NextRequest, NextResponse } from 'next/server'
import { ValidationError } from '@/lib/utils/errors'
import { isBridgeRequestAuthorized } from '@/lib/support-chat/auth'
import { markClientRead } from '@/lib/api/support-chat'

export async function POST (request: NextRequest) {
  try {
    if (!isBridgeRequestAuthorized(request)) {
      return NextResponse.json({ error: 'Unauthorized bridge request' }, { status: 401 })
    }

    const body = await request.json()
    const organizationId = body.organization_id as string | undefined
    if (!organizationId) {
      return NextResponse.json({ error: 'organization_id is required' }, { status: 400 })
    }

    await markClientRead(organizationId)
    return NextResponse.json({ success: true })
  } catch (error) {
    if (error instanceof ValidationError) {
      return NextResponse.json({ error: error.message }, { status: 400 })
    }
    console.error('POST /api/external/support/mark-read-client error:', error)
    return NextResponse.json({ error: 'Failed to mark messages as read' }, { status: 500 })
  }
}

