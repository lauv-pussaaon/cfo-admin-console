'use client'

import React, { useState } from 'react'
import { useRouter } from 'next/navigation'
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
  Alert,
  InputAdornment,
  IconButton,
} from '@mui/material'
import {
  Visibility as VisibilityIcon,
  VisibilityOff as VisibilityOffIcon,
  Person as PersonIcon,
  Lock as LockIcon,
} from '@mui/icons-material'
import { useAuth } from '@/contexts/AuthContext'
import { isExpectedError } from '@/lib/utils/errors'

// Zod validation schema
const loginSchema = z.object({
  usernameOrEmail: z.string().min(1, 'กรุณากรอกชื่อผู้ใช้หรืออีเมล'),
  password: z.string().min(1, 'กรุณากรอกรหัสผ่าน'),
})

export type LoginFormData = z.infer<typeof loginSchema>

export default function LoginPage() {
  const { login, isLoading } = useAuth()
  const router = useRouter()
  const [showPassword, setShowPassword] = useState(false)
  const [loginError, setLoginError] = useState<string | null>(null)

  // Initialize React Hook Form with Zod resolver
  const methods = useForm<LoginFormData>({
    resolver: zodResolver(loginSchema),
    mode: 'onChange',
    defaultValues: {
      usernameOrEmail: '',
      password: '',
    }
  })

  const { handleSubmit, formState: { errors, isSubmitting } } = methods

  const onFormSubmit = async (data: LoginFormData) => {
    setLoginError(null)
    try {
      await login(data.usernameOrEmail, data.password)      
      // Redirect will be handled by root page based on user role
      router.push('/')
    } catch (error) {
      console.log('Login error:', error)
      if (isExpectedError(error)) {
        setLoginError(error instanceof Error ? error.message : 'เกิดข้อผิดพลาดในการเข้าสู่ระบบ')
      } else {
        console.error('Login error:', error)
        setLoginError('เกิดข้อผิดพลาดในการเข้าสู่ระบบ กรุณาลองใหม่อีกครั้ง')
      }
    }
  }

  if (isLoading) {
    return (
      <Box 
        display="flex" 
        justifyContent="center" 
        alignItems="center" 
        minHeight="100vh"
      >
        <CircularProgress size={60} thickness={4} />
      </Box>
    )
  }

  return (
    <Box 
      sx={{ 
        minHeight: '100vh', 
        backgroundColor: 'background.default',
        display: 'flex',
        alignItems: 'center',
        py: 4
      }}
    >
      <Container maxWidth="sm">
        <Box sx={{ textAlign: 'center', mb: 4 }}>
          <Typography variant="h3" component="h1" gutterBottom sx={{ fontWeight: 600 }}>
            🔐 IdeaCrab Admin Console Login
          </Typography>
          <Typography variant="h6" color="text.secondary">
            เข้าสู่ระบบด้วยชื่อผู้ใช้หรืออีเมล
          </Typography>
        </Box>

        <Card sx={{ boxShadow: 3 }}>
          <CardContent sx={{ p: 3 }}>
            <FormProvider {...methods}>
              <form onSubmit={handleSubmit(onFormSubmit)}>
                {loginError && (
                  <Alert severity="error" sx={{ mb: 3 }}>
                    {loginError}
                  </Alert>
                )}

                <Box sx={{ display: 'flex', flexDirection: 'column', gap: 3 }}>
                  <TextField
                    {...methods.register('usernameOrEmail')}
                    label="ชื่อผู้ใช้หรืออีเมล"
                    required
                    fullWidth
                    error={!!errors.usernameOrEmail}
                    helperText={errors.usernameOrEmail?.message}
                    disabled={isSubmitting}
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
                    error={!!errors.password}
                    helperText={errors.password?.message}
                    disabled={isSubmitting}
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
                            disabled={isSubmitting}
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
                    disabled={isSubmitting}
                    startIcon={isSubmitting ? <CircularProgress size={16} /> : null}
                    sx={{ minWidth: 120 }}
                  >
                    {isSubmitting ? 'กำลังเข้าสู่ระบบ...' : 'เข้าสู่ระบบ'}
                  </Button>
                </Box>
              </form>
            </FormProvider>
          </CardContent>
        </Card>

        <Box sx={{ mt: 3, textAlign: 'center' }}>
          <Typography variant="body2" color="text.secondary">
            หมายเหตุ: สำหรับการทดสอบ ใช้ username: <strong>admin</strong> และ password: <strong>admin123</strong>
          </Typography>
        </Box>
      </Container>
    </Box>
  )
}
