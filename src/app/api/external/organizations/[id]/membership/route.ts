import { NextRequest, NextResponse } from 'next/server'
import { isBridgeRequestAuthorized } from '@/lib/support-chat/auth'
import { getServiceSupabase } from '@/lib/supabase-service'
import { buildOrganizationMembership } from '@/lib/membership/plan-limits'
import { ACCOUNT_TYPE_VALUES, DEFAULT_ACCOUNT_TYPE, type AccountType } from '@/types/account-types'

function resolveAccountType (value: unknown): AccountType {
  if (typeof value === 'string' && (ACCOUNT_TYPE_VALUES as readonly string[]).includes(value)) {
    return value as AccountType
  }
  return DEFAULT_ACCOUNT_TYPE
}

/**
 * GET /api/external/organizations/:id/membership
 * Bridge: Demo/Premium plan, package dates, and usage limits for a tenant org.
 */
export async function GET (
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  try {
    if (!isBridgeRequestAuthorized(request)) {
      return NextResponse.json({ error: 'Unauthorized bridge request' }, { status: 401 })
    }

    const { id } = await params
    const organizationId = id?.trim()
    if (!organizationId) {
      return NextResponse.json({ error: 'organization id is required' }, { status: 400 })
    }

    const supabase = getServiceSupabase()
    if (!supabase) {
      return NextResponse.json({ error: 'ตั้งค่า SUPABASE_SERVICE_ROLE_KEY ไม่ครบ' }, { status: 500 })
    }

    const { data, error } = await supabase
      .from('organizations')
      .select('id, account_type, package_start, package_end')
      .eq('id', organizationId)
      .maybeSingle()

    if (error) {
      console.error('GET /api/external/organizations/:id/membership:', error)
      return NextResponse.json({ error: 'Failed to load organization membership' }, { status: 500 })
    }

    if (!data) {
      return NextResponse.json({ error: 'Organization not found' }, { status: 404 })
    }

    return NextResponse.json(buildOrganizationMembership({
      organizationId: data.id,
      accountType: resolveAccountType(data.account_type),
      packageStart: data.package_start ?? null,
      packageEnd: data.package_end ?? null,
    }))
  } catch (error) {
    console.error('GET /api/external/organizations/:id/membership error:', error)
    return NextResponse.json({ error: 'Failed to load organization membership' }, { status: 500 })
  }
}
