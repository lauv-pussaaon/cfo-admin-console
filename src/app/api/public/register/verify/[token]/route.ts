import { NextRequest, NextResponse } from 'next/server'
import { supabase } from '@/lib/supabase'
import { getServiceSupabase } from '@/lib/supabase-service'
import {
  getVerificationByToken,
  listDocumentsForVerification,
} from '@/lib/api/consult-audit-verification'

function publicDb () {
  return getServiceSupabase() ?? supabase
}

export async function GET (
  _request: NextRequest,
  { params }: { params: Promise<{ token: string }> }
) {
  try {
    const { token } = await params
    if (!token?.trim()) {
      return NextResponse.json({ error: 'ลิงก์ไม่ถูกต้อง' }, { status: 400 })
    }

    const db = publicDb()
    const verification = await getVerificationByToken(db, token.trim())
    if (!verification) {
      return NextResponse.json({ error: 'ไม่พบคำขอยืนยัน' }, { status: 404 })
    }

    const { data: user, error: userError } = await db
      .from('users')
      .select('id, name, email, role, status')
      .eq('id', verification.user_id)
      .single()

    if (userError || !user) {
      return NextResponse.json({ error: 'ไม่พบผู้ใช้' }, { status: 404 })
    }

    const documents = await listDocumentsForVerification(db, verification.id)

    return NextResponse.json({
      verification: {
        id: verification.id,
        status: verification.status,
        verified_date: verification.verified_date,
        expired_date: verification.expired_date,
      },
      user: {
        name: user.name,
        email: user.email,
        role: user.role,
        status: user.status,
      },
      documents: documents.map((d) => ({
        id: d.id,
        file_name: d.file_name,
        file_url: d.file_url,
        uploaded_date: d.uploaded_date,
      })),
      canUpload: verification.status === 'pending_upload',
    })
  } catch (error) {
    console.error('GET /api/public/register/verify/[token] error:', error)
    return NextResponse.json({ error: 'โหลดข้อมูลไม่สำเร็จ' }, { status: 500 })
  }
}
