import { NextRequest, NextResponse } from 'next/server'
import {
  listOrganizationTrialRequests,
  parseListPage,
  parseRequestDateFrom,
  TRIAL_REQUEST_LIST_PAGE_SIZE,
} from '@/lib/api/list-organization-trial-requests'
import { getServiceSupabase } from '@/lib/supabase-service'
import { isBridgeRequestAuthorized } from '@/lib/support-chat/auth'
import { isTrialRequestApiStatus } from '@/types/trial-request-status'

function parseStatusParam (value: string | null) {
  if (value == null) return { ok: true as const }
  const status = value.trim()
  if (!status || !isTrialRequestApiStatus(status)) {
    return { ok: false as const }
  }
  return { ok: true as const, status }
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

    const requestDateFrom = parseRequestDateFrom(
      request.nextUrl.searchParams.get('requestDateFrom')
    )
    if (requestDateFrom === null) {
      return NextResponse.json({ error: 'วันที่ไม่ถูกต้อง' }, { status: 400 })
    }

    const statusResult = parseStatusParam(request.nextUrl.searchParams.get('status'))
    if (!statusResult.ok) {
      return NextResponse.json({ error: 'สถานะไม่ถูกต้อง' }, { status: 400 })
    }

    const supabase = getServiceSupabase()
    if (!supabase) {
      return NextResponse.json(
        { error: 'ตั้งค่า SUPABASE_SERVICE_ROLE_KEY ไม่ครบ' },
        { status: 500 }
      )
    }

    const { requests, total } = await listOrganizationTrialRequests(supabase, {
      page,
      ...(requestDateFrom ? { requestDateFrom } : {}),
      ...(statusResult.status ? { status: statusResult.status } : {}),
    })

    return NextResponse.json({
      requests,
      page,
      pageSize: TRIAL_REQUEST_LIST_PAGE_SIZE,
      total,
      totalPages: total === 0 ? 0 : Math.ceil(total / TRIAL_REQUEST_LIST_PAGE_SIZE),
      ...(requestDateFrom ? { requestDateFrom } : {}),
      ...(statusResult.status ? { status: statusResult.status } : {}),
    })
  } catch (error) {
    console.error('[trial-requests] unexpected error:', error)
    return NextResponse.json(
      { error: 'โหลดคำขอสมัครองค์กรไม่สำเร็จ' },
      { status: 500 }
    )
  }
}
