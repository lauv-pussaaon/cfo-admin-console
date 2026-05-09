/**
 * Server-only admin user lookups (uses service role). Do not import from client bundles.
 */

import { getServiceSupabase } from '@/lib/supabase-service'

/**
 * Unique email addresses of users with role Admin (for system notifications).
 */
export async function getAdminNotificationEmails (): Promise<string[]> {
  const supabase = getServiceSupabase()
  if (!supabase) {
    console.warn(
      '[users-admin] ข้ามโหลดอีเมล Admin: ตั้งค่า SUPABASE_SERVICE_ROLE_KEY'
    )
    return []
  }

  const { data, error } = await supabase
    .from('users')
    .select('email')
    .eq('role', 'Admin')

  if (error) {
    console.error('[users-admin] โหลดอีเมล Admin ไม่สำเร็จ:', error.message)
    return []
  }

  const seen = new Set<string>()
  const emails: string[] = []
  for (const row of data ?? []) {
    const e = typeof row.email === 'string' ? row.email.trim().toLowerCase() : ''
    if (e && !seen.has(e)) {
      seen.add(e)
      emails.push(e)
    }
  }
  return emails
}
