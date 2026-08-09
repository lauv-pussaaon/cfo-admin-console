'use client'

import { useState, useEffect } from 'react'
import { useForm, FormProvider } from 'react-hook-form'
import { zodResolver } from '@hookform/resolvers/zod'
import { z } from 'zod'
import { Dialog, DialogContent, DialogActions, Box, Typography, IconButton, Button, CircularProgress } from '@mui/material'
import { Close as CloseIcon } from '@mui/icons-material'
import { userService } from '@/lib/services'
import { isExpectedError } from '@/lib/utils/errors'
import type { User } from '@/lib/api/types'
import type { UserRole } from '@/types/roles'
import { ROLE_OPTIONS } from '@/types/roles'
import UserForm from './UserForm'

interface UserModalProps {
  open: boolean
  onClose: () => void
  onSuccess?: () => void
  mode?: 'create' | 'edit'
  initialData?: User | null
}

const phonePattern = /^[0-9+\-\s()]{8,20}$/

function isProfileRole (role: string): boolean {
  return role === 'Consult' || role === 'Audit'
}

const profileDefaults = {
  organizationName: '',
  phone: '',
  yearExperiences: 0,
  industries: [] as string[],
}

// Schema for admin console users (system users only)
const userSchema = z
  .object({
    username: z.string().min(1, 'กรุณากรอกชื่อผู้ใช้').regex(/^[a-zA-Z0-9_]+$/, 'ชื่อผู้ใช้ต้องเป็นตัวอักษร ตัวเลข หรือ _ เท่านั้น'),
    email: z.string().email('กรุณากรอกอีเมลที่ถูกต้อง').min(1, 'กรุณากรอกอีเมล'),
    password: z.string().min(6, 'รหัสผ่านต้องมีอย่างน้อย 6 ตัวอักษร').optional().or(z.literal('')),
    name: z.string().min(1, 'กรุณากรอกชื่อผู้ใช้'),
    avatar_url: z.union([
      z.string().url('กรุณากรอก URL ที่ถูกต้อง'),
      z.literal(''),
      z.null()
    ]).optional(),
    role: z.enum(['Admin', 'Dealer', 'Consult', 'Audit', 'Support'] as const).refine(
      (val) => val !== undefined,
      { message: 'กรุณาเลือกบทบาท' }
    ),
    organizationName: z.string(),
    phone: z.string(),
    yearExperiences: z.number({ message: 'กรุณากรอกปีประสบการณ์' }),
    industries: z.array(z.string()),
  })
  .superRefine((data, ctx) => {
    if (!isProfileRole(data.role)) return

    if (!data.organizationName.trim()) {
      ctx.addIssue({
        code: 'custom',
        message: 'กรุณากรอกชื่อองค์กร',
        path: ['organizationName'],
      })
    }
    if (!data.phone.trim()) {
      ctx.addIssue({
        code: 'custom',
        message: 'กรุณากรอกเบอร์โทร',
        path: ['phone'],
      })
    } else if (!phonePattern.test(data.phone)) {
      ctx.addIssue({
        code: 'custom',
        message: 'รูปแบบเบอร์โทรไม่ถูกต้อง',
        path: ['phone'],
      })
    }
    if (
      !Number.isInteger(data.yearExperiences) ||
      data.yearExperiences < 0 ||
      data.yearExperiences > 80
    ) {
      ctx.addIssue({
        code: 'custom',
        message: 'ปีประสบการณ์ต้องเป็นจำนวนเต็ม 0–80',
        path: ['yearExperiences'],
      })
    }
    if (data.industries.length < 1) {
      ctx.addIssue({
        code: 'custom',
        message: 'กรุณาเลือกอย่างน้อย 1 อุตสาหกรรม',
        path: ['industries'],
      })
    }
  })

export type UserFormData = z.infer<typeof userSchema>

function mapProfilePayload (data: UserFormData) {
  if (!isProfileRole(data.role)) {
    return {
      organization_name: null as string | null,
      phone: null as string | null,
      year_experiences: null as number | null,
      industries: [] as string[],
    }
  }

  return {
    organization_name: data.organizationName.trim(),
    phone: data.phone.trim(),
    year_experiences: data.yearExperiences,
    industries: data.industries,
  }
}

