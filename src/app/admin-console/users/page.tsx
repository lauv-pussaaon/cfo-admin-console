'use client'

import { useState, useEffect } from 'react'
import { useRouter } from 'next/navigation'
import Link from 'next/link'
import {
  Box,
  Typography,
  Button,
  Snackbar,
  Alert,
  CircularProgress,
  TextField,
  FormControl,
  InputLabel,
  Select,
  MenuItem,
} from '@mui/material'
import {
  Add as AddIcon,
  ArrowBack,
  OpenInNew as OpenInNewIcon,
  Search as SearchIcon,
} from '@mui/icons-material'
import UsersTable from '@/components/admin/UsersTable'
import UserModal from '@/components/admin/UserModal'
import RejectUserModal from '@/components/admin/RejectUserModal'
import ReviewDocumentsModal from '@/components/admin/ReviewDocumentsModal'
import DeleteConfirmationDialog from '@/components/DeleteConfirmationDialog'
import { userService } from '@/lib/services'
import { useAuth } from '@/contexts/AuthContext'
import { isAdmin } from '@/lib/permissions'
import type { User, UserStatus } from '@/lib/api/types'
import { isExpectedError } from '@/lib/utils/errors'
import { useUsersFilter } from '@/hooks/useUsersFilter'
import { ROLE_OPTIONS } from '@/types/roles'
import { USER_STATUS_FILTER_OPTIONS } from '@/lib/user-status'
import { authenticatedAdminFetch } from '@/lib/api/admin-fetch'
import {
  adminBackButtonSx,
  adminFilterControlSx,
  adminPageShellSx,
  adminPageTitleSx,
  adminPrimaryButtonSx,
  adminSearchFieldSx,
} from '@/lib/admin-ui-styles'

