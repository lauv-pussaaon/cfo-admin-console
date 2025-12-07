import { NextRequest, NextResponse } from 'next/server'
import { invitationService } from '@/lib/services/invitation.service'
import { ValidationError } from '@/lib/utils/errors'
import { createCorsHeaders, handleOptionsRequest } from '@/lib/utils/cors'

// Handle OPTIONS preflight request
export async function OPTIONS(request: NextRequest) {
  return handleOptionsRequest(request)
}

export async function POST(
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

    // Check if invitation is already accepted
    if (invitation.status === 'accepted') {
      const headers = createCorsHeaders(origin)
      return NextResponse.json(
        { error: 'Invitation has already been accepted' },
        { status: 400, headers }
      )
    }

    // Check if invitation is expired
    if (invitation.status === 'expired' || new Date(invitation.expires_at) < new Date()) {
      const headers = createCorsHeaders(origin)
      return NextResponse.json(
        { error: 'Invitation has expired' },
        { status: 400, headers }
      )
    }

    // Parse request body to get email (for validation)
    const body = await request.json().catch(() => ({}))
    const email = body.email

    // Validate that the email matches the invitation
    if (email && email !== invitation.email) {
      const headers = createCorsHeaders(origin)
      return NextResponse.json(
        { error: 'Email does not match invitation' },
        { status: 400, headers }
      )
    }

    // Update invitation status to accepted
    const updatedInvitation = await invitationService.updateInvitationStatus(
      token,
      'accepted'
    )

    const headers = createCorsHeaders(origin)
    return NextResponse.json({
      success: true,
      invitation: updatedInvitation,
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

    console.error('Error accepting invitation:', error)
    return NextResponse.json(
      { error: 'Internal server error' },
      { status: 500, headers }
    )
  }
}

