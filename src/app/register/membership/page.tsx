'use client'

import { Suspense } from 'react'
import { RegisterConsentGate } from '@/components/register'
import OrgSignupForm from '@/components/register/OrgSignupForm'
import { useRegisterBack } from '@/app/register/useRegisterBack'

function MembershipRegisterPage() {
  const handleBack = useRegisterBack()

  return (
    <RegisterConsentGate flowKey="membership" onCancel={handleBack}>
      <OrgSignupForm
        apiPath="/api/public/membership-register"
        copy={{
          title: 'ลงทะเบียนสมาชิกรายปี',
          description:
            'กรอกข้อมูลองค์กรและผู้ติดต่อ เพื่อสมัครบัญชีสมาชิกรายปี ทีม Ideacarb จะติดต่อกลับเพื่อยืนยันและเปิดใช้งาน',
          submitLabel: 'ส่งคำขอสมัครสมาชิกรายปี',
          successBody:
            'ทีม Ideacarb ได้รับคำขอสมัครสมาชิกรายปีของท่านแล้ว ทีมงานจะติดต่อกลับในเร็ว ๆ นี้ เพื่อแจ้งขั้นตอนการเปิดใช้งานบัญชี',
        }}
      />
    </RegisterConsentGate>
  )
}

export default function RegisterMembershipPage() {
  return (
    <Suspense fallback={null}>
      <MembershipRegisterPage />
    </Suspense>
  )
}
