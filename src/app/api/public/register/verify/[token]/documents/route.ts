import { NextRequest, NextResponse } from 'next/server'
import { supabase } from '@/lib/supabase'
import { getServiceSupabase } from '@/lib/supabase-service'
import {
  getVerificationByToken,
  insertVerificationDocuments,
  listDocumentsForVerification,
  updateVerificationStatus,
} from '@/lib/api/consult-audit-verification'
import { uploadVerificationDocument } from '@/lib/services/verification-document-upload.service'
import { MAX_VERIFICATION_DOCUMENTS } from '@/lib/register/verification-documents'
import { sendDocumentsSubmittedEmail } from '@/lib/email/send-documents-submitted'
import { resolveSiteOriginFromRequest } from '@/lib/email/resolve-site-origin'

function publicDb () {
  return getServiceSupabase() ?? supabase
}

export async function POST (
  request: NextRequest,
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

    if (verification.status !== 'pending_upload') {
      return NextResponse.json(
        { error: 'ไม่สามารถอัปโหลดเอกสารในสถานะนี้ได้' },
        { status: 400 }
      )
    }

    const formData = await request.formData()
    const files = formData
      .getAll('files')
      .filter((entry): entry is File => entry instanceof File)

    if (files.length === 0) {
      return NextResponse.json(
        { error: 'กรุณาเลือกไฟล์อย่างน้อย 1 ไฟล์' },
        { status: 400 }
      )
    }

    if (files.length > MAX_VERIFICATION_DOCUMENTS) {
      return NextResponse.json(
        { error: `อัปโหลดได้สูงสุด ${MAX_VERIFICATION_DOCUMENTS} ไฟล์` },
        { status: 400 }
      )
    }

    const existing = await listDocumentsForVerification(db, verification.id)
    if (existing.length + files.length > MAX_VERIFICATION_DOCUMENTS) {
      return NextResponse.json(
        { error: `อัปโหลดได้สูงสุด ${MAX_VERIFICATION_DOCUMENTS} ไฟล์` },
        { status: 400 }
      )
    }

    const { data: user, error: userError } = await db
      .from('users')
      .select('id, name, email, role')
      .eq('id', verification.user_id)
      .single()

    if (userError || !user) {
      return NextResponse.json({ error: 'ไม่พบผู้ใช้' }, { status: 404 })
    }
    if (user.role !== 'Consult' && user.role !== 'Audit') {
      return NextResponse.json(
        { error: 'บทบาทไม่ถูกต้องสำหรับอัปโหลดเอกสารยืนยัน' },
        { status: 400 }
      )
    }

    const uploaded: Array<{ file_url: string; file_name: string }> = []
    for (const file of files) {
      const result = await uploadVerificationDocument(file, {
        role: user.role,
        userId: user.id,
      })
      if (!result.success || !result.fileUrl) {
        return NextResponse.json(
          { error: result.error || `อัปโหลด ${file.name} ไม่สำเร็จ` },
          { status: 400 }
        )
      }
      uploaded.push({
        file_url: result.fileUrl,
        file_name: result.fileName || file.name,
      })
    }

    const documents = await insertVerificationDocuments(
      db,
      verification.id,
      uploaded
    )

    await updateVerificationStatus(db, verification.id, {
      status: 'pending_review',
      rejection_reason: null,
    })

    if (user?.email) {
      try {
        const emailResult = await sendDocumentsSubmittedEmail({
          to: user.email,
          name: user.name || user.email,
          documentCount: documents.length + existing.length,
          requestOrigin: resolveSiteOriginFromRequest(request),
        })
        if (!emailResult.sent) {
          console.warn(
            '[email] ไม่ได้ส่งอีเมลรับเอกสาร:',
            emailResult.skipReason ?? 'unknown'
          )
        }
      } catch (emailErr) {
        console.error('[email] ส่งอีเมลรับเอกสารไม่สำเร็จ:', emailErr)
      }
    }

    return NextResponse.json({
      success: true,
      message: 'ส่งเอกสารแล้ว รอทีมงานตรวจสอบ',
      documentCount: documents.length + existing.length,
    })
  } catch (error) {
    console.error(
      'POST /api/public/register/verify/[token]/documents error:',
      error
    )
    return NextResponse.json({ error: 'ส่งเอกสารไม่สำเร็จ' }, { status: 500 })
  }
}
