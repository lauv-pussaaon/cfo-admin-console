'use client'

import { useEffect, useState } from 'react'
import {
  Alert,
  Box,
  Button,
  Dialog,
  DialogActions,
  DialogContent,
  DialogTitle,
  Typography,
} from '@mui/material'
import { authenticatedAdminFetch } from '@/lib/api/admin-fetch'

export type OnboardEmailOrganization = {
  id: string
  name: string
  app_url: string | null
  factory_admin_email: string | null
  username: string | null
  password: string | null
}

interface SendOnboardEmailDialogProps {
  open: boolean
  onClose: () => void
  organization: OnboardEmailOrganization | null
  onSuccess?: () => void
}

function buildLoginUrl (appUrl: string): string {
  return `${appUrl.replace(/\/$/, '')}/login`
}

export default function SendOnboardEmailDialog ({
  open,
  onClose,
  organization,
  onSuccess,
}: SendOnboardEmailDialogProps) {
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)

  useEffect(() => {
    if (open) {
      setError(null)
      setLoading(false)
    }
  }, [open, organization?.id])

  const recipient = organization?.factory_admin_email?.trim() || ''
  const appUrl = organization?.app_url?.trim() || ''
  const canSend = Boolean(organization && recipient && appUrl)

  const handleConfirm = async () => {
    if (!organization || !canSend) return

    setLoading(true)
    setError(null)
    try {
      const response = await authenticatedAdminFetch(
        `/api/admin-console/organizations/${organization.id}/send-onboard`,
        { method: 'POST' }
      )
      const result = await response.json().catch(() => ({}))
      if (!response.ok) {
        throw new Error(
          (result as { error?: string }).error || 'ส่งอีเมลต้อนรับไม่สำเร็จ'
        )
      }
      onSuccess?.()
      onClose()
    } catch (err) {
      setError(err instanceof Error ? err.message : 'ส่งอีเมลต้อนรับไม่สำเร็จ')
    } finally {
      setLoading(false)
    }
  }

  return (
    <Dialog
      open={open}
      onClose={() => !loading && onClose()}
      maxWidth="sm"
      fullWidth
    >
      <DialogTitle>ยืนยันส่งอีเมลต้อนรับ</DialogTitle>
      <DialogContent>
        {error && (
          <Alert severity="error" sx={{ mb: 2 }}>
            {error}
          </Alert>
        )}
        {!canSend && organization && (
          <Alert severity="warning" sx={{ mb: 2 }}>
            {!recipient && !appUrl
              ? 'ต้องมีอีเมล Factory Admin และ App URL ก่อนส่งอีเมล'
              : !recipient
                ? 'องค์กรยังไม่มีอีเมล Factory Admin'
                : 'องค์กรยังไม่มี App URL'}
          </Alert>
        )}
        {organization && (
          <Box sx={{ display: 'grid', gap: 1.25, pt: 0.5 }}>
            <Typography variant="body2">
              <strong>องค์กร:</strong> {organization.name}
            </Typography>
            <Typography variant="body2">
              <strong>ผู้รับ:</strong> {recipient || '—'}
            </Typography>
            <Typography variant="body2">
              <strong>ลิงก์เข้าสู่ระบบ:</strong>{' '}
              {appUrl ? buildLoginUrl(appUrl) : '—'}
            </Typography>
            <Typography variant="body2">
              <strong>ชื่อผู้ใช้:</strong> {organization.username?.trim() || '—'}
            </Typography>
            <Typography variant="body2">
              <strong>รหัสผ่าน:</strong>{' '}
              {organization.password?.trim() ? 'จะส่งรหัสผ่านด้วย' : 'ไม่มีรหัสผ่านในระบบ'}
            </Typography>
            <Typography variant="caption" color="text.secondary">
              ระบบจะส่งอีเมลต้อนรับพร้อมข้อมูลองค์กรและข้อมูลเข้าสู่ระบบไปยังอีเมล Factory Admin
            </Typography>
          </Box>
        )}
      </DialogContent>
      <DialogActions>
        <Button onClick={onClose} disabled={loading} sx={{ textTransform: 'none' }}>
          ยกเลิก
        </Button>
        <Button
          variant="contained"
          onClick={handleConfirm}
          disabled={loading || !canSend}
          sx={{ textTransform: 'none' }}
        >
          {loading ? 'กำลังส่ง...' : 'ยืนยันส่งอีเมล'}
        </Button>
      </DialogActions>
    </Dialog>
  )
}
