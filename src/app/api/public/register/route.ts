import { NextRequest, NextResponse } from 'next/server'
import { z } from 'zod'
import { createUser } from '@/lib/api/auth'
import { AppError } from '@/lib/utils/errors'

const publicRegistrationSchema = z.object({
  username: z.string().min(3).max(50).regex(/^[a-zA-Z0-9_]+$/),
  email: z.string().email(),
  password: z.string().min(6),
  name: z.string().min(1).max(120),
  role: z.enum(['Consult', 'Audit']),
})

export async function POST(request: NextRequest) {
  try {
    const body = await request.json()
    const payload = publicRegistrationSchema.parse(body)

    await createUser({
      username: payload.username.trim(),
      email: payload.email.trim().toLowerCase(),
      password: payload.password,
      name: payload.name.trim(),
      role: payload.role,
      is_approved: false,
    })

    return NextResponse.json({
      success: true,
      message: 'ส่งคำขอแล้ว รอผู้ดูแลอนุมัติ',
    })
  } catch (error) {
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

    console.error('Public registration failed:', error)
    return NextResponse.json(
      { error: 'ส่งไม่สำเร็จ ลองใหม่ภายหลัง' },
      { status: 500 }
    )
  }
}
