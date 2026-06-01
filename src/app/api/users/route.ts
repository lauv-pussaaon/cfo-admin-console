import { NextRequest } from 'next/server'
import { jsonResponse, withErrorHandling } from '@/lib/api/api-utils'
import { requireAuth } from '@/lib/api/auth-helper'
import { isAdmin } from '@/lib/permissions'
import { ValidationError } from '@/lib/utils/errors'
import { createUser, getUsers } from '@/lib/server/users'
import type { User } from '@/lib/api/types'

export const GET = withErrorHandling(async (request: NextRequest) => {
  await requireAuth(request)
  const users = await getUsers()
  return jsonResponse<User[]>(users)
})

export const POST = withErrorHandling(async (request: NextRequest) => {
  const authUser = await requireAuth(request)
  if (!isAdmin(authUser)) {
    throw new Error('Unauthorized')
  }

  const body = await request.json()
  const { username, email, password, name, avatar_url, role, is_approved } = body

  if (!username || !email || !password || !name) {
    throw new ValidationError('username, email, password and name are required')
  }

  const user = await createUser({
    username,
    email,
    password,
    name,
    avatar_url,
    role,
    is_approved,
  })

  return jsonResponse<User>(user, 201)
})
