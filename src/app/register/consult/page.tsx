'use client'

import { Suspense, useEffect, useRef, useState } from 'react'
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
  FormControlLabel,
  FormHelperText,
  IconButton,
  InputAdornment,
  InputLabel,
  ListItemText,
  MenuItem,
  OutlinedInput,
  Select,
  Switch,
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
  Business as BusinessIcon,
  Phone as PhoneIcon,
  CalendarToday as CalendarTodayIcon,
  DeleteOutline as DeleteOutlineIcon,
  UploadFile as UploadFileIcon,
} from '@mui/icons-material'
import {
  RegisterConsentGate,
  useRegisterConsent,
  registrationProfileFields,
  refineRegistrationProfile,
} from '@/components/register'
import { useRegisterBack } from '@/app/register/useRegisterBack'
import { formatDateDdMmmYyyy } from '@/lib/utils/datetime'
import {
  MAX_VERIFICATION_DOCUMENTS,
  VERIFICATION_DOCUMENT_ACCEPT,
} from '@/lib/register/verification-documents'

const registerSchema = z
  .object({
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
  .superRefine(refineRegistrationProfile)

type RegisterFormData = z.infer<typeof registerSchema>

type IndustryOption = {
  industry_code: string
  name_th: string
}

function FormattedDateField ({
  label,
  value,
  onChange,
  error,
  helperText,
  disabled,
}: {
  label: string
  value: string
  onChange: (value: string) => void
  error?: boolean
  helperText?: string
  disabled?: boolean
}) {
  const inputRef = useRef<HTMLInputElement>(null)

  const openPicker = () => {
    const input = inputRef.current
    if (!input || disabled) return
    const withPicker = input as HTMLInputElement & { showPicker?: () => void }
    if (typeof withPicker.showPicker === 'function') {
      try {
        withPicker.showPicker()
        return
      } catch {
        // fall through
      }
    }
    input.focus()
    input.click()
  }

  return (
    <Box sx={{ position: 'relative' }}>
      <TextField
        label={label}
        value={value ? formatDateDdMmmYyyy(value) : ''}
        onClick={openPicker}
        error={error}
        helperText={helperText}
        disabled={disabled}
        fullWidth
        InputLabelProps={{ shrink: true }}
        InputProps={{
          readOnly: true,
          endAdornment: (
            <InputAdornment position="end">
              <IconButton
                edge="end"
                size="small"
                onClick={openPicker}
                disabled={disabled}
                aria-label={label}
              >
                <CalendarTodayIcon fontSize="small" />
              </IconButton>
            </InputAdornment>
          ),
        }}
      />
      <input
        ref={inputRef}
        type="date"
        value={value || ''}
        onChange={(e) => onChange(e.target.value)}
        tabIndex={-1}
        disabled={disabled}
        style={{
          position: 'absolute',
          opacity: 0,
          pointerEvents: 'none',
          width: 0,
          height: 0,
        }}
      />
    </Box>
  )
}

function ConsultRegisterForm () {
  const handleBack = useRegisterBack()
  const { consent } = useRegisterConsent()
  const [submitError, setSubmitError] = useState<string | null>(null)
  const [isSuccess, setIsSuccess] = useState(false)
  const [industryOptions, setIndustryOptions] = useState<IndustryOption[]>([])
  const [industriesLoading, setIndustriesLoading] = useState(true)
  const [docsUploading, setDocsUploading] = useState(false)
  const [docsUploadError, setDocsUploadError] = useState<string | null>(null)
  const docsInputRef = useRef<HTMLInputElement>(null)

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
      organizationName: '',
      phone: '',
      hasVerification: false,
      certifiedDate: '',
      certificationExpiry: '',
      verificationDocuments: [],
      yearExperiences: 0,
      industries: [],
    },
  })

  const roleValue = watch('role')
  const hasVerification = watch('hasVerification')
  const certifiedDate = watch('certifiedDate')
  const certificationExpiry = watch('certificationExpiry')
  const verificationDocuments = watch('verificationDocuments') || []
  const industriesValue = watch('industries')

  const handleVerificationDocsChange = async (
    event: React.ChangeEvent<HTMLInputElement>
  ) => {
    const files = event.target.files
    event.target.value = ''
    if (!files?.length) return

    const remaining = MAX_VERIFICATION_DOCUMENTS - verificationDocuments.length
    if (remaining <= 0) {
      setDocsUploadError(`อัปโหลดได้สูงสุด ${MAX_VERIFICATION_DOCUMENTS} ไฟล์`)
      return
    }

    const selected = Array.from(files).slice(0, remaining)
    setDocsUploading(true)
    setDocsUploadError(null)

    try {
      const uploaded: string[] = []
      for (const file of selected) {
        const formData = new FormData()
        formData.append('file', file)
        const response = await fetch('/api/public/register/verification-documents', {
          method: 'POST',
          body: formData,
        })
        const result = await response.json()
        if (!response.ok) {
          throw new Error(result.error || `อัปโหลด ${file.name} ไม่สำเร็จ`)
        }
        uploaded.push(result.url as string)
      }
      setValue(
        'verificationDocuments',
        [...verificationDocuments, ...uploaded],
        { shouldValidate: true }
      )
    } catch (error) {
      setDocsUploadError(
        error instanceof Error ? error.message : 'อัปโหลดเอกสารไม่สำเร็จ'
      )
    } finally {
      setDocsUploading(false)
    }
  }

  const removeVerificationDocument = (index: number) => {
    setValue(
      'verificationDocuments',
      verificationDocuments.filter((_, i) => i !== index),
      { shouldValidate: true }
    )
  }

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
          certifiedDate: data.hasVerification ? data.certifiedDate : '',
          certificationExpiry: data.hasVerification
            ? data.certificationExpiry
            : '',
          verificationDocuments: data.hasVerification
            ? data.verificationDocuments
            : [],
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
                  ลงทะเบียนที่ปรึกษาหรือผู้ตรวจสอบ
                </Typography>
              </Box>

              {submitError && (
                <Alert severity="error" sx={{ mb: 3 }}>
                  {submitError}
                </Alert>
              )}

              <Box component="form" onSubmit={handleSubmit(onSubmit)} sx={{ display: 'grid', gap: 2 }}>

                <FormControl fullWidth error={!!errors.role}>
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
                  >
                    <MenuItem value="Consult">ที่ปรึกษา</MenuItem>
                    <MenuItem value="Audit">ผู้ทวนสอบ</MenuItem>
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
                  }}
                />

                <Box
                  sx={{
                    display: 'flex',
                    alignItems: 'center',
                    justifyContent: 'space-between',
                    border: '1px solid',
                    borderColor: 'divider',
                    borderRadius: 1,
                    px: 2,
                    py: 1,
                  }}
                >
                  <Box>
                    <Typography variant="subtitle2">ได้รับการรับรอง (Verification)</Typography>
                  </Box>
                  <FormControlLabel
                    control={
                      <Switch
                        checked={hasVerification}
                        onChange={(e) => {
                          setValue('hasVerification', e.target.checked, {
                            shouldValidate: true,
                          })
                          if (!e.target.checked) {
                            setValue('certifiedDate', '', { shouldValidate: true })
                            setValue('certificationExpiry', '', {
                              shouldValidate: true,
                            })
                            setValue('verificationDocuments', [], {
                              shouldValidate: true,
                            })
                            setDocsUploadError(null)
                          }
                        }}
                        disabled={isSubmitting || docsUploading}
                      />
                    }
                    label={hasVerification ? 'มี' : 'ไม่มี'}
                    sx={{ mr: 0 }}
                  />
                </Box>

                {hasVerification && (
                  <>
                    <FormattedDateField
                      label="วันที่ได้รับการรับรอง"
                      value={certifiedDate || ''}
                      onChange={(next) =>
                        setValue('certifiedDate', next, { shouldValidate: true })
                      }
                      error={!!errors.certifiedDate}
                      helperText={errors.certifiedDate?.message}
                      disabled={isSubmitting || docsUploading}
                    />
                    <FormattedDateField
                      label="วันหมดอายุการรับรอง"
                      value={certificationExpiry || ''}
                      onChange={(next) =>
                        setValue('certificationExpiry', next, { shouldValidate: true })
                      }
                      error={!!errors.certificationExpiry}
                      helperText={errors.certificationExpiry?.message}
                      disabled={isSubmitting || docsUploading}
                    />

                    <Box>
                      <Typography variant="subtitle2" sx={{ mb: 1 }}>
                        เอกสารการรับรอง * (สูงสุด {MAX_VERIFICATION_DOCUMENTS} ไฟล์)
                      </Typography>
                      <input
                        ref={docsInputRef}
                        type="file"
                        accept={VERIFICATION_DOCUMENT_ACCEPT}
                        multiple
                        hidden
                        onChange={handleVerificationDocsChange}
                        disabled={
                          isSubmitting ||
                          docsUploading ||
                          verificationDocuments.length >= MAX_VERIFICATION_DOCUMENTS
                        }
                      />
                      <Button
                        variant="outlined"
                        startIcon={
                          docsUploading ? (
                            <CircularProgress size={16} />
                          ) : (
                            <UploadFileIcon />
                          )
                        }
                        onClick={() => docsInputRef.current?.click()}
                        disabled={
                          isSubmitting ||
                          docsUploading ||
                          verificationDocuments.length >= MAX_VERIFICATION_DOCUMENTS
                        }
                        sx={{ textTransform: 'none', mb: 1 }}
                      >
                        {docsUploading ? 'กำลังอัปโหลด...' : 'อัปโหลดเอกสาร'}
                      </Button>
                      <Typography variant="caption" color="text.secondary" display="block">
                        รองรับรูปภาพ, PDF, Word, Excel — ไฟล์ละไม่เกิน 5MB
                      </Typography>
                      {(docsUploadError || errors.verificationDocuments) && (
                        <FormHelperText error sx={{ mx: 0, mt: 1 }}>
                          {docsUploadError || errors.verificationDocuments?.message}
                        </FormHelperText>
                      )}
                      {verificationDocuments.length > 0 && (
                        <Box sx={{ mt: 1.5, display: 'flex', flexDirection: 'column', gap: 1 }}>
                          {verificationDocuments.map((url, index) => {
                            const name =
                              decodeURIComponent(url.split('/').pop() || '') ||
                              `เอกสาร ${index + 1}`
                            return (
                              <Box
                                key={`${url}-${index}`}
                                sx={{
                                  display: 'flex',
                                  alignItems: 'center',
                                  justifyContent: 'space-between',
                                  gap: 1,
                                  border: '1px solid',
                                  borderColor: 'divider',
                                  borderRadius: 1,
                                  px: 1.5,
                                  py: 0.75,
                                }}
                              >
                                <Typography
                                  variant="body2"
                                  component="a"
                                  href={url}
                                  target="_blank"
                                  rel="noopener noreferrer"
                                  sx={{
                                    color: 'primary.main',
                                    textDecoration: 'none',
                                    overflow: 'hidden',
                                    textOverflow: 'ellipsis',
                                    whiteSpace: 'nowrap',
                                  }}
                                >
                                  {name}
                                </Typography>
                                <IconButton
                                  size="small"
                                  onClick={() => removeVerificationDocument(index)}
                                  disabled={isSubmitting || docsUploading}
                                  aria-label="ลบเอกสาร"
                                >
                                  <DeleteOutlineIcon fontSize="small" />
                                </IconButton>
                              </Box>
                            )
                          })}
                        </Box>
                      )}
                    </Box>
                  </>
                )}

                <TextField
                  label="ปีประสบการณ์"
                  type="number"
                  {...register('yearExperiences', { valueAsNumber: true })}
                  error={!!errors.yearExperiences}
                  helperText={errors.yearExperiences?.message}
                  disabled={isSubmitting}
                  fullWidth
                  inputProps={{ min: 0, max: 80, step: 1 }}
                />

                <FormControl fullWidth error={!!errors.industries}>
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
                  disabled={isSubmitting || industriesLoading || docsUploading}
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
