import { NextRequest, NextResponse } from 'next/server'
import { getAdminCallerFromRequest } from '@/lib/api/admin-user-auth'
import { applyTrialRequestDeployStatusByCompanyCode } from '@/lib/api/trial-request-deploy'
import { normalizeOrganizationCode } from '@/lib/organization-code'
import { getServiceSupabase } from '@/lib/supabase-service'
import { isBridgeRequestAuthorized } from '@/lib/support-chat/auth'

const INSTANCE_CODE_PATTERN = /^[a-z0-9](?:[a-z0-9-]{0,61}[a-z0-9])?$/

function readOptionalString (value: unknown): string {
  return typeof value === 'string' ? value.trim() : ''
}

export async function POST (request: NextRequest) {
  try {
    const admin = await getAdminCallerFromRequest(request)
    const bridgeOk = isBridgeRequestAuthorized(request)
    if (!admin && !bridgeOk) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    let body: unknown
    try {
      body = await request.json()
    } catch {
      return NextResponse.json({ error: 'ข้อมูลไม่ถูกต้อง' }, { status: 400 })
    }

    const raw = body && typeof body === 'object' ? (body as Record<string, unknown>) : {}
    const companyCode = normalizeOrganizationCode(readOptionalString(raw.companyCode))
    const status = readOptionalString(raw.status)
    const errorText = readOptionalString(raw.error)
    const logText = readOptionalString(raw.log)
    const logPath = readOptionalString(raw.logPath)

    if (!companyCode || !INSTANCE_CODE_PATTERN.test(companyCode)) {
      return NextResponse.json({ error: 'รหัสบริษัทไม่ถูกต้อง' }, { status: 400 })
    }
    if (status !== 'deployed' && status !== 'deployment_failed') {
      return NextResponse.json({ error: 'สถานะไม่ถูกต้อง' }, { status: 400 })
    }

    const supabase = getServiceSupabase()
    if (!supabase) {
      return NextResponse.json(
        { error: 'ตั้งค่า SUPABASE_SERVICE_ROLE_KEY ไม่ครบ' },
        { status: 500 }
      )
    }

    const result = await applyTrialRequestDeployStatusByCompanyCode(supabase, {
      companyCode,
      status,
      ...(errorText ? { error: errorText } : {}),
      ...(logText ? { log: logText } : {}),
      ...(logPath ? { logPath } : {}),
    })

    if (!result.updated) {
      return NextResponse.json(
        { error: 'ไม่พบคำขอที่กำลังติดตั้งสำหรับรหัสนี้' },
        { status: 404 }
      )
    }

    return NextResponse.json({
      ok: true,
      requestId: result.requestId ?? null,
      status: result.currentStatus ?? status,
    })
  } catch (error) {
    console.error('[trial-requests/deploy-status] unexpected error:', error)
    return NextResponse.json(
      { error: 'เกิดข้อผิดพลาดในการอัปเดตสถานะติดตั้ง' },
      { status: 500 }
    )
  }
}
