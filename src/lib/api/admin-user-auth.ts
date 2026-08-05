/**
 * Server-only: resolve Admin caller from x-admin-user-id header.
 */

import type { NextRequest } from 'next/server'
import { getServiceSupabase } from '@/lib/supabase-service'
import type { User } from '@/lib/api/types'

export async function getAdminCallerFromRequest (
  request: NextRequest
): Promise<User | null> {
  const userId = request.headers.get('x-admin-user-id')?.trim()
  if (!userId) return null

  const supabase = getServiceSupabase()
  if (!supabase) return null

  const { data, error } = await supabase
    .from('users')
    .select(
      'id, username, email, name, avatar_url, role, status, rejection_reason, invite_hashcode, created_at'
    )
    .eq('id', userId)
    .single()

  if (error || !data) return null
  if (data.role !== 'Admin') return null
  if (data.status !== 'active') return null

  return data as User
}
