import { NextResponse } from 'next/server'

/**
 * GET /api/admin-console/accounts
 * Basic endpoint for testing admin-console API routing
 * This will be expanded later with full account management functionality
 */
export async function GET () {
  // Return simple test response
  return NextResponse.json({
    message: 'CFO Admin Console API is working',
    timestamp: new Date().toISOString(),
    endpoint: '/api/admin-console/accounts'
  })
}

