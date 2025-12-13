import { NextRequest, NextResponse } from 'next/server'

/**
 * Create CORS headers for API responses
 * Allows requests from any origin (for cross-origin requests from org-app)
 * Includes credentials support for authenticated requests
 */
export function createCorsHeaders (origin: string | null): HeadersInit {
  // Allow specific origins or all origins
  // In production, you might want to restrict this to specific domains
  const allowedOrigin = origin || '*'

  const headers: HeadersInit = {
    'Access-Control-Allow-Origin': allowedOrigin,
    'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, OPTIONS',
    'Access-Control-Allow-Headers': 'Content-Type, Authorization',
    'Access-Control-Max-Age': '86400', // 24 hours
    // Allow credentials if origin is specified (not wildcard)
    ...(origin && { 'Access-Control-Allow-Credentials': 'true' }),
  }

  return headers
}

/**
 * Handle OPTIONS preflight request
 * Critical: Must return 204 without redirects to avoid CORS preflight errors
 */
export function handleOptionsRequest (request: NextRequest): NextResponse {
  const origin = request.headers.get('origin')
  const headers = createCorsHeaders(origin)

  // Return 204 No Content directly - no redirects allowed for preflight
  return new NextResponse(null, {
    status: 204, // No Content
    headers,
  })
}




