import { NextRequest, NextResponse } from 'next/server'
import { z } from 'zod'
import { getAdminCallerFromRequest } from '@/lib/api/admin-user-auth'
import { deleteConsultingFirm, renameConsultingFirm } from '@/lib/api/consulting-firms'
import { AppError } from '@/lib/utils/errors'

const renameSchema = z.object({
  name: z.string().min(1).max(200),
})

export async function PATCH (
  request: NextRequest,
  context: { params: Promise<{ id: string }> }
) {
  try {
    const admin = await getAdminCallerFromRequest(request)
    if (!admin) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const { id } = await context.params
    const payload = renameSchema.parse(await request.json())
    const firm = await renameConsultingFirm(id, payload.name)
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
    console.error('PATCH /api/admin-console/consulting-firms/[id] error:', error)
    return NextResponse.json({ error: 'เปลี่ยนชื่อไม่สำเร็จ' }, { status: 500 })
  }
}

export async function DELETE (
  request: NextRequest,
  context: { params: Promise<{ id: string }> }
) {
  try {
    const admin = await getAdminCallerFromRequest(request)
    if (!admin) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const { id } = await context.params
    await deleteConsultingFirm(id)
    return NextResponse.json({ success: true })
  } catch (error) {
    if (error instanceof AppError) {
      return NextResponse.json(
        { error: error.message },
        { status: error.statusCode || 400 }
      )
    }
    console.error('DELETE /api/admin-console/consulting-firms/[id] error:', error)
    return NextResponse.json({ error: 'ลบบริษัทไม่สำเร็จ' }, { status: 500 })
  }
}
