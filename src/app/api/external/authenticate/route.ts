import { NextRequest, NextResponse } from 'next/server'
import { supabase } from '@/lib/supabase'
import { ValidationError } from '@/lib/utils/errors'
import { createCorsHeaders, handleOptionsRequest } from '@/lib/utils/cors'
import { verifyPassword } from '@/lib/utils/password'

// Handle OPTIONS preflight request
export async function OPTIONS (request: NextRequest) {
  return handleOptionsRequest(request)
}

/**
 * Authenticate Consult/Audit users from org-app
 * Called by org-app to authenticate Consult/Audit users during login
 */
export async function POST (request: NextRequest) {
  try {
    const origin = request.headers.get('origin')
    const body = await request.json()
    const { usernameOrEmail, password } = body

    if (!usernameOrEmail || !password) {
      const headers = createCorsHeaders(origin)
      return NextResponse.json(
        { error: 'Username/email and password are required' },
        { status: 400, headers }
      )
    }

    // Find user by username or email (Consult/Audit only)
    // Note: We need to filter by role after finding the user, so we query first then filter
    const { data: users, error } = await supabase
      .from('users')
      .select('id, username, email, name, avatar_url, role, invite_hashcode, password_hash')
      .or(`username.eq.${usernameOrEmail},email.eq.${usernameOrEmail}`)
      .limit(1)

    if (error) {
      console.error('Error querying users:', error)
      const headers = createCorsHeaders(origin)
      return NextResponse.json(
        { error: 'Failed to authenticate user' },
        { status: 500, headers }
      )
    }

    if (!users || users.length === 0) {
      const headers = createCorsHeaders(origin)
      return NextResponse.json(
        { error: 'Invalid username/email or password' },
        { status: 401, headers }
      )
    }

    const user = users[0]

    // Verify role is Consult or Audit
    if (user.role !== 'Consult' && user.role !== 'Audit') {
      const headers = createCorsHeaders(origin)
      return NextResponse.json(
        { error: 'This account is not authorized to access the organization app' },
        { status: 403, headers }
      )
    }

    // Verify password (password_hash is already in the user object)
    const isValid = await verifyPassword(password, user.password_hash)
    if (!isValid) {
      const headers = createCorsHeaders(origin)
      return NextResponse.json(
        { error: 'Invalid username/email or password' },
        { status: 401, headers }
      )
    }

    // Return user data (without password_hash)
    // eslint-disable-next-line @typescript-eslint/no-unused-vars
    const { password_hash, ...userWithoutPassword } = user
    const headers = createCorsHeaders(origin)
    return NextResponse.json(userWithoutPassword, { headers })
  } catch (error) {
    console.error('Error in authenticate endpoint:', error)
    const origin = request.headers.get('origin')
    const headers = createCorsHeaders(origin)
    return NextResponse.json(
      { error: 'Internal server error' },
      { status: 500, headers }
    )
  }
}











