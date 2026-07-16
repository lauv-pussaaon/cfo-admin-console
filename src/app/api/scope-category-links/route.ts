import { NextResponse } from 'next/server'
import { SCOPE_CATEGORY_LINK_RULES } from '@/lib/constants/scope-category-links'

export async function GET () {
  return NextResponse.json({ data: SCOPE_CATEGORY_LINK_RULES })
}
