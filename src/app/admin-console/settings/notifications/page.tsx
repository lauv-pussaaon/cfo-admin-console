'use client'

import { useEffect, useMemo, useState } from 'react'
import { useRouter } from 'next/navigation'
import Link from 'next/link'
import {
  Alert,
  Box,
  Button,
  CircularProgress,
  Dialog,
  DialogActions,
  DialogContent,
  DialogTitle,
  Snackbar,
  TextField,
  Typography,
} from '@mui/material'
import { Add as AddIcon, ArrowBack } from '@mui/icons-material'
import NotificationRecipientsTable from '@/components/admin/NotificationRecipientsTable'
import DeleteConfirmationDialog from '@/components/DeleteConfirmationDialog'
import { notificationRecipientService } from '@/lib/services'
import { useAuth } from '@/contexts/AuthContext'
import { isAdmin } from '@/lib/permissions'
import { isExpectedError } from '@/lib/utils/errors'
import type { NotificationRecipient } from '@/types/database'

export default function NotificationSettingsPage () {
  const { user, isLoading: authLoading } = useAuth()
  const router = useRouter()
  const [recipients, setRecipients] = useState<NotificationRecipient[]>([])
  const [loading, setLoading] = useState(true)
  const [addOpen, setAddOpen] = useState(false)
  const [newEmail, setNewEmail] = useState('')
  const [newLabel, setNewLabel] = useState('')
  const [addError, setAddError] = useState<string | null>(null)
  const [saving, setSaving] = useState(false)
  const [updatingId, setUpdatingId] = useState<string | null>(null)
  const [deleteTarget, setDeleteTarget] = useState<NotificationRecipient | null>(null)
  const [deleteError, setDeleteError] = useState<string | null>(null)
  const [successMessage, setSuccessMessage] = useState<string | null>(null)
  const [showSuccessMessage, setShowSuccessMessage] = useState(false)
  const [snackbarSeverity, setSnackbarSeverity] = useState<'success' | 'error'>('success')

  useEffect(() => {
    if (!authLoading && user && !isAdmin(user)) {
      router.replace('/admin-console')
    }
  }, [user, authLoading, router])

  const loadRecipients = async () => {
    try {
      setLoading(true)
      const data = await notificationRecipientService.listTrialRequestRecipients()
      setRecipients(data)
    } catch (error) {
      if (!isExpectedError(error)) {
        console.error('Failed to load notification recipients:', error)
      }
    } finally {
      setLoading(false)
    }
  }

  useEffect(() => {
    if (user && isAdmin(user)) {
      loadRecipients()
    }
  }, [user])

  const enabledCount = useMemo(
    () => recipients.filter((recipient) => recipient.is_enabled).length,
    [recipients]
  )

  const notify = (message: string, severity: 'success' | 'error' = 'success') => {
    setSuccessMessage(message)
    setSnackbarSeverity(severity)
    setShowSuccessMessage(true)
  }

  const handleOpenAdd = () => {
    setNewEmail('')
    setNewLabel('')
    setAddError(null)
    setAddOpen(true)
  }

  const handleCloseAdd = () => {
    if (saving) return
    setAddOpen(false)
    setAddError(null)
  }

  const handleAddRecipient = async () => {
    setSaving(true)
    setAddError(null)

    try {
      await notificationRecipientService.createRecipient({
        eventType: 'trial_request',
        email: newEmail,
        label: newLabel || null,
      })
      setAddOpen(false)
      notify('เพิ่มอีเมลผู้รับแจ้งเตือนแล้ว')
      await loadRecipients()
    } catch (error) {
      const message = error instanceof Error ? error.message : 'เพิ่มอีเมลไม่สำเร็จ'
      setAddError(message)
      notify(message, 'error')
    } finally {
      setSaving(false)
    }
  }

  const handleToggleEnabled = async (
    recipient: NotificationRecipient,
    enabled: boolean
  ) => {
    setUpdatingId(recipient.id)
    try {
      await notificationRecipientService.setRecipientEnabled(recipient.id, enabled)
      setRecipients((prev) =>
        prev.map((row) =>
          row.id === recipient.id ? { ...row, is_enabled: enabled } : row
        )
      )
      notify(enabled ? 'เปิดใช้งานอีเมลแล้ว' : 'ปิดใช้งานอีเมลแล้ว')
    } catch (error) {
      const message = error instanceof Error ? error.message : 'อัปเดตไม่สำเร็จ'
      notify(message, 'error')
    } finally {
      setUpdatingId(null)
    }
  }

  const handleConfirmDelete = async () => {
    if (!deleteTarget) return

    setSaving(true)
    setDeleteError(null)

    try {
      await notificationRecipientService.deleteRecipient(deleteTarget.id)
      setDeleteTarget(null)
      notify('ลบอีเมลผู้รับแจ้งเตือนแล้ว')
      await loadRecipients()
    } catch (error) {
      const message = error instanceof Error ? error.message : 'ลบไม่สำเร็จ'
      setDeleteError(message)
      notify(message, 'error')
    } finally {
      setSaving(false)
    }
  }

  if (authLoading || !user || !isAdmin(user)) {
    return (
      <Box sx={{ display: 'flex', justifyContent: 'center', alignItems: 'center', minHeight: 320 }}>
        <CircularProgress />
      </Box>
    )
  }

  return (
    <Box sx={{ py: 2 }}>
      <Button
        component={Link}
        href="/admin-console"
        startIcon={<ArrowBack />}
        sx={{ mb: 2, textTransform: 'none' }}
      >
        กลับ
      </Button>

      <Box
        sx={{
          display: 'flex',
          flexWrap: 'wrap',
          alignItems: 'flex-start',
          justifyContent: 'space-between',
          gap: 2,
          mb: 3,
        }}
      >
        <Box>
          <Typography variant="h4" fontWeight="bold" gutterBottom>
            การตั้งค่าการแจ้งเตือน
          </Typography>
          <Typography variant="body2" color="text.secondary">
            จัดการอีเมลผู้รับแจ้งเตือนเมื่อมีคำขอทดลองใช้งานใหม่
          </Typography>
        </Box>
        <Button
          variant="contained"
          startIcon={<AddIcon />}
          onClick={handleOpenAdd}
          sx={{ textTransform: 'none' }}
        >
          เพิ่มอีเมล
        </Button>
      </Box>

      <Alert severity="info" sx={{ mb: 2 }}>
        ตั้งค่า `RESEND_API_KEY` และ `RESEND_FROM_EMAIL` (ถ้ามี) ใน environment เพื่อให้ระบบส่งอีเมลได้
      </Alert>

      {enabledCount === 0 && !loading && (
        <Alert severity="warning" sx={{ mb: 2 }}>
          ไม่มีอีเมลที่เปิดใช้งาน — ระบบจะไม่ส่งการแจ้งเตือนเมื่อมีคำขอทดลองใช้งานใหม่
        </Alert>
      )}

      <Typography variant="subtitle1" fontWeight={600} sx={{ mb: 1.5 }}>
        คำขอทดลองใช้งาน
      </Typography>

      <NotificationRecipientsTable
        data={recipients}
        loading={loading}
        updatingId={updatingId}
        onToggleEnabled={handleToggleEnabled}
        onDelete={setDeleteTarget}
      />

      <Dialog open={addOpen} onClose={handleCloseAdd} maxWidth="sm" fullWidth>
        <DialogTitle>เพิ่มอีเมลผู้รับแจ้งเตือน</DialogTitle>
        <DialogContent>
          {addError && (
            <Alert severity="error" sx={{ mb: 2 }}>
              {addError}
            </Alert>
          )}
          <Box sx={{ display: 'grid', gap: 2, pt: 1 }}>
            <TextField
              label="อีเมล"
              type="email"
              value={newEmail}
              onChange={(e) => setNewEmail(e.target.value)}
              fullWidth
              required
              disabled={saving}
            />
            <TextField
              label="ชื่อเรียก (ไม่บังคับ)"
              value={newLabel}
              onChange={(e) => setNewLabel(e.target.value)}
              fullWidth
              disabled={saving}
            />
          </Box>
        </DialogContent>
        <DialogActions>
          <Button onClick={handleCloseAdd} disabled={saving} sx={{ textTransform: 'none' }}>
            ยกเลิก
          </Button>
          <Button
            variant="contained"
            onClick={handleAddRecipient}
            disabled={saving || !newEmail.trim()}
            sx={{ textTransform: 'none' }}
          >
            {saving ? 'กำลังบันทึก...' : 'บันทึก'}
          </Button>
        </DialogActions>
      </Dialog>

      <DeleteConfirmationDialog
        open={Boolean(deleteTarget)}
        onClose={() => !saving && setDeleteTarget(null)}
        onConfirm={handleConfirmDelete}
        title="ยืนยันการลบอีเมล"
        message="คุณแน่ใจหรือไม่ที่จะลบอีเมลผู้รับแจ้งเตือนนี้?"
        description={deleteTarget ? deleteTarget.email : undefined}
        isDeleting={saving}
        error={deleteError}
      />

      <Snackbar
        open={showSuccessMessage}
        autoHideDuration={4000}
        onClose={() => setShowSuccessMessage(false)}
        anchorOrigin={{ vertical: 'bottom', horizontal: 'center' }}
      >
        <Alert
          onClose={() => setShowSuccessMessage(false)}
          severity={snackbarSeverity}
          sx={{ width: '100%' }}
        >
          {successMessage}
        </Alert>
      </Snackbar>
    </Box>
  )
}
