/**
 * Server-only notification email lookups (uses service role).
 * Do not import getEnabledNotificationEmails from client bundles.
 */

import { getServiceSupabase } from '@/lib/supabase-service'

const STORED_EVENT_TYPE = 'trial_request'

export async function getEnabledNotificationEmails (): Promise<string[]> {
  const supabase = getServiceSupabase()
  if (!supabase) {
    console.warn(
      '[notification-emails] ข้ามโหลดผู้รับแจ้งเตือน: ตั้งค่า SUPABASE_SERVICE_ROLE_KEY'
    )
    return []
  }

  const { data, error } = await supabase
    .from('notification_recipients')
    .select('email')
    .eq('event_type', STORED_EVENT_TYPE)
    .eq('is_enabled', true)

  if (error) {
    console.error('[notification-emails] โหลดผู้รับแจ้งเตือนไม่สำเร็จ:', error.message)
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
