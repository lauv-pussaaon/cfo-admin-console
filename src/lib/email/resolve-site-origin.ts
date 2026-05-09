import type { NextRequest } from 'next/server'

/**
 * Public site origin for absolute links in emails.
 * Prefer proxy headers in production, else fall back to the incoming request URL.
 */
export function resolveSiteOriginFromRequest (request: NextRequest): string {
  const forwardedHost = request.headers.get('x-forwarded-host')
  const forwardedProto = request.headers.get('x-forwarded-proto') ?? 'https'
  if (forwardedHost) {
    const host = forwardedHost.split(',')[0].trim()
    return `${forwardedProto}://${host}`.replace(/\/+$/, '')
  }

  const host = request.headers.get('host')
  if (host) {
    const isLocal = /^(localhost|127\.0\.0\.1)/i.test(host.split(':')[0] ?? '')
    const proto =
      request.headers.get('x-forwarded-proto') ?? (isLocal ? 'http' : 'https')
    return `${proto}://${host}`.replace(/\/+$/, '')
  }

  try {
    return new URL(request.url).origin
  } catch {
    return ''
  }
}

/**
 * Base URL for login links: env first (stable in prod), then request origin, then Vercel.
 */
export function resolveBaseUrlForEmail (requestOrigin: string): string {
  const fromEnv =
    process.env.APP_URL?.trim() ||
    process.env.NEXT_PUBLIC_APP_URL?.trim() ||
    ''
  const fromRequest = requestOrigin.replace(/\/+$/, '')
  const vercel = process.env.VERCEL_URL?.trim()
  const fromVercel = vercel
    ? `https://${vercel.replace(/^https?:\/\//, '')}`.replace(/\/+$/, '')
    : ''

  return (
    fromEnv.replace(/\/+$/, '') ||
    fromRequest ||
    fromVercel ||
    ''
  )
}

/** Absolute URL to Admin Console users page (for emails). */
export function buildAdminConsoleUsersUrl (baseUrl: string): string {
  const trimmed = baseUrl.trim().replace(/\/+$/, '')
  if (!trimmed) return '/admin-console/users'
  return `${trimmed}/admin-console/users`
}
