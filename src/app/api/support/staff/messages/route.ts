import { NextRequest, NextResponse } from 'next/server'
import { ValidationError } from '@/lib/utils/errors'
import { getStaffUserFromRequest } from '@/lib/support-chat/auth'
import {
  createStaffMessage,
  ensureOrganizationExists,
  listMessagesByOrganization,
} from '@/lib/api/support-chat'

export async function GET (request: NextRequest) {
  try {
    const user = await getStaffUserFromRequest(request)
    if (!user) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const organizationId = request.nextUrl.searchParams.get('organization_id')
    if (!organizationId) {
      return NextResponse.json({ error: 'organization_id is required' }, { status: 400 })
    }

    await ensureOrganizationExists(organizationId)
    const data = await listMessagesByOrganization(organizationId)
    return NextResponse.json({ data })
  } catch (error) {
    if (error instanceof ValidationError) {
      return NextResponse.json({ error: error.message }, { status: 400 })
    }
    console.error('GET /api/support/staff/messages error:', error)
    return NextResponse.json({ error: 'Failed to fetch support messages' }, { status: 500 })
  }
}

export async function POST (request: NextRequest) {
  try {
    const user = await getStaffUserFromRequest(request)
    if (!user) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const body = await request.json()
    const organizationId = body.organization_id as string | undefined
    const messageBody = body.body as string | undefined
    if (!organizationId || !messageBody) {
      return NextResponse.json({ error: 'organization_id and body are required' }, { status: 400 })
    }

    const created = await createStaffMessage(organizationId, messageBody, user.id)
    return NextResponse.json(created, { status: 201 })
  } catch (error) {
    if (error instanceof ValidationError) {
      return NextResponse.json({ error: error.message }, { status: 400 })
    }
    console.error('POST /api/support/staff/messages error:', error)
    return NextResponse.json({ error: 'Failed to send support message' }, { status: 500 })
  }
}

