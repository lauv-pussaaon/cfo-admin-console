import { NextRequest, NextResponse } from 'next/server'
import { z } from 'zod'
import { createUser } from '@/lib/server/users'
import { AppError } from '@/lib/utils/errors'
import { sendRegistrationConfirmationEmail } from '@/lib/email/send-registration-confirmation'
import { sendAdminNewRegistrationNotice } from '@/lib/email/send-admin-new-registration-notice'
import { resolveSiteOriginFromRequest } from '@/lib/email/resolve-site-origin'
import { getAdminNotificationEmails } from '@/lib/server/users-admin'

const publicRegistrationSchema = z.object({
  username: z.string().min(3).max(50).regex(/^[a-zA-Z0-9_]+$/),
  email: z.string().email(),
  password: z.string().min(6),
  name: z.string().min(1).max(120),
  role: z.enum(['Consult', 'Audit']),
})

export async function POST (request: NextRequest) {
  try {
    const body = await request.json()
    const payload = publicRegistrationSchema.parse(body)

    const emailNormalized = payload.email.trim().toLowerCase()

    await createUser({
      username: payload.username.trim(),
      email: emailNormalized,
      password: payload.password,
      name: payload.name.trim(),
      role: payload.role,
      is_approved: false,
    })

    const requestOrigin = resolveSiteOriginFromRequest(request)

    try {
      const emailResult = await sendRegistrationConfirmationEmail({
        to: emailNormalized,
        name: payload.name.trim(),
        username: payload.username.trim(),
        email: emailNormalized,
        role: payload.role,
        requestOrigin,
      })
      if (!emailResult.sent) {
        console.warn('[email] ไม่ได้ส่งอีเมลยืนยัน:', emailResult.skipReason ?? 'unknown')
      }
    } catch (emailErr) {
      console.error('[email] ส่งอีเมลยืนยันลงทะเบียนไม่สำเร็จ:', emailErr)
    }

    try {
      const adminEmails = await getAdminNotificationEmails()
      const noticeResult = await sendAdminNewRegistrationNotice({
        name: payload.name.trim(),
        username: payload.username.trim(),
        email: emailNormalized,
        role: payload.role,
        requestOrigin,
        adminEmails,
      })
      if (!noticeResult.sent) {
        console.warn('[email] ไม่ได้ส่งอีเมลแจ้ง Admin:', noticeResult.skipReason ?? 'unknown')
      }
    } catch (adminEmailErr) {
      console.error('[email] ส่งอีเมลแจ้ง Admin ไม่สำเร็จ:', adminEmailErr)
    }

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
