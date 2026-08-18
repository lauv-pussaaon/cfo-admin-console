'use client'

import { Suspense } from 'react'
import { RegisterConsentGate } from '@/components/register'
import OrgSignupForm from '@/components/register/OrgSignupForm'
import { useRegisterBack } from '@/app/register/useRegisterBack'

function TrialRegisterPage() {
  const handleBack = useRegisterBack()

  return (
    <RegisterConsentGate flowKey="trial" onCancel={handleBack}>
      <OrgSignupForm
        apiPath="/api/public/trial-register"
        copy={{
          title: 'ลงทะเบียนทดลองใช้งานสำหรับองค์กร',
          description:
            'กรอกข้อมูลองค์กรและผู้ติดต่อ เพื่อขอทดลองใช้งาน Demo 30 วัน ทีม Ideacarb จะติดต่อกลับพร้อมคำแนะนำในการเริ่มใช้งาน',
          submitLabel: 'ส่งคำขอทดลองใช้งาน',
          successBody:
            'ทีม Ideacarb ได้รับคำขอทดลองใช้งาน Demo 30 วันของท่านแล้ว ทีมงานจะติดต่อกลับในเร็ว ๆ นี้ เพื่อแจ้งขั้นตอนและคำแนะนำในการเริ่มใช้งาน',
        }}
      />
    </RegisterConsentGate>
  )
}

export default function RegisterTrialPage() {
  return (
    <Suspense fallback={null}>
      <TrialRegisterPage />
    </Suspense>
  )
}
