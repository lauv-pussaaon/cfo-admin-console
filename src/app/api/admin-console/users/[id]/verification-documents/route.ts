import { NextRequest, NextResponse } from 'next/server'
import { getServiceSupabase } from '@/lib/supabase-service'
import { getAdminCallerFromRequest } from '@/lib/api/admin-user-auth'
import {
  getVerificationByUserId,
  listDocumentsForVerification,
} from '@/lib/api/consult-audit-verification'

export async function GET (
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  try {
    const admin = await getAdminCallerFromRequest(request)
    if (!admin) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const { id } = await params
    if (!id) {
      return NextResponse.json({ error: 'ไม่พบรหัสผู้ใช้' }, { status: 400 })
    }

    const supabase = getServiceSupabase()
    if (!supabase) {
      return NextResponse.json(
        { error: 'ตั้งค่า SUPABASE_SERVICE_ROLE_KEY ไม่ครบ' },
        { status: 500 }
      )
    }

    const verification = await getVerificationByUserId(supabase, id)
    if (!verification) {
      return NextResponse.json({
        verification: null,
        documents: [],
      })
    }

    const documents = await listDocumentsForVerification(
      supabase,
      verification.id
    )

    return NextResponse.json({
      verification: {
        id: verification.id,
        status: verification.status,
        verified_date: verification.verified_date,
        expired_date: verification.expired_date,
        rejection_reason: verification.rejection_reason,
      },
      documents,
    })
  } catch (error) {
    console.error(
      'GET /api/admin-console/users/[id]/verification-documents error:',
      error
    )
    return NextResponse.json(
      { error: 'โหลดเอกสารยืนยันไม่สำเร็จ' },
      { status: 500 }
    )
  }
}
