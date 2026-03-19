import { NextRequest, NextResponse } from 'next/server'
import { getDistinctSubCategories } from '@/lib/api/fuel-resources'

export async function GET(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url)
    const scopeCategoryId = searchParams.get('scope_category_id')
    if (!scopeCategoryId) {
      return NextResponse.json({ error: 'scope_category_id is required' }, { status: 400 })
    }
    const data = await getDistinctSubCategories(scopeCategoryId)
    return NextResponse.json({ data })
  } catch (error) {
    console.error('GET /api/fuel-resources/sub-categories error:', error)
    return NextResponse.json({ error: 'Failed to fetch sub-categories' }, { status: 500 })
  }
}
