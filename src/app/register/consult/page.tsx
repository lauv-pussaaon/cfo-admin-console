'use client'

import { Suspense, useState } from 'react'
import Image from 'next/image'
import Link from 'next/link'
import {
  Box,
  Button,
  Card,
  CardContent,
  ToggleButton,
  ToggleButtonGroup,
  Typography,
} from '@mui/material'
import {
  CheckCircleOutline as CheckCircleOutlineIcon,
  ArrowBack as ArrowBackIcon,
} from '@mui/icons-material'
import { RegisterConsentGate } from '@/components/register'
import ConsultIndividualForm from '@/components/register/ConsultIndividualForm'
import ConsultFirmForm from '@/components/register/ConsultFirmForm'
import { useRegisterBack } from '@/app/register/useRegisterBack'

type RegistrantType = 'individual' | 'firm'

function ConsultRegisterForm () {
  const handleBack = useRegisterBack()
  const [registrantType, setRegistrantType] = useState<RegistrantType>('individual')
  const [isSuccess, setIsSuccess] = useState(false)

  return (
    <>
      <Button
        onClick={handleBack}
        startIcon={<ArrowBackIcon />}
        sx={{ mb: 3, textTransform: 'none' }}
      >
        กลับ
      </Button>

      <Card
        sx={{
          borderRadius: 3,
          boxShadow: '0 20px 48px rgba(15, 23, 42, 0.10)',
          overflow: 'hidden',
        }}
      >
        <CardContent sx={{ p: { xs: 3, md: 5 } }}>
          <Box sx={{ display: 'flex', justifyContent: 'center', mb: 3 }}>
            <Image
              src="/ideacarb-logo-square.png"
              alt="IdeaCarb"
              width={72}
              height={72}
              style={{ width: 72, height: 72, objectFit: 'contain' }}
              priority
            />
          </Box>

          {!isSuccess ? (
            <>
              <Box sx={{ mb: 3.5, textAlign: 'center' }}>
                <Typography variant="h4" component="h1" fontWeight={700} gutterBottom>
                  ลงทะเบียนที่ปรึกษาหรือผู้ทวนสอบ
                </Typography>
                <Typography color="text.secondary" sx={{ maxWidth: 520, mx: 'auto', mb: 2 }}>
                  กรอกข้อมูลบัญชีและโปรไฟล์ จากนั้นอัปโหลดเอกสารยืนยันตัวตนตามลิงก์ในอีเมล
                </Typography>
                <ToggleButtonGroup
                  exclusive
                  value={registrantType}
                  onChange={(_event, value: RegistrantType | null) => {
                    if (value) setRegistrantType(value)
                  }}
                  sx={{ mb: 1 }}
                >
                  <ToggleButton value="individual" sx={{ textTransform: 'none', px: 3 }}>
                    บุคคล
                  </ToggleButton>
                  <ToggleButton value="firm" sx={{ textTransform: 'none', px: 3 }}>
                    บริษัทที่ปรึกษา
                  </ToggleButton>
                </ToggleButtonGroup>
              </Box>

              {registrantType === 'individual' ? (
                <ConsultIndividualForm onSuccess={() => setIsSuccess(true)} />
              ) : (
                <ConsultFirmForm onSuccess={() => setIsSuccess(true)} />
              )}
            </>
          ) : (
            <Box sx={{ textAlign: 'center', py: 2 }}>
              <CheckCircleOutlineIcon color="success" sx={{ fontSize: 80, mb: 2 }} />
              <Typography variant="h4" fontWeight={700} gutterBottom>
                ส่งคำขอแล้ว
              </Typography>
              <Typography color="text.secondary" sx={{ maxWidth: 420, mx: 'auto', mb: 3 }}>
                กรุณาตรวจสอบอีเมลเพื่ออัปโหลดเอกสารยืนยันตัวตน จากนั้นรอผู้ดูแลอนุมัติก่อนเข้าสู่ระบบ
              </Typography>
              <Button component={Link} href="/login" variant="outlined" sx={{ textTransform: 'none' }}>
                ไปเข้าสู่ระบบ
              </Button>
            </Box>
          )}
        </CardContent>
      </Card>
    </>
  )
}

function ConsultRegisterPage () {
  const handleBack = useRegisterBack()

  return (
    <RegisterConsentGate flowKey="consult" onCancel={handleBack}>
      <ConsultRegisterForm />
    </RegisterConsentGate>
  )
}

export default function RegisterPage () {
  return (
    <Suspense fallback={null}>
      <ConsultRegisterPage />
    </Suspense>
  )
}
