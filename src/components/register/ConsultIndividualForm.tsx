'use client'

import { useState } from 'react'
import { useForm } from 'react-hook-form'
import { zodResolver } from '@hookform/resolvers/zod'
import { z } from 'zod'
import {
  Alert,
  Box,
  Button,
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
} from '@mui/material'
import {
  CheckCircle as CheckCircleIcon,
  Email as EmailIcon,
  Lock as LockIcon,
  Person as PersonIcon,
  Badge as BadgeIcon,
  Business as BusinessIcon,
  Phone as PhoneIcon,
} from '@mui/icons-material'
import { useRegisterConsent } from '@/components/register'
import {
  consultAccountSchema,
  consultFormGridSx,
  fieldIsValid,
  yearExperiencesSetValueAs,
  yearIsValid,
} from '@/components/register/consult-form-shared'
import { useIndustryOptions } from '@/components/register/useIndustryOptions'

const individualSchema = z.object({
  ...consultAccountSchema,
  organizationName: z.string().min(1, 'กรุณากรอกชื่อองค์กร').max(200),
})

type IndividualFormData = z.infer<typeof individualSchema>

function endCheck (show: boolean) {
  if (!show) return null
  return (
    <InputAdornment position="end">
      <CheckCircleIcon color="success" fontSize="small" />
    </InputAdornment>
  )
}

export default function ConsultIndividualForm ({ onSuccess }: { onSuccess: () => void }) {
  const { consent } = useRegisterConsent()
  const { industryOptions, industriesLoading, loadError } = useIndustryOptions()
  const [submitError, setSubmitError] = useState<string | null>(null)

  const {
    register,
    handleSubmit,
    setValue,
    watch,
    formState: { errors, isSubmitting, isValid },
  } = useForm<IndividualFormData>({
    resolver: zodResolver(individualSchema),
    mode: 'onChange',
    defaultValues: {
      name: '',
      username: '',
      email: '',
      password: '',
      organizationName: '',
      phone: '',
      yearExperiences: undefined,
      industries: [],
    },
  })

  const values = watch()
  const industriesValue = values.industries ?? []

  const onSubmit = async (data: IndividualFormData) => {
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
          registrantType: 'individual',
          role: 'Consult',
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
      onSuccess()
    } catch (error) {
      setSubmitError(error instanceof Error ? error.message : 'ส่งไม่สำเร็จ')
    }
  }

  return (
    <>
      {(submitError || loadError) && (
        <Alert severity="error" sx={{ mb: 3 }}>
          {submitError || loadError}
        </Alert>
      )}
      <Box component="form" onSubmit={handleSubmit(onSubmit)} sx={consultFormGridSx}>
        <TextField
          required
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
          required
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
          required
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
            endAdornment: endCheck(fieldIsValid(values.email, errors.email, { email: true })),
          }}
        />

        <TextField
          required
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
          required
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
            endAdornment: endCheck(fieldIsValid(values.organizationName, errors.organizationName)),
          }}
        />

        <TextField
          required
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
            endAdornment: endCheck(fieldIsValid(values.phone, errors.phone, { phone: true })),
          }}
        />

        <TextField
          label="ปีประสบการณ์"
          type="number"
          {...register('yearExperiences', { setValueAs: yearExperiencesSetValueAs })}
          error={!!errors.yearExperiences}
          helperText={errors.yearExperiences?.message}
          disabled={isSubmitting}
          fullWidth
          sx={{ gridColumn: '1 / -1' }}
          inputProps={{ min: 0, max: 80, step: 1 }}
          InputProps={{
            endAdornment: endCheck(yearIsValid(values.yearExperiences, errors.yearExperiences)),
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
                .map((code) => industryOptions.find((o) => o.industry_code === code)?.name_th || code)
                .join(', ')
            }
            disabled={isSubmitting || industriesLoading}
            endAdornment={
              !errors.industries && industriesValue.length >= 1 ? (
                <InputAdornment position="end" sx={{ mr: 3 }}>
                  <CheckCircleIcon color="success" fontSize="small" />
                </InputAdornment>
              ) : undefined
            }
          >
            {industryOptions.map((option) => (
              <MenuItem key={option.industry_code} value={option.industry_code}>
                <Checkbox checked={industriesValue.includes(option.industry_code)} />
                <ListItemText primary={option.name_th} />
              </MenuItem>
            ))}
          </Select>
          {industriesLoading && <FormHelperText>กำลังโหลดรายการอุตสาหกรรม...</FormHelperText>}
        </FormControl>

        <Button
          type="submit"
          variant="contained"
          size="large"
          disabled={isSubmitting || industriesLoading || !isValid}
          startIcon={isSubmitting ? <CircularProgress size={16} color="inherit" /> : null}
          sx={{ mt: 0.5, py: 1.4, fontWeight: 600, gridColumn: '1 / -1', textTransform: 'none' }}
        >
          {isSubmitting ? 'กำลังส่ง...' : 'ส่งคำขอ'}
        </Button>
      </Box>
    </>
  )
}
