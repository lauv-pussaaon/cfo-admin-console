'use client'

import { useEffect, useMemo, useState } from 'react'
import Link from 'next/link'
import { useRouter } from 'next/navigation'
import {
  Alert,
  Autocomplete,
  Box,
  Button,
  Chip,
  CircularProgress,
  Dialog,
  DialogActions,
  DialogContent,
  DialogTitle,
  IconButton,
  Paper,
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableRow,
  TextField,
  Typography,
} from '@mui/material'
import { DataGrid, GridColDef } from '@mui/x-data-grid'
import {
  Add as AddIcon,
  ArrowBack,
  Delete as DeleteIcon,
  Edit as EditIcon,
  InfoOutlined as InfoOutlinedIcon,
} from '@mui/icons-material'
import { useAuth } from '@/contexts/AuthContext'
import { isAdmin } from '@/lib/permissions'
import { authenticatedAdminFetch } from '@/lib/api/admin-fetch'
import { userService } from '@/lib/services'
import type { User } from '@/lib/api/types'
import type { ConsultingFirmSummary, FirmStaffMember } from '@/lib/api/consulting-firms'
import { USER_STATUS_LABELS, VERIFICATION_STATUS_LABELS } from '@/lib/user-status'
import SlideInPanel from '@/components/admin/SlideInPanel'
import DeleteConfirmationDialog from '@/components/DeleteConfirmationDialog'
import {
  adminBackButtonSx,
  adminDataGridPaperSx,
  adminDataGridProps,
  adminDataGridSx,
  adminGhostIconButtonSx,
  adminPageShellSx,
  adminPageTitleSx,
  adminPrimaryButtonSx,
} from '@/lib/admin-ui-styles'

