/**
 * Type definitions for app usage tracking
 */

export interface UsageTrackingPayload {
  domain: string
  page: string
  user_role: string | null
  user_id?: string | null
  user_agent: string
  referrer?: string | null
  screen_width?: number | null
  screen_height?: number | null
  language?: string | null
  timezone?: string | null
  session_id?: string | null
}

export interface UsageTrackingRecord {
  id: string
  domain: string
  page: string
  user_role: string | null
  user_id: string | null
  user_agent: string
  referrer: string | null
  screen_width: number | null
  screen_height: number | null
  language: string | null
  timezone: string | null
  ip_address: string | null
  session_id: string | null
  created_at: string
}
