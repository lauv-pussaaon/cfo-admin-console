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
import type { EfCatalogVersionBackup } from '@/types/emission-resources'

interface Props {
  open: boolean
  backup: EfCatalogVersionBackup | null
  onClose: () => void
  onRestored: (version: string) => void
}

export default function FuelResourceBackupRestoreDialog ({
  open,
  backup,
  onClose,
  onRestored,
}: Props) {
  const { user } = useAuth()
  const [version, setVersion] = useState('')
  const [password, setPassword] = useState('')
  const [submitting, setSubmitting] = useState(false)
  const [error, setError] = useState<string | null>(null)

  useEffect(() => {
    if (!open || !backup) return
    setVersion(backup.source_version)
    setPassword('')
    setError(null)
    setSubmitting(false)
  }, [open, backup])

  const handleClose = () => {
    if (submitting) return
    onClose()
  }

  const handleConfirm = async () => {
    if (!backup || !version.trim() || !password.trim()) return
    setSubmitting(true)
    setError(null)
    try {
      const res = await authenticatedAdminFetch(
        `/api/ef-catalog/backups/${backup.id}/restore`,
        {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ version: version.trim(), password }),
        },
        { userId: user?.id }
      )
      const json = await res.json().catch(() => ({}))
      if (!res.ok) {
        const apiError = typeof json.error === 'string' ? json.error : ''
        if (apiError === 'Invalid password') throw new Error('รหัสผ่านไม่ถูกต้อง')
        if (apiError === 'Password is required') throw new Error('กรุณากรอกรหัสผ่าน')
        if (apiError === 'Unauthorized') throw new Error('ไม่มีสิทธิ์กู้คืนรายการนี้')
        throw new Error(apiError || 'กู้คืนไม่สำเร็จ')
      }
      onRestored(typeof json.version === 'string' ? json.version : version.trim())
      onClose()
    } catch (err) {
      setError(err instanceof Error ? err.message : 'กู้คืนไม่สำเร็จ')
    } finally {
      setSubmitting(false)
    }
  }

  return (
    <Dialog open={open} onClose={handleClose} maxWidth="sm" fullWidth>
      <DialogTitle>กู้คืนสำรองแคตตาล็อก</DialogTitle>
      <DialogContent dividers sx={{ display: 'flex', flexDirection: 'column', gap: 2 }}>
        {backup && (
          <Typography variant="body2">
            สำรองจาก <strong>{backup.source_version}</strong>
            {' · '}
            {backup.fuel_count.toLocaleString()} รายการ
          </Typography>
        )}
        <Alert severity="warning">
          แถวที่มี UUID เดียวกันในแคตตาล็อกสดจะถูกแทนที่ (soft-delete แล้ว upsert ตาม snapshot)
          หากเปลี่ยนชื่อ แถวเหล่านั้นจะย้ายไปเวอร์ชันใหม่ ต้อง Re-publish แล้วซิงค์ฝั่งลูกค้า
        </Alert>
        {error && <Alert severity="error">{error}</Alert>}
        <TextField
          label="ชื่อเวอร์ชันปลายทาง"
          size="small"
          fullWidth
          value={version}
          onChange={(e) => setVersion(e.target.value)}
          disabled={submitting}
        />
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
          variant="contained"
          onClick={() => void handleConfirm()}
          disabled={submitting || !version.trim() || !password.trim() || !backup}
          startIcon={submitting ? <CircularProgress size={16} color="inherit" /> : undefined}
        >
          แทนที่และกู้คืน
        </Button>
      </DialogActions>
    </Dialog>
  )
}
