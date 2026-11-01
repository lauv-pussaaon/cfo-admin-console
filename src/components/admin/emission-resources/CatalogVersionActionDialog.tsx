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

interface Props {
  open: boolean
  mode: 'delete' | 'archive'
  version: string
  onClose: () => void
  onDone: () => void
}

export default function CatalogVersionActionDialog ({
  open,
  mode,
  version,
  onClose,
  onDone,
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
  }, [open, version, mode])

  const handleClose = () => {
    if (submitting) return
    onClose()
  }

  const handleConfirm = async () => {
    if (!version) return
    if (mode === 'delete' && !password.trim()) return
    setSubmitting(true)
    setError(null)
    try {
      const res = mode === 'delete'
        ? await authenticatedAdminFetch(
          '/api/ef-catalog/releases',
          {
            method: 'DELETE',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ version, password }),
          },
          { userId: user?.id }
        )
        : await fetch('/api/ef-catalog/releases', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ version, action: 'archive' }),
        })
      const json = await res.json().catch(() => ({}))
      if (!res.ok) {
        const apiError = typeof json.error === 'string' ? json.error : ''
        if (apiError === 'Invalid password') throw new Error('รหัสผ่านไม่ถูกต้อง')
        if (apiError === 'Password is required') throw new Error('กรุณากรอกรหัสผ่าน')
        if (apiError === 'Unauthorized') throw new Error('ไม่มีสิทธิ์ลบฉบับร่างนี้')
        throw new Error(apiError || (mode === 'delete' ? 'ลบไม่สำเร็จ' : 'เก็บถาวรไม่สำเร็จ'))
      }
      onDone()
      onClose()
    } catch (err) {
      setError(err instanceof Error ? err.message : 'ไม่สำเร็จ')
    } finally {
      setSubmitting(false)
    }
  }

  const title = mode === 'delete' ? 'ลบฉบับร่าง' : 'เก็บถาวร'
  const body = mode === 'delete'
    ? `ลบฉบับร่าง "${version}" และแถวปัจจัยทั้งหมด ชื่อเวอร์ชันจะใช้ซ้ำได้`
    : `เก็บถาวร "${version}" ออกจากรายการเวอร์ชัน แถวที่ลูกค้าคัดลอกไว้แล้วยังอยู่`

  return (
    <Dialog open={open} onClose={handleClose} maxWidth="xs" fullWidth>
      <DialogTitle>{title}</DialogTitle>
      <DialogContent>
        <Typography variant="body2" sx={{ mb: 2 }}>{body}</Typography>
        {mode === 'delete' && (
          <TextField
            autoFocus
            fullWidth
            size="small"
            type="password"
            label="รหัสผ่าน"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            onKeyDown={(e) => {
              if (e.key === 'Enter') void handleConfirm()
            }}
          />
        )}
        {error && <Alert severity="error" sx={{ mt: 2 }}>{error}</Alert>}
      </DialogContent>
      <DialogActions>
        <Button onClick={handleClose} disabled={submitting} color="inherit">ยกเลิก</Button>
        <Button
          onClick={() => void handleConfirm()}
          disabled={submitting || (mode === 'delete' && !password.trim())}
          color={mode === 'delete' ? 'error' : 'primary'}
          variant="contained"
          startIcon={submitting ? <CircularProgress size={14} /> : undefined}
        >
          {title}
        </Button>
      </DialogActions>
    </Dialog>
  )
}
