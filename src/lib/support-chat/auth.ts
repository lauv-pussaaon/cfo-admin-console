import type { NextRequest } from 'next/server'
import { supabase } from '@/lib/supabase'
import type { User } from '@/lib/api/types'

function getBearerToken (request: NextRequest): string | null {
  const authorization = request.headers.get('authorization') ?? ''
  if (!authorization.toLowerCase().startsWith('bearer ')) {
    return null
  }
  return authorization.slice(7).trim()
}

export function isBridgeRequestAuthorized (request: NextRequest): boolean {
  const secret = process.env.SUPPORT_CHAT_BRIDGE_SECRET
  if (!secret) return false

  const bearer = getBearerToken(request)
  const headerSecret = request.headers.get('x-support-bridge-secret')
  return bearer === secret || headerSecret === secret
}

export async function getStaffUserFromRequest (request: NextRequest): Promise<User | null> {
  const userId = request.headers.get('x-admin-user-id')?.trim()
  if (!userId) return null

  const { data, error } = await supabase
    .from('users')
    .select('id, username, email, name, avatar_url, role, invite_hashcode, created_at')
    .eq('id', userId)
    .single()

  if (error || !data) return null
  if (data.role !== 'Admin' && data.role !== 'Support') return null

  return data as User
}

