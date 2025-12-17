import { NextRequest, NextResponse } from 'next/server'
import { invitationService } from '@/lib/services/invitation.service'
import { ValidationError } from '@/lib/utils/errors'
import { createCorsHeaders, handleOptionsRequest } from '@/lib/utils/cors'

// Prevent Next.js from caching or optimizing this route
export const dynamic = 'force-dynamic'
export const runtime = 'nodejs'

// Handle OPTIONS preflight request
// Critical: This must return 204 directly without any redirects
export async function OPTIONS (request: NextRequest) {
  return handleOptionsRequest(request)
}

export async function GET (
  request: NextRequest,
  { params }: { params: Promise<{ token: string }> }
) {
  try {
    const { token } = await params
    const origin = request.headers.get('origin')

    if (!token) {
      const headers = createCorsHeaders(origin)
      return NextResponse.json(
        { error: 'Token is required' },
        { status: 400, headers }
      )
    }

    // Get invitation by token
    const invitation = await invitationService.getInvitationByToken(token)

    if (!invitation) {
      const headers = createCorsHeaders(origin)
      return NextResponse.json(
        { error: 'Invitation not found' },
        { status: 404, headers }
      )
    }

    const headers = createCorsHeaders(origin)
    return NextResponse.json({
      invitation,
    }, { headers })
  } catch (error) {
    const origin = request.headers.get('origin')
    const headers = createCorsHeaders(origin)

    if (error instanceof ValidationError) {
      return NextResponse.json(
        { error: error.message },
        { status: 400, headers }
      )
    }

    console.error('Error fetching invitation:', error)
    return NextResponse.json(
      { error: 'Internal server error' },
      { status: 500, headers }
    )
  }
}