export default function AdminConsoleUsersPage() {
  const { user, isLoading: authLoading } = useAuth()
  const router = useRouter()

  useEffect(() => {
    if (!authLoading && user && !isAdmin(user)) {
      router.replace('/admin-console')
    }
  }, [user, authLoading, router])
  const [users, setUsers] = useState<User[]>([])
  const [loading, setLoading] = useState(true)
  
  const {
    searchTerm,
    setSearchTerm,
    selectedRole,
    setSelectedRole,
    selectedStatus,
    setSelectedStatus,
    filteredUsers,
  } = useUsersFilter(users)
  const [modalOpen, setModalOpen] = useState(false)
  const [editingUser, setEditingUser] = useState<User | null>(null)
  const [deleteDialogOpen, setDeleteDialogOpen] = useState(false)
  const [deletingId, setDeletingId] = useState<string | null>(null)
  const [deletingItemName, setDeletingItemName] = useState('')
  const [isDeleting, setIsDeleting] = useState(false)
  const [deleteError, setDeleteError] = useState<string | null>(null)
  const [successMessage, setSuccessMessage] = useState<string | null>(null)
  const [showSuccessMessage, setShowSuccessMessage] = useState(false)
  const [snackbarSeverity, setSnackbarSeverity] = useState<'success' | 'error'>('success')
  const [statusUpdatingId, setStatusUpdatingId] = useState<string | null>(null)
  const [rejectModalOpen, setRejectModalOpen] = useState(false)
  const [rejectingUser, setRejectingUser] = useState<User | null>(null)
  const [isRejecting, setIsRejecting] = useState(false)
  const [rejectError, setRejectError] = useState<string | null>(null)
  const [verificationDocumentCounts, setVerificationDocumentCounts] = useState<
    Record<string, number>
  >({})
  const [reviewDocsUser, setReviewDocsUser] = useState<User | null>(null)

  const notify = (message: string, severity: 'success' | 'error' = 'success') => {
    setSuccessMessage(message)
    setSnackbarSeverity(severity)
    setShowSuccessMessage(true)
  }

  useEffect(() => {
    if (user) {
      loadUsers()
    }
  }, [user])

  const loadVerificationSummaries = async () => {
    try {
      const response = await authenticatedAdminFetch(
        '/api/admin-console/verifications'
      )
      const result = await response.json()
      if (!response.ok) {
        throw new Error(result.error || 'โหลดเอกสารยืนยันไม่สำเร็จ')
      }
      const counts: Record<string, number> = {}
      for (const row of result.verifications ?? []) {
        if (row?.user_id) {
          counts[row.user_id as string] = Number(row.document_count) || 0
        }
      }
      setVerificationDocumentCounts(counts)
    } catch (error) {
      if (!isExpectedError(error)) {
        console.error('Error loading verification summaries:', error)
      }
    }
  }

  const loadUsers = async () => {
    try {
      setLoading(true)
      const data = await userService.getUsers()
      setUsers(data)
      if (user && isAdmin(user)) {
        await loadVerificationSummaries()
      }
    } catch (error) {
      if (!isExpectedError(error)) {
        console.error('Error loading users:', error)
      }
      notify('เกิดข้อผิดพลาดในการโหลดข้อมูลผู้ใช้', 'error')
    } finally {
      setLoading(false)
    }
  }

  const handleCreate = () => {
    setEditingUser(null)
    setModalOpen(true)
  }

  const handleEdit = (id: string) => {
    const row = users.find(u => u.id === id)
    if (row) {
      if (row.role === 'Admin' && row.username === 'admin') {
        notify('ไม่สามารถแก้ไขผู้ใช้ admin ได้')
        return
      }
      setEditingUser(row)
      setModalOpen(true)
    }
  }

  const handleDelete = async (id: string) => {
    const row = users.find(u => u.id === id)
    if (row && row.role === 'Admin' && row.username === 'admin') {
      notify('ไม่สามารถลบผู้ใช้ admin ได้')
      return
    }

    setDeletingId(id)
    setDeleteError(null)
    
    try {
      if (row) {
        setDeletingItemName(`${row.name} (${row.email})`)
      } else {
        setDeletingItemName(`User ID: ${id}`)
      }
    } catch {
      setDeletingItemName(`User ID: ${id}`)
    }
    
    setDeleteDialogOpen(true)
  }

  const handleDeleteConfirm = async () => {
    if (!deletingId) return
    
    const row = users.find(u => u.id === deletingId)
    if (row && row.role === 'Admin' && row.username === 'admin') {
      setDeleteDialogOpen(false)
      setDeletingId(null)
      setDeletingItemName('')
      notify('ไม่สามารถลบผู้ใช้ admin ได้')
      return
    }
    
    setIsDeleting(true)
    setDeleteError(null)
    
    try {
      await userService.deleteUser(deletingId)
      
      setDeleteDialogOpen(false)
      setDeletingId(null)
      setDeletingItemName('')
      setIsDeleting(false)
      
      await loadUsers()
      
      notify('ลบผู้ใช้เรียบร้อยแล้ว')
      
    } catch (error) {
      setDeleteError(error instanceof Error ? error.message : 'การลบข้อมูลล้มเหลว กรุณาลองใหม่อีกครั้ง')
      setIsDeleting(false)
      if (!isExpectedError(error)) {
        console.error('Unexpected error deleting user:', error)
      }
    }
  }

  const handleDeleteCancel = () => {
    setDeleteDialogOpen(false)
    setDeletingId(null)
    setDeletingItemName('')
    setDeleteError(null)
    setIsDeleting(false)
  }

  const handleModalClose = () => {
    setModalOpen(false)
    setEditingUser(null)
  }

  const handleModalSuccess = () => {
    loadUsers()
    notify(editingUser ? 'แก้ไขผู้ใช้เรียบร้อยแล้ว' : 'สร้างผู้ใช้เรียบร้อยแล้ว')
  }

  const handleOpenTrialRegistrationUrl = () => {
    window.open(`${window.location.origin}/register/trial`, '_blank', 'noopener,noreferrer')
  }

  const handleOpenMembershipRegistrationUrl = () => {
    window.open(`${window.location.origin}/register/membership`, '_blank', 'noopener,noreferrer')
  }

  const handleOpenRegistrationUrl = () => {
    window.open(`${window.location.origin}/register/consult`, '_blank', 'noopener,noreferrer')
  }

  const handleApprove = async (id: string) => {
    const row = users.find((u) => u.id === id)
    if (!row) return
    if (row.role === 'Admin' && row.username === 'admin') {
      notify('ไม่สามารถเปลี่ยนสถานะผู้ใช้ admin ได้')
      return
    }

    setStatusUpdatingId(id)
    try {
      const response = await authenticatedAdminFetch(
        `/api/admin-console/users/${id}/approve`,
        { method: 'POST' }
      )
      const result = await response.json()
      if (!response.ok) {
        throw new Error(result.error || 'อนุมัติผู้ใช้ไม่สำเร็จ')
      }
      const updated = result.user as User
      setUsers((prev) =>
        prev.map((u) => (u.id === id ? { ...u, ...updated } : u))
      )
      notify('อนุมัติผู้ใช้แล้ว')
    } catch (error) {
      const msg =
        error instanceof Error ? error.message : 'อนุมัติผู้ใช้ไม่สำเร็จ'
      notify(msg, 'error')
      if (!isExpectedError(error)) {
        console.error('Unexpected error approving user:', error)
      }
    } finally {
      setStatusUpdatingId(null)
    }
  }

  const handleRejectOpen = (id: string) => {
    const row = users.find((u) => u.id === id)
    if (!row) return
    if (row.role === 'Admin' && row.username === 'admin') {
      notify('ไม่สามารถเปลี่ยนสถานะผู้ใช้ admin ได้')
      return
    }
    setRejectingUser(row)
    setRejectError(null)
    setRejectModalOpen(true)
  }

  const handleRejectClose = () => {
    if (isRejecting) return
    setRejectModalOpen(false)
    setRejectingUser(null)
    setRejectError(null)
  }

  const handleRejectConfirm = async (reason: string) => {
    if (!rejectingUser) return

    setIsRejecting(true)
    setRejectError(null)
    setStatusUpdatingId(rejectingUser.id)
    try {
      const response = await authenticatedAdminFetch(
        `/api/admin-console/users/${rejectingUser.id}/reject`,
        {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ reason }),
        }
      )
      const result = await response.json()
      if (!response.ok) {
        throw new Error(result.error || 'ปฏิเสธผู้ใช้ไม่สำเร็จ')
      }
      const updated = result.user as User
      setUsers((prev) =>
        prev.map((u) => (u.id === rejectingUser.id ? { ...u, ...updated } : u))
      )
      setRejectModalOpen(false)
      setRejectingUser(null)
      notify('ปฏิเสธผู้ใช้แล้ว')
    } catch (error) {
      const msg =
        error instanceof Error ? error.message : 'ปฏิเสธผู้ใช้ไม่สำเร็จ'
      setRejectError(msg)
      if (!isExpectedError(error)) {
        console.error('Unexpected error rejecting user:', error)
      }
    } finally {
      setIsRejecting(false)
      setStatusUpdatingId(null)
    }
  }

  const handleStatusToggle = async (id: string, nextStatus: 'active' | 'inactive') => {
    const row = users.find((u) => u.id === id)
    if (!row) return
    if (row.role === 'Admin' && row.username === 'admin') {
      notify('ไม่สามารถเปลี่ยนสถานะผู้ใช้ admin ได้')
      return
    }

    setStatusUpdatingId(id)
    try {
      await userService.updateUser(id, { status: nextStatus })
      setUsers((prev) =>
        prev.map((u) => (u.id === id ? { ...u, status: nextStatus } : u))
      )
      notify(nextStatus === 'active' ? 'เปิดใช้งานผู้ใช้แล้ว' : 'ปิดใช้งานผู้ใช้แล้ว')
    } catch (error) {
      const msg =
        error instanceof Error ? error.message : 'อัปเดตสถานะไม่สำเร็จ'
      notify(msg, 'error')
      if (!isExpectedError(error)) {
        console.error('Unexpected error updating status:', error)
      }
    } finally {
      setStatusUpdatingId(null)
    }
  }

  if (authLoading || loading) {
    return (
      <Box sx={{ flexGrow: 1, minHeight: '100vh', backgroundColor: 'background.default', display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
        <CircularProgress />
      </Box>
    )
  }

  if (user && !isAdmin(user)) {
    return null
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
          จัดการผู้ใช้
        </Typography>
        <Box sx={{ display: 'flex', gap: 1.5, flexWrap: 'wrap' }}>
          <Button
            variant="outlined"
            startIcon={<OpenInNewIcon />}
            onClick={handleOpenTrialRegistrationUrl}
            sx={adminPrimaryButtonSx}
          >
            ลิงก์สมัครทดลองใช้งาน
          </Button>
          <Button
            variant="outlined"
            startIcon={<OpenInNewIcon />}
            onClick={handleOpenMembershipRegistrationUrl}
            sx={adminPrimaryButtonSx}
          >
            ลิงก์สมัครสมาชิกรายปี
          </Button>
          <Button
            variant="outlined"
            startIcon={<OpenInNewIcon />}
            onClick={handleOpenRegistrationUrl}
            sx={adminPrimaryButtonSx}
          >
            ลิงก์สมัคร Consult/Audit
          </Button>
          <Button
            variant="contained"
            startIcon={<AddIcon />}
            onClick={handleCreate}
            sx={adminPrimaryButtonSx}
          >
            สร้างผู้ใช้ใหม่
          </Button>
        </Box>
      </Box>

      <Box
        sx={{
          display: 'flex',
          gap: 1.5,
          mb: 3,
          flexWrap: 'wrap',
          alignItems: 'center',
        }}
      >
        <TextField
          placeholder="ค้นหาชื่อผู้ใช้หรืออีเมล..."
          value={searchTerm}
          onChange={(e) => setSearchTerm(e.target.value)}
          size="small"
          sx={adminSearchFieldSx}
          InputProps={{
            startAdornment: <SearchIcon sx={{ mr: 1, color: 'text.secondary', fontSize: 20 }} />,
          }}
        />
        <FormControl size="small" sx={[{ minWidth: 180 }, adminFilterControlSx]}>
          <InputLabel>กรองตามบทบาท</InputLabel>
          <Select
            value={selectedRole}
            label="กรองตามบทบาท"
            onChange={(e) => setSelectedRole(e.target.value as '' | typeof ROLE_OPTIONS[number]['value'])}
          >
            <MenuItem value="">
              <em>ทั้งหมด</em>
            </MenuItem>
            {ROLE_OPTIONS.map((option) => (
              <MenuItem key={option.value} value={option.value}>
                {option.label}
              </MenuItem>
            ))}
          </Select>
        </FormControl>
        <FormControl size="small" sx={[{ minWidth: 180 }, adminFilterControlSx]}>
          <InputLabel>กรองตามสถานะ</InputLabel>
          <Select
            value={selectedStatus}
            label="กรองตามสถานะ"
            onChange={(e) => setSelectedStatus(e.target.value as '' | UserStatus)}
          >
            <MenuItem value="">
              <em>ทั้งหมด</em>
            </MenuItem>
            {USER_STATUS_FILTER_OPTIONS.map((option) => (
              <MenuItem key={option.value} value={option.value}>
                {option.label}
              </MenuItem>
            ))}
          </Select>
        </FormControl>
      </Box>

      <UsersTable
        data={filteredUsers}
        loading={loading}
        onEdit={handleEdit}
        onDelete={handleDelete}
        onApprove={handleApprove}
        onReject={handleRejectOpen}
        onStatusToggle={handleStatusToggle}
        onReviewDocuments={(id) => {
          const row = users.find((u) => u.id === id) || null
          setReviewDocsUser(row)
        }}
        statusUpdatingId={statusUpdatingId}
        showReviewDocuments={Boolean(user && isAdmin(user))}
        verificationDocumentCounts={verificationDocumentCounts}
      />

      <UserModal
        open={modalOpen}
        onClose={handleModalClose}
        onSuccess={handleModalSuccess}
        mode={editingUser ? 'edit' : 'create'}
        initialData={editingUser}
      />

      <ReviewDocumentsModal
        open={Boolean(reviewDocsUser)}
        userId={reviewDocsUser?.id ?? null}
        userName={
          reviewDocsUser
            ? `${reviewDocsUser.name} (${reviewDocsUser.email})`
            : undefined
        }
        onClose={() => setReviewDocsUser(null)}
      />

      <RejectUserModal
        open={rejectModalOpen}
        userName={rejectingUser ? `${rejectingUser.name} (${rejectingUser.email})` : ''}
        isSubmitting={isRejecting}
        error={rejectError}
        onClose={handleRejectClose}
        onConfirm={handleRejectConfirm}
      />

      <DeleteConfirmationDialog
        open={deleteDialogOpen}
        onClose={handleDeleteCancel}
        onConfirm={handleDeleteConfirm}
        title="ยืนยันการลบผู้ใช้"
        message={`คุณแน่ใจหรือไม่ที่จะลบผู้ใช้ "${deletingItemName}"?`}
        description="การลบนี้ไม่สามารถยกเลิกได้"
        itemName={deletingItemName}
        isDeleting={isDeleting}
        error={deleteError}
      />

      <Snackbar
        open={showSuccessMessage}
        autoHideDuration={6000}
        onClose={() => setShowSuccessMessage(false)}
        anchorOrigin={{ vertical: 'bottom', horizontal: 'right' }}
      >
        <Alert onClose={() => setShowSuccessMessage(false)} severity={snackbarSeverity} sx={{ width: '100%' }}>
          {successMessage}
        </Alert>
      </Snackbar>
    </Box>
  )
}
