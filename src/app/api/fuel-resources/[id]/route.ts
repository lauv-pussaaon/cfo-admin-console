import { NextRequest, NextResponse } from 'next/server'
import { getFuelResource } from '@/lib/api/fuel-resources'

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
