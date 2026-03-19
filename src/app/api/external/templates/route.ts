import { NextRequest, NextResponse } from 'next/server'
import { createCorsHeaders, handleOptionsRequest } from '@/lib/utils/cors'
import { getEmissionTemplatesWithFullHierarchy } from '@/lib/api/emission-templates'

// Handle OPTIONS preflight request
export async function OPTIONS(request: NextRequest) {
  return handleOptionsRequest(request)
}

/**
 * GET /api/external/templates?industry_code=xxx&is_active=true
 * Returns emission templates with full hierarchy: activity groups and mapped fuel resources.
 * Called by client apps (e.g. org-app) to add emission records from templates by industry.
 */
export async function GET(request: NextRequest) {
  try {
    const origin = request.headers.get('origin')
    const { searchParams } = new URL(request.url)
    const industry_code = searchParams.get('industry_code') ?? undefined
    const isActiveParam = searchParams.get('is_active')
    const is_active = isActiveParam == null ? true : isActiveParam === 'true'

    const data = await getEmissionTemplatesWithFullHierarchy({
      industry_code,
      is_active,
    })

    const headers = createCorsHeaders(origin)
    return NextResponse.json({ data }, { headers })
  } catch (error) {
    console.error('GET /api/external/templates error:', error)
    const origin = request.headers.get('origin')
    const headers = createCorsHeaders(origin)
    return NextResponse.json(
      { error: 'Failed to fetch templates' },
      { status: 500, headers }
    )
  }
}
