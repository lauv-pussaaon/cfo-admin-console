import { NextRequest, NextResponse } from 'next/server'
import { getAdminCallerFromRequest } from '@/lib/api/admin-user-auth'
import { normalizeOrganizationCode } from '@/lib/organization-code'
import { getServiceSupabase } from '@/lib/supabase-service'
import { isBridgeRequestAuthorized } from '@/lib/support-chat/auth'
import {
  findActiveTrialRequestByCode,
  linkActiveTrialRequestToOrganization,
} from '@/lib/api/trial-request-deploy'
import { ACCOUNT_TYPE_VALUES, DEFAULT_ACCOUNT_TYPE, type AccountType } from '@/types/account-types'
import { getDefaultPackagePeriod } from '@/types/package-periods'
import { isAnnualMembershipRequest } from '@/types/org-request-kind'

const INSTANCE_CODE_PATTERN = /^[a-z0-9](?:[a-z0-9-]{0,61}[a-z0-9])?$/
const UUID_PATTERN = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i

function readOptionalString (value: unknown): string {
  return typeof value === 'string' ? value.trim() : ''
}

function parseAccountType (value: string): AccountType {
  return (ACCOUNT_TYPE_VALUES as readonly string[]).includes(value)
    ? (value as AccountType)
    : DEFAULT_ACCOUNT_TYPE
}

function authorize (request: NextRequest): boolean {
  return Boolean(isBridgeRequestAuthorized(request))
}

export async function POST (request: NextRequest) {
  try {
    const admin = await getAdminCallerFromRequest(request)
    if (!admin && !authorize(request)) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    let body: unknown
    try {
      body = await request.json()
    } catch {
      return NextResponse.json({ error: 'ข้อมูลไม่ถูกต้อง' }, { status: 400 })
    }

    const raw = body && typeof body === 'object' ? (body as Record<string, unknown>) : {}
    const code = normalizeOrganizationCode(readOptionalString(raw.code))
    const name = readOptionalString(raw.name) || code
    const id = readOptionalString(raw.id)
    const factoryAdminEmail = readOptionalString(raw.factoryAdminEmail)
    const description = readOptionalString(raw.description)
    const appUrl = readOptionalString(raw.appUrl)
    const username = readOptionalString(raw.username)
    const accountType = parseAccountType(readOptionalString(raw.accountType) || DEFAULT_ACCOUNT_TYPE)

    if (!code || !INSTANCE_CODE_PATTERN.test(code)) {
      return NextResponse.json({ error: 'รหัสบริษัทไม่ถูกต้อง' }, { status: 400 })
    }
    if (!id || !UUID_PATTERN.test(id)) {
      return NextResponse.json({ error: 'Organization ID ไม่ถูกต้อง' }, { status: 400 })
    }
    if (!name) {
      return NextResponse.json({ error: 'กรุณาระบุชื่อองค์กร' }, { status: 400 })
    }

    const supabase = getServiceSupabase()
    if (!supabase) {
      return NextResponse.json(
        { error: 'ตั้งค่า SUPABASE_SERVICE_ROLE_KEY ไม่ครบ' },
        { status: 500 }
      )
    }

    const matchingRequest = await findActiveTrialRequestByCode(supabase, code)
    const resolvedName = matchingRequest?.organization_name?.trim() || name
    const resolvedEmail =
      matchingRequest?.contact_email?.trim() || factoryAdminEmail || ''
    const resolvedAccountType = matchingRequest
      && isAnnualMembershipRequest(matchingRequest.request_kind)
      ? 'general customers'
      : accountType

    const { data: byCode, error: codeError } = await supabase
      .from('organizations')
      .select('id, code')
      .eq('code', code)
      .maybeSingle()

    if (codeError) {
      console.error('[provision-from-deploy] load by code:', codeError)
      return NextResponse.json({ error: 'โหลดข้อมูลองค์กรไม่สำเร็จ' }, { status: 500 })
    }

    if (byCode?.id) {
      await linkActiveTrialRequestToOrganization(supabase, {
        code,
        organizationId: byCode.id,
      })
      return NextResponse.json({ id: byCode.id, created: false })
    }

    const { data: byId, error: idError } = await supabase
      .from('organizations')
      .select('id, code')
      .eq('id', id)
      .maybeSingle()

    if (idError) {
      console.error('[provision-from-deploy] load by id:', idError)
      return NextResponse.json({ error: 'โหลดข้อมูลองค์กรไม่สำเร็จ' }, { status: 500 })
    }

    if (byId?.id) {
      if (byId.code && byId.code !== code) {
        return NextResponse.json(
          { error: 'Organization ID นี้ถูกใช้กับองค์กรอื่นแล้ว' },
          { status: 409 }
        )
      }
      await linkActiveTrialRequestToOrganization(supabase, {
        code,
        organizationId: byId.id,
      })
      return NextResponse.json({ id: byId.id, created: false })
    }

    const period = getDefaultPackagePeriod(resolvedAccountType)
    const { data: created, error: insertError } = await supabase
      .from('organizations')
      .insert({
        id,
        name: resolvedName,
        code,
        description: description || null,
        app_url: appUrl || null,
        factory_admin_email: resolvedEmail || null,
        username: username || null,
        contact_first_name: matchingRequest?.contact_first_name || null,
        contact_last_name: matchingRequest?.contact_last_name || null,
        contact_phone: matchingRequest?.contact_phone || null,
        account_type: resolvedAccountType,
        package_start: period.package_start,
        package_end: period.package_end,
        is_initialized: false,
      })
      .select('id')
      .single()

    if (insertError || !created?.id) {
      console.error('[provision-from-deploy] insert:', insertError)
      return NextResponse.json({ error: 'สร้างองค์กรไม่สำเร็จ' }, { status: 500 })
    }

    await linkActiveTrialRequestToOrganization(supabase, {
      code,
      organizationId: created.id,
    })
    return NextResponse.json({ id: created.id, created: true })
  } catch (error) {
    console.error('[provision-from-deploy] unexpected error:', error)
    return NextResponse.json(
      { error: 'เกิดข้อผิดพลาดในการสร้างองค์กร' },
      { status: 500 }
    )
  }
}

