import { NextRequest, NextResponse } from 'next/server'
import { getMappingsByActivityGroupId, setMappings } from '@/lib/api/activity-group-fuel-resources'

export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  try {
    const { id } = await params
    const data = await getMappingsByActivityGroupId(id)
    return NextResponse.json({ data })
  } catch (error) {
    console.error('GET /api/template-activity-groups/[id]/fuel-resources error:', error)
    return NextResponse.json({ error: 'Failed to fetch fuel resource mappings' }, { status: 500 })
  }
}

export async function PUT(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  try {
    const { id } = await params
    const body = await request.json()
    const mappings = Array.isArray(body.mappings) ? body.mappings : []
    const data = await setMappings(id, mappings)
    return NextResponse.json({ data })
  } catch (error) {
    console.error('PUT /api/template-activity-groups/[id]/fuel-resources error:', error)
    return NextResponse.json({ error: 'Failed to update fuel resource mappings' }, { status: 500 })
  }
}
