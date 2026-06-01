/**
 * @deprecated Supabase client removed on migration branch. Use @/lib/db and @/lib/server/* instead.
 * Kept only to avoid accidental imports; throws if accessed.
 */
export const supabase = new Proxy({} as Record<string, never>, {
  get () {
    throw new Error(
      'Supabase client is disabled on migration branch. Use DATABASE_URL with @/lib/server/* modules.'
    )
  },
})
