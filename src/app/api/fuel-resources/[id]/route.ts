import { NextRequest, NextResponse } from 'next/server'
import { deleteMappingsByFuelResourceId } from '@/lib/api/activity-group-fuel-resources'
import { verifyAdminPasswordFromRequest } from '@/lib/api/admin-user-auth'
import { refreshReleaseCounts } from '@/lib/api/ef-catalog-releases'
import {
  getFuelResource,
  softDeleteFuelResource,
  updateFuelResourceEfFields,
} from '@/lib/api/fuel-resources'

const ALLOWED_KEYS = new Set([
  'ef_value',
  'value1_label',
  'value1_unit',
  'value2_label',
  'value2_unit',
])

function parseNullableString (value: unknown): string | null {
  if (value === null || value === undefined) return null
  const s = String(value).trim()
  return s === '' ? null : s
}

function parseNullableNumber (value: unknown): number | null {
  if (value === null || value === undefined || value === '') return null
  const n = typeof value === 'number' ? value : Number(String(value).trim())
  if (!Number.isFinite(n)) {
    throw new Error('ef_value must be a number or null')
  }
  return n
}

export async function GET(request: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  try {
    const { id } = await params
    const record = await getFuelResource(id)
    return NextResponse.json(record)
  } catch (error) {
    console.error('GET /api/fuel-resources/[id] error:', error)
    return NextResponse.json({ error: 'Fuel resource not found' }, { status: 404 })
  }
}

export async function PATCH(request: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  try {
    const { id } = await params
    const body = await request.json() as Record<string, unknown>

    if (!body || typeof body !== 'object' || Array.isArray(body)) {
      return NextResponse.json({ error: 'Invalid body' }, { status: 400 })
    }

    const keys = Object.keys(body)
    if (keys.length === 0) {
      return NextResponse.json({ error: 'No fields to update' }, { status: 400 })
    }

    const disallowed = keys.filter((k) => !ALLOWED_KEYS.has(k))
    if (disallowed.length > 0) {
      return NextResponse.json(
        { error: `Only EF and duo-value fields may be updated. Disallowed: ${disallowed.join(', ')}` },
        { status: 400 }
      )
    }

    const input: {
      ef_value?: number | null
      value1_label?: string | null
      value1_unit?: string | null
      value2_label?: string | null
      value2_unit?: string | null
    } = {}

    if ('ef_value' in body) {
      try {
        input.ef_value = parseNullableNumber(body.ef_value)
      } catch (err) {
        return NextResponse.json(
          { error: err instanceof Error ? err.message : 'Invalid ef_value' },
          { status: 400 }
        )
      }
    }
    if ('value1_label' in body) input.value1_label = parseNullableString(body.value1_label)
    if ('value1_unit' in body) input.value1_unit = parseNullableString(body.value1_unit)
    if ('value2_label' in body) input.value2_label = parseNullableString(body.value2_label)
    if ('value2_unit' in body) input.value2_unit = parseNullableString(body.value2_unit)

    const record = await updateFuelResourceEfFields(id, input)
    return NextResponse.json(record)
  } catch (error) {
    console.error('PATCH /api/fuel-resources/[id] error:', error)
    return NextResponse.json({ error: 'Failed to update fuel resource' }, { status: 500 })
  }
}

export async function DELETE (
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  try {
    let password = ''
    try {
      const body = await request.json() as { password?: unknown }
      if (typeof body?.password === 'string') password = body.password
    } catch {
      password = ''
    }

    const auth = await verifyAdminPasswordFromRequest(request, password)
    if (!auth.ok) {
      return NextResponse.json({ error: auth.error }, { status: auth.status })
    }

    const { id } = await params
    let existing
    try {
      existing = await getFuelResource(id)
    } catch {
      return NextResponse.json({ error: 'Fuel resource not found' }, { status: 404 })
    }
    if (existing.deleted_at) {
      return NextResponse.json({ error: 'Fuel resource not found' }, { status: 404 })
    }

    const deleted = await softDeleteFuelResource(id)
    if (!deleted) {
      return NextResponse.json({ error: 'Fuel resource not found' }, { status: 404 })
    }

    await deleteMappingsByFuelResourceId(id)
    if (deleted.version) {
      await refreshReleaseCounts(deleted.version)
    }

    return NextResponse.json({ success: true, id, version: deleted.version })
  } catch (error) {
    console.error('DELETE /api/fuel-resources/[id] error:', error)
    return NextResponse.json({ error: 'Failed to delete fuel resource' }, { status: 500 })
  }
}
