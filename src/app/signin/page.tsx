'use client'

import React, { useEffect, useRef, useState } from 'react'
import Link from 'next/link'
import { useForm, FormProvider } from 'react-hook-form'
import { zodResolver } from '@hookform/resolvers/zod'
import { z } from 'zod'
import {
  Box,
  Container,
  Typography,
  Card,
  CardContent,
  TextField,
  Button,
  CircularProgress,
  InputAdornment,
  IconButton,
} from '@mui/material'
import {
  Visibility as VisibilityIcon,
  VisibilityOff as VisibilityOffIcon,
  Person as PersonIcon,
  Lock as LockIcon,
  Business as BusinessIcon,
} from '@mui/icons-material'
import { platformOrganizationCodeSchema } from '@/lib/organization-code'
import { buildClientLoginApiUrl, getClientApexDomain } from '@/lib/client-app-url'

const signinSchema = z.object({
  organizationCode: platformOrganizationCodeSchema,
  usernameOrEmail: z.string().min(1, 'กรุณากรอกชื่อผู้ใช้หรืออีเมล'),
  password: z.string().min(1, 'กรุณากรอกรหัสผ่าน'),
})

export type SigninFormData = z.infer<typeof signinSchema>

export default function PlatformSigninPage() {
  const formRef = useRef<HTMLFormElement>(null)
  const [showPassword, setShowPassword] = useState(false)
  const [formAction, setFormAction] = useState('')
  const apexDomain = getClientApexDomain()

  const methods = useForm<SigninFormData>({
    resolver: zodResolver(signinSchema),
    mode: 'onChange',
    defaultValues: {
      organizationCode: '',
      usernameOrEmail: '',
      password: '',
    },
  })

  const { handleSubmit, formState: { errors, isSubmitting } } = methods
  const busy = isSubmitting || !!formAction

  useEffect(() => {
    if (!formAction) return
    formRef.current?.submit()
  }, [formAction])

  const onFormSubmit = (data: SigninFormData) => {
    setFormAction(buildClientLoginApiUrl(data.organizationCode))
  }

  return (
    <Box
      sx={{
        minHeight: '100vh',
        backgroundColor: 'background.default',
        display: 'flex',
        alignItems: 'center',
        py: 4,
      }}
    >
      <Container maxWidth="sm">
        <Box sx={{ textAlign: 'center', mb: 4 }}>
          <Typography variant="h3" component="h1" gutterBottom sx={{ fontWeight: 600 }}>
            เข้าสู่ระบบ IdeaCarb
          </Typography>
        </Box>

        <Card sx={{ boxShadow: 3 }}>
          <CardContent sx={{ p: 3 }}>
            <FormProvider {...methods}>
              <form
                ref={formRef}
                method="POST"
                action={formAction || undefined}
                onSubmit={handleSubmit(onFormSubmit)}
              >
                <Box sx={{ display: 'flex', flexDirection: 'column', gap: 3 }}>
                  <TextField
                    {...methods.register('organizationCode')}
                    label="รหัสองค์กร"
                    required
                    fullWidth
                    autoComplete="organization"
                    error={!!errors.organizationCode}
                    helperText={
                      errors.organizationCode?.message ||
                      `จากรหัสขึ้นต้น URL ระบบที่ทำได้รับ เช่น https://abc.${apexDomain} ให้กรอก abc`
                    }
                    inputProps={{ autoCapitalize: 'none', autoCorrect: 'off', spellCheck: false }}
                    InputProps={{
                      startAdornment: (
                        <InputAdornment position="start">
                          <BusinessIcon color="action" />
                        </InputAdornment>
                      ),
                    }}
                    sx={{
                      '& .MuiOutlinedInput-root': {
                        borderRadius: 1,
                      },
                    }}
                  />

                  <TextField
                    {...methods.register('usernameOrEmail')}
                    label="ชื่อผู้ใช้หรืออีเมล"
                    required
                    fullWidth
                    autoComplete="username"
                    error={!!errors.usernameOrEmail}
                    helperText={errors.usernameOrEmail?.message}
                    InputProps={{
                      startAdornment: (
                        <InputAdornment position="start">
                          <PersonIcon color="action" />
                        </InputAdornment>
                      ),
                    }}
                    sx={{
                      '& .MuiOutlinedInput-root': {
                        borderRadius: 1,
                      },
                    }}
                  />

                  <TextField
                    {...methods.register('password')}
                    label="รหัสผ่าน"
                    type={showPassword ? 'text' : 'password'}
                    required
                    fullWidth
                    autoComplete="current-password"
                    error={!!errors.password}
                    helperText={errors.password?.message}
                    InputProps={{
                      startAdornment: (
                        <InputAdornment position="start">
                          <LockIcon color="action" />
                        </InputAdornment>
                      ),
                      endAdornment: (
                        <InputAdornment position="end">
                          <IconButton
                            onClick={() => setShowPassword(!showPassword)}
                            edge="end"
                            disabled={busy}
                          >
                            {showPassword ? <VisibilityOffIcon /> : <VisibilityIcon />}
                          </IconButton>
                        </InputAdornment>
                      ),
                    }}
                    sx={{
                      '& .MuiOutlinedInput-root': {
                        borderRadius: 1,
                      },
                    }}
                  />
                </Box>

                <Box sx={{ mt: 3, display: 'flex', gap: 2, justifyContent: 'center' }}>
                  <Button
                    type="submit"
                    variant="contained"
                    size="large"
                    disabled={busy}
                    startIcon={busy ? <CircularProgress size={16} /> : null}
                    sx={{ minWidth: 120 }}
                  >
                    {busy ? 'กำลังเข้าสู่ระบบ...' : 'เข้าสู่ระบบ'}
                  </Button>
                </Box>
              </form>
            </FormProvider>
          </CardContent>
        </Card>
      </Container>
    </Box>
  )
}
