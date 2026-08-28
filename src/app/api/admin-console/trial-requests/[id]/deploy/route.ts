import { NextRequest, NextResponse } from 'next/server'
import { getAdminCallerFromRequest } from '@/lib/api/admin-user-auth'
import {
  markTrialRequestDeploying,
  markTrialRequestDeploymentFailed,
} from '@/lib/api/trial-request-deploy'
import { isOrgRequestKind } from '@/types/org-request-kind'
import { getServiceSupabase } from '@/lib/supabase-service'

function readOptionalString (value: unknown): string {
  return typeof value === 'string' ? value.trim() : ''
}

export async function POST (
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  try {
    const admin = await getAdminCallerFromRequest(request)
    if (!admin) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const { id } = await params
    const requestId = id?.trim()
    if (!requestId) {
      return NextResponse.json({ error: 'ไม่พบคำขอสมัครองค์กร' }, { status: 400 })
    }

    const supabase = getServiceSupabase()
    if (!supabase) {
      return NextResponse.json(
        { error: 'ตั้งค่า SUPABASE_SERVICE_ROLE_KEY ไม่ครบ' },
        { status: 500 }
      )
    }

    const { data: row, error: loadError } = await supabase
      .from('organization_trial_requests')
      .select(
        'id, company_code, organization_name, contact_email, contact_first_name, contact_last_name, contact_phone, request_kind, status'
      )
      .eq('id', requestId)
      .maybeSingle()

    if (loadError) {
      console.error('[trial-requests/deploy] load request:', loadError)
      return NextResponse.json({ error: 'โหลดคำขอไม่สำเร็จ' }, { status: 500 })
    }
    if (!row) {
      return NextResponse.json({ error: 'ไม่พบคำขอสมัครองค์กร' }, { status: 404 })
    }
    if (row.status !== 'started' && row.status !== 'deployment_failed') {
      return NextResponse.json({ error: 'ไม่สามารถเริ่มติดตั้งคำขอนี้ได้' }, { status: 409 })
    }

    const companyCode = readOptionalString(row.company_code)
    if (!companyCode) {
      return NextResponse.json({ error: 'คำขอนี้ยังไม่มีรหัสบริษัท' }, { status: 400 })
    }

    const deployApiUrl = process.env.DEPLOY_API_URL?.replace(/\/$/, '')
    const deployApiSecret = process.env.DEPLOY_API_SECRET?.trim()
    if (!deployApiUrl || !deployApiSecret) {
      return NextResponse.json(
        { error: 'ตั้งค่า DEPLOY_API_URL และ DEPLOY_API_SECRET ไม่ครบ' },
        { status: 500 }
      )
    }

    const marked = await markTrialRequestDeploying(supabase, { id: requestId })
    if (!marked.updated) {
      return NextResponse.json({ error: 'ไม่สามารถเริ่มติดตั้งคำขอนี้ได้' }, { status: 409 })
    }

    const requestKind = isOrgRequestKind(row.request_kind) ? row.request_kind : 'trial'
    let accepted = false
    let failReason = ''

    try {
      const response = await fetch(`${deployApiUrl}/v1/instances`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${deployApiSecret}`,
          'x-deploy-api-secret': deployApiSecret,
        },
        body: JSON.stringify({
          companyCode,
          organizationName: row.organization_name,
          contactEmail: row.contact_email,
          contactFirstName: row.contact_first_name,
          contactLastName: row.contact_last_name,
          contactPhone: row.contact_phone,
          requestKind,
        }),
      })

      if (response.ok) {
        accepted = true
      } else {
        const payload = await response.json().catch(() => ({}))
        failReason =
          (payload as { error?: string; detail?: string }).error ||
          (payload as { detail?: string }).detail ||
          `deploy API ตอบกลับ ${response.status}`
      }
    } catch (error) {
      failReason = error instanceof Error ? error.message : 'เชื่อมต่อ deploy API ไม่สำเร็จ'
    }

    if (!accepted) {
      await markTrialRequestDeploymentFailed(supabase, {
        id: requestId,
        error: failReason,
      })
      return NextResponse.json(
        { error: failReason || 'เริ่มติดตั้งไม่สำเร็จ' },
        { status: 502 }
      )
    }

    return NextResponse.json({
      ok: true,
      status: 'deploying',
      requestId,
      companyCode,
    })
  } catch (error) {
    console.error('[trial-requests/deploy] unexpected error:', error)
    return NextResponse.json(
      { error: 'เกิดข้อผิดพลาดในการเริ่มติดตั้ง' },
      { status: 500 }
    )
  }
}
