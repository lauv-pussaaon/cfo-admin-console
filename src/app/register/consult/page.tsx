'use client'

import { Suspense, useEffect, useState } from 'react'
import Image from 'next/image'
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
  Checkbox,
  CircularProgress,
  FormControl,
  FormHelperText,
  InputAdornment,
  InputLabel,
  ListItemText,
  MenuItem,
  OutlinedInput,
  Select,
  TextField,
  Typography,
} from '@mui/material'
import {
  CheckCircle as CheckCircleIcon,
  CheckCircleOutline as CheckCircleOutlineIcon,
  Email as EmailIcon,
  Lock as LockIcon,
  Person as PersonIcon,
  Badge as BadgeIcon,
  ArrowBack as ArrowBackIcon,
  Business as BusinessIcon,
  Phone as PhoneIcon,
} from '@mui/icons-material'
import {
  RegisterConsentGate,
  useRegisterConsent,
  registrationProfileFields,
} from '@/components/register'
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
  ...registrationProfileFields,
})

type RegisterFormData = z.infer<typeof registerSchema>

type IndustryOption = {
  industry_code: string
  name_th: string
}

const usernamePattern = /^[a-zA-Z0-9_]+$/
const phonePattern = /^[0-9+\-\s()]{8,20}$/

function fieldIsValid (
  value: string | undefined,
  error: unknown,
  options?: { email?: boolean; username?: boolean; password?: boolean; phone?: boolean }
): boolean {
  const trimmed = (value ?? '').trim()
  if (!trimmed || error) return false
  if (options?.email) {
    return z.string().email().safeParse(trimmed).success
  }
  if (options?.username) {
    return trimmed.length >= 3 && trimmed.length <= 50 && usernamePattern.test(trimmed)
  }
  if (options?.password) {
    return trimmed.length >= 6
  }
  if (options?.phone) {
    return phonePattern.test(trimmed)
  }
  return true
}

