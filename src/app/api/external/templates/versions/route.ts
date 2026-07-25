import { NextRequest, NextResponse } from 'next/server'
import { createCorsHeaders, handleOptionsRequest } from '@/lib/utils/cors'
import { listTemplateVersions } from '@/lib/api/emission-templates'

export async function OPTIONS (request: NextRequest) {
  return handleOptionsRequest(request)
}

/**
 * GET /api/external/templates/versions
 * Returns the EF catalog versions that have emission-template activity groups defined,
 * e.g. [{ version, is_default, order_index }]. Client apps use this to let the user pick
 * a version before fetching GET /api/external/templates?version=xxx.
 */
export async function GET (request: NextRequest) {
  try {
    const origin = request.headers.get('origin')
    const data = await listTemplateVersions()

    const headers = createCorsHeaders(origin)
    return NextResponse.json({ data }, { headers })
  } catch (error) {
    console.error('GET /api/external/templates/versions error:', error)
    const origin = request.headers.get('origin')
    const headers = createCorsHeaders(origin)
    return NextResponse.json(
      { error: 'Failed to fetch template versions' },
      { status: 500, headers }
    )
  }
}
