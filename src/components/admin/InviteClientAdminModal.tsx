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
  InputAdornment,
} from '@mui/material'
import {
  Close as CloseIcon,
  ContentCopy as ContentCopyIcon,
  Check as CheckIcon,
} from '@mui/icons-material'
import { invitationService } from '@/lib/services/invitation.service'
import { useAuth } from '@/contexts/AuthContext'
import type { Organization } from '@/types/database'
import type { OrganizationInvitation } from '@/types/database'
import { isExpectedError } from '@/lib/utils/errors'

interface InviteClientAdminModalProps {
  open: boolean
  onClose: () => void
  onSuccess?: () => void
  organization: Organization | null
}

const inviteSchema = z.object({
  email: z.string().email('กรุณากรอกอีเมลที่ถูกต้อง').min(1, 'กรุณากรอกอีเมล'),
})

export type InviteFormData = z.infer<typeof inviteSchema>

export default function InviteClientAdminModal({
  open,
  onClose,
  onSuccess,
  organization,
}: InviteClientAdminModalProps) {
  const { user } = useAuth()
  const [isSubmitting, setIsSubmitting] = useState(false)
  const [submitError, setSubmitError] = useState<string | null>(null)
  const [invitation, setInvitation] = useState<OrganizationInvitation | null>(null)
  const [invitationLink, setInvitationLink] = useState<string>('')
  const [copied, setCopied] = useState(false)

  // Initialize React Hook Form with Zod resolver
  const methods = useForm<InviteFormData>({
    resolver: zodResolver(inviteSchema),
    mode: 'onChange',
    defaultValues: {
      email: '',
    }
  })

  const { handleSubmit, reset, formState: { errors }, watch } = methods
  const emailValue = watch('email')

  // Reset form when modal opens/closes
  useEffect(() => {
    if (open) {
      // Pre-fill email from organization's factory_admin_email if available
      reset({
        email: organization?.factory_admin_email || '',
      })
      setInvitation(null)
      setInvitationLink('')
      setCopied(false)
      setSubmitError(null)
    }
  }, [open, reset, organization])

  const onFormSubmit = async (data: InviteFormData) => {
    if (!organization) {
      setSubmitError('ไม่พบข้อมูลองค์กร')
      return
    }

    setIsSubmitting(true)
    setSubmitError(null)

    try {
      // Create invitation
      const newInvitation = await invitationService.createInvitation(
        organization.id,
        data.email,
        user?.id || null
      )

      setInvitation(newInvitation)

      // Generate invitation link
      if (organization.app_url) {
        const link = `${organization.app_url}/invite/${newInvitation.token}`
        setInvitationLink(link)
      } else {
        setSubmitError('องค์กรยังไม่ได้ตั้งค่า App URL กรุณาตั้งค่า App URL ก่อนสร้างคำเชิญ')
        setInvitation(null)
      }
    } catch (error) {
      if (isExpectedError(error)) {
        setSubmitError(error instanceof Error ? error.message : 'เกิดข้อผิดพลาด')
      } else {
        console.error('Error creating invitation:', error)
        setSubmitError('เกิดข้อผิดพลาดในการสร้างคำเชิญ')
      }
    } finally {
      setIsSubmitting(false)
    }
  }

  const handleCopyLink = async () => {
    if (invitationLink) {
      try {
        await navigator.clipboard.writeText(invitationLink)
        setCopied(true)
        setTimeout(() => setCopied(false), 2000)
      } catch (error) {
        console.error('Failed to copy link:', error)
      }
    }
  }

  const handleClose = () => {
    setInvitation(null)
    setInvitationLink('')
    setCopied(false)
    setSubmitError(null)
    onClose()
  }

  return (
    <Dialog
      open={open}
      onClose={handleClose}
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
              เชิญ Client Admin
            </Typography>
            <IconButton
              onClick={handleClose}
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
              <Alert severity="error" sx={{ mb: 2 }}>
                {submitError}
              </Alert>
            )}

            {organization && (
              <Box sx={{ mb: 2 }}>
                <Typography variant="body2" color="text.secondary">
                  องค์กร: <strong>{organization.name}</strong>
                  {organization.code && ` (${organization.code})`}
                </Typography>
              </Box>
            )}

            {!invitation ? (
              <Box sx={{ display: 'flex', flexDirection: 'column', gap: 3 }}>
                <TextField
                  {...methods.register('email')}
                  label="อีเมล Client Admin"
                  required
                  fullWidth
                  type="email"
                  error={!!errors.email}
                  helperText={errors.email?.message}
                  disabled={isSubmitting}
                  sx={{
                    '& .MuiOutlinedInput-root': {
                      borderRadius: 1,
                    },
                  }}
                />

                {!organization?.app_url && (
                  <Alert severity="warning">
                    องค์กรนี้ยังไม่ได้ตั้งค่า App URL กรุณาตั้งค่า App URL ก่อนสร้างคำเชิญ
                  </Alert>
                )}
              </Box>
            ) : (
              <Box sx={{ display: 'flex', flexDirection: 'column', gap: 2 }}>
                <Alert severity="success">
                  สร้างคำเชิญสำเร็จแล้ว
                </Alert>

                <Box>
                  <Typography variant="body2" color="text.secondary" sx={{ mb: 1 }}>
                    ลิงก์คำเชิญ:
                  </Typography>
                  <TextField
                    value={invitationLink}
                    fullWidth
                    InputProps={{
                      readOnly: true,
                      endAdornment: (
                        <InputAdornment position="end">
                          <IconButton
                            onClick={handleCopyLink}
                            edge="end"
                            size="small"
                            sx={{
                              color: copied ? 'success.main' : 'primary.main',
                            }}
                          >
                            {copied ? <CheckIcon /> : <ContentCopyIcon />}
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
                  {copied && (
                    <Typography variant="caption" color="success.main" sx={{ mt: 0.5, display: 'block' }}>
                      คัดลอกแล้ว
                    </Typography>
                  )}
                </Box>

                <Box>
                  <Typography variant="body2" color="text.secondary">
                    อีเมล: <strong>{invitation.email}</strong>
                  </Typography>
                  <Typography variant="body2" color="text.secondary" sx={{ mt: 0.5 }}>
                    วันหมดอายุ: {new Date(invitation.expires_at).toLocaleString('th-TH')}
                  </Typography>
                </Box>
              </Box>
            )}
          </DialogContent>

          <DialogActions sx={{ p: 2, borderTop: '1px solid', borderColor: 'divider' }}>
            {invitation ? (
              <Button
                onClick={handleClose}
                variant="contained"
                fullWidth
              >
                ปิด
              </Button>
            ) : (
              <>
                <Button
                  onClick={handleClose}
                  disabled={isSubmitting}
                >
                  ยกเลิก
                </Button>
                <Button
                  type="submit"
                  variant="contained"
                  disabled={isSubmitting || !organization?.app_url || !emailValue}
                  startIcon={isSubmitting ? <CircularProgress size={16} /> : null}
                >
                  สร้างคำเชิญ
                </Button>
              </>
            )}
          </DialogActions>
        </form>
      </FormProvider>
    </Dialog>
  )
}

