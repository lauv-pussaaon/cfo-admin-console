/**
 * Type definitions for analytics data
 */

export interface AnalyticsDataPoint {
  date: string
  uniqueUsers: number
  totalPageViews: number
}

export interface AnalyticsResponse {
  data: AnalyticsDataPoint[]
}

export interface TrafficRecord {
  date: string
  domain: string
  user_role: string | null
  page: string
}

export interface TrafficResponse {
  data: TrafficRecord[]
}

export interface DomainResponse {
  domains: string[]
}