function ConsultRegisterForm () {
  const handleBack = useRegisterBack()
  const { consent } = useRegisterConsent()
  const [submitError, setSubmitError] = useState<string | null>(null)
  const [isSuccess, setIsSuccess] = useState(false)
  const [industryOptions, setIndustryOptions] = useState<IndustryOption[]>([])
  const [industriesLoading, setIndustriesLoading] = useState(true)

  const {
    register,
    handleSubmit,
    setValue,
    watch,
    formState: { errors, isSubmitting, isValid },
  } = useForm<RegisterFormData>({
    resolver: zodResolver(registerSchema),
    mode: 'onChange',
    defaultValues: {
      name: '',
      username: '',
      email: '',
      password: '',
      role: 'Consult',
      organizationName: '',
      phone: '',
      yearExperiences: undefined as unknown as number,
      industries: [],
    },
  })

  const values = watch()
  const roleValue = values.role
  const industriesValue = values.industries ?? []
  const yearExperiencesValue = values.yearExperiences

  useEffect(() => {
    let cancelled = false
    ;(async () => {
      try {
        setIndustriesLoading(true)
        const response = await fetch('/api/public/industries')
        const result = await response.json()
        if (!response.ok) {
          throw new Error(result.error || 'โหลดอุตสาหกรรมไม่สำเร็จ')
        }
        if (!cancelled) {
          setIndustryOptions(result.industries ?? [])
        }
      } catch (error) {
        if (!cancelled) {
          setSubmitError(
            error instanceof Error ? error.message : 'โหลดอุตสาหกรรมไม่สำเร็จ'
          )
        }
      } finally {
        if (!cancelled) setIndustriesLoading(false)
      }
    })()
    return () => {
      cancelled = true
    }
  }, [])

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

  const roleValid = roleValue === 'Consult' || roleValue === 'Audit'
  const yearsValid =
    !errors.yearExperiences &&
    typeof yearExperiencesValue === 'number' &&
    Number.isInteger(yearExperiencesValue) &&
    yearExperiencesValue >= 0 &&
    yearExperiencesValue <= 80
  const industriesValid = !errors.industries && industriesValue.length >= 1

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
                  ลงทะเบียนที่ปรึกษาหรือผู้ตรวจสอบ
                </Typography>
                <Typography color="text.secondary" sx={{ maxWidth: 520, mx: 'auto' }}>
                  กรอกข้อมูลบัญชีและโปรไฟล์ จากนั้นอัปโหลดเอกสารยืนยันตัวตนตามลิงก์ในอีเมล
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
                <FormControl fullWidth error={!!errors.role} sx={{ gridColumn: '1 / -1' }}>
                  <InputLabel id="public-register-role-label">ลงทะเบียนในบทบาท</InputLabel>
                  <Select
                    labelId="public-register-role-label"
                    label="ลงทะเบียนในบทบาท"
                    value={roleValue}
                    onChange={(event) =>
                      setValue('role', event.target.value as 'Consult' | 'Audit', {
                        shouldValidate: true,
                      })
                    }
                    disabled={isSubmitting}
                    endAdornment={
                      roleValid ? (
                        <InputAdornment position="end" sx={{ mr: 3 }}>
                          <CheckCircleIcon color="success" fontSize="small" />
                        </InputAdornment>
                      ) : undefined
                    }
                  >
                    <MenuItem value="Consult">ที่ปรึกษา</MenuItem>
                    <MenuItem value="Audit">ผู้ตรวจสอบ</MenuItem>
                  </Select>
                  {errors.role && <FormHelperText>{errors.role.message}</FormHelperText>}
                </FormControl>

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
                    endAdornment: endCheck(fieldIsValid(values.name, errors.name)),
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
                    endAdornment: endCheck(
                      fieldIsValid(values.username, errors.username, { username: true })
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
                    endAdornment: endCheck(
                      fieldIsValid(values.email, errors.email, { email: true })
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
                    endAdornment: endCheck(
                      fieldIsValid(values.password, errors.password, { password: true })
                    ),
                  }}
                />

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
                    endAdornment: endCheck(
                      fieldIsValid(values.organizationName, errors.organizationName)
                    ),
                  }}
                />

                <TextField
                  label="เบอร์โทร"
                  {...register('phone')}
                  error={!!errors.phone}
                  helperText={errors.phone?.message}
                  disabled={isSubmitting}
                  fullWidth
                  InputProps={{
                    startAdornment: (
                      <InputAdornment position="start">
                        <PhoneIcon color="action" />
                      </InputAdornment>
                    ),
                    endAdornment: endCheck(
                      fieldIsValid(values.phone, errors.phone, { phone: true })
                    ),
                  }}
                />

                <TextField
                  label="ปีประสบการณ์"
                  type="number"
                  {...register('yearExperiences', { valueAsNumber: true })}
                  error={!!errors.yearExperiences}
                  helperText={errors.yearExperiences?.message}
                  disabled={isSubmitting}
                  fullWidth
                  sx={{ gridColumn: '1 / -1' }}
                  inputProps={{ min: 0, max: 80, step: 1 }}
                  InputProps={{
                    endAdornment: endCheck(yearsValid),
                  }}
                />

                <FormControl fullWidth error={!!errors.industries} sx={{ gridColumn: '1 / -1' }}>
                  <InputLabel id="public-register-industries-label">อุตสาหกรรม</InputLabel>
                  <Select
                    labelId="public-register-industries-label"
                    multiple
                    value={industriesValue}
                    onChange={(event) => {
                      const value = event.target.value
                      setValue(
                        'industries',
                        typeof value === 'string' ? value.split(',') : value,
                        { shouldValidate: true }
                      )
                    }}
                    input={<OutlinedInput label="อุตสาหกรรม" />}
                    renderValue={(selected) =>
                      selected
                        .map(
                          (code) =>
                            industryOptions.find((o) => o.industry_code === code)
                              ?.name_th || code
                        )
                        .join(', ')
                    }
                    disabled={isSubmitting || industriesLoading}
                    endAdornment={
                      industriesValid ? (
                        <InputAdornment position="end" sx={{ mr: 3 }}>
                          <CheckCircleIcon color="success" fontSize="small" />
                        </InputAdornment>
                      ) : undefined
                    }
                  >
                    {industryOptions.map((option) => (
                      <MenuItem key={option.industry_code} value={option.industry_code}>
                        <Checkbox
                          checked={industriesValue.includes(option.industry_code)}
                        />
                        <ListItemText primary={option.name_th} />
                      </MenuItem>
                    ))}
                  </Select>
                  <FormHelperText>
                    {errors.industries?.message ||
                      (industriesLoading
                        ? 'กำลังโหลดรายการอุตสาหกรรม...'
                        : 'เลือกได้อย่างน้อย 1 รายการ')}
                  </FormHelperText>
                </FormControl>

                <Button
                  type="submit"
                  variant="contained"
                  size="large"
                  disabled={isSubmitting || industriesLoading || !isValid}
                  startIcon={isSubmitting ? <CircularProgress size={16} color="inherit" /> : null}
                  sx={{
                    mt: 0.5,
                    py: 1.4,
                    fontWeight: 600,
                    gridColumn: '1 / -1',
                    textTransform: 'none',
                  }}
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
