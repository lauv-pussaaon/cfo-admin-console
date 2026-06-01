import { NextRequest } from 'next/server'
import { jsonResponse, withErrorHandling } from '@/lib/api/api-utils'
import { requireAuth } from '@/lib/api/auth-helper'
import { isAdmin } from '@/lib/permissions'
import { getUserById, updateUser, deleteUser } from '@/lib/server/users'
import type { User } from '@/lib/api/types'

export const GET = withErrorHandling(async (
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) => {
  await requireAuth(request)
  const { id } = await params
  const user = await getUserById(id)
  if (!user) {
    return jsonResponse<User | null>(null, 404)
  }
  return jsonResponse<User>(user)
})

export const PATCH = withErrorHandling(async (
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) => {
  const authUser = await requireAuth(request)
  const { id } = await params

  if (!isAdmin(authUser) && authUser.id !== id) {
    throw new Error('Unauthorized')
  }

  const body = await request.json()
  if (!isAdmin(authUser)) {
    const allowed = ['name', 'avatar_url']
    for (const key of Object.keys(body)) {
      if (!allowed.includes(key)) {
        throw new Error('Unauthorized')
      }
    }
  }

  const user = await updateUser(id, body)
  return jsonResponse<User>(user)
})

export const DELETE = withErrorHandling(async (
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) => {
  const authUser = await requireAuth(request)
  if (!isAdmin(authUser)) {
    throw new Error('Unauthorized')
  }

  const { id } = await params
  await deleteUser(id)
  return jsonResponse({ success: true })
})
