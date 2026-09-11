import { NextRequest, NextResponse } from 'next/server'
import {
  parseListPage,
  parseRequestDate,
} from '@/lib/api/list-organization-trial-requests'
import {
  listOrganizations,
  ORGANIZATION_LIST_PAGE_SIZE,
} from '@/lib/api/list-organizations'
import { getServiceSupabase } from '@/lib/supabase-service'
import { isBridgeRequestAuthorized } from '@/lib/support-chat/auth'
import { ACCOUNT_TYPE_VALUES, type AccountType } from '@/types/account-types'

function parseAccountTypeParam (value: string | null) {
  if (value == null) return { ok: true as const }
  const accountType = value.trim()
  if (!accountType || !(ACCOUNT_TYPE_VALUES as readonly string[]).includes(accountType)) {
    return { ok: false as const }
  }
  return { ok: true as const, accountType: accountType as AccountType }
}

export async function GET (request: NextRequest) {
  try {
    if (!isBridgeRequestAuthorized(request)) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const page = parseListPage(request.nextUrl.searchParams.get('page'))
    if (page == null) {
      return NextResponse.json({ error: 'หน้าไม่ถูกต้อง' }, { status: 400 })
    }

    const createdDate = parseRequestDate(request.nextUrl.searchParams.get('createdDate'))
    const packageStart = parseRequestDate(request.nextUrl.searchParams.get('packageStart'))
    const packageEnd = parseRequestDate(request.nextUrl.searchParams.get('packageEnd'))
    if (createdDate === null || packageStart === null || packageEnd === null) {
      return NextResponse.json({ error: 'วันที่ไม่ถูกต้อง' }, { status: 400 })
    }

    const accountTypeResult = parseAccountTypeParam(
      request.nextUrl.searchParams.get('accountType')
    )
    if (!accountTypeResult.ok) {
      return NextResponse.json({ error: 'ประเภทบัญชีไม่ถูกต้อง' }, { status: 400 })
    }

    const supabase = getServiceSupabase()
    if (!supabase) {
      return NextResponse.json(
        { error: 'ตั้งค่า SUPABASE_SERVICE_ROLE_KEY ไม่ครบ' },
        { status: 500 }
      )
    }

    const { organizations, total } = await listOrganizations(supabase, {
      page,
      ...(createdDate ? { createdDate } : {}),
      ...(packageStart ? { packageStart } : {}),
      ...(packageEnd ? { packageEnd } : {}),
      ...(accountTypeResult.accountType
        ? { accountType: accountTypeResult.accountType }
        : {}),
    })

    return NextResponse.json({
      organizations,
      page,
      pageSize: ORGANIZATION_LIST_PAGE_SIZE,
      total,
      totalPages: total === 0 ? 0 : Math.ceil(total / ORGANIZATION_LIST_PAGE_SIZE),
      ...(createdDate ? { createdDate } : {}),
      ...(packageStart ? { packageStart } : {}),
      ...(packageEnd ? { packageEnd } : {}),
      ...(accountTypeResult.accountType
        ? { accountType: accountTypeResult.accountType }
        : {}),
    })
  } catch (error) {
    console.error('[organizations] unexpected error:', error)
    return NextResponse.json(
      { error: 'โหลดองค์กรไม่สำเร็จ' },
      { status: 500 }
    )
  }
}
