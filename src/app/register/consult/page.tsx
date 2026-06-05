'use client'

import { Suspense, useState } from 'react'
import Link from 'next/link'
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
  FormControl,
  InputAdornment,
  InputLabel,
  MenuItem,
  Select,
  TextField,
  Typography,
} from '@mui/material'
import {
  CheckCircleOutline as CheckCircleOutlineIcon,
  Email as EmailIcon,
  Lock as LockIcon,
  Person as PersonIcon,
  Badge as BadgeIcon,
  ArrowBack as ArrowBackIcon,
} from '@mui/icons-material'
import { RegisterConsentGate, useRegisterConsent } from '@/components/register'
import { useRegisterBack } from '@/app/register/useRegisterBack'

const registerSchema = z.object({
  name: z.string().min(1, 'กรุณากรอกชื่อ-นามสกุล'),
  username: z
    .string()
    .min(3, 'ชื่อผู้ใช้อย่างน้อย 3 ตัวอักษร')
    .max(50, 'ชื่อผู้ใช้สูงสุด 50 ตัวอักษร')
    .regex(/^[a-zA-Z0-9_]+$/, 'ใช้ได้เฉพาะ a–z, 0–9 และ _'),
  email: z.string().email('กรุณากรอกอีเมลให้ถูกต้อง'),
  password: z.string().min(6, 'รหัสผ่านอย่างน้อย 6 ตัว'),
  role: z.enum(['Consult', 'Audit'], {
    message: 'กรุณาเลือกบทบาท',
  }),
})

type RegisterFormData = z.infer<typeof registerSchema>

function ConsultRegisterForm() {
  const handleBack = useRegisterBack()
  const { consent } = useRegisterConsent()
  const [submitError, setSubmitError] = useState<string | null>(null)
  const [isSuccess, setIsSuccess] = useState(false)

  const {
    register,
    handleSubmit,
    setValue,
    watch,
    formState: { errors, isSubmitting },
  } = useForm<RegisterFormData>({
    resolver: zodResolver(registerSchema),
    defaultValues: {
      name: '',
      username: '',
      email: '',
      password: '',
      role: 'Consult',
    },
  })

  const roleValue = watch('role')

  const onSubmit = async (data: RegisterFormData) => {
    if (!consent) {
      setSubmitError('กรุณายืนยันการรับทราบเอกสารก่อนสมัครใช้งาน')
      return
    }

    setSubmitError(null)

    try {
      const response = await fetch('/api/public/register', {
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
                  ลงทะเบียนที่ปรึกษาหรือผู้ทวนสอบ
                </Typography>
              </Box>

              {submitError && (
                <Alert severity="error" sx={{ mb: 3 }}>
                  {submitError}
                </Alert>
              )}

              <Box component="form" onSubmit={handleSubmit(onSubmit)} sx={{ display: 'grid', gap: 2 }}>
                <TextField
                  label="ชื่อ-นามสกุล"
                  {...register('name')}
                  error={!!errors.name}
                  helperText={errors.name?.message}
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
                  label="ชื่อผู้ใช้"
                  {...register('username')}
                  error={!!errors.username}
                  helperText={errors.username?.message || 'a–z, 0–9, _ เท่านั้น'}
                  disabled={isSubmitting}
                  fullWidth
                  InputProps={{
                    startAdornment: (
                      <InputAdornment position="start">
                        <BadgeIcon color="action" />
                      </InputAdornment>
                    ),
                  }}
                />

                <TextField
                  label="อีเมล"
                  type="email"
                  {...register('email')}
                  error={!!errors.email}
                  helperText={errors.email?.message}
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
                  label="รหัสผ่าน"
                  type="password"
                  {...register('password')}
                  error={!!errors.password}
                  helperText={errors.password?.message}
                  disabled={isSubmitting}
                  fullWidth
                  InputProps={{
                    startAdornment: (
                      <InputAdornment position="start">
                        <LockIcon color="action" />
                      </InputAdornment>
                    ),
                  }}
                />

                <FormControl fullWidth error={!!errors.role}>
                  <InputLabel id="public-register-role-label">บทบาท</InputLabel>
                  <Select
                    labelId="public-register-role-label"
                    label="บทบาท"
                    value={roleValue}
                    onChange={(event) =>
                      setValue('role', event.target.value as 'Consult' | 'Audit', {
                        shouldValidate: true,
                      })
                    }
                    disabled={isSubmitting}
                  >
                    <MenuItem value="Consult">ที่ปรึกษา</MenuItem>
                    <MenuItem value="Audit">ผู้ตรวจสอบ</MenuItem>
                  </Select>
                </FormControl>

                <Button
                  type="submit"
                  variant="contained"
                  size="large"
                  disabled={isSubmitting}
                  startIcon={isSubmitting ? <CircularProgress size={16} color="inherit" /> : null}
                  sx={{ mt: 1, py: 1.3, fontWeight: 600 }}
                >
                  {isSubmitting ? 'กำลังส่ง...' : 'ส่งคำขอ'}
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
                รอผู้ดูแลอนุมัติแล้วค่อยเข้าสู่ระบบ
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

function ConsultRegisterPage() {
  const handleBack = useRegisterBack()

  return (
    <RegisterConsentGate flowKey="consult" onCancel={handleBack}>
      <ConsultRegisterForm />
    </RegisterConsentGate>
  )
}

export default function RegisterPage() {
  return (
    <Suspense fallback={null}>
      <ConsultRegisterPage />
    </Suspense>
  )
}
