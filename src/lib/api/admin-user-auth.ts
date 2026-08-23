/**
 * Server-only: resolve Admin caller from x-admin-user-id header.
 * Uses anon Supabase for identity (same pattern as support staff auth).
 * Do not require service role here — missing service key must not look like Unauthorized.
 */

import type { NextRequest } from 'next/server'
import { supabase } from '@/lib/supabase'
import type { User } from '@/lib/api/types'
import { verifyPassword } from '@/lib/utils/password'

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

export async function verifyAdminPasswordFromRequest (
  request: NextRequest,
  password: string
): Promise<{ ok: true; admin: User } | { ok: false; status: number; error: string }> {
  const admin = await getAdminCallerFromRequest(request)
  if (!admin) return { ok: false, status: 401, error: 'Unauthorized' }

  const trimmed = password.trim()
  if (!trimmed) return { ok: false, status: 400, error: 'Password is required' }

  const { data, error } = await supabase
    .from('users')
    .select('password_hash')
    .eq('id', admin.id)
    .single()

  if (error || !data?.password_hash) {
    return { ok: false, status: 403, error: 'Invalid password' }
  }

  const valid = await verifyPassword(trimmed, data.password_hash)
  if (!valid) return { ok: false, status: 403, error: 'Invalid password' }

  return { ok: true, admin }
}
