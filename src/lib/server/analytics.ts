import type { DomainResponse, AnalyticsResponse, TrafficResponse } from '@/types/analytics'
import { query } from '@/lib/db'

/**
 * Returns unique domains from app_usage_tracking.
 */
export async function getUniqueDomains (): Promise<DomainResponse> {
  const { rows } = await query<{ domain: string }>(
    `SELECT DISTINCT domain
     FROM app_usage_tracking
     WHERE domain IS NOT NULL AND BTRIM(domain) <> ''
     ORDER BY domain ASC`
  )

  return {
    domains: rows.map((r) => r.domain),
  }
}

/**
 * Returns aggregated analytics data grouped by date.
 */
export async function getAnalyticsUsage (
  startDate: string,
  endDate: string,
  domain?: string | null
): Promise<AnalyticsResponse> {
  const params: unknown[] = [startDate, endDate]
  let domainClause = ''
  if (domain) {
    params.push(domain)
    domainClause = ` AND domain = $${params.length}`
  }

  const { rows } = await query<{
    date: string
    user_id: string | null
    session_id: string | null
  }>(
    `SELECT
       TO_CHAR(created_at AT TIME ZONE 'UTC', 'YYYY-MM-DD') AS date,
       user_id,
       session_id
     FROM app_usage_tracking
     WHERE created_at >= $1::date
       AND created_at < ($2::date + INTERVAL '1 day')${domainClause}
     ORDER BY created_at ASC`,
    params
  )

  const aggregatedData = new Map<string, { uniqueUsers: Set<string>; totalPageViews: number }>()

  for (const record of rows) {
    const date = record.date
    if (!aggregatedData.has(date)) {
      aggregatedData.set(date, {
        uniqueUsers: new Set<string>(),
        totalPageViews: 0,
      })
    }

    const dayData = aggregatedData.get(date)!
    dayData.totalPageViews++

    const userIdentifier = record.user_id || record.session_id
    if (userIdentifier) {
      dayData.uniqueUsers.add(String(userIdentifier))
    }
  }

  const data = Array.from(aggregatedData.entries())
    .map(([date, stats]) => ({
      date,
      uniqueUsers: stats.uniqueUsers.size,
      totalPageViews: stats.totalPageViews,
    }))
    .sort((a, b) => a.date.localeCompare(b.date))

  return { data }
}

/**
 * Returns granular traffic records for a date range.
 */
export async function getAnalyticsTraffic (
  startDate: string,
  endDate: string,
  domain?: string | null
): Promise<TrafficResponse> {
  const params: unknown[] = [startDate, endDate]
  let domainClause = ''
  if (domain) {
    params.push(domain)
    domainClause = ` AND domain = $${params.length}`
  }

  const { rows } = await query<{
    created_at: string
    domain: string
    user_role: string | null
    page: string
  }>(
    `SELECT created_at, domain, user_role, page
     FROM app_usage_tracking
     WHERE created_at >= $1::date
       AND created_at < ($2::date + INTERVAL '1 day')${domainClause}
     ORDER BY created_at DESC`,
    params
  )

  return {
    data: rows.map((record) => ({
      date: new Date(record.created_at).toISOString(),
      domain: record.domain,
      user_role: record.user_role || null,
      page: record.page,
    })),
  }
}

export interface UsageTrackingInsert {
  domain: string
  page: string
  user_role?: string | null
  user_id?: string | null
  user_agent: string
  referrer?: string | null
  screen_width?: number | null
  screen_height?: number | null
  language?: string | null
  timezone?: string | null
  ip_address?: string | null
  session_id?: string | null
}

export async function insertUsageTracking (data: UsageTrackingInsert): Promise<void> {
  await query(
    `INSERT INTO app_usage_tracking (
       domain, page, user_role, user_id, user_agent, referrer,
       screen_width, screen_height, language, timezone, ip_address, session_id
     ) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12)`,
    [
      data.domain,
      data.page,
      data.user_role ?? null,
      data.user_id ?? null,
      data.user_agent,
      data.referrer ?? null,
      data.screen_width ?? null,
      data.screen_height ?? null,
      data.language ?? null,
      data.timezone ?? null,
      data.ip_address ?? null,
      data.session_id ?? null,
    ]
  )
}
