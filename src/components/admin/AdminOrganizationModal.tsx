'use client'

import { useState, useEffect, useRef } from 'react'
import { useForm, FormProvider } from 'react-hook-form'
import { zodResolver } from '@hookform/resolvers/zod'
import { z } from 'zod'
import {
  Dialog,
  DialogContent,
  DialogActions,
  Box,
  Typography,
  IconButton,
  Button,
  TextField,
  CircularProgress,
  Alert,
  FormControlLabel,
  Switch,
  MenuItem,
  Select,
  FormControl,
  InputLabel,
  InputAdornment,
} from '@mui/material'
import {
  Close as CloseIcon,
  MailOutline as MailOutlineIcon,
  Visibility as VisibilityIcon,
  VisibilityOff as VisibilityOffIcon,
} from '@mui/icons-material'
import { organizationService } from '@/lib/services'
import { authenticatedAdminFetch } from '@/lib/api/admin-fetch'
import { useAuth } from '@/contexts/AuthContext'
import type { Organization } from '@/types/database'
import { isExpectedError } from '@/lib/utils/errors'
import { isAdmin } from '@/lib/permissions'
import SendOnboardEmailDialog from '@/components/admin/SendOnboardEmailDialog'
import {
  normalizeOrganizationCode,
  optionalOrganizationCodeSchema,
} from '@/lib/organization-code'
import {
  ACCOUNT_TYPE_OPTIONS,
  ACCOUNT_TYPE_VALUES,
  DEFAULT_ACCOUNT_TYPE,
  type AccountType,
} from '@/types/account-types'
import { getDefaultPackagePeriod } from '@/types/package-periods'

interface AdminOrganizationModalProps {
  open: boolean
  onClose: () => void
  onSuccess?: (message?: string) => void
  mode?: 'create' | 'edit'
  initialData?: Organization | null
}

async function notifyOrganizationInfoUpdated (
  organizationId: string,
  userId: string | undefined
): Promise<string> {
  try {
    const response = await authenticatedAdminFetch(
      `/api/admin-console/organizations/${organizationId}/notify-updated`,
      { method: 'POST' },
      { userId }
    )
    const result = await response.json().catch(() => ({})) as {
      sent?: boolean
      skipReason?: string
    }
    if (result.sent) return 'แก้ไของค์กรสำเร็จ และส่งอีเมลแจ้งอัปเดตแล้ว'
    if (result.skipReason === 'no_factory_admin_email') {
      return 'แก้ไของค์กรสำเร็จ (ไม่ส่งอีเมล: ไม่มีอีเมล Factory Admin)'
    }
    return 'แก้ไของค์กรสำเร็จ แต่ส่งอีเมลไม่สำเร็จ'
  } catch {
    return 'แก้ไของค์กรสำเร็จ แต่ส่งอีเมลไม่สำเร็จ'
  }
}

// Organization schema
// Note: app_url and factory_admin_email are only shown in edit mode, so they're optional
const organizationSchema = z.object({
  name: z.string().min(1, 'กรุณากรอกชื่อองค์กร'),
  account_type: z.enum(ACCOUNT_TYPE_VALUES),
  package_start: z.string().optional().nullable(),
  package_end: z.string().optional().nullable(),
  code: optionalOrganizationCodeSchema,
  description: z.string().optional().nullable(),
  app_url: z.string().url('กรุณากรอก URL ที่ถูกต้อง').optional().nullable().or(z.literal('')),
  factory_admin_email: z.string().email('กรุณากรอกอีเมลที่ถูกต้อง').optional().nullable().or(z.literal('')),
  contact_first_name: z.string().optional().nullable(),
  contact_last_name: z.string().optional().nullable(),
  contact_phone: z.string().optional().nullable(),
  username: z.string().optional().nullable(),
  password: z.string().optional().nullable(),
  is_initialized: z.boolean().optional(),
}).refine(
  (data) => {
    if (!data.package_start || !data.package_end) return true
    return data.package_end >= data.package_start
  },
  { message: 'วันสิ้นสุดต้องไม่ก่อนวันเริ่มต้น', path: ['package_end'] }
)

