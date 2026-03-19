import { NextRequest, NextResponse } from 'next/server'
import { getFuelResourcesByCategory } from '@/lib/api/fuel-resources'

export async function GET(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url)
    const scopeCategoryId = searchParams.get('scope_category_id')
    if (!scopeCategoryId) {
      return NextResponse.json({ error: 'scope_category_id is required' }, { status: 400 })
    }
    const subCategory = searchParams.get('sub_category') ?? undefined
    const data = await getFuelResourcesByCategory(scopeCategoryId, subCategory)
    return NextResponse.json({ data })
  } catch (error) {
    console.error('GET /api/fuel-resources/by-category error:', error)
    return NextResponse.json({ error: 'Failed to fetch fuel resources' }, { status: 500 })
  }
}
