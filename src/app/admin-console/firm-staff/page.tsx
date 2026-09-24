'use client'

import { useEffect, useState } from 'react'
import { useRouter } from 'next/navigation'
import {
  Alert,
  Box,
  Button,
  Chip,
  CircularProgress,
  Dialog,
  DialogActions,
  DialogContent,
  DialogTitle,
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableRow,
  TextField,
  Typography,
} from '@mui/material'
import { Add as AddIcon } from '@mui/icons-material'
import { useAuth } from '@/contexts/AuthContext'
import { authenticatedAdminFetch } from '@/lib/api/admin-fetch'
import type { FirmStaffMember } from '@/lib/api/consulting-firms'
import { USER_STATUS_LABELS, VERIFICATION_STATUS_LABELS } from '@/lib/user-status'
import {
  adminPageShellSx,
  adminPageTitleSx,
  adminPrimaryButtonSx,
} from '@/lib/admin-ui-styles'

type StaffResponse = {
  firm: { id: string; name: string }
  staff: FirmStaffMember[]
}

function canManageFirmStaff (user: { role: string; status: string; is_firm_contact_person?: boolean } | null) {
  return Boolean(
    user &&
    user.role === 'Consult' &&
    user.status === 'active' &&
    user.is_firm_contact_person
  )
}

export default function FirmStaffPage () {
  const { user, isLoading } = useAuth()
  const router = useRouter()
  const [firmName, setFirmName] = useState('')
  const [staff, setStaff] = useState<FirmStaffMember[]>([])
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState<string | null>(null)
  const [dialogOpen, setDialogOpen] = useState(false)
  const [saving, setSaving] = useState(false)
  const [form, setForm] = useState({
    name: '',
    username: '',
    email: '',
    password: '',
    phone: '',
  })

  useEffect(() => {
    if (!isLoading && !canManageFirmStaff(user)) {
      router.replace('/admin-console')
    }
  }, [user, isLoading, router])

  const loadStaff = async () => {
    try {
      setLoading(true)
      setError(null)
      const response = await authenticatedAdminFetch('/api/admin-console/firm-staff')
      const result = await response.json() as StaffResponse & { error?: string }
      if (!response.ok) {
        throw new Error(result.error || 'โหลดทีมไม่สำเร็จ')
      }
      setFirmName(result.firm.name)
      setStaff(result.staff)
    } catch (loadErr) {
      setError(loadErr instanceof Error ? loadErr.message : 'โหลดทีมไม่สำเร็จ')
    } finally {
      setLoading(false)
    }
  }

  useEffect(() => {
    if (canManageFirmStaff(user)) {
      loadStaff()
    }
  }, [user])

  const addStaff = async () => {
    try {
      setSaving(true)
      setError(null)
      const response = await authenticatedAdminFetch('/api/admin-console/firm-staff', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(form),
      })
      const result = await response.json() as { staff?: FirmStaffMember[]; error?: string }
      if (!response.ok) {
        throw new Error(result.error || 'เพิ่มพนักงานไม่สำเร็จ')
      }
      setStaff(result.staff ?? [])
      setDialogOpen(false)
      setForm({ name: '', username: '', email: '', password: '', phone: '' })
    } catch (saveErr) {
      setError(saveErr instanceof Error ? saveErr.message : 'เพิ่มพนักงานไม่สำเร็จ')
    } finally {
      setSaving(false)
    }
  }

  if (isLoading || !canManageFirmStaff(user)) {
    return (
      <Box sx={{ display: 'flex', justifyContent: 'center', py: 8 }}>
        <CircularProgress />
      </Box>
    )
  }

  return (
    <Box sx={adminPageShellSx}>
      <Box sx={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', mb: 3, gap: 2 }}>
        <Box>
          <Typography variant="h4" component="h1" sx={adminPageTitleSx}>
            ทีมที่ปรึกษา
          </Typography>
          <Typography color="text.secondary">{firmName}</Typography>
        </Box>
        <Button
          variant="contained"
          startIcon={<AddIcon />}
          onClick={() => setDialogOpen(true)}
          sx={adminPrimaryButtonSx}
        >
          เพิ่มพนักงาน
        </Button>
      </Box>

      {error && <Alert severity="error" sx={{ mb: 2 }}>{error}</Alert>}

      {loading ? (
        <CircularProgress />
      ) : (
        <Table>
          <TableHead>
            <TableRow>
              <TableCell>ชื่อ</TableCell>
              <TableCell>อีเมล</TableCell>
              <TableCell>สถานะบัญชี</TableCell>
              <TableCell>สถานะเอกสาร</TableCell>
            </TableRow>
          </TableHead>
          <TableBody>
            {staff.map((member) => (
              <TableRow key={member.id}>
                <TableCell>
                  {member.name}
                  {member.is_firm_contact_person && (
                    <Chip label="ผู้ติดต่อหลัก" size="small" sx={{ ml: 1 }} />
                  )}
                </TableCell>
                <TableCell>{member.email}</TableCell>
                <TableCell>{USER_STATUS_LABELS[member.status] || member.status}</TableCell>
                <TableCell>
                  {member.verification_status
                    ? VERIFICATION_STATUS_LABELS[member.verification_status] || member.verification_status
                    : '—'}
                </TableCell>
              </TableRow>
            ))}
          </TableBody>
        </Table>
      )}

      <Dialog open={dialogOpen} onClose={() => !saving && setDialogOpen(false)} fullWidth maxWidth="sm">
        <DialogTitle>เพิ่มพนักงาน</DialogTitle>
        <DialogContent sx={{ display: 'flex', flexDirection: 'column', gap: 2, pt: 1 }}>
          <TextField
            label="ชื่อ-นามสกุล"
            value={form.name}
            onChange={(event) => setForm({ ...form, name: event.target.value })}
            fullWidth
            required
          />
          <TextField
            label="ชื่อผู้ใช้"
            value={form.username}
            onChange={(event) => setForm({ ...form, username: event.target.value })}
            helperText="a–z, 0–9, _ เท่านั้น"
            fullWidth
            required
          />
          <TextField
            label="อีเมล"
            type="email"
            value={form.email}
            onChange={(event) => setForm({ ...form, email: event.target.value })}
            fullWidth
            required
          />
          <TextField
            label="รหัสผ่าน"
            type="password"
            value={form.password}
            onChange={(event) => setForm({ ...form, password: event.target.value })}
            fullWidth
            required
          />
          <TextField
            label="เบอร์โทร"
            value={form.phone}
            onChange={(event) => setForm({ ...form, phone: event.target.value })}
            fullWidth
            required
          />
        </DialogContent>
        <DialogActions>
          <Button onClick={() => setDialogOpen(false)} disabled={saving}>ยกเลิก</Button>
          <Button variant="contained" onClick={addStaff} disabled={saving}>
            {saving ? 'กำลังบันทึก...' : 'เพิ่ม'}
          </Button>
        </DialogActions>
      </Dialog>
    </Box>
  )
}
