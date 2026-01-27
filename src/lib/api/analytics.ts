import type { AnalyticsResponse, DomainResponse, TrafficResponse } from '@/types/analytics'

/**
 * Fetch unique domains from analytics tracking
 */
export async function getUniqueDomains(): Promise<string[]> {
  try {
    const response = await fetch('/api/analytics/domains', {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json',
      },
    })

    if (!response.ok) {
      const error = await response.json().catch(() => ({ error: 'Failed to fetch domains' }))
      throw new Error(error.error || 'Failed to fetch domains')
    }

    const data: DomainResponse = await response.json()
    return data.domains
  } catch (error) {
    console.error('Error fetching domains:', error)
    throw error
  }
}

/**
 * Fetch analytics data for a given date range and optional domain filter
 * @param domain - Optional domain filter (null or undefined for all domains)
 * @param startDate - Start date in YYYY-MM-DD format
 * @param endDate - End date in YYYY-MM-DD format
 */
export async function getAnalyticsData(
  startDate: string,
  endDate: string,
  domain?: string | null
): Promise<AnalyticsResponse> {
  try {
    const params = new URLSearchParams({
      startDate,
      endDate,
    })

    if (domain) {
      params.append('domain', domain)
    }

    const response = await fetch(`/api/analytics/usage?${params.toString()}`, {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json',
      },
    })

    if (!response.ok) {
      const error = await response.json().catch(() => ({ error: 'Failed to fetch analytics data' }))
      throw new Error(error.error || 'Failed to fetch analytics data')
    }

    const data: AnalyticsResponse = await response.json()
    return data
  } catch (error) {
    console.error('Error fetching analytics data:', error)
    throw error
  }
}

/**
 * Fetch granular traffic records for a given date range and optional domain filter
 * @param domain - Optional domain filter (null or undefined for all domains)
 * @param startDate - Start date in YYYY-MM-DD format
 * @param endDate - End date in YYYY-MM-DD format
 */
export async function getTrafficData(
  startDate: string,
  endDate: string,
  domain?: string | null
): Promise<TrafficResponse> {
  try {
    const params = new URLSearchParams({
      startDate,
      endDate,
    })

    if (domain) {
      params.append('domain', domain)
    }

    const response = await fetch(`/api/analytics/traffic?${params.toString()}`, {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json',
      },
    })

    if (!response.ok) {
      const error = await response.json().catch(() => ({ error: 'Failed to fetch traffic data' }))
      throw new Error(error.error || 'Failed to fetch traffic data')
    }

    const data: TrafficResponse = await response.json()
    return data
  } catch (error) {
    console.error('Error fetching traffic data:', error)
    throw error
  }
}
