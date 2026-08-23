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
import NotificationEmailsTable from '@/components/admin/NotificationEmailsTable'
import DeleteConfirmationDialog from '@/components/DeleteConfirmationDialog'
import { notificationEmailService } from '@/lib/services'
import { useAuth } from '@/contexts/AuthContext'
import { isAdmin } from '@/lib/permissions'
import { isExpectedError } from '@/lib/utils/errors'
import type { NotificationEmail } from '@/types/database'
import {
  adminBackButtonSx,
  adminPageShellSx,
  adminPageTitleSx,
  adminPrimaryButtonSx,
} from '@/lib/admin-ui-styles'

export default function NotificationSettingsPage () {
  const { user, isLoading: authLoading } = useAuth()
  const router = useRouter()
  const [emails, setEmails] = useState<NotificationEmail[]>([])
  const [loading, setLoading] = useState(true)
  const [addOpen, setAddOpen] = useState(false)
  const [newEmail, setNewEmail] = useState('')
  const [newLabel, setNewLabel] = useState('')
  const [addError, setAddError] = useState<string | null>(null)
  const [saving, setSaving] = useState(false)
  const [updatingId, setUpdatingId] = useState<string | null>(null)
  const [deleteTarget, setDeleteTarget] = useState<NotificationEmail | null>(null)
  const [deleteError, setDeleteError] = useState<string | null>(null)
  const [successMessage, setSuccessMessage] = useState<string | null>(null)
  const [showSuccessMessage, setShowSuccessMessage] = useState(false)
  const [snackbarSeverity, setSnackbarSeverity] = useState<'success' | 'error'>('success')

  useEffect(() => {
    if (!authLoading && user && !isAdmin(user)) {
      router.replace('/admin-console')
    }
  }, [user, authLoading, router])

  const loadEmails = async () => {
    try {
      setLoading(true)
      const data = await notificationEmailService.listNotificationEmails()
      setEmails(data)
    } catch (error) {
      if (!isExpectedError(error)) {
        console.error('Failed to load notification emails:', error)
      }
    } finally {
      setLoading(false)
    }
  }

  useEffect(() => {
    if (user && isAdmin(user)) {
      void loadEmails()
    }
  }, [user])

  const enabledCount = useMemo(
    () => emails.filter((row) => row.is_enabled).length,
    [emails]
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

  const handleAddEmail = async () => {
    setSaving(true)
    setAddError(null)

    try {
      await notificationEmailService.create({
        email: newEmail,
        label: newLabel || null,
      })
      setAddOpen(false)
      notify('เพิ่มอีเมลผู้รับแจ้งเตือนแล้ว')
      await loadEmails()
    } catch (error) {
      const message = error instanceof Error ? error.message : 'เพิ่มอีเมลไม่สำเร็จ'
      setAddError(message)
      notify(message, 'error')
    } finally {
      setSaving(false)
    }
  }

  const handleToggleEnabled = async (
    notificationEmail: NotificationEmail,
    enabled: boolean
  ) => {
    setUpdatingId(notificationEmail.id)
    try {
      await notificationEmailService.setEnabled(notificationEmail.id, enabled)
      setEmails((prev) =>
        prev.map((row) =>
          row.id === notificationEmail.id ? { ...row, is_enabled: enabled } : row
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
      await notificationEmailService.delete(deleteTarget.id)
      setDeleteTarget(null)
      notify('ลบอีเมลผู้รับแจ้งเตือนแล้ว')
      await loadEmails()
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
    <Box sx={adminPageShellSx}>
      <Button
        component={Link}
        href="/admin-console"
        startIcon={<ArrowBack />}
        sx={adminBackButtonSx}
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
          <Typography variant="h4" component="h1" sx={adminPageTitleSx} gutterBottom>
            การตั้งค่าการแจ้งเตือน
          </Typography>
          <Typography variant="body2" color="text.secondary">
            อีเมลที่เปิดใช้งานจะได้รับการแจ้งเตือนเมื่อมีคำขอทดลองใช้งาน สมาชิกรายปี หรือลงทะเบียน Consult/Audit
          </Typography>
        </Box>
        <Button
          variant="contained"
          startIcon={<AddIcon />}
          onClick={handleOpenAdd}
          sx={adminPrimaryButtonSx}
        >
          เพิ่มอีเมล
        </Button>
      </Box>

      {enabledCount === 0 && !loading && (
        <Alert severity="warning" sx={{ mb: 2 }}>
          ไม่มีอีเมลที่เปิดใช้งาน — ระบบจะไม่ส่งการแจ้งเตือนเมื่อมีคำขอทดลองใช้งาน สมาชิกรายปี หรือลงทะเบียน Consult/Audit
        </Alert>
      )}

      <NotificationEmailsTable
        data={emails}
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
            onClick={handleAddEmail}
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