export default function UserModal({
  open,
  onClose,
  onSuccess,
  mode = 'create',
  initialData = null,
}: UserModalProps) {
  const [isSubmitting, setIsSubmitting] = useState(false)
  const [submitError, setSubmitError] = useState<string | null>(null)

  // Check if editing the locked admin user
  const isLockedAdmin = Boolean(mode === 'edit' && initialData && initialData.role === 'Admin' && initialData.username === 'admin')

  const defaultRole: UserRole = 'Consult'

  // Initialize React Hook Form with Zod resolver
  const methods = useForm<UserFormData>({
    resolver: zodResolver(userSchema),
    mode: 'onChange',
    defaultValues: {
      username: '',
      email: '',
      password: '',
      name: '',
      avatar_url: '',
      role: defaultRole,
      ...profileDefaults,
    }
  })

  const { handleSubmit, reset } = methods

  // Reset form when modal opens/closes or initialData changes
  useEffect(() => {
    if (open) {
      if (mode === 'edit' && initialData) {
        reset({
          username: initialData.username || '',
          email: initialData.email || '',
          password: '',
          name: initialData.name || '',
          avatar_url: initialData.avatar_url || '',
          role: (initialData.role as UserRole) || defaultRole,
          organizationName: initialData.organization_name || '',
          phone: initialData.phone || '',
          yearExperiences: initialData.year_experiences ?? 0,
          industries: initialData.industries ?? [],
        }, {
          keepErrors: false,
        })
      } else {
        reset({
          username: '',
          email: '',
          password: '',
          name: '',
          avatar_url: '',
          role: defaultRole,
          ...profileDefaults,
        }, {
          keepErrors: false,
        })
      }
      setSubmitError(null)
    }
  }, [open, reset, mode, initialData])

  const onFormSubmit = async (data: UserFormData) => {
    // Prevent editing the locked admin user
    if (isLockedAdmin) {
      setSubmitError('ไม่สามารถแก้ไขผู้ใช้ admin ได้')
      return
    }

    setIsSubmitting(true)
    setSubmitError(null)

    const profile = mapProfilePayload(data)

    try {
      if (mode === 'edit' && initialData) {
        const updateData: {
          username: string
          email: string
          name: string
          avatar_url: string | null
          role: string
          password?: string
          organization_name: string | null
          phone: string | null
          year_experiences: number | null
          industries: string[]
        } = {
          username: data.username,
          email: data.email,
          name: data.name,
          avatar_url: data.avatar_url || null,
          role: data.role as string,
          ...profile,
        }
        
        // Only update password if provided
        if (data.password && data.password.length > 0) {
          updateData.password = data.password
        }
        
        await userService.updateUser(initialData.id, updateData)
      } else {
        // Create new user - password is required for new users
        if (!data.password || data.password.length === 0) {
          setSubmitError('กรุณากรอกรหัสผ่าน')
          setIsSubmitting(false)
          return
        }
        
        await userService.createUser({
          username: data.username,
          email: data.email,
          password: data.password,
          name: data.name,
          avatar_url: data.avatar_url || null,
          role: data.role as string,
          status: 'active',
          ...profile,
        })
      }
      
      // Close modal and call success callback
      onClose()
      if (onSuccess) {
        onSuccess()
      }
    } catch (error) {
      const errorMessage = mode === 'edit' 
        ? 'เกิดข้อผิดพลาดในการแก้ไขผู้ใช้ กรุณาลองใหม่อีกครั้ง'
        : 'เกิดข้อผิดพลาดในการสร้างผู้ใช้ กรุณาลองใหม่อีกครั้ง'
      setSubmitError(error instanceof Error ? error.message : errorMessage)
      if (!isExpectedError(error)) {
        console.error('Unexpected error in UserModal:', error)
      }
    } finally {
      setIsSubmitting(false)
    }
  }

  const handleClose = () => {
    if (!isSubmitting) {
      onClose()
    }
  }

  return (
    <Dialog open={open} onClose={handleClose} maxWidth="sm" fullWidth sx={{ '& .MuiDialog-paper': { maxHeight: '90vh' } }}>
      <FormProvider {...methods}>
        <DialogContent sx={{ p: 0, height: '100%', display: 'flex', flexDirection: 'column' }}>
          <Box sx={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', p: 3, borderBottom: '1px solid', borderColor: 'divider', flexShrink: 0 }}>
            <Typography variant="h5" fontWeight="bold">
              {mode === 'edit' ? 'แก้ไขผู้ใช้' : 'สร้างผู้ใช้ใหม่'}
            </Typography>
            <IconButton onClick={handleClose} size="small" disabled={isSubmitting}>
              <CloseIcon />
            </IconButton>
          </Box>

          {isLockedAdmin && (
            <Box sx={{ px: 3, py: 2, borderBottom: '1px solid', borderColor: 'divider', bgcolor: 'warning.light' }}>
              <Typography color="warning.dark" variant="body2" fontWeight="medium">
                ไม่สามารถแก้ไขหรือลบผู้ใช้ admin ได้ (บัญชีนี้ถูกล็อคเพื่อความปลอดภัย)
              </Typography>
            </Box>
          )}

          {submitError && (
            <Box sx={{ px: 3, py: 2, borderBottom: '1px solid', borderColor: 'divider' }}>
              <Typography color="error" variant="body2">{submitError}</Typography>
            </Box>
          )}

          <Box sx={{ flex: 1, overflow: 'auto', p: 3 }}>
            <UserForm 
              methods={methods} 
              mode={mode} 
              isSubmitting={isSubmitting} 
              availableRoles={ROLE_OPTIONS}
              isLocked={isLockedAdmin}
            />
          </Box>

          <DialogActions sx={{ p: 3, borderTop: '1px solid', borderColor: 'divider', flexShrink: 0, gap: 2 }}>
            <Button onClick={handleClose} disabled={isSubmitting} color="inherit" variant="outlined">
              ยกเลิก
            </Button>
            <Button
              onClick={handleSubmit(onFormSubmit)}
              disabled={isSubmitting || isLockedAdmin}
              variant="contained"
              color="primary"
              startIcon={isSubmitting ? <CircularProgress size={16} /> : null}
            >
              {isSubmitting ? (mode === 'edit' ? 'กำลังบันทึก...' : 'กำลังสร้าง...') : (mode === 'edit' ? 'บันทึกการแก้ไข' : 'สร้างผู้ใช้')}
            </Button>
          </DialogActions>
        </DialogContent>
      </FormProvider>
    </Dialog>
  )
}
