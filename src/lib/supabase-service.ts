/**
 * Server-only Supabase client with service role (bypasses RLS).
 * Never import this file from client components or shared code used in the browser.
 *
 * Requires `SUPABASE_SERVICE_ROLE_KEY` in environment (same project as `NEXT_PUBLIC_SUPABASE_URL`).
 */

import { createClient, SupabaseClient } from '@supabase/supabase-js'

let serviceClient: SupabaseClient | null = null

export function getServiceSupabase (): SupabaseClient | null {
  const url = process.env.NEXT_PUBLIC_SUPABASE_URL?.trim()
  const key = process.env.SUPABASE_SERVICE_ROLE_KEY?.trim()
  if (!url || !key) {
    return null
  }
  if (!serviceClient) {
    serviceClient = createClient(url, key, {
      auth: { persistSession: false, autoRefreshToken: false },
    })
  }
  return serviceClient
}
