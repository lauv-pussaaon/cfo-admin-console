/**
 * Server-only: resolve Admin caller from x-admin-user-id header.
 * Uses anon Supabase for identity (same pattern as support staff auth).
 * Do not require service role here — missing service key must not look like Unauthorized.
 */

import type { NextRequest } from 'next/server'
import { supabase } from '@/lib/supabase'
import type { User } from '@/lib/api/types'

export async function getAdminCallerFromRequest (
  request: NextRequest
): Promise<User | null> {
  const userId = request.headers.get('x-admin-user-id')?.trim()
  if (!userId) return null

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
