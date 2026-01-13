'use client'

import { useState, useEffect } from 'react'
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
} from '@mui/material'
import {
  Close as CloseIcon,
} from '@mui/icons-material'
import { organizationService } from '@/lib/services'
import { useAuth } from '@/contexts/AuthContext'
import type { Organization } from '@/types/database'
import type { User } from '@/lib/api/types'
import { isExpectedError } from '@/lib/utils/errors'
import { isAdmin, isDealer } from '@/lib/permissions'

interface AdminOrganizationModalProps {
  open: boolean
  onClose: () => void
  onSuccess?: () => void
  mode?: 'create' | 'edit'
  initialData?: Organization | null
}

// Organization schema
// Note: app_url and factory_admin_email are only shown in edit mode, so they're optional
const organizationSchema = z.object({
  name: z.string().min(1, 'กรุณากรอกชื่อองค์กร'),
  code: z.string().optional().nullable(),
  description: z.string().optional().nullable(),
  app_url: z.string().url('กรุณากรอก URL ที่ถูกต้อง').optional().nullable().or(z.literal('')),
  factory_admin_email: z.string().email('กรุณากรอกอีเมลที่ถูกต้อง').optional().nullable().or(z.literal('')),
  is_initialized: z.boolean().optional(),
  dealer_id: z.string().optional().nullable(),
})

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
  const [dealers, setDealers] = useState<User[]>([])
  const [loadingDealers, setLoadingDealers] = useState(false)
  const [currentDealerId, setCurrentDealerId] = useState<string | null>(null)
  
  const isAdminUser = isAdmin(user)
  const isDealerUser = isDealer(user)

  const methods = useForm<AdminOrganizationFormData>({
    resolver: zodResolver(organizationSchema),
    mode: 'onChange',
    defaultValues: {
      name: '',
      code: '',
      description: '',
      app_url: '',
      factory_admin_email: '',
      is_initialized: false,
      dealer_id: null,
    }
  })

  const { handleSubmit, reset, formState: { errors }, watch, setValue } = methods

  // Load dealers when modal opens (only for admins)
  useEffect(() => {
    if (open) {
      if (isAdminUser) {
        loadDealers()
        if (mode === 'edit' && initialData?.id) {
          loadCurrentDealer(initialData.id)
        } else {
          setCurrentDealerId(null)
        }
      } else {
        // For non-admins, set dealer_id to current user if dealer
        if (isDealerUser && mode === 'create') {
          setCurrentDealerId(user?.id || null)
          setValue('dealer_id', user?.id || null)
        } else {
          setCurrentDealerId(null)
        }
      }
    }
  }, [open, mode, initialData, isAdminUser, isDealerUser, user?.id, setValue])

  const loadDealers = async () => {
    try {
      setLoadingDealers(true)
      const dealerList = await organizationService.getDealers()
      setDealers(dealerList)
    } catch (error) {
      console.error('Error loading dealers:', error)
    } finally {
      setLoadingDealers(false)
    }
  }

  const loadCurrentDealer = async (organizationId: string) => {
    if (!organizationId) {
      setCurrentDealerId(null)
      setValue('dealer_id', null)
      return
    }

    try {
      const dealer = await organizationService.getDealerByOrganization(organizationId)
      setCurrentDealerId(dealer?.id || null)
      setValue('dealer_id', dealer?.id || null)
    } catch (error) {
      // Log error with better details
      console.error('Error loading current dealer:', {
        error,
        message: error instanceof Error ? error.message : String(error),
        organizationId,
      })
      // Set to null on error - organization might not have a dealer assigned
      setCurrentDealerId(null)
      setValue('dealer_id', null)
    }
  }

  useEffect(() => {
    if (open) {
      if (mode === 'edit' && initialData) {
        reset({
          name: initialData.name || '',
          code: initialData.code || '',
          description: initialData.description || '',
          app_url: initialData.app_url || '',
          factory_admin_email: initialData.factory_admin_email || '',
          is_initialized: initialData.is_initialized || false,
          dealer_id: currentDealerId,
        })
      } else {
        reset({
          name: '',
          code: '',
          description: '',
          app_url: '',
          factory_admin_email: '',
          is_initialized: false,
          dealer_id: null,
        })
      }
      setSubmitError(null)
    }
  }, [open, reset, mode, initialData, currentDealerId])

  const onFormSubmit = async (data: AdminOrganizationFormData) => {
    setIsSubmitting(true)
    setSubmitError(null)

    try {
      let organizationId: string

      if (mode === 'edit' && initialData) {
        // Update organization
        const updated = await organizationService.updateOrganization(
          initialData.id,
          {
            name: data.name,
            code: data.code || null,
            description: data.description || null,
            app_url: data.app_url || null,
            factory_admin_email: data.factory_admin_email || null,
            is_initialized: data.is_initialized ?? false,
          }
        )
        organizationId = updated.id

        // Update dealer assignment if changed
        if (data.dealer_id !== currentDealerId) {
          await organizationService.setDealerForOrganization(
            organizationId,
            data.dealer_id || null,
            user?.id || null
          )
        }
      } else {
        // Create organization
        const created = await organizationService.createOrganization({
          name: data.name,
          code: data.code || null,
          description: data.description || null,
          app_url: data.app_url || null,
          factory_admin_email: data.factory_admin_email || null,
          created_by: user?.id || null,
          assignedUserId: isDealerUser ? user?.id || null : null, // Auto-assign dealer
        })
        organizationId = created.id

        // Assign dealer if provided (for admins) or auto-assign for dealers
        const dealerToAssign = isAdminUser ? data.dealer_id : (isDealerUser ? user?.id || null : null)
        if (dealerToAssign) {
          await organizationService.setDealerForOrganization(
            organizationId,
            dealerToAssign,
            user?.id || null
          )
        }
      }

      onClose()
      if (onSuccess) {
        onSuccess()
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
    <Dialog
      open={open}
      onClose={onClose}
      maxWidth="sm"
      fullWidth
      PaperProps={{
        sx: {
          borderRadius: 2,
        },
      }}
    >
      <FormProvider {...methods}>
        <form onSubmit={handleSubmit(onFormSubmit)}>
          <Box sx={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', p: 2, borderBottom: '1px solid', borderColor: 'divider' }}>
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

          <DialogContent sx={{ p: 3 }}>
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
                {...methods.register('code')}
                label="รหัสองค์กร"
                fullWidth
                error={!!errors.code}
                helperText={errors.code?.message || 'ไม่บังคับ'}
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

              {/* Dealer Assignment: Only for admins */}
              {isAdminUser && (
                <FormControl fullWidth>
                  <InputLabel>Dealer</InputLabel>
                  <Select
                    {...methods.register('dealer_id')}
                    value={watch('dealer_id') || ''}
                    onChange={(e) => setValue('dealer_id', e.target.value || null)}
                    label="Dealer"
                    disabled={isSubmitting || loadingDealers}
                    sx={{
                      '& .MuiOutlinedInput-root': {
                        borderRadius: 1,
                      },
                    }}
                  >
                    <MenuItem value="">
                      <em>ไม่มี Dealer</em>
                    </MenuItem>
                    {dealers.map((dealer) => (
                      <MenuItem key={dealer.id} value={dealer.id}>
                        {dealer.name} ({dealer.email})
                      </MenuItem>
                    ))}
                  </Select>
                </FormControl>
              )}

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

          <DialogActions sx={{ p: 2, borderTop: '1px solid', borderColor: 'divider' }}>
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
        </form>
      </FormProvider>
    </Dialog>
  )
}

