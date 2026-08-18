import { NextRequest, NextResponse } from 'next/server'
import { supabase } from '@/lib/supabase'
import { createCorsHeaders, handleOptionsRequest } from '@/lib/utils/cors'

export async function OPTIONS (request: NextRequest) {
  return handleOptionsRequest(request)
}

/**
 * GET /api/external/users/:id
 * Public profile for an invited Consult/Audit user (no password_hash).
 * Used by org-app to backfill users.organization from organization_name.
 */
export async function GET (
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  const origin = request.headers.get('origin')
  const headers = createCorsHeaders(origin)

  try {
    const { id } = await params
    const userId = id?.trim()
    if (!userId) {
      return NextResponse.json(
        { error: 'User id is required' },
        { status: 400, headers }
      )
    }

    const { data, error } = await supabase
      .from('users')
      .select('id, name, email, avatar_url, role, organization_name')
      .eq('id', userId)
      .in('role', ['Consult', 'Audit'])
      .single()

    if (error) {
      if (error.code === 'PGRST116') {
        return NextResponse.json(
          { error: 'User not found' },
          { status: 404, headers }
        )
      }
      return NextResponse.json(
        { error: 'Database error' },
        { status: 500, headers }
      )
    }

    if (!data || (data.role !== 'Consult' && data.role !== 'Audit')) {
      return NextResponse.json(
        { error: 'User not found' },
        { status: 404, headers }
      )
    }

    return NextResponse.json({
      id: data.id,
      name: data.name,
      email: data.email,
      avatar_url: data.avatar_url,
      role: data.role,
      organization_name: data.organization_name ?? null,
    }, { headers })
  } catch (error) {
    console.error('Error fetching external user profile:', error)
    return NextResponse.json(
      { error: 'Internal server error' },
      { status: 500, headers }
    )
  }
}
