import { NextRequest, NextResponse } from 'next/server'
import {
  getTemplateActivityGroup,
  softDeleteTemplateActivityGroup,
  updateTemplateActivityGroup,
} from '@/lib/api/emission-templates'

export async function GET(request: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  try {
    const { id } = await params
    const record = await getTemplateActivityGroup(id)
    return NextResponse.json(record)
  } catch (error) {
    console.error('GET /api/template-activity-groups/[id] error:', error)
    return NextResponse.json({ error: 'Activity group not found' }, { status: 404 })
  }
}

export async function PUT(request: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  try {
    const { id } = await params
    const body = await request.json()
    const record = await updateTemplateActivityGroup(id, body)
    return NextResponse.json(record)
  } catch (error) {
    console.error('PUT /api/template-activity-groups/[id] error:', error)
    return NextResponse.json({ error: 'Failed to update activity group' }, { status: 500 })
  }
}

export async function DELETE(request: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  try {
    const { id } = await params
    await softDeleteTemplateActivityGroup(id)
    return NextResponse.json({ success: true })
  } catch (error) {
    console.error('DELETE /api/template-activity-groups/[id] error:', error)
    return NextResponse.json({ error: 'Failed to delete activity group' }, { status: 500 })
  }
}
