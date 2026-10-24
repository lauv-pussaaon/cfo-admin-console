import { NextRequest, NextResponse } from 'next/server'
import { getAdminCallerFromRequest } from '@/lib/api/admin-user-auth'
import { uploadPlatformBanner } from '@/lib/platform-updates/service'

type RouteContext = { params: Promise<{ id: string }> }

export async function POST (request: NextRequest, context: RouteContext) {
  try {
    const admin = await getAdminCallerFromRequest(request)
    if (!admin) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    const { id } = await context.params
    const form = await request.formData()
    const file = form.get('file')
    if (!(file instanceof File)) {
      return NextResponse.json({ error: 'เลือกไฟล์แบนเนอร์' }, { status: 400 })
    }
    const result = await uploadPlatformBanner(id, file)
    if (!result.ok) {
      const status = result.error === 'ไม่พบประกาศ' ? 404 : 400
      return NextResponse.json({ error: result.error }, { status })
    }
    return NextResponse.json({ update: result.update })
  } catch (error) {
    console.error('POST /api/admin-console/platform-updates/[id]/banner error:', error)
    return NextResponse.json({ error: 'อัปโหลดแบนเนอร์ไม่สำเร็จ' }, { status: 500 })
  }
}
