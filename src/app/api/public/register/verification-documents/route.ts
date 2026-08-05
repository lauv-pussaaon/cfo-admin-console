import { NextRequest, NextResponse } from 'next/server'
import { uploadVerificationDocument } from '@/lib/services/verification-document-upload.service'

export async function POST (request: NextRequest) {
  try {
    const formData = await request.formData()
    const file = formData.get('file')

    if (!(file instanceof File)) {
      return NextResponse.json({ error: 'กรุณาเลือกไฟล์' }, { status: 400 })
    }

    const result = await uploadVerificationDocument(file)
    if (!result.success || !result.fileUrl) {
      return NextResponse.json(
        { error: result.error || 'อัปโหลดไม่สำเร็จ' },
        { status: 400 }
      )
    }

    return NextResponse.json(
      {
        url: result.fileUrl,
        fileName: result.fileName,
        filePath: result.filePath,
      },
      { status: 201 }
    )
  } catch (error) {
    console.error('POST /api/public/register/verification-documents error:', error)
    return NextResponse.json({ error: 'อัปโหลดไม่สำเร็จ' }, { status: 500 })
  }
}
