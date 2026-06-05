'use client'

import { Suspense, useState } from 'react'
import { useForm } from 'react-hook-form'
import { zodResolver } from '@hookform/resolvers/zod'
import { z } from 'zod'
import {
  Alert,
  Box,
  Button,
  Card,
  CardContent,
  CircularProgress,
  InputAdornment,
  TextField,
  Typography,
} from '@mui/material'
import {
  ArrowBack as ArrowBackIcon,
  Business as BusinessIcon,
  CheckCircleOutline as CheckCircleOutlineIcon,
  Email as EmailIcon,
  Person as PersonIcon,
  Phone as PhoneIcon,
} from '@mui/icons-material'
import { RegisterConsentGate, useRegisterConsent } from '@/components/register'
import { useRegisterBack } from '@/app/register/useRegisterBack'

const trialRegisterSchema = z.object({
  organizationName: z.string().min(1, 'กรุณากรอกชื่อองค์กร'),
  contactFirstName: z.string().min(1, 'กรุณากรอกชื่อผู้ติดต่อ'),
  contactLastName: z.string().min(1, 'กรุณากรอกนามสกุลผู้ติดต่อ'),
  contactEmail: z.string().email('กรุณากรอกอีเมลให้ถูกต้อง'),
  contactPhone: z.string().min(1, 'กรุณากรอกเบอร์โทรผู้ติดต่อ'),
})

type TrialRegisterFormData = z.infer<typeof trialRegisterSchema>

function TrialRegisterForm() {
  const handleBack = useRegisterBack()
  const { consent } = useRegisterConsent()
  const [submitError, setSubmitError] = useState<string | null>(null)
  const [isSuccess, setIsSuccess] = useState(false)

  const {
    register,
    handleSubmit,
    formState: { errors, isSubmitting },
  } = useForm<TrialRegisterFormData>({
    resolver: zodResolver(trialRegisterSchema),
    defaultValues: {
      organizationName: '',
      contactFirstName: '',
      contactLastName: '',
      contactEmail: '',
      contactPhone: '',
    },
  })

  const onSubmit = async (data: TrialRegisterFormData) => {
    if (!consent) {
      setSubmitError('กรุณายืนยันการรับทราบเอกสารก่อนสมัครใช้งาน')
      return
    }

    setSubmitError(null)

    try {
      const response = await fetch('/api/public/trial-register', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          ...data,
          termsAccepted: consent.termsAccepted,
          privacyAcknowledged: consent.privacyAcknowledged,
          marketingConsent: consent.marketingConsent,
        }),
      })

      const result = await response.json()
      if (!response.ok) {
        throw new Error(result.error || 'ลงทะเบียนไม่สำเร็จ')
      }

      setIsSuccess(true)
    } catch (error) {
      setSubmitError(error instanceof Error ? error.message : 'ส่งไม่สำเร็จ')
    }
  }

  return (
    <>
      <Button
        onClick={handleBack}
        startIcon={<ArrowBackIcon />}
        sx={{ mb: 3, textTransform: 'none' }}
      >
        กลับหน้าเข้าสู่ระบบ
      </Button>

      <Card sx={{ borderRadius: 3, boxShadow: '0 16px 40px rgba(15, 23, 42, 0.10)' }}>
        <CardContent sx={{ p: { xs: 3, md: 4 } }}>
          {!isSuccess ? (
            <>
              <Box sx={{ mb: 3 }}>
                <Typography variant="h4" component="h1" fontWeight={700} gutterBottom>
                  ลงทะเบียนทดลองใช้งานสำหรับองค์กร
                </Typography>
                <Typography color="text.secondary">
                  กรอกข้อมูลองค์กรและผู้ติดต่อ ระบบจะส่งคำขอให้ผู้ดูแลอนุมัติก่อนเปิดใช้งาน
                </Typography>
              </Box>

              {submitError && (
                <Alert severity="error" sx={{ mb: 3 }}>
                  {submitError}
                </Alert>
              )}

              <Box component="form" onSubmit={handleSubmit(onSubmit)} sx={{ display: 'grid', gap: 2 }}>
                <TextField
                  label="ชื่อองค์กร"
                  {...register('organizationName')}
                  error={!!errors.organizationName}
                  helperText={errors.organizationName?.message}
                  disabled={isSubmitting}
                  fullWidth
                  InputProps={{
                    startAdornment: (
                      <InputAdornment position="start">
                        <BusinessIcon color="action" />
                      </InputAdornment>
                    ),
                  }}
                />

                <TextField
                  label="ชื่อผู้ติดต่อ"
                  {...register('contactFirstName')}
                  error={!!errors.contactFirstName}
                  helperText={errors.contactFirstName?.message}
                  disabled={isSubmitting}
                  fullWidth
                  InputProps={{
                    startAdornment: (
                      <InputAdornment position="start">
                        <PersonIcon color="action" />
                      </InputAdornment>
                    ),
                  }}
                />

                <TextField
                  label="นามสกุลผู้ติดต่อ"
                  {...register('contactLastName')}
                  error={!!errors.contactLastName}
                  helperText={errors.contactLastName?.message}
                  disabled={isSubmitting}
                  fullWidth
                  InputProps={{
                    startAdornment: (
                      <InputAdornment position="start">
                        <PersonIcon color="action" />
                      </InputAdornment>
                    ),
                  }}
                />

                <TextField
                  label="อีเมลผู้ติดต่อ"
                  type="email"
                  {...register('contactEmail')}
                  error={!!errors.contactEmail}
                  helperText={errors.contactEmail?.message}
                  disabled={isSubmitting}
                  fullWidth
                  InputProps={{
                    startAdornment: (
                      <InputAdornment position="start">
                        <EmailIcon color="action" />
                      </InputAdornment>
                    ),
                  }}
                />

                <TextField
                  label="เบอร์โทรผู้ติดต่อ"
                  {...register('contactPhone')}
                  error={!!errors.contactPhone}
                  helperText={errors.contactPhone?.message}
                  disabled={isSubmitting}
                  fullWidth
                  InputProps={{
                    startAdornment: (
                      <InputAdornment position="start">
                        <PhoneIcon color="action" />
                      </InputAdornment>
                    ),
                  }}
                />

                <Button
                  type="submit"
                  variant="contained"
                  size="large"
                  disabled={isSubmitting}
                  startIcon={isSubmitting ? <CircularProgress size={16} color="inherit" /> : null}
                  sx={{ mt: 1, py: 1.3, fontWeight: 600 }}
                >
                  {isSubmitting ? 'กำลังส่ง...' : 'ส่งคำขอทดลองใช้งาน'}
                </Button>
              </Box>
            </>
          ) : (
            <Box sx={{ textAlign: 'center', py: 2 }}>
              <CheckCircleOutlineIcon color="success" sx={{ fontSize: 80, mb: 2 }} />
              <Typography variant="h4" fontWeight={700} gutterBottom>
                ส่งคำขอแล้ว
              </Typography>
              <Typography color="text.secondary" sx={{ maxWidth: 420, mx: 'auto', mb: 3 }}>
                คำขอทดลองใช้งานของคุณถูกส่งแล้ว รอการอนุมัติจากผู้ดูแลระบบ
              </Typography>
              <Button onClick={handleBack} variant="outlined" sx={{ textTransform: 'none' }}>
                กลับ
              </Button>
            </Box>
          )}
        </CardContent>
      </Card>
    </>
  )
}

function TrialRegisterPage() {
  const handleBack = useRegisterBack()

  return (
    <RegisterConsentGate flowKey="trial" onCancel={handleBack}>
      <TrialRegisterForm />
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
