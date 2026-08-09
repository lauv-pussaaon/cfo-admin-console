import { NextRequest, NextResponse } from 'next/server'
import { getServiceSupabase } from '@/lib/supabase-service'
import { getAdminCallerFromRequest } from '@/lib/api/admin-user-auth'
import { listVerificationSummaries } from '@/lib/api/consult-audit-verification'

export async function GET (request: NextRequest) {
  try {
    const admin = await getAdminCallerFromRequest(request)
    if (!admin) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const supabase = getServiceSupabase()
    if (!supabase) {
      return NextResponse.json(
        { error: 'ตั้งค่า SUPABASE_SERVICE_ROLE_KEY ไม่ครบ' },
        { status: 500 }
      )
    }

    const summaries = await listVerificationSummaries(supabase)
    return NextResponse.json({
      verifications: summaries.map((row) => ({
        user_id: row.user_id,
        status: row.status,
        document_count: row.document_count,
        verified_date: row.verified_date,
        expired_date: row.expired_date,
      })),
    })
  } catch (error) {
    console.error('GET /api/admin-console/verifications error:', error)
    return NextResponse.json(
      { error: 'โหลดข้อมูลยืนยันไม่สำเร็จ' },
      { status: 500 }
    )
  }
}