export default function ConsultingFirmsPage () {
  const { user, isLoading } = useAuth()
  const router = useRouter()
  const [firms, setFirms] = useState<ConsultingFirmSummary[]>([])
  const [consultUsers, setConsultUsers] = useState<User[]>([])
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState<string | null>(null)
  const [selected, setSelected] = useState<ConsultingFirmSummary | null>(null)
  const [nameDialog, setNameDialog] = useState<'create' | ConsultingFirmSummary | null>(null)
  const [nameDraft, setNameDraft] = useState('')
  const [saving, setSaving] = useState(false)
  const [deletingFirm, setDeletingFirm] = useState<ConsultingFirmSummary | null>(null)
  const [isDeleting, setIsDeleting] = useState(false)
  const [deleteError, setDeleteError] = useState<string | null>(null)
  const [consultToAdd, setConsultToAdd] = useState<User | null>(null)
  const [assigning, setAssigning] = useState(false)

  useEffect(() => {
    if (!isLoading && user && !isAdmin(user)) {
      router.replace('/admin-console')
    }
  }, [user, isLoading, router])

  const loadFirms = async () => {
    const response = await authenticatedAdminFetch('/api/admin-console/consulting-firms')
    const result = await response.json() as { firms?: ConsultingFirmSummary[]; error?: string }
    if (!response.ok) {
      throw new Error(result.error || 'โหลดบริษัทที่ปรึกษาไม่สำเร็จ')
    }
    const next = result.firms ?? []
    setFirms(next)
    setSelected((current) => {
      if (!current) return current
      return next.find((firm) => firm.id === current.id) ?? null
    })
    return next
  }

  const loadConsultUsers = async () => {
    const users = await userService.getUsers()
    setConsultUsers(users.filter((row) => row.role === 'Consult'))
  }

  useEffect(() => {
    if (!user || !isAdmin(user)) return
    let cancelled = false
    const run = async () => {
      try {
        setLoading(true)
        setError(null)
        await Promise.all([loadFirms(), loadConsultUsers()])
      } catch (loadErr) {
        if (!cancelled) {
          setError(loadErr instanceof Error ? loadErr.message : 'โหลดบริษัทที่ปรึกษาไม่สำเร็จ')
        }
      } finally {
        if (!cancelled) setLoading(false)
      }
    }
    run()
    return () => {
      cancelled = true
    }
  }, [user])

  const openCreate = () => {
    setNameDraft('')
    setNameDialog('create')
  }

  const openEdit = (firm: ConsultingFirmSummary) => {
    setNameDraft(firm.name)
    setNameDialog(firm)
  }

  const saveName = async () => {
    const trimmed = nameDraft.trim()
    if (!trimmed || !nameDialog) return
    try {
      setSaving(true)
      setError(null)
      const isCreate = nameDialog === 'create'
      const response = await authenticatedAdminFetch(
        isCreate
          ? '/api/admin-console/consulting-firms'
          : `/api/admin-console/consulting-firms/${nameDialog.id}`,
        {
          method: isCreate ? 'POST' : 'PATCH',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ name: trimmed }),
        }
      )
      const result = await response.json() as { error?: string }
      if (!response.ok) {
        throw new Error(result.error || (isCreate ? 'ลงทะเบียนบริษัทไม่สำเร็จ' : 'เปลี่ยนชื่อไม่สำเร็จ'))
      }
      await loadFirms()
      setNameDialog(null)
    } catch (saveErr) {
      setError(saveErr instanceof Error ? saveErr.message : 'บันทึกไม่สำเร็จ')
    } finally {
      setSaving(false)
    }
  }

  const confirmDelete = async () => {
    if (!deletingFirm) return
    try {
      setIsDeleting(true)
      setDeleteError(null)
      const response = await authenticatedAdminFetch(
        `/api/admin-console/consulting-firms/${deletingFirm.id}`,
        { method: 'DELETE' }
      )
      const result = await response.json() as { error?: string }
      if (!response.ok) {
        throw new Error(result.error || 'ลบบริษัทไม่สำเร็จ')
      }
      if (selected?.id === deletingFirm.id) setSelected(null)
      setDeletingFirm(null)
      await Promise.all([loadFirms(), loadConsultUsers()])
    } catch (deleteErr) {
      setDeleteError(deleteErr instanceof Error ? deleteErr.message : 'ลบบริษัทไม่สำเร็จ')
    } finally {
      setIsDeleting(false)
    }
  }

  const assignConsult = async () => {
    if (!selected || !consultToAdd) return
    try {
      setAssigning(true)
      setError(null)
      const response = await authenticatedAdminFetch(
        `/api/admin-console/consulting-firms/${selected.id}/staff`,
        {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ userId: consultToAdd.id }),
        }
      )
      const result = await response.json() as { error?: string }
      if (!response.ok) {
        throw new Error(result.error || 'เพิ่มที่ปรึกษาไม่สำเร็จ')
      }
      setConsultToAdd(null)
      await Promise.all([loadFirms(), loadConsultUsers()])
    } catch (assignErr) {
      setError(assignErr instanceof Error ? assignErr.message : 'เพิ่มที่ปรึกษาไม่สำเร็จ')
    } finally {
      setAssigning(false)
    }
  }

  const unassignConsult = async (member: FirmStaffMember) => {
    if (!selected) return
    try {
      setError(null)
      const response = await authenticatedAdminFetch(
        `/api/admin-console/consulting-firms/${selected.id}/staff`,
        {
          method: 'DELETE',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ userId: member.id }),
        }
      )
      const result = await response.json() as { error?: string }
      if (!response.ok) {
        throw new Error(result.error || 'นำออกไม่สำเร็จ')
      }
      await Promise.all([loadFirms(), loadConsultUsers()])
    } catch (removeErr) {
      setError(removeErr instanceof Error ? removeErr.message : 'นำออกไม่สำเร็จ')
    }
  }

  const columns: GridColDef[] = useMemo(() => [
    { field: 'name', headerName: 'บริษัทที่ปรึกษา', flex: 1.4, minWidth: 180 },
    { field: 'contact_name', headerName: 'ผู้ติดต่อหลัก', flex: 1, minWidth: 160 },
    { field: 'staff_count', headerName: 'จำนวนพนักงาน', width: 140 },
    {
      field: 'actions',
      headerName: 'การดำเนินการ',
      width: 160,
      align: 'center',
      headerAlign: 'center',
      sortable: false,
      filterable: false,
      renderCell: (params) => {
        const firm = firms.find((row) => row.id === params.id)
        if (!firm) return null
        return (
          <Box
            sx={{ display: 'flex', justifyContent: 'center', gap: 0.5, height: '100%' }}
            onClick={(event) => event.stopPropagation()}
          >
            <IconButton
              size="small"
              onClick={() => setSelected(firm)}
              sx={adminGhostIconButtonSx.primary}
              title="ดูรายละเอียด"
            >
              <InfoOutlinedIcon fontSize="small" />
            </IconButton>
            <IconButton
              size="small"
              onClick={() => openEdit(firm)}
              sx={adminGhostIconButtonSx.primary}
              title="แก้ไข"
            >
              <EditIcon fontSize="small" />
            </IconButton>
            <IconButton
              size="small"
              onClick={() => {
                setDeleteError(null)
                setDeletingFirm(firm)
              }}
              sx={adminGhostIconButtonSx.error}
              title="ลบ"
            >
              <DeleteIcon fontSize="small" />
            </IconButton>
          </Box>
        )
      },
    },
  ], [firms])

  const rows = firms.map((firm) => ({
    id: firm.id,
    name: firm.name,
    contact_name: firm.contact?.name || '—',
    staff_count: firm.staff_count,
  }))

  const unassignedConsults = consultUsers.filter((row) => !row.consulting_firm_id)

  if (isLoading || !user || !isAdmin(user)) {
    return (
      <Box sx={{ display: 'flex', justifyContent: 'center', py: 8 }}>
        <CircularProgress />
      </Box>
    )
  }

  return (
    <Box sx={adminPageShellSx}>
      <Link href="/admin-console" style={{ textDecoration: 'none' }}>
        <Button startIcon={<ArrowBack />} sx={adminBackButtonSx}>
          กลับ
        </Button>
      </Link>
      <Box
        sx={{
          display: 'flex',
          justifyContent: 'space-between',
          alignItems: 'center',
          gap: 2,
          mb: 3,
          flexWrap: 'wrap',
        }}
      >
        <Typography variant="h4" component="h1" sx={adminPageTitleSx}>
          บริษัทที่ปรึกษา
        </Typography>
        <Button
          variant="contained"
          startIcon={<AddIcon />}
          onClick={openCreate}
          sx={adminPrimaryButtonSx}
        >
          ลงทะเบียนบริษัท
        </Button>
      </Box>
      {error && <Alert severity="error" sx={{ mb: 2 }}>{error}</Alert>}
      <Paper elevation={0} sx={adminDataGridPaperSx}>
        <DataGrid
          rows={rows}
          columns={columns}
          loading={loading}
          disableRowSelectionOnClick
          {...adminDataGridProps}
          sx={adminDataGridSx}
          pageSizeOptions={[10, 25, 50]}
          initialState={{ pagination: { paginationModel: { pageSize: 25, page: 0 } } }}
        />
      </Paper>

      <Dialog open={Boolean(nameDialog)} onClose={() => !saving && setNameDialog(null)} fullWidth maxWidth="xs">
        <DialogTitle>{nameDialog === 'create' ? 'ลงทะเบียนบริษัท' : 'แก้ไขชื่อบริษัท'}</DialogTitle>
        <DialogContent>
          <TextField
            autoFocus
            label="ชื่อบริษัท"
            value={nameDraft}
            onChange={(event) => setNameDraft(event.target.value)}
            fullWidth
            sx={{ mt: 1 }}
          />
        </DialogContent>
        <DialogActions sx={{ px: 3, pb: 2 }}>
          <Button onClick={() => setNameDialog(null)} disabled={saving} sx={{ textTransform: 'none' }}>
            ยกเลิก
          </Button>
          <Button
            variant="contained"
            onClick={saveName}
            disabled={saving || !nameDraft.trim()}
            sx={adminPrimaryButtonSx}
          >
            {saving ? 'กำลังบันทึก...' : 'บันทึก'}
          </Button>
        </DialogActions>
      </Dialog>

      <SlideInPanel
        open={Boolean(selected)}
        onClose={() => {
          setSelected(null)
          setConsultToAdd(null)
        }}
        title={selected?.name || 'บริษัทที่ปรึกษา'}
        subtitle="การอนุมัติอยู่ที่หน้ารายชื่อผู้ใช้"
      >
        {selected && (
          <Box sx={{ display: 'flex', flexDirection: 'column', gap: 2 }}>
            <Box sx={{ display: 'flex', gap: 1, alignItems: 'flex-start' }}>
              <Autocomplete
                options={unassignedConsults}
                value={consultToAdd}
                onChange={(_event, value) => setConsultToAdd(value)}
                getOptionLabel={(option) => `${option.name} (${option.username})`}
                isOptionEqualToValue={(option, value) => option.id === value.id}
                disabled={assigning}
                fullWidth
                renderInput={(params) => (
                  <TextField {...params} label="เพิ่มที่ปรึกษา" placeholder="ผู้ใช้บทบาทที่ปรึกษาที่ยังไม่มีบริษัท" />
                )}
              />
              <Button
                variant="contained"
                onClick={assignConsult}
                disabled={assigning || !consultToAdd}
                sx={{ ...adminPrimaryButtonSx, mt: 1, flexShrink: 0 }}
              >
                เพิ่ม
              </Button>
            </Box>
            <Table size="small">
              <TableHead>
                <TableRow>
                  <TableCell>พนักงาน</TableCell>
                  <TableCell>สถานะ</TableCell>
                  <TableCell>เอกสาร</TableCell>
                  <TableCell />
                </TableRow>
              </TableHead>
              <TableBody>
                {selected.staff.map((member) => (
                  <StaffRow
                    key={member.id}
                    member={member}
                    onRemove={() => unassignConsult(member)}
                  />
                ))}
              </TableBody>
            </Table>
          </Box>
        )}
      </SlideInPanel>

      <DeleteConfirmationDialog
        open={Boolean(deletingFirm)}
        onClose={() => {
          if (isDeleting) return
          setDeletingFirm(null)
          setDeleteError(null)
        }}
        onConfirm={confirmDelete}
        title="ยืนยันการลบบริษัท"
        message={deletingFirm ? `คุณแน่ใจหรือไม่ที่จะลบบริษัท "${deletingFirm.name}"?` : ''}
        description="บัญชีผู้ใช้ที่ผูกกับบริษัทนี้จะยังอยู่ ระบบจะยกเลิกการผูกบริษัทเท่านั้น"
        isDeleting={isDeleting}
        error={deleteError}
      />
    </Box>
  )
}

function StaffRow ({
  member,
  onRemove,
}: {
  member: FirmStaffMember
  onRemove: () => void
}) {
  return (
    <TableRow>
      <TableCell>
        <Button
          component={Link}
          href={`/admin-console/users?q=${encodeURIComponent(member.email)}`}
          sx={{ textTransform: 'none', p: 0, minWidth: 0 }}
        >
          {member.name}
        </Button>
        {member.is_firm_contact_person && (
          <Chip label="ผู้ติดต่อหลัก" size="small" sx={{ ml: 1 }} />
        )}
      </TableCell>
      <TableCell>{USER_STATUS_LABELS[member.status] || member.status}</TableCell>
      <TableCell>
        {member.verification_status
          ? VERIFICATION_STATUS_LABELS[member.verification_status] || member.verification_status
          : '—'}
      </TableCell>
      <TableCell align="right">
        <Button onClick={onRemove} sx={{ textTransform: 'none', minWidth: 0 }}>
          นำออก
        </Button>
      </TableCell>
    </TableRow>
  )
}
