import { NextRequest, NextResponse } from 'next/server'
import { supabase } from '@/lib/supabase'
import { ValidationError } from '@/lib/utils/errors'
import { createCorsHeaders, handleOptionsRequest } from '@/lib/utils/cors'

// Handle OPTIONS preflight request
export async function OPTIONS (request: NextRequest) {
  return handleOptionsRequest(request)
}

/**
 * GET /api/external/validate-invite?hashcode=xxx
 * Validates an invite hashcode for Consult/Audit users
 * Called by org-app to verify invite codes before inviting external staff
 */
export async function GET (request: NextRequest) {
  try {
    const origin = request.headers.get('origin')
    const { searchParams } = new URL(request.url)
    const hashcode = searchParams.get('hashcode')

    if (!hashcode) {
      const headers = createCorsHeaders(origin)
      return NextResponse.json(
        { error: 'Hashcode is required' },
        { status: 400, headers }
      )
    }

    // Query users table for Consult/Audit with matching invite_hashcode
    const { data, error } = await supabase
      .from('users')
      .select('id, username, email, name, avatar_url, role, invite_hashcode')
      .eq('invite_hashcode', hashcode)
      .in('role', ['Consult', 'Audit'])
      .single()

    if (error) {
      if (error.code === 'PGRST116') {
        // No user found
        const headers = createCorsHeaders(origin)
        return NextResponse.json(
          { error: 'Invalid invite code. Please check the code and try again.' },
          { status: 404, headers }
        )
      }

      const headers = createCorsHeaders(origin)
      return NextResponse.json(
        { error: 'Database error' },
        { status: 500, headers }
      )
    }

    if (!data) {
      const headers = createCorsHeaders(origin)
      return NextResponse.json(
        { error: 'Invalid invite code. Please check the code and try again.' },
        { status: 404, headers }
      )
    }

    // Verify role is Consult or Audit
    if (data.role !== 'Consult' && data.role !== 'Audit') {
      const headers = createCorsHeaders(origin)
      return NextResponse.json(
        { error: 'This invite code is not for Consult or Audit users.' },
        { status: 400, headers }
      )
    }

    // Verify hashcode matches
    if (data.invite_hashcode !== hashcode) {
      const headers = createCorsHeaders(origin)
      return NextResponse.json(
        { error: 'Invalid invite code.' },
        { status: 400, headers }
      )
    }

    // Return user info (without sensitive data)
    const headers = createCorsHeaders(origin)
    return NextResponse.json({
      id: data.id,
      username: data.username,
      email: data.email,
      name: data.name,
      avatar_url: data.avatar_url,
      role: data.role,
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

    console.error('Error validating invite code:', error)
    return NextResponse.json(
      { error: 'Internal server error' },
      { status: 500, headers }
    )
  }
}
