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

// Schema for admin console users (system users only)
const userSchema = z.object({
  username: z.string().min(1, 'กรุณากรอกชื่อผู้ใช้').regex(/^[a-zA-Z0-9_]+$/, 'ชื่อผู้ใช้ต้องเป็นตัวอักษร ตัวเลข หรือ _ เท่านั้น'),
  email: z.string().email('กรุณากรอกอีเมลที่ถูกต้อง').min(1, 'กรุณากรอกอีเมล'),
  password: z.string().min(6, 'รหัสผ่านต้องมีอย่างน้อย 6 ตัวอักษร').optional().or(z.literal('')),
  name: z.string().min(1, 'กรุณากรอกชื่อผู้ใช้'),
  avatar_url: z.union([
    z.string().url('กรุณากรอก URL ที่ถูกต้อง'),
    z.literal(''),
    z.null()
  ]).optional(),
  role: z.enum(['Admin', 'Dealer', 'Consult', 'Audit'] as const).refine(
    (val) => val !== undefined,
    { message: 'กรุณาเลือกบทบาท' }
  ),
})

export type UserFormData = z.infer<typeof userSchema>

export default function UserModal({
  open,
  onClose,
  onSuccess,
  mode = 'create',
  initialData = null,
}: UserModalProps) {
  const [isSubmitting, setIsSubmitting] = useState(false)
  const [submitError, setSubmitError] = useState<string | null>(null)

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
          name: initialData.name || '',
          avatar_url: initialData.avatar_url || '',
          role: (initialData.role as UserRole) || defaultRole,
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
        }, {
          keepErrors: false,
        })
      }
      setSubmitError(null)
    }
  }, [open, reset, mode, initialData])

  const onFormSubmit = async (data: UserFormData) => {
    setIsSubmitting(true)
    setSubmitError(null)

    try {
      if (mode === 'edit' && initialData) {
        // Update existing user
        const updateData: {
          username: string
          email: string
          name: string
          avatar_url: string | null
          role: string
          password?: string
        } = {
          username: data.username,
          email: data.email,
          name: data.name,
          avatar_url: data.avatar_url || null,
          role: data.role as string,
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
            />
          </Box>

          <DialogActions sx={{ p: 3, borderTop: '1px solid', borderColor: 'divider', flexShrink: 0, gap: 2 }}>
            <Button onClick={handleClose} disabled={isSubmitting} color="inherit" variant="outlined">
              ยกเลิก
            </Button>
            <Button
              onClick={handleSubmit(onFormSubmit)}
              disabled={isSubmitting}
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
