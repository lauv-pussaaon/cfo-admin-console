import { NextRequest, NextResponse } from 'next/server'
import {
  createClientMessage,
  ensureOrganizationExists,
  listMessagesByOrganization,
} from '@/lib/api/support-chat'
import { ValidationError } from '@/lib/utils/errors'
import { isBridgeRequestAuthorized } from '@/lib/support-chat/auth'

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
    const messages = await listMessagesByOrganization(organizationId)
    return NextResponse.json({ data: messages })
  } catch (error) {
    if (error instanceof ValidationError) {
      return NextResponse.json({ error: error.message }, { status: 400 })
    }
    console.error('GET /api/external/support/messages error:', error)
    return NextResponse.json({ error: 'Failed to fetch support messages' }, { status: 500 })
  }
}

export async function POST (request: NextRequest) {
  try {
    if (!isBridgeRequestAuthorized(request)) {
      return NextResponse.json({ error: 'Unauthorized bridge request' }, { status: 401 })
    }

    const body = await request.json()
    const organizationId = body.organization_id as string | undefined
    const messageBody = body.body as string | undefined

    if (!organizationId || !messageBody) {
      return NextResponse.json({ error: 'organization_id and body are required' }, { status: 400 })
    }

    const created = await createClientMessage({
      organizationId,
      body: messageBody,
      clientUserId: body.client_user_id ?? null,
      clientDisplayName: body.client_display_name ?? null,
      clientAvatarUrl: body.client_avatar_url ?? null,
    })

    return NextResponse.json(created, { status: 201 })
  } catch (error) {
    if (error instanceof ValidationError) {
      return NextResponse.json({ error: error.message }, { status: 400 })
    }
    console.error('POST /api/external/support/messages error:', error)
    return NextResponse.json({ error: 'Failed to create support message' }, { status: 500 })
  }
}

