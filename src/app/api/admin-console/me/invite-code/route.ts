import { NextRequest, NextResponse } from 'next/server'
import { z } from 'zod'
import { supabase } from '@/lib/supabase'

const inviteCodeSchema = z.object({
  inviteCode: z.string().trim().regex(/^[a-zA-Z0-9_-]{3,64}$/),
})

export async function PATCH (request: NextRequest) {
  try {
    const userId = request.headers.get('x-admin-user-id')?.trim()
    if (!userId) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const { data: user, error: userError } = await supabase
      .from('users')
      .select('id, role, status, invite_hashcode')
      .eq('id', userId)
      .single()

    if (userError || !user || user.role !== 'Consult' || user.status !== 'active') {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const payload = inviteCodeSchema.parse(await request.json())
    if (user.invite_hashcode === payload.inviteCode) {
      return NextResponse.json({ inviteCode: payload.inviteCode })
    }

    const { data: taken, error: takenError } = await supabase
      .from('users')
      .select('id')
      .eq('invite_hashcode', payload.inviteCode)
      .neq('id', user.id)
      .maybeSingle()

    if (takenError) {
      throw takenError
    }
    if (taken) {
      return NextResponse.json({ error: 'รหัสเชิญนี้ถูกใช้แล้ว' }, { status: 409 })
    }

    const { error: updateError } = await supabase
      .from('users')
      .update({ invite_hashcode: payload.inviteCode })
      .eq('id', user.id)

    if (updateError) {
      if (updateError.code === '23505') {
        return NextResponse.json({ error: 'รหัสเชิญนี้ถูกใช้แล้ว' }, { status: 409 })
      }
      throw updateError
    }

    return NextResponse.json({ inviteCode: payload.inviteCode })
  } catch (error) {
    if (error instanceof z.ZodError) {
      return NextResponse.json(
        { error: 'รหัสเชิญใช้ได้เฉพาะ a–z, 0–9, _ และ - ความยาว 3–64 ตัว' },
        { status: 400 }
      )
    }
    console.error('PATCH /api/admin-console/me/invite-code error:', error)
    return NextResponse.json({ error: 'บันทึกรหัสเชิญไม่สำเร็จ' }, { status: 500 })
  }
}
