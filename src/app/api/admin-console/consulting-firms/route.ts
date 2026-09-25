import { NextRequest, NextResponse } from 'next/server'
import { z } from 'zod'
import { getAdminCallerFromRequest } from '@/lib/api/admin-user-auth'
import { findOrCreateConsultingFirm, listConsultingFirmsWithStaff } from '@/lib/api/consulting-firms'
import { AppError } from '@/lib/utils/errors'

const createSchema = z.object({
  name: z.string().min(1).max(200),
})

export async function GET (request: NextRequest) {
  try {
    const admin = await getAdminCallerFromRequest(request)
    if (!admin) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const firms = await listConsultingFirmsWithStaff()
    return NextResponse.json({ firms })
  } catch (error) {
    console.error('GET /api/admin-console/consulting-firms error:', error)
    return NextResponse.json({ error: 'โหลดบริษัทที่ปรึกษาไม่สำเร็จ' }, { status: 500 })
  }
}

export async function POST (request: NextRequest) {
  try {
    const admin = await getAdminCallerFromRequest(request)
    if (!admin) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const payload = createSchema.parse(await request.json())
    const { firm } = await findOrCreateConsultingFirm(payload.name)
    return NextResponse.json({ firm })
  } catch (error) {
    if (error instanceof z.ZodError) {
      return NextResponse.json({ error: 'กรุณากรอกชื่อบริษัท' }, { status: 400 })
    }
    if (error instanceof AppError) {
      return NextResponse.json(
        { error: error.message },
        { status: error.statusCode || 400 }
      )
    }
    console.error('POST /api/admin-console/consulting-firms error:', error)
    return NextResponse.json({ error: 'ลงทะเบียนบริษัทไม่สำเร็จ' }, { status: 500 })
  }
}
