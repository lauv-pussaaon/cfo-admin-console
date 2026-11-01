import { NextRequest, NextResponse } from 'next/server'
import { supabase } from '@/lib/supabase'
import { hashPassword, verifyPassword } from '@/lib/utils/password'

const STAFF_ROLES = new Set(['Admin', 'Consult', 'Audit', 'Support'])

export async function PATCH (request: NextRequest) {
  try {
    const userId = request.headers.get('x-admin-user-id')?.trim()
    if (!userId) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const body = await request.json() as {
      currentPassword?: unknown
      newPassword?: unknown
      confirmPassword?: unknown
    }
    const currentPassword = typeof body.currentPassword === 'string' ? body.currentPassword : ''
    const newPassword = typeof body.newPassword === 'string' ? body.newPassword : ''
    const confirmPassword = typeof body.confirmPassword === 'string' ? body.confirmPassword : ''

    if (!currentPassword || !newPassword || !confirmPassword) {
      return NextResponse.json(
        { error: 'กรอกครบทั้งรหัสผ่านปัจจุบัน รหัสผ่านใหม่ และยืนยันรหัสผ่าน' },
        { status: 400 }
      )
    }
    if (newPassword.length < 6) {
      return NextResponse.json({ error: 'รหัสผ่านต้องมีอย่างน้อย 6 ตัวอักษร' }, { status: 400 })
    }
    if (newPassword !== confirmPassword) {
      return NextResponse.json({ error: 'รหัสผ่านใหม่ไม่ตรงกัน' }, { status: 400 })
    }
    if (newPassword === currentPassword) {
      return NextResponse.json({ error: 'รหัสผ่านใหม่ต้องไม่ซ้ำกับรหัสผ่านปัจจุบัน' }, { status: 400 })
    }

    const { data: user, error: userError } = await supabase
      .from('users')
      .select('id, role, status, password_hash')
      .eq('id', userId)
      .single()

    if (userError || !user || !STAFF_ROLES.has(user.role) || user.status !== 'active') {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const valid = await verifyPassword(currentPassword, user.password_hash)
    if (!valid) {
      return NextResponse.json({ error: 'รหัสผ่านปัจจุบันไม่ถูกต้อง' }, { status: 403 })
    }

    const passwordHash = await hashPassword(newPassword)
    const { error: updateError } = await supabase
      .from('users')
      .update({ password_hash: passwordHash })
      .eq('id', user.id)

    if (updateError) throw updateError

    return NextResponse.json({ ok: true })
  } catch (error) {
    console.error('PATCH /api/admin-console/me/password error:', error)
    return NextResponse.json({ error: 'เปลี่ยนรหัสผ่านไม่สำเร็จ' }, { status: 500 })
  }
}
