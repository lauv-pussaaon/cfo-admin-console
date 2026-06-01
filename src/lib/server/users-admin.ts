/**
 * Server-only admin user lookups via PostgreSQL.
 */

import { query } from '@/lib/db'

/**
 * Unique email addresses of users with role Admin (for system notifications).
 */
export async function getAdminNotificationEmails (): Promise<string[]> {
  try {
    const { rows } = await query<{ email: string }>(
      `SELECT email FROM users WHERE role = 'Admin'`
    )

    const seen = new Set<string>()
    const emails: string[] = []
    for (const row of rows) {
      const e = typeof row.email === 'string' ? row.email.trim().toLowerCase() : ''
      if (e && !seen.has(e)) {
        seen.add(e)
        emails.push(e)
      }
    }
    return emails
  } catch (err) {
    console.error('[users-admin] โหลดอีเมล Admin ไม่สำเร็จ:', err instanceof Error ? err.message : err)
    return []
  }
}
