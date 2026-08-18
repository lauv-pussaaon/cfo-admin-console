'use client'

import { useState } from 'react'
import Image from 'next/image'
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
  CheckCircle as CheckCircleIcon,
  CheckCircleOutline as CheckCircleOutlineIcon,
  Email as EmailIcon,
  Person as PersonIcon,
  Phone as PhoneIcon,
} from '@mui/icons-material'
import { useRegisterConsent } from '@/components/register/RegisterConsentContext'
import { useRegisterBack } from '@/app/register/useRegisterBack'

const orgSignupSchema = z.object({
  organizationName: z.string().min(1, 'กรุณากรอกชื่อองค์กร'),
  contactFirstName: z.string().min(1, 'กรุณากรอกชื่อผู้ติดต่อ'),
  contactLastName: z.string().min(1, 'กรุณากรอกนามสกุลผู้ติดต่อ'),
  contactEmail: z.string().email('กรุณากรอกอีเมลให้ถูกต้อง'),
  contactPhone: z.string().min(1, 'กรุณากรอกเบอร์โทรผู้ติดต่อ'),
})

type OrgSignupFormData = z.infer<typeof orgSignupSchema>

export interface OrgSignupCopy {
  title: string
  description: string
  submitLabel: string
  successBody: string
}

function fieldIsValid (
  value: string | undefined,
  error: unknown,
  options?: { email?: boolean }
): boolean {
  const trimmed = (value ?? '').trim()
  if (!trimmed || error) return false
  if (options?.email) {
    return z.string().email().safeParse(trimmed).success
  }
  return true
}

export default function OrgSignupForm ({
  apiPath,
  copy,
}: {
  apiPath: string
  copy: OrgSignupCopy
}) {
  const handleBack = useRegisterBack()
  const { consent } = useRegisterConsent()
  const [submitError, setSubmitError] = useState<string | null>(null)
  const [isSuccess, setIsSuccess] = useState(false)

  const {
    register,
    handleSubmit,
    watch,
    formState: { errors, isSubmitting, isValid },
  } = useForm<OrgSignupFormData>({
    resolver: zodResolver(orgSignupSchema),
    mode: 'onChange',
    defaultValues: {
      organizationName: '',
      contactFirstName: '',
      contactLastName: '',
      contactEmail: '',
      contactPhone: '',
    },
  })

  const values = watch()

  const onSubmit = async (data: OrgSignupFormData) => {
    if (!consent) {
      setSubmitError('กรุณายืนยันการรับทราบเอกสารก่อนสมัครใช้งาน')
      return
    }

    setSubmitError(null)

    try {
      const response = await fetch(apiPath, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          ...data,
          termsAccepted: consent.termsAccepted,
          privacyAcknowledged: consent.privacyAcknowledged,
          collectShareDataConsent: consent.collectShareDataConsent,
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

  const endCheck = (show: boolean) =>
    show ? (
      <InputAdornment position="end">
        <CheckCircleIcon color="success" fontSize="small" />
      </InputAdornment>
    ) : null

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
                  {copy.title}
                </Typography>
                <Typography color="text.secondary" sx={{ maxWidth: 520, mx: 'auto' }}>
                  {copy.description}
                </Typography>
              </Box>

              {submitError && (
                <Alert severity="error" sx={{ mb: 3 }}>
                  {submitError}
                </Alert>
              )}

              <Box
                component="form"
                onSubmit={handleSubmit(onSubmit)}
                sx={{
                  display: 'grid',
                  gap: 2.5,
                  gridTemplateColumns: { xs: '1fr', sm: '1fr 1fr' },
                }}
              >
                <TextField
                  label="ชื่อองค์กร"
                  {...register('organizationName')}
                  error={!!errors.organizationName}
                  helperText={errors.organizationName?.message}
                  disabled={isSubmitting}
                  fullWidth
                  sx={{ gridColumn: '1 / -1' }}
                  InputProps={{
                    startAdornment: (
                      <InputAdornment position="start">
                        <BusinessIcon color="action" />
                      </InputAdornment>
                    ),
                    endAdornment: endCheck(
                      fieldIsValid(values.organizationName, errors.organizationName)
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
                    endAdornment: endCheck(
                      fieldIsValid(values.contactFirstName, errors.contactFirstName)
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
                    endAdornment: endCheck(
                      fieldIsValid(values.contactLastName, errors.contactLastName)
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
                    endAdornment: endCheck(
                      fieldIsValid(values.contactEmail, errors.contactEmail, {
                        email: true,
                      })
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
                    endAdornment: endCheck(
                      fieldIsValid(values.contactPhone, errors.contactPhone)
                    ),
                  }}
                />

                <Button
                  type="submit"
                  variant="contained"
                  size="large"
                  disabled={isSubmitting || !isValid}
                  startIcon={isSubmitting ? <CircularProgress size={16} color="inherit" /> : null}
                  sx={{
                    mt: 0.5,
                    py: 1.4,
                    fontWeight: 600,
                    gridColumn: '1 / -1',
                    textTransform: 'none',
                  }}
                >
                  {isSubmitting ? 'กำลังส่ง...' : copy.submitLabel}
                </Button>
              </Box>
            </>
          ) : (
            <Box sx={{ textAlign: 'center', py: 2 }}>
              <CheckCircleOutlineIcon color="success" sx={{ fontSize: 80, mb: 2 }} />
              <Typography variant="h4" fontWeight={700} gutterBottom>
                ได้รับคำขอแล้ว
              </Typography>
              <Typography color="text.secondary" sx={{ maxWidth: 480, mx: 'auto', mb: 3 }}>
                {copy.successBody}
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
