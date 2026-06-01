/**
 * @deprecated Service role Supabase client removed. Use @/lib/server/users-admin instead.
 */
export function getServiceSupabase (): null {
  console.warn('[supabase-service] Deprecated: use PostgreSQL via DATABASE_URL')
  return null
}
