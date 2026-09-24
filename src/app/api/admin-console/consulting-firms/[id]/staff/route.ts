import { NextRequest, NextResponse } from 'next/server'
import { z } from 'zod'
import { getAdminCallerFromRequest } from '@/lib/api/admin-user-auth'
import {
  assignConsultToFirm,
  unassignConsultFromFirm,
} from '@/lib/api/consulting-firms'
import { AppError } from '@/lib/utils/errors'

const userSchema = z.object({
  userId: z.uuid(),
})

async function requireAdmin (request: NextRequest) {
  const admin = await getAdminCallerFromRequest(request)
  if (!admin) {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
  }
  return null
}

export async function POST (
  request: NextRequest,
  context: { params: Promise<{ id: string }> }
) {
  try {
    const denied = await requireAdmin(request)
    if (denied) return denied

    const { id } = await context.params
    const payload = userSchema.parse(await request.json())
    await assignConsultToFirm(id, payload.userId)
    return NextResponse.json({ success: true })
  } catch (error) {
    if (error instanceof z.ZodError) {
      return NextResponse.json({ error: 'กรุณาเลือกที่ปรึกษา' }, { status: 400 })
    }
    if (error instanceof AppError) {
      return NextResponse.json(
        { error: error.message },
        { status: error.statusCode || 400 }
      )
    }
    console.error('POST /api/admin-console/consulting-firms/[id]/staff error:', error)
    return NextResponse.json({ error: 'เพิ่มที่ปรึกษาไม่สำเร็จ' }, { status: 500 })
  }
}

export async function DELETE (
  request: NextRequest,
  context: { params: Promise<{ id: string }> }
) {
  try {
    const denied = await requireAdmin(request)
    if (denied) return denied

    const { id } = await context.params
    const payload = userSchema.parse(await request.json())
    await unassignConsultFromFirm(id, payload.userId)
    return NextResponse.json({ success: true })
  } catch (error) {
    if (error instanceof z.ZodError) {
      return NextResponse.json({ error: 'กรุณาเลือกที่ปรึกษา' }, { status: 400 })
    }
    if (error instanceof AppError) {
      return NextResponse.json(
        { error: error.message },
        { status: error.statusCode || 400 }
      )
    }
    console.error('DELETE /api/admin-console/consulting-firms/[id]/staff error:', error)
    return NextResponse.json({ error: 'นำออกไม่สำเร็จ' }, { status: 500 })
  }
}
