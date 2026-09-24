import { NextRequest, NextResponse } from 'next/server'
import { z } from 'zod'
import { createUser, deleteUser } from '@/lib/api/auth'
import {
  getFirmContactFromRequest,
  listStaffForFirm,
} from '@/lib/api/consulting-firms'
import { notifyConsultRegistration } from '@/lib/register/notify-consult-registration'
import { supabase } from '@/lib/supabase'
import { AppError } from '@/lib/utils/errors'

const phonePattern = /^[0-9+\-\s()]{8,20}$/

const addStaffSchema = z.object({
  name: z.string().min(1).max(120),
  username: z.string().min(3).max(50).regex(/^[a-zA-Z0-9_]+$/),
  email: z.string().email(),
  password: z.string().min(6),
  phone: z.string().min(1).regex(phonePattern),
})

export async function GET (request: NextRequest) {
  try {
    const contact = await getFirmContactFromRequest(request)
    if (!contact?.consulting_firm_id) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const { data: firm, error } = await supabase
      .from('consulting_firms')
      .select('id, name')
      .eq('id', contact.consulting_firm_id)
      .single()

    if (error || !firm) {
      return NextResponse.json({ error: 'ไม่พบบริษัทที่ปรึกษา' }, { status: 404 })
    }

    const staff = await listStaffForFirm(firm.id)
    return NextResponse.json({ firm, staff })
  } catch (error) {
    console.error('GET /api/admin-console/firm-staff error:', error)
    return NextResponse.json({ error: 'โหลดทีมไม่สำเร็จ' }, { status: 500 })
  }
}

export async function POST (request: NextRequest) {
  let createdUserId: string | null = null

  try {
    const contact = await getFirmContactFromRequest(request)
    if (!contact?.consulting_firm_id) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const payload = addStaffSchema.parse(await request.json())
    const { data: firm, error: firmError } = await supabase
      .from('consulting_firms')
      .select('id, name')
      .eq('id', contact.consulting_firm_id)
      .single()

    if (firmError || !firm) {
      return NextResponse.json({ error: 'ไม่พบบริษัทที่ปรึกษา' }, { status: 404 })
    }

    const email = payload.email.trim().toLowerCase()
    const user = await createUser({
      username: payload.username.trim(),
      email,
      password: payload.password,
      name: payload.name.trim(),
      role: 'Consult',
      status: 'requested',
      organization_name: firm.name,
      phone: payload.phone.trim(),
      industries: [],
      consulting_firm_id: firm.id,
      is_firm_contact_person: false,
    })
    createdUserId = user.id

    await notifyConsultRegistration(request, {
      userId: user.id,
      name: payload.name.trim(),
      username: payload.username.trim(),
      email,
      role: 'Consult',
      profile: {
        organizationName: firm.name,
        phone: payload.phone.trim(),
        yearExperiences: null,
        industryLabels: [],
      },
    })

    const staff = await listStaffForFirm(firm.id)
    return NextResponse.json({ staff })
  } catch (error) {
    if (createdUserId) {
      try {
        await deleteUser(createdUserId)
      } catch (rollbackErr) {
        console.error('Failed to rollback staff user:', rollbackErr)
      }
    }

    if (error instanceof z.ZodError) {
      return NextResponse.json(
        { error: 'ข้อมูลไม่ถูกต้อง กรุณาตรวจสอบอีกครั้ง' },
        { status: 400 }
      )
    }

    if (error instanceof AppError) {
      return NextResponse.json(
        { error: error.message },
        { status: error.statusCode || 400 }
      )
    }

    console.error('POST /api/admin-console/firm-staff error:', error)
    return NextResponse.json({ error: 'เพิ่มพนักงานไม่สำเร็จ' }, { status: 500 })
  }
}
