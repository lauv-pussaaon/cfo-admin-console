/**
 * Server-only notification recipient lookups (uses service role).
 * Do not import getTrialRequestNotificationEmails from client bundles.
 */

import { getServiceSupabase } from '@/lib/supabase-service'

export async function getTrialRequestNotificationEmails (): Promise<string[]> {
  const supabase = getServiceSupabase()
  if (!supabase) {
    console.warn(
      '[notification-recipients] ข้ามโหลดผู้รับแจ้งเตือน: ตั้งค่า SUPABASE_SERVICE_ROLE_KEY'
    )
    return []
  }

  const { data, error } = await supabase
    .from('notification_recipients')
    .select('email')
    .eq('event_type', 'trial_request')
    .eq('is_enabled', true)

  if (error) {
    console.error('[notification-recipients] โหลดผู้รับแจ้งเตือนไม่สำเร็จ:', error.message)
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
