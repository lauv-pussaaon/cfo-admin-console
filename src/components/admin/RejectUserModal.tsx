'use client'

import { useEffect, useState } from 'react'
import {
  Dialog,
  DialogTitle,
  DialogContent,
  DialogActions,
  Button,
  TextField,
  CircularProgress,
  Typography,
} from '@mui/material'

interface RejectUserModalProps {
  open: boolean
  userName: string
  isSubmitting: boolean
  error?: string | null
  onClose: () => void
  onConfirm: (reason: string) => void | Promise<void>
}

export default function RejectUserModal ({
  open,
  userName,
  isSubmitting,
  error = null,
  onClose,
  onConfirm,
}: RejectUserModalProps) {
  const [reason, setReason] = useState('')

  useEffect(() => {
    if (open) {
      setReason('')
    }
  }, [open])

  const trimmed = reason.trim()
  const canSubmit = trimmed.length > 0 && !isSubmitting

  return (
    <Dialog open={open} onClose={isSubmitting ? undefined : onClose} maxWidth="sm" fullWidth>
      <DialogTitle>ปฏิเสธคำขอผู้ใช้</DialogTitle>
      <DialogContent sx={{ display: 'flex', flexDirection: 'column', gap: 2, pt: 1 }}>
        <Typography variant="body2" color="text.secondary">
          ระบุเหตุผลในการปฏิเสธคำขอของ &quot;{userName}&quot; ผู้ใช้จะได้รับอีเมลแจ้งเหตุผลนี้
        </Typography>
        <TextField
          label="เหตุผล *"
          value={reason}
          onChange={(e) => setReason(e.target.value)}
          multiline
          minRows={3}
          fullWidth
          disabled={isSubmitting}
          autoFocus
        />
        {error && (
          <Typography variant="body2" color="error">
            {error}
          </Typography>
        )}
      </DialogContent>
      <DialogActions sx={{ px: 3, pb: 2, gap: 1 }}>
        <Button onClick={onClose} disabled={isSubmitting} color="inherit" variant="outlined">
          ยกเลิก
        </Button>
        <Button
          onClick={() => void onConfirm(trimmed)}
          disabled={!canSubmit}
          color="error"
          variant="contained"
          startIcon={isSubmitting ? <CircularProgress size={16} color="inherit" /> : null}
        >
          {isSubmitting ? 'กำลังปฏิเสธ...' : 'ยืนยันปฏิเสธ'}
        </Button>
      </DialogActions>
    </Dialog>
  )
}
