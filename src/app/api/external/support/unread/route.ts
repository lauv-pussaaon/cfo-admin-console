import { NextRequest, NextResponse } from 'next/server'
import { isBridgeRequestAuthorized } from '@/lib/support-chat/auth'
import { ensureOrganizationExists, getConversationUnreadFlags } from '@/lib/api/support-chat'
import { ValidationError } from '@/lib/utils/errors'

export async function GET (request: NextRequest) {
  try {
    if (!isBridgeRequestAuthorized(request)) {
      return NextResponse.json({ error: 'Unauthorized bridge request' }, { status: 401 })
    }

    const organizationId = request.nextUrl.searchParams.get('organization_id')
    if (!organizationId) {
      return NextResponse.json({ error: 'organization_id is required' }, { status: 400 })
    }

    await ensureOrganizationExists(organizationId)
    const unread = await getConversationUnreadFlags(organizationId)
    return NextResponse.json(unread)
  } catch (error) {
    if (error instanceof ValidationError) {
      return NextResponse.json({ error: error.message }, { status: 400 })
    }
    console.error('GET /api/external/support/unread error:', error)
    return NextResponse.json({ error: 'Failed to fetch unread flags' }, { status: 500 })
  }
}

