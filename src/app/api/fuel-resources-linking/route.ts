import { NextRequest, NextResponse } from 'next/server'
import {
  createFuelResourceLinking,
  deleteFuelResourceLinking,
  listFuelResourceLinkings,
} from '@/lib/api/fuel-resources-linking'

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
    const row = await createFuelResourceLinking({
      source_fuel_id: body.source_fuel_id,
      dest_fuel_id: body.dest_fuel_id,
      unit_conversion_factor: body.unit_conversion_factor,
      version: body.version,
    })
    return NextResponse.json(row, { status: 201 })
  } catch (error) {
    console.error('POST /api/fuel-resources-linking error:', error)
    return NextResponse.json({ error: 'Failed to create linking row' }, { status: 500 })
  }
}

export async function DELETE (request: NextRequest) {
  try {
    const id = request.nextUrl.searchParams.get('id')?.trim()
    if (!id) {
      return NextResponse.json({ error: 'id is required' }, { status: 400 })
    }
    await deleteFuelResourceLinking(id)
    return NextResponse.json({ success: true })
  } catch (error) {
    console.error('DELETE /api/fuel-resources-linking error:', error)
    return NextResponse.json({ error: 'Failed to delete linking row' }, { status: 500 })
  }
}
