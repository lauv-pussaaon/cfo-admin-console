import { NextRequest, NextResponse } from 'next/server'
import { getFuelResource, updateFuelResource, softDeleteFuelResource } from '@/lib/api/fuel-resources'

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

export async function PUT(request: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  try {
    const { id } = await params
    const body = await request.json()
    const record = await updateFuelResource(id, body)
    return NextResponse.json(record)
  } catch (error) {
    console.error('PUT /api/fuel-resources/[id] error:', error)
    return NextResponse.json({ error: 'Failed to update fuel resource' }, { status: 500 })
  }
}

export async function DELETE(request: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  try {
    const { id } = await params
    await softDeleteFuelResource(id)
    return NextResponse.json({ success: true })
  } catch (error) {
    console.error('DELETE /api/fuel-resources/[id] error:', error)
    return NextResponse.json({ error: 'Failed to delete fuel resource' }, { status: 500 })
  }
}
