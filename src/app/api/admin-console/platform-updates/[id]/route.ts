import { NextRequest, NextResponse } from 'next/server'
import { z } from 'zod'
import { getAdminCallerFromRequest } from '@/lib/api/admin-user-auth'
import { parseDoc } from '@/lib/platform-updates/document'
import {
  deletePlatformUpdate,
  getPlatformUpdate,
  updatePlatformUpdate,
} from '@/lib/platform-updates/service'

const patchSchema = z.object({
  status: z.enum(['active', 'inactive']).optional(),
  publishedOn: z.string().regex(/^\d{4}-\d{2}-\d{2}$/).nullable().optional(),
  titleTh: z.string().max(200).optional(),
  titleEn: z.string().max(200).optional(),
  bodyTh: z.unknown().optional(),
  bodyEn: z.unknown().optional(),
})

type RouteContext = { params: Promise<{ id: string }> }

export async function GET (request: NextRequest, context: RouteContext) {
  try {
    const admin = await getAdminCallerFromRequest(request)
    if (!admin) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    const { id } = await context.params
    const update = await getPlatformUpdate(id)
    if (!update) return NextResponse.json({ error: 'ไม่พบประกาศ' }, { status: 404 })
    return NextResponse.json({ update })
  } catch (error) {
    console.error('GET /api/admin-console/platform-updates/[id] error:', error)
    return NextResponse.json({ error: 'โหลดประกาศไม่สำเร็จ' }, { status: 500 })
  }
}

export async function PATCH (request: NextRequest, context: RouteContext) {
  try {
    const admin = await getAdminCallerFromRequest(request)
    if (!admin) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    const { id } = await context.params
    const payload = patchSchema.parse(await request.json())
    const result = await updatePlatformUpdate(id, {
      status: payload.status,
      publishedOn: payload.publishedOn,
      titleTh: payload.titleTh,
      titleEn: payload.titleEn,
      bodyTh: payload.bodyTh === undefined ? undefined : parseDoc(payload.bodyTh),
      bodyEn: payload.bodyEn === undefined ? undefined : parseDoc(payload.bodyEn),
    })
    if (!result.ok) {
      const status = result.error === 'ไม่พบประกาศ' ? 404 : 400
      return NextResponse.json({ error: result.error }, { status })
    }
    return NextResponse.json({ update: result.update })
  } catch (error) {
    if (error instanceof z.ZodError) {
      return NextResponse.json({ error: 'ข้อมูลประกาศไม่ถูกต้อง' }, { status: 400 })
    }
    console.error('PATCH /api/admin-console/platform-updates/[id] error:', error)
    return NextResponse.json({ error: 'บันทึกไม่สำเร็จ' }, { status: 500 })
  }
}

export async function DELETE (request: NextRequest, context: RouteContext) {
  try {
    const admin = await getAdminCallerFromRequest(request)
    if (!admin) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    const { id } = await context.params
    const deleted = await deletePlatformUpdate(id)
    if (!deleted) return NextResponse.json({ error: 'ไม่พบประกาศ' }, { status: 404 })
    return NextResponse.json({ ok: true })
  } catch (error) {
    console.error('DELETE /api/admin-console/platform-updates/[id] error:', error)
    return NextResponse.json({ error: 'ลบประกาศไม่สำเร็จ' }, { status: 500 })
  }
}
