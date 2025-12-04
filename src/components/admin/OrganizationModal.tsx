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
  Chip,
  Alert,
} from '@mui/material'
import {
  Close as CloseIcon,
} from '@mui/icons-material'
import { organizationService } from '@/lib/services'
import { useAuth } from '@/contexts/AuthContext'
import type { Organization } from '@/types/database'
import { isExpectedError } from '@/lib/utils/errors'

interface OrganizationModalProps {
  open: boolean
  onClose: () => void
  onSuccess?: () => void
  mode?: 'create' | 'edit'
  initialData?: Organization | null
}

// Zod validation schema
const organizationSchema = z.object({
  name: z.string().min(1, 'กรุณากรอกชื่อองค์กร'),
  code: z.string().optional().nullable(),
  description: z.string().optional().nullable(),
  app_url: z.string().url('กรุณากรอก URL ที่ถูกต้อง').optional().nullable().or(z.literal('')),
  factory_admin_email: z.string().email('กรุณากรอกอีเมลที่ถูกต้อง').optional().nullable().or(z.literal('')),
})

export type OrganizationFormData = z.infer<typeof organizationSchema>

export default function OrganizationModal({
  open,
  onClose,
  onSuccess,
  mode = 'create',
  initialData = null,
}: OrganizationModalProps) {
  const { user } = useAuth()
  const [isSubmitting, setIsSubmitting] = useState(false)
  const [submitError, setSubmitError] = useState<string | null>(null)

  // Initialize React Hook Form with Zod resolver
  const methods = useForm<OrganizationFormData>({
    resolver: zodResolver(organizationSchema),
    mode: 'onChange',
    defaultValues: {
      name: '',
      code: '',
      description: '',
      app_url: '',
      factory_admin_email: '',
    }
  })

  const { handleSubmit, reset, formState: { errors } } = methods

  // Reset form when modal opens/closes or initialData changes
  useEffect(() => {
    if (open) {
      if (mode === 'edit' && initialData) {
        // Pre-populate form with existing data
        reset({
          name: initialData.name || '',
          code: initialData.code || '',
          description: initialData.description || '',
          app_url: initialData.app_url || '',
          factory_admin_email: initialData.factory_admin_email || '',
        })
      } else {
        // Reset to defaults for create mode
        reset({
          name: '',
          code: '',
          description: '',
          app_url: '',
          factory_admin_email: '',
        })
      }
      setSubmitError(null)
    }
  }, [open, reset, mode, initialData])

  const onFormSubmit = async (data: OrganizationFormData) => {
    setIsSubmitting(true)
    setSubmitError(null)

    try {
      if (mode === 'edit' && initialData) {
        // Update existing organization
        await organizationService.updateOrganization(
          initialData.id,
          {
            name: data.name,
            code: data.code || null,
            description: data.description || null,
            app_url: data.app_url || null,
            factory_admin_email: data.factory_admin_email || null,
          }
        )
      } else {
        // Create new organization
        await organizationService.createOrganization(
          {
            name: data.name,
            code: data.code || null,
            description: data.description || null,
            app_url: data.app_url || null,
            factory_admin_email: data.factory_admin_email || null,
            created_by: user?.id || null,
          }
        )
      }

      // Close modal and call success callback
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
              <Alert severity="info" sx={{ mb: 2 }}>
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

