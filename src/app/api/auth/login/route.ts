import { NextRequest } from 'next/server'
import { jsonResponse, errorResponse, withErrorHandling } from '@/lib/api/api-utils'
import { ValidationError } from '@/lib/utils/errors'
import { loginUser } from '@/lib/server/users'

export const POST = withErrorHandling(async (request: NextRequest) => {
  const body = await request.json()
  const { usernameOrEmail, password } = body

  if (!usernameOrEmail || !password) {
    return errorResponse('Username/email and password are required', 400)
  }

  try {
    const user = await loginUser(usernameOrEmail, password)
    return jsonResponse(user)
  } catch (error) {
    if (error instanceof ValidationError) {
      return errorResponse(error.message, 400)
    }
    throw error
  }
})
