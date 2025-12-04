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
  CircularProgress,
  TextField,
  Avatar,
} from '@mui/material'
import { Close as CloseIcon, PhotoCamera as PhotoCameraIcon } from '@mui/icons-material'
import { userService } from '@/lib/services'
import { avatarUploadService } from '@/lib/services/avatar-upload.service'
import { isExpectedError } from '@/lib/utils/errors'
import { useAuth } from '@/contexts/AuthContext'
import type { User } from '@/lib/api/types'

interface EditProfileModalProps {
  open: boolean
  onClose: () => void
  onSuccess?: () => void
  user: User | null
}

// Schema for profile form data
const profileSchema = z.object({
  name: z.string().min(1, 'กรุณากรอกชื่อ'),
  avatar_url: z.union([
    z.string().url('กรุณากรอก URL ที่ถูกต้อง'),
    z.literal(''),
    z.null()
  ]).optional(),
})

export type ProfileFormData = z.infer<typeof profileSchema>

export default function EditProfileModal({
  open,
  onClose,
  onSuccess,
  user,
}: EditProfileModalProps) {
  const { updateUser: updateUserInContext } = useAuth()
  const [isSubmitting, setIsSubmitting] = useState(false)
  const [submitError, setSubmitError] = useState<string | null>(null)
  const [avatarPreview, setAvatarPreview] = useState<string | null>(null)
  const [uploadingAvatar, setUploadingAvatar] = useState(false)
  const fileInputRef = useRef<HTMLInputElement>(null)

  // Initialize React Hook Form with Zod resolver
  const methods = useForm<ProfileFormData>({
    resolver: zodResolver(profileSchema),
    mode: 'onChange',
    defaultValues: {
      name: '',
      avatar_url: '',
    }
  })

  const { handleSubmit, watch, reset, setValue, formState: { errors } } = methods
  const formData = watch()

  // Reset form when modal opens or user changes
  useEffect(() => {
    if (open && user) {
      reset({
        name: user.name || '',
        avatar_url: user.avatar_url || '',
      })
      setAvatarPreview(user.avatar_url || null)
      setSubmitError(null)
    }
  }, [open, user, reset])

  const handleAvatarClick = () => {
    fileInputRef.current?.click()
  }

  const handleAvatarChange = async (event: React.ChangeEvent<HTMLInputElement>) => {
    const file = event.target.files?.[0]
    if (!file || !user) return

    setUploadingAvatar(true)
    setSubmitError(null)

    try {
      // Upload avatar
      const uploadResult = await avatarUploadService.uploadAvatar(file, user.id)

      if (!uploadResult.success || !uploadResult.fileUrl) {
        setSubmitError(uploadResult.error || 'การอัปโหลดรูปภาพล้มเหลว')
        setUploadingAvatar(false)
        return
      }

      // Delete old avatar if exists
      if (user.avatar_url) {
        const oldFilePath = avatarUploadService.extractFilePathFromUrl(user.avatar_url)
        if (oldFilePath) {
          await avatarUploadService.deleteAvatar(oldFilePath)
        }
      }

      // Update form with new avatar URL
      setValue('avatar_url', uploadResult.fileUrl, { shouldValidate: true })
      setAvatarPreview(uploadResult.fileUrl)
    } catch (error) {
      console.error('Error uploading avatar:', error)
      setSubmitError('เกิดข้อผิดพลาดในการอัปโหลดรูปภาพ')
    } finally {
      setUploadingAvatar(false)
      // Reset file input
      if (fileInputRef.current) {
        fileInputRef.current.value = ''
      }
    }
  }

  const handleRemoveAvatar = () => {
    setValue('avatar_url', null, { shouldValidate: true })
    setAvatarPreview(null)
  }

  const onFormSubmit = async (data: ProfileFormData) => {
    if (!user) return

    setIsSubmitting(true)
    setSubmitError(null)

    try {
      // Update user via service
      await userService.updateUser(user.id, {
        name: data.name,
        avatar_url: data.avatar_url || null,
      })

      // Update user in context to reflect changes immediately
      await updateUserInContext({
        name: data.name,
        avatar_url: data.avatar_url || null,
      })

      // Close modal and call success callback
      onClose()
      if (onSuccess) {
        onSuccess()
      }
    } catch (error) {
      console.log('error', error)
      const errorMessage = 'เกิดข้อผิดพลาดในการแก้ไขโปรไฟล์ กรุณาลองใหม่อีกครั้ง'
      setSubmitError(error instanceof Error ? error.message : errorMessage)
      if (!isExpectedError(error)) {
        console.error('Unexpected error in EditProfileModal:', error)
      }
    } finally {
      setIsSubmitting(false)
    }
  }

  const handleClose = () => {
    if (!isSubmitting && !uploadingAvatar) {
      onClose()
    }
  }

  return (
    <Dialog open={open} onClose={handleClose} maxWidth="sm" fullWidth>
      <FormProvider {...methods}>
        <DialogContent sx={{ p: 0, height: '100%', display: 'flex', flexDirection: 'column' }}>
          <Box sx={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', p: 3, borderBottom: '1px solid', borderColor: 'divider', flexShrink: 0 }}>
            <Typography variant="h5" fontWeight="bold">
              แก้ไขโปรไฟล์
            </Typography>
            <IconButton onClick={handleClose} size="small" disabled={isSubmitting || uploadingAvatar}>
              <CloseIcon />
            </IconButton>
          </Box>

          {submitError && (
            <Box sx={{ px: 3, py: 2, borderBottom: '1px solid', borderColor: 'divider' }}>
              <Typography color="error" variant="body2">{submitError}</Typography>
            </Box>
          )}

          <Box sx={{ flex: 1, overflow: 'auto', p: 3 }}>
            {/* Avatar Section */}
            <Box sx={{ display: 'flex', flexDirection: 'column', alignItems: 'center', mb: 4 }}>
              <Box sx={{ position: 'relative', mb: 2 }}>
                <Avatar
                  src={avatarPreview || undefined}
                  sx={{
                    width: 120,
                    height: 120,
                    bgcolor: 'primary.main',
                    fontSize: '3rem',
                    border: '3px solid',
                    borderColor: 'divider',
                  }}
                >
                  {formData.name?.charAt(0)?.toUpperCase() || 'U'}
                </Avatar>
                <IconButton
                  onClick={handleAvatarClick}
                  disabled={isSubmitting || uploadingAvatar}
                  sx={{
                    position: 'absolute',
                    bottom: 0,
                    right: 0,
                    bgcolor: 'primary.main',
                    color: 'white',
                    '&:hover': { bgcolor: 'primary.dark' },
                    border: '2px solid white',
                  }}
                  size="small"
                >
                  {uploadingAvatar ? (
                    <CircularProgress size={20} sx={{ color: 'white' }} />
                  ) : (
                    <PhotoCameraIcon fontSize="small" />
                  )}
                </IconButton>
                <input
                  ref={fileInputRef}
                  type="file"
                  accept="image/jpeg,image/jpg,image/png,image/gif,image/webp"
                  onChange={handleAvatarChange}
                  style={{ display: 'none' }}
                />
              </Box>
              {avatarPreview && (
                <Button
                  size="small"
                  color="error"
                  onClick={handleRemoveAvatar}
                  disabled={isSubmitting || uploadingAvatar}
                  sx={{ textTransform: 'none' }}
                >
                  ลบรูปภาพ
                </Button>
              )}
              <Typography variant="caption" color="text.secondary" sx={{ mt: 1, textAlign: 'center' }}>
                รองรับไฟล์ JPG, PNG, GIF, WebP (สูงสุด 2MB)
              </Typography>
            </Box>

            {/* Name Field */}
            <TextField
              fullWidth
              label="ชื่อ-นามสกุล *"
              value={formData.name || ''}
              onChange={(e) => setValue('name', e.target.value, { shouldValidate: true })}
              error={!!errors.name}
              helperText={errors.name?.message || 'กรุณากรอกชื่อ-นามสกุล'}
              required
              disabled={isSubmitting || uploadingAvatar}
              sx={{ mb: 3 }}
            />

            {/* Hidden avatar_url field for form validation */}
            <input type="hidden" {...methods.register('avatar_url')} />
          </Box>

          <DialogActions sx={{ p: 3, borderTop: '1px solid', borderColor: 'divider', flexShrink: 0, gap: 2 }}>
            <Button onClick={handleClose} disabled={isSubmitting || uploadingAvatar} color="inherit" variant="outlined">
              ยกเลิก
            </Button>
            <Button
              onClick={handleSubmit(onFormSubmit)}
              disabled={isSubmitting || uploadingAvatar}
              variant="contained"
              color="primary"
              startIcon={isSubmitting ? <CircularProgress size={16} /> : null}
            >
              {isSubmitting ? 'กำลังบันทึก...' : 'บันทึกการแก้ไข'}
            </Button>
          </DialogActions>
        </DialogContent>
      </FormProvider>
    </Dialog>
  )
}

