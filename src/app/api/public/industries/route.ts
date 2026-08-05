import { NextResponse } from 'next/server'
import { listActiveIndustryOptions } from '@/lib/api/emission-templates'

export async function GET () {
  try {
    const industries = await listActiveIndustryOptions()
    return NextResponse.json({ industries })
  } catch (error) {
    console.error('Failed to list industries for registration:', error)
    return NextResponse.json(
      { error: 'โหลดรายการอุตสาหกรรมไม่สำเร็จ' },
      { status: 500 }
    )
  }
}
