import { NextRequest, NextResponse } from 'next/server'
import { validateInviteHashcode } from '@/lib/server/users'
import { createCorsHeaders, handleOptionsRequest } from '@/lib/utils/cors'

export async function OPTIONS (request: NextRequest) {
  return handleOptionsRequest(request)
}

export async function GET (request: NextRequest) {
  const origin = request.headers.get('origin')
  const headers = createCorsHeaders(origin)

  try {
    const { searchParams } = new URL(request.url)
    const hashcode = searchParams.get('hashcode')

    if (!hashcode) {
      return NextResponse.json({ error: 'Hashcode is required' }, { status: 400, headers })
    }

    const data = await validateInviteHashcode(hashcode)

    if (!data) {
      return NextResponse.json(
        { error: 'Invalid invite code. Please check the code and try again.' },
        { status: 404, headers }
      )
    }

    return NextResponse.json(data, { headers })
  } catch (error) {
    console.error('Error validating invite code:', error)
    return NextResponse.json({ error: 'Internal server error' }, { status: 500, headers })
  }
}
