import { NextRequest, NextResponse } from 'next/server'

/**
 * Create CORS headers for API responses
 * Allows requests from any origin (for cross-origin requests from org-app)
 */
export function createCorsHeaders(origin: string | null): HeadersInit {
  const headers: HeadersInit = {
    'Access-Control-Allow-Origin': origin || '*',
    'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, OPTIONS',
    'Access-Control-Allow-Headers': 'Content-Type, Authorization',
    'Access-Control-Max-Age': '86400', // 24 hours
  }

  return headers
}

/**
 * Handle OPTIONS preflight request
 */
export function handleOptionsRequest(request: NextRequest): NextResponse {
  const origin = request.headers.get('origin')
  const headers = createCorsHeaders(origin)

  return new NextResponse(null, {
    status: 204, // No Content
    headers,
  })
}

