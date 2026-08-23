'use client'

import { useEffect, useState } from 'react'
import {
  Alert,
  Button,
  CircularProgress,
  Dialog,
  DialogActions,
  DialogContent,
  DialogTitle,
  TextField,
  Typography,
} from '@mui/material'
import { authenticatedAdminFetch } from '@/lib/api/admin-fetch'
import { useAuth } from '@/contexts/AuthContext'
import type { FuelResourceWithCategory } from '@/types/emission-resources'

interface Props {
  open: boolean
  resource: FuelResourceWithCategory | null
  onClose: () => void
  onDeleted: () => void
}

export default function FuelResourceDeleteDialog ({
  open,
  resource,
  onClose,
  onDeleted,
}: Props) {
  const { user } = useAuth()
  const [password, setPassword] = useState('')
  const [submitting, setSubmitting] = useState(false)
  const [error, setError] = useState<string | null>(null)

  useEffect(() => {
    if (!open) return
    setPassword('')
    setError(null)
    setSubmitting(false)
  }, [open, resource?.id])

  const handleClose = () => {
    if (submitting) return
    onClose()
  }

  const handleConfirm = async () => {
    if (!resource || !password.trim()) return
    setSubmitting(true)
    setError(null)
    try {
      const res = await authenticatedAdminFetch(
        `/api/fuel-resources/${resource.id}`,
        {
          method: 'DELETE',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ password }),
        },
        { userId: user?.id }
      )
      const json = await res.json().catch(() => ({}))
      if (!res.ok) {
        const apiError = typeof json.error === 'string' ? json.error : ''
        if (apiError === 'Invalid password') throw new Error('รหัสผ่านไม่ถูกต้อง')
        if (apiError === 'Password is required') throw new Error('กรุณากรอกรหัสผ่าน')
        if (apiError === 'Unauthorized') throw new Error('ไม่มีสิทธิ์ลบรายการนี้')
        throw new Error(apiError || 'ลบไม่สำเร็จ')
      }
      onDeleted()
      onClose()
    } catch (err) {
      setError(err instanceof Error ? err.message : 'ลบไม่สำเร็จ')
    } finally {
      setSubmitting(false)
    }
  }

  return (
    <Dialog open={open} onClose={handleClose} maxWidth="sm" fullWidth>
      <DialogTitle>ลบทรัพยากรการปล่อยก๊าซ</DialogTitle>
      <DialogContent dividers sx={{ display: 'flex', flexDirection: 'column', gap: 2 }}>
        {resource && (
          <Typography variant="body2">
            <strong>{resource.resource}</strong>
            {resource.version ? ` · ${resource.version}` : ''}
          </Typography>
        )}
        {error && <Alert severity="error">{error}</Alert>}
        <TextField
          type="password"
          label="รหัสผ่านผู้ดูแลระบบ"
          size="small"
          fullWidth
          autoComplete="current-password"
          value={password}
          onChange={(e) => setPassword(e.target.value)}
          disabled={submitting}
          onKeyDown={(e) => {
            if (e.key === 'Enter') {
              e.preventDefault()
              void handleConfirm()
            }
          }}
        />
      </DialogContent>
      <DialogActions>
        <Button onClick={handleClose} disabled={submitting}>
          ยกเลิก
        </Button>
        <Button
          color="error"
          variant="contained"
          onClick={() => void handleConfirm()}
          disabled={submitting || !password.trim() || !resource}
          startIcon={submitting ? <CircularProgress size={16} color="inherit" /> : undefined}
        >
          ลบ
        </Button>
      </DialogActions>
    </Dialog>
  )
}
