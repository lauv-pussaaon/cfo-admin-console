import { NextRequest, NextResponse } from 'next/server'
import {
  createFuelResourceLinking,
  deleteFuelResourceLinking,
  listFuelResourceLinkings,
  updateFuelResourceLinkingFactor,
} from '@/lib/api/fuel-resources-linking'
import { refreshReleaseCounts } from '@/lib/api/ef-catalog-releases'

function isUniqueViolation (error: unknown): boolean {
  if (!error || typeof error !== 'object') return false
  const code = (error as { code?: string }).code
  const message = String((error as { message?: string }).message ?? '')
  return code === '23505' || message.toLowerCase().includes('duplicate')
}

export async function GET (request: NextRequest) {
  try {
    const version = request.nextUrl.searchParams.get('version')?.trim()
    if (!version) {
      return NextResponse.json({ error: 'version is required' }, { status: 400 })
    }
    const data = await listFuelResourceLinkings(version)
    return NextResponse.json({ data })
  } catch (error) {
    console.error('GET /api/fuel-resources-linking error:', error)
    return NextResponse.json({ error: 'Failed to list linking rows' }, { status: 500 })
  }
}

export async function POST (request: NextRequest) {
  try {
    const body = await request.json()
    if (!body.source_fuel_id || !body.dest_fuel_id || !body.version) {
      return NextResponse.json(
        { error: 'source_fuel_id, dest_fuel_id, and version are required' },
        { status: 400 }
      )
    }
    if (body.source_fuel_id === body.dest_fuel_id) {
      return NextResponse.json(
        { error: 'source and dest must be different fuels' },
        { status: 400 }
      )
    }
    const factor = body.unit_conversion_factor != null
      ? Number(body.unit_conversion_factor)
      : 1
    if (!Number.isFinite(factor) || factor <= 0) {
      return NextResponse.json(
        { error: 'unit_conversion_factor must be a positive number' },
        { status: 400 }
      )
    }

    const row = await createFuelResourceLinking({
      source_fuel_id: body.source_fuel_id,
      dest_fuel_id: body.dest_fuel_id,
      unit_conversion_factor: factor,
      version: String(body.version).trim(),
    })
    await refreshReleaseCounts(row.version)
    return NextResponse.json(row, { status: 201 })
  } catch (error) {
    console.error('POST /api/fuel-resources-linking error:', error)
    if (error instanceof Error && error.message.includes('must differ')) {
      return NextResponse.json({ error: error.message }, { status: 400 })
    }
    if (isUniqueViolation(error)) {
      return NextResponse.json(
        { error: 'This source→dest pair already exists' },
        { status: 409 }
      )
    }
    const message = error instanceof Error ? error.message : 'Failed to create linking row'
    return NextResponse.json({ error: message }, { status: 500 })
  }
}

export async function PATCH (request: NextRequest) {
  try {
    const body = await request.json()
    const id = String(body.id || '').trim()
    const factor = Number(body.unit_conversion_factor)
    if (!id) {
      return NextResponse.json({ error: 'id is required' }, { status: 400 })
    }
    if (!Number.isFinite(factor) || factor <= 0) {
      return NextResponse.json(
        { error: 'unit_conversion_factor must be a positive number' },
        { status: 400 }
      )
    }
    const row = await updateFuelResourceLinkingFactor(id, factor)
    await refreshReleaseCounts(row.version)
    return NextResponse.json(row)
  } catch (error) {
    console.error('PATCH /api/fuel-resources-linking error:', error)
    const message = error instanceof Error ? error.message : 'Failed to update linking row'
    return NextResponse.json({ error: message }, { status: 500 })
  }
}

export async function DELETE (request: NextRequest) {
  try {
    const id = request.nextUrl.searchParams.get('id')?.trim()
    if (!id) {
      return NextResponse.json({ error: 'id is required' }, { status: 400 })
    }
    const deleted = await deleteFuelResourceLinking(id)
    if (!deleted) {
      return NextResponse.json({ error: 'Link not found' }, { status: 404 })
    }
    await refreshReleaseCounts(deleted.version)
    return NextResponse.json({ success: true, version: deleted.version })
  } catch (error) {
    console.error('DELETE /api/fuel-resources-linking error:', error)
    return NextResponse.json({ error: 'Failed to delete linking row' }, { status: 500 })
  }
}
