import { NextRequest, NextResponse } from 'next/server'
import { getEmissionTemplate, softDeleteEmissionTemplate, updateEmissionTemplate } from '@/lib/api/emission-templates'

export async function GET(request: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  try {
    const { id } = await params
    const record = await getEmissionTemplate(id)
    return NextResponse.json(record)
  } catch (error) {
    console.error('GET /api/emission-templates/[id] error:', error)
    return NextResponse.json({ error: 'Emission template not found' }, { status: 404 })
  }
}

export async function PUT(request: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  try {
    const { id } = await params
    const body = await request.json()
    const record = await updateEmissionTemplate(id, body)
    return NextResponse.json(record)
  } catch (error) {
    console.error('PUT /api/emission-templates/[id] error:', error)
    return NextResponse.json({ error: 'Failed to update emission template' }, { status: 500 })
  }
}

export async function DELETE(request: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  try {
    const { id } = await params
    await softDeleteEmissionTemplate(id)
    return NextResponse.json({ success: true })
  } catch (error) {
    console.error('DELETE /api/emission-templates/[id] error:', error)
    return NextResponse.json({ error: 'Failed to delete emission template' }, { status: 500 })
  }
}
