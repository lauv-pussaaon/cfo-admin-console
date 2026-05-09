'use client'

import { useState } from 'react'
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
  Container,
  FormControl,
  InputAdornment,
  InputLabel,
  MenuItem,
  Select,
  TextField,
  Typography,
  CircularProgress,
  Chip,
} from '@mui/material'
import {
  CheckCircleOutline as CheckCircleOutlineIcon,
  Email as EmailIcon,
  Lock as LockIcon,
  Person as PersonIcon,
  Badge as BadgeIcon,
  ArrowBack as ArrowBackIcon,
} from '@mui/icons-material'

const registerSchema = z.object({
  name: z.string().min(1, 'Please enter your full name'),
  username: z
    .string()
    .min(3, 'Username must be at least 3 characters')
    .max(50, 'Username must be at most 50 characters')
    .regex(/^[a-zA-Z0-9_]+$/, 'Use only letters, numbers, and underscore'),
  email: z.string().email('Please enter a valid email'),
  password: z.string().min(6, 'Password must be at least 6 characters'),
  role: z.enum(['Consult', 'Audit'], {
    message: 'Please select a role',
  }),
})

type RegisterFormData = z.infer<typeof registerSchema>

export default function RegisterPage() {
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
    setSubmitError(null)

    try {
      const response = await fetch('/api/public/register', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(data),
      })

      const result = await response.json()
      if (!response.ok) {
        throw new Error(result.error || 'Registration failed')
      }

      setIsSuccess(true)
    } catch (error) {
      setSubmitError(error instanceof Error ? error.message : 'Unable to submit registration')
    }
  }

  return (
    <Box
      sx={{
        minHeight: '100vh',
        background: 'linear-gradient(180deg, #f8fafc 0%, #f1f5f9 100%)',
        py: { xs: 4, md: 8 },
      }}
    >
      <Container maxWidth="sm">
        <Button
          component={Link}
          href="/login"
          startIcon={<ArrowBackIcon />}
          sx={{ mb: 3, textTransform: 'none' }}
        >
          Back to Login
        </Button>

        <Card sx={{ borderRadius: 3, boxShadow: '0 16px 40px rgba(15, 23, 42, 0.10)' }}>
          <CardContent sx={{ p: { xs: 3, md: 4 } }}>
            {!isSuccess ? (
              <>
                <Box sx={{ mb: 3 }}>
                  <Chip label="Public Registration" color="primary" size="small" sx={{ mb: 2 }} />
                  <Typography variant="h4" component="h1" fontWeight={700} gutterBottom>
                    Register your account
                  </Typography>
                  <Typography color="text.secondary">
                    Create your access request for the CFO platform. New accounts are reviewed before activation.
                  </Typography>
                </Box>

                {submitError && (
                  <Alert severity="error" sx={{ mb: 3 }}>
                    {submitError}
                  </Alert>
                )}

                <Box component="form" onSubmit={handleSubmit(onSubmit)} sx={{ display: 'grid', gap: 2 }}>
                  <TextField
                    label="Full Name"
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
                    label="Username"
                    {...register('username')}
                    error={!!errors.username}
                    helperText={errors.username?.message || 'Use letters, numbers, and underscore'}
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
                    label="Email"
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
                    label="Password"
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
                    <InputLabel id="public-register-role-label">Role</InputLabel>
                    <Select
                      labelId="public-register-role-label"
                      label="Role"
                      value={roleValue}
                      onChange={(event) => setValue('role', event.target.value as 'Consult' | 'Audit', { shouldValidate: true })}
                      disabled={isSubmitting}
                    >
                      <MenuItem value="Consult">Consult</MenuItem>
                      <MenuItem value="Audit">Audit</MenuItem>
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
                    {isSubmitting ? 'Submitting...' : 'Submit registration'}
                  </Button>
                </Box>
              </>
            ) : (
              <Box sx={{ textAlign: 'center', py: 2 }}>
                <CheckCircleOutlineIcon color="success" sx={{ fontSize: 80, mb: 2 }} />
                <Typography variant="h4" fontWeight={700} gutterBottom>
                  Registration successful
                </Typography>
                <Typography color="text.secondary" sx={{ maxWidth: 420, mx: 'auto', mb: 3 }}>
                  Your account request has been submitted and is now waiting for admin approval. We will activate access once review is complete.
                </Typography>
                <Button component={Link} href="/login" variant="outlined" sx={{ textTransform: 'none' }}>
                  Go to Login
                </Button>
              </Box>
            )}
          </CardContent>
        </Card>
      </Container>
    </Box>
  )
}