function toDateInputValue (value: string | null | undefined): string {
  if (!value) return ''
  return value.slice(0, 10)
}

export type AdminOrganizationFormData = z.infer<typeof organizationSchema>

export default function AdminOrganizationModal({
  open,
  onClose,
  onSuccess,
  mode = 'create',
  initialData = null,
}: AdminOrganizationModalProps) {
  const { user } = useAuth()
  const [isSubmitting, setIsSubmitting] = useState(false)
  const [submitError, setSubmitError] = useState<string | null>(null)
  const [showPassword, setShowPassword] = useState(false)
  const [onboardDialogOpen, setOnboardDialogOpen] = useState(false)
  const [onboardSuccess, setOnboardSuccess] = useState<string | null>(null)
  const skipAccountTypeReset = useRef(false)
  
  const isAdminUser = isAdmin(user)

  const methods = useForm<AdminOrganizationFormData>({
    resolver: zodResolver(organizationSchema),
    mode: 'onChange',
    defaultValues: {
      name: '',
      account_type: DEFAULT_ACCOUNT_TYPE,
      package_start: getDefaultPackagePeriod(DEFAULT_ACCOUNT_TYPE).package_start,
      package_end: getDefaultPackagePeriod(DEFAULT_ACCOUNT_TYPE).package_end ?? '',
      code: '',
      description: '',
      app_url: '',
      factory_admin_email: '',
      contact_first_name: '',
      contact_last_name: '',
      contact_phone: '',
      username: '',
      password: '',
      is_initialized: false,
    }
  })

  const { handleSubmit, reset, formState: { errors }, watch, setValue } = methods
  const accountType = watch('account_type')

  useEffect(() => {
    if (open) {
      skipAccountTypeReset.current = true
    }
  }, [open])

  useEffect(() => {
    if (!open || skipAccountTypeReset.current) {
      skipAccountTypeReset.current = false
      return
    }
    const defaults = getDefaultPackagePeriod(accountType)
    setValue('package_start', defaults.package_start)
    setValue('package_end', defaults.package_end ?? '')
  }, [accountType, open, setValue])

  useEffect(() => {
    if (open) {
      setOnboardSuccess(null)
      setOnboardDialogOpen(false)
      if (mode === 'edit' && initialData) {
        reset({
          name: initialData.name || '',
          account_type: initialData.account_type ?? DEFAULT_ACCOUNT_TYPE,
          package_start: toDateInputValue(initialData.package_start),
          package_end: toDateInputValue(initialData.package_end),
          code: initialData.code || '',
          description: initialData.description || '',
          app_url: initialData.app_url || '',
          factory_admin_email: initialData.factory_admin_email || '',
          contact_first_name: initialData.contact_first_name || '',
          contact_last_name: initialData.contact_last_name || '',
          contact_phone: initialData.contact_phone || '',
          username: initialData.username || '',
          password: initialData.password || '',
          is_initialized: initialData.is_initialized || false,
        })
      } else {
        const defaults = getDefaultPackagePeriod(DEFAULT_ACCOUNT_TYPE)
        reset({
          name: '',
          account_type: DEFAULT_ACCOUNT_TYPE,
          package_start: defaults.package_start,
          package_end: defaults.package_end ?? '',
          code: '',
          description: '',
          app_url: '',
          factory_admin_email: '',
          contact_first_name: '',
          contact_last_name: '',
          contact_phone: '',
          username: '',
          password: '',
          is_initialized: false,
        })
      }
      setSubmitError(null)
      setShowPassword(false)
    }
  }, [open, reset, mode, initialData])

  const onFormSubmit = async (data: AdminOrganizationFormData) => {
    setIsSubmitting(true)
    setSubmitError(null)
    const organizationCode = normalizeOrganizationCode(data.code ?? '') || null

    try {
      let successMessage: string | undefined

      if (mode === 'edit' && initialData) {
        // Update organization
        const updated = await organizationService.updateOrganization(
          initialData.id,
          {
            name: data.name,
            code: organizationCode,
            description: data.description || null,
            app_url: data.app_url || null,
            factory_admin_email: data.factory_admin_email || null,
            contact_first_name: data.contact_first_name || null,
            contact_last_name: data.contact_last_name || null,
            contact_phone: data.contact_phone || null,
            username: data.username || null,
            password: data.password || null,
            is_initialized: data.is_initialized ?? false,
            account_type: data.account_type,
            package_start: data.package_start || null,
            package_end: data.package_end || null,
          }
        )

        successMessage = await notifyOrganizationInfoUpdated(updated.id, user?.id)
      } else {
        // Create organization
        await organizationService.createOrganization({
          name: data.name,
          code: organizationCode,
          description: data.description || null,
          app_url: data.app_url || null,
          factory_admin_email: data.factory_admin_email || null,
          contact_first_name: data.contact_first_name || null,
          contact_last_name: data.contact_last_name || null,
          contact_phone: data.contact_phone || null,
          username: data.username || null,
          password: data.password || null,
          account_type: data.account_type,
          package_start: data.package_start || null,
          package_end: data.package_end || null,
          created_by: user?.id || null,
        })
      }

      onClose()
      if (onSuccess) {
        onSuccess(successMessage)
      }
    } catch (error) {
      if (isExpectedError(error)) {
        setSubmitError(error instanceof Error ? error.message : 'เกิดข้อผิดพลาด')
      } else {
        console.error('Error saving organization:', error)
        setSubmitError('เกิดข้อผิดพลาดในการบันทึกข้อมูล')
      }
    } finally {
      setIsSubmitting(false)
    }
  }

  const isInitialized = watch('is_initialized')

  return (
    <>
    <Dialog
      open={open}
      onClose={onClose}
      maxWidth="sm"
      fullWidth
      PaperProps={{
        sx: {
          borderRadius: 2,
          maxHeight: '90vh',
          overflow: 'hidden',
          display: 'flex',
          flexDirection: 'column',
        },
      }}
    >
      <FormProvider {...methods}>
        <Box
          component="form"
          onSubmit={handleSubmit(onFormSubmit)}
          sx={{
            display: 'flex',
            flexDirection: 'column',
            minHeight: 0,
            flex: '1 1 auto',
            overflow: 'hidden',
          }}
        >
          <Box sx={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', p: 2, borderBottom: '1px solid', borderColor: 'divider', flexShrink: 0 }}>
            <Typography variant="h6" fontWeight="bold">
              {mode === 'edit' ? 'แก้ไของค์กร' : 'สร้างองค์กรใหม่'}
            </Typography>
            <IconButton
              onClick={onClose}
              size="small"
              sx={{
                color: 'text.secondary',
                '&:hover': {
                  backgroundColor: 'action.hover',
                },
              }}
            >
              <CloseIcon />
            </IconButton>
          </Box>

          <DialogContent sx={{ p: 3, flex: '1 1 auto', minHeight: 0, overflowY: 'auto' }}>
            {submitError && (
              <Box
                sx={{
                  mb: 2,
                  p: 1.5,
                  backgroundColor: 'error.light',
                  color: 'error.contrastText',
                  borderRadius: 1,
                }}
              >
                <Typography variant="body2">{submitError}</Typography>
              </Box>
            )}

            {onboardSuccess && (
              <Alert severity="success" sx={{ mb: 2 }} onClose={() => setOnboardSuccess(null)}>
                {onboardSuccess}
              </Alert>
            )}

            {mode === 'edit' && initialData?.is_initialized && (
              <Alert severity={isAdminUser ? 'success' : 'info'} sx={{ mb: 2 }}>
                องค์กรนี้ได้ถูกเริ่มต้นใช้งานแล้ว
                {initialData.initialized_at && (
                  <Typography variant="caption" display="block" sx={{ mt: 0.5 }}>
                    วันที่เริ่มต้น: {new Date(initialData.initialized_at).toLocaleString('th-TH')}
                  </Typography>
                )}
              </Alert>
            )}

            <Box sx={{ display: 'flex', flexDirection: 'column', gap: 3 }}>
              <TextField
                {...methods.register('name')}
                label="ชื่อองค์กร"
                required
                fullWidth
                error={!!errors.name}
                helperText={errors.name?.message}
                sx={{
                  '& .MuiOutlinedInput-root': {
                    borderRadius: 1,
                  },
                }}
              />

              <FormControl fullWidth error={!!errors.account_type}>
                <InputLabel>ประเภทบัญชี</InputLabel>
                <Select
                  value={watch('account_type')}
                  onChange={(e) => setValue('account_type', e.target.value as AccountType, { shouldValidate: true })}
                  label="ประเภทบัญชี"
                  disabled={isSubmitting}
                  sx={{
                    '& .MuiOutlinedInput-root': {
                      borderRadius: 1,
                    },
                  }}
                >
                  {ACCOUNT_TYPE_OPTIONS.map((option) => (
                    <MenuItem key={option.value} value={option.value}>
                      {option.label}
                    </MenuItem>
                  ))}
                </Select>
              </FormControl>

              <TextField
                {...methods.register('package_start')}
                label="วันเริ่มแพ็กเกจ"
                fullWidth
                type="date"
                InputLabelProps={{ shrink: true }}
                error={!!errors.package_start}
                helperText={errors.package_start?.message}
                sx={{
                  '& .MuiOutlinedInput-root': {
                    borderRadius: 1,
                  },
                }}
              />

              <TextField
                {...methods.register('package_end')}
                label="วันสิ้นสุดแพ็กเกจ"
                fullWidth
                type="date"
                InputLabelProps={{ shrink: true }}
                error={!!errors.package_end}
                helperText={errors.package_end?.message || 'เว้นว่าง = ไม่มีวันหมดอายุ'}
                sx={{
                  '& .MuiOutlinedInput-root': {
                    borderRadius: 1,
                  },
                }}
              />

              <TextField
                {...methods.register('factory_admin_email')}
                label="อีเมล Factory Admin"
                fullWidth
                type="email"
                error={!!errors.factory_admin_email}
                helperText={errors.factory_admin_email?.message || 'อีเมลสำหรับ Factory Admin ที่จะถูกสร้างเมื่อเริ่มต้นใช้งาน'}
                sx={{
                  '& .MuiOutlinedInput-root': {
                    borderRadius: 1,
                  },
                }}
              />

              <TextField
                {...methods.register('contact_first_name')}
                label="ชื่อผู้ติดต่อ"
                fullWidth
                error={!!errors.contact_first_name}
                helperText={errors.contact_first_name?.message || 'ไม่บังคับ'}
                sx={{
                  '& .MuiOutlinedInput-root': {
                    borderRadius: 1,
                  },
                }}
              />

              <TextField
                {...methods.register('contact_last_name')}
                label="นามสกุลผู้ติดต่อ"
                fullWidth
                error={!!errors.contact_last_name}
                helperText={errors.contact_last_name?.message || 'ไม่บังคับ'}
                sx={{
                  '& .MuiOutlinedInput-root': {
                    borderRadius: 1,
                  },
                }}
              />

              <TextField
                {...methods.register('contact_phone')}
                label="เบอร์โทรผู้ติดต่อ"
                fullWidth
                error={!!errors.contact_phone}
                helperText={errors.contact_phone?.message || 'ไม่บังคับ'}
                sx={{
                  '& .MuiOutlinedInput-root': {
                    borderRadius: 1,
                  },
                }}
              />

              <TextField
                {...methods.register('code')}
                label="รหัสองค์กร"
                fullWidth
                error={!!errors.code}
                helperText={errors.code?.message || 'ไม่บังคับ — ใช้เป็น subdomain เช่น acme-01'}
                sx={{
                  '& .MuiOutlinedInput-root': {
                    borderRadius: 1,
                  },
                }}
              />

              <TextField
                {...methods.register('description')}
                label="คำอธิบาย"
                fullWidth
                multiline
                rows={3}
                error={!!errors.description}
                helperText={errors.description?.message || 'ไม่บังคับ'}
                sx={{
                  '& .MuiOutlinedInput-root': {
                    borderRadius: 1,
                  },
                }}
              />

              {/* URL: Only show in edit mode for all roles */}
              {mode === 'edit' && (
                <TextField
                  {...methods.register('app_url')}
                  label="URL ของแอปองค์กร"
                  fullWidth
                  type="url"
                  error={!!errors.app_url}
                  helperText={errors.app_url?.message || 'URL ของแอปพลิเคชันองค์กร (เช่น https://org-name.cfo.com)'}
                  sx={{
                    '& .MuiOutlinedInput-root': {
                      borderRadius: 1,
                    },
                  }}
                />
              )}

              <TextField
                {...methods.register('username')}
                label="ชื่อผู้ใช้ (instance login)"
                fullWidth
                error={!!errors.username}
                helperText={errors.username?.message || 'ไม่บังคับ — สำหรับ internal/demo'}
                sx={{
                  '& .MuiOutlinedInput-root': {
                    borderRadius: 1,
                  },
                }}
              />

              <TextField
                {...methods.register('password')}
                label="รหัสผ่าน (instance login)"
                fullWidth
                type={showPassword ? 'text' : 'password'}
                error={!!errors.password}
                helperText={errors.password?.message || 'ไม่บังคับ — สำหรับ internal/demo'}
                InputProps={{
                  endAdornment: (
                    <InputAdornment position="end">
                      <IconButton
                        aria-label={showPassword ? 'ซ่อนรหัสผ่าน' : 'แสดงรหัสผ่าน'}
                        onClick={() => setShowPassword((v) => !v)}
                        edge="end"
                        size="small"
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

              {/* Mark as Deployed: Only for admins in edit mode */}
              {isAdminUser && mode === 'edit' && (
                <FormControlLabel
                  control={
                    <Switch
                      {...methods.register('is_initialized')}
                      checked={watch('is_initialized') || false}
                    />
                  }
                  label={
                    <Box>
                      <Typography variant="body2" fontWeight={500}>
                        Mark as Deployed
                      </Typography>
                      <Typography variant="caption" color="text.secondary">
                        ตั้งค่าองค์กรว่าได้ถูกเริ่มต้นใช้งานแล้ว
                      </Typography>
                    </Box>
                  }
                />
              )}
            </Box>
          </DialogContent>

          <DialogActions sx={{ p: 2, borderTop: '1px solid', borderColor: 'divider', gap: 1, flexShrink: 0 }}>
            {isAdminUser && mode === 'edit' && initialData?.id && (
              <Button
                type="button"
                variant="outlined"
                startIcon={<MailOutlineIcon />}
                disabled={isSubmitting}
                onClick={() => {
                  setOnboardSuccess(null)
                  setOnboardDialogOpen(true)
                }}
                sx={{
                  textTransform: 'none',
                  borderRadius: 1,
                  mr: 'auto',
                }}
              >
                ส่งอีเมลต้อนรับ
              </Button>
            )}
            <Button
              onClick={onClose}
              disabled={isSubmitting}
              sx={{
                textTransform: 'none',
                color: 'text.secondary',
              }}
            >
              ยกเลิก
            </Button>
            <Button
              type="submit"
              variant="contained"
              disabled={isSubmitting}
              startIcon={isSubmitting ? <CircularProgress size={16} /> : null}
              sx={{
                textTransform: 'none',
                borderRadius: 1,
              }}
            >
              {isSubmitting ? 'กำลังบันทึก...' : mode === 'edit' ? 'บันทึกการแก้ไข' : 'สร้างองค์กร'}
            </Button>
          </DialogActions>
        </Box>
      </FormProvider>
    </Dialog>

    {isAdminUser && mode === 'edit' && initialData && (
      <SendOnboardEmailDialog
        open={onboardDialogOpen}
        onClose={() => setOnboardDialogOpen(false)}
        organization={initialData}
        onSuccess={() => setOnboardSuccess('ส่งอีเมลต้อนรับสำเร็จ')}
      />
    )}
    </>
  )
}

