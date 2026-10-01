import { NextRequest, NextResponse } from 'next/server'
import {
  CONSULT_LIST_PAGE_SIZE,
  isConsultListStage,
  listConsults,
} from '@/lib/api/list-consults'
import {
  parseListPage,
  parseRequestDate,
} from '@/lib/api/list-organization-trial-requests'
import { getServiceSupabase } from '@/lib/supabase-service'
import { isBridgeRequestAuthorized } from '@/lib/support-chat/auth'

function parseStatusParam (value: string | null) {
  if (value == null) return { ok: true as const }
  const status = value.trim()
  if (!status || !isConsultListStage(status)) {
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

    const registeredDateFrom = parseRequestDate(
      request.nextUrl.searchParams.get('registeredDateFrom')
    )
    const registeredDateBy = parseRequestDate(
      request.nextUrl.searchParams.get('registeredDateBy')
    )
    if (registeredDateFrom === null || registeredDateBy === null) {
      return NextResponse.json({ error: 'วันที่ไม่ถูกต้อง' }, { status: 400 })
    }
    if (
      registeredDateFrom &&
      registeredDateBy &&
      registeredDateFrom > registeredDateBy
    ) {
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

    const { consults, total } = await listConsults(supabase, {
      page,
      ...(registeredDateFrom ? { registeredDateFrom } : {}),
      ...(registeredDateBy ? { registeredDateBy } : {}),
      ...(statusResult.status ? { status: statusResult.status } : {}),
    })

    return NextResponse.json({
      consults,
      page,
      pageSize: CONSULT_LIST_PAGE_SIZE,
      total,
      totalPages: total === 0 ? 0 : Math.ceil(total / CONSULT_LIST_PAGE_SIZE),
      ...(registeredDateFrom ? { registeredDateFrom } : {}),
      ...(registeredDateBy ? { registeredDateBy } : {}),
      ...(statusResult.status ? { status: statusResult.status } : {}),
    })
  } catch (error) {
    console.error('[consults] unexpected error:', error)
    return NextResponse.json(
      { error: 'โหลดรายชื่อที่ปรึกษาไม่สำเร็จ' },
      { status: 500 }
    )
  }
}