export async function PATCH (request: NextRequest) {
  try {
    const admin = await getAdminCallerFromRequest(request)
    if (!admin && !authorize(request)) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    let body: unknown
    try {
      body = await request.json()
    } catch {
      return NextResponse.json({ error: 'ข้อมูลไม่ถูกต้อง' }, { status: 400 })
    }

    const raw = body && typeof body === 'object' ? (body as Record<string, unknown>) : {}
    const code = normalizeOrganizationCode(readOptionalString(raw.code))
    const appUrl = readOptionalString(raw.appUrl)
    const factoryAdminEmail = readOptionalString(raw.factoryAdminEmail)
    const username = readOptionalString(raw.username)

    if (!code || !INSTANCE_CODE_PATTERN.test(code)) {
      return NextResponse.json({ error: 'รหัสบริษัทไม่ถูกต้อง' }, { status: 400 })
    }

    const supabase = getServiceSupabase()
    if (!supabase) {
      return NextResponse.json(
        { error: 'ตั้งค่า SUPABASE_SERVICE_ROLE_KEY ไม่ครบ' },
        { status: 500 }
      )
    }

    const updates: Record<string, unknown> = {
      is_initialized: true,
      initialized_at: new Date().toISOString(),
      updated_at: new Date().toISOString(),
    }
    if (appUrl) updates.app_url = appUrl
    if (factoryAdminEmail) updates.factory_admin_email = factoryAdminEmail
    if (username) updates.username = username

    const { data, error } = await supabase
      .from('organizations')
      .update(updates)
      .eq('code', code)
      .select('id')

    if (error) {
      console.error('[provision-from-deploy] mark initialized:', error)
      return NextResponse.json({ error: 'อัปเดตองค์กรไม่สำเร็จ' }, { status: 500 })
    }

    if (!data?.length) {
      return NextResponse.json({ error: 'ไม่พบองค์กร' }, { status: 404 })
    }

    return NextResponse.json({ id: data[0].id, initialized: true })
  } catch (error) {
    console.error('[provision-from-deploy] mark unexpected error:', error)
    return NextResponse.json(
      { error: 'เกิดข้อผิดพลาดในการอัปเดตองค์กร' },
      { status: 500 }
    )
  }
}
