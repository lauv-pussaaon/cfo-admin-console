import { NextRequest, NextResponse } from 'next/server'
import { authenticateExternalUser } from '@/lib/server/users'
import { ValidationError } from '@/lib/utils/errors'
import { createCorsHeaders, handleOptionsRequest } from '@/lib/utils/cors'

export async function OPTIONS (request: NextRequest) {
  return handleOptionsRequest(request)
}

export async function POST (request: NextRequest) {
  const origin = request.headers.get('origin')
  const headers = createCorsHeaders(origin)

  try {
    const body = await request.json()
    const { usernameOrEmail, password } = body

    if (!usernameOrEmail || !password) {
      return NextResponse.json(
        { error: 'Username/email and password are required' },
        { status: 400, headers }
      )
    }

    const user = await authenticateExternalUser(usernameOrEmail, password)
    return NextResponse.json(user, { headers })
  } catch (error) {
    if (error instanceof ValidationError) {
      const status = error.message.includes('not authorized') ? 403
        : error.message.includes('อนุมัติ') ? 403
          : 401
      return NextResponse.json({ error: error.message }, { status, headers })
    }

    console.error('Error in authenticate endpoint:', error)
    return NextResponse.json({ error: 'Internal server error' }, { status: 500, headers })
  }
}
