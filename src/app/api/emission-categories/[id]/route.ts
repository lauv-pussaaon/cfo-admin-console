import { NextRequest, NextResponse } from 'next/server'
import { getScopeCategory, updateScopeCategory, softDeleteScopeCategory } from '@/lib/api/fuel-resources'

export async function GET(request: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  try {
    const { id } = await params
    const record = await getScopeCategory(id)
    return NextResponse.json(record)
  } catch (error) {
    console.error('GET /api/emission-categories/[id] error:', error)
    return NextResponse.json({ error: 'Category not found' }, { status: 404 })
  }
}

export async function PUT(request: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  try {
    const { id } = await params
    const body = await request.json()
    const record = await updateScopeCategory(id, body)
    return NextResponse.json(record)
  } catch (error) {
    console.error('PUT /api/emission-categories/[id] error:', error)
    return NextResponse.json({ error: 'Failed to update category' }, { status: 500 })
  }
}

export async function DELETE(request: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  try {
    const { id } = await params
    await softDeleteScopeCategory(id)
    return NextResponse.json({ success: true })
  } catch (error) {
    console.error('DELETE /api/emission-categories/[id] error:', error)
    return NextResponse.json({ error: 'Failed to delete category' }, { status: 500 })
  }
}
