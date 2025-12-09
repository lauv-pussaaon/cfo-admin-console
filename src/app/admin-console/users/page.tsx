'use client'

import { useState, useEffect } from 'react'
import { useRouter } from 'next/navigation'
import Link from 'next/link'
import {
  Box,
  Container,
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
  Search as SearchIcon,
} from '@mui/icons-material'
import UsersTable from '@/components/admin/UsersTable'
import UserModal from '@/components/admin/UserModal'
import DeleteConfirmationDialog from '@/components/DeleteConfirmationDialog'
import { userService } from '@/lib/services'
import { useAuth } from '@/contexts/AuthContext'
import type { User } from '@/lib/api/types'
import { isExpectedError } from '@/lib/utils/errors'
import { useUsersFilter } from '@/hooks/useUsersFilter'
import { ROLE_OPTIONS } from '@/types/roles'

export default function AdminConsoleUsersPage() {
  const { user, isLoading: authLoading } = useAuth()
  const router = useRouter()
  const [users, setUsers] = useState<User[]>([])
  const [loading, setLoading] = useState(true)
  
  const {
    searchTerm,
    setSearchTerm,
    selectedRole,
    setSelectedRole,
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

  // Load users
  useEffect(() => {
    if (user) {
      loadUsers()
    }
  }, [user])

  const loadUsers = async () => {
    try {
      setLoading(true)
      const data = await userService.getUsers()
      // userService.getUsers() already filters to admin console roles
      setUsers(data)
    } catch (error) {
      // Only log unexpected errors
      if (!isExpectedError(error)) {
        console.error('Error loading users:', error)
      }
      setSuccessMessage('เกิดข้อผิดพลาดในการโหลดข้อมูลผู้ใช้')
      setShowSuccessMessage(true)
    } finally {
      setLoading(false)
    }
  }

  const handleCreate = () => {
    setEditingUser(null)
    setModalOpen(true)
  }

  const handleEdit = (id: string) => {
    const user = users.find(u => u.id === id)
    if (user) {
      // Prevent editing the locked admin user
      if (user.role === 'Admin' && user.username === 'admin') {
        setSuccessMessage('ไม่สามารถแก้ไขผู้ใช้ admin ได้')
        setShowSuccessMessage(true)
        return
      }
      setEditingUser(user)
      setModalOpen(true)
    }
  }

  const handleDelete = async (id: string) => {
    // Prevent deleting the locked admin user
    const user = users.find(u => u.id === id)
    if (user && user.role === 'Admin' && user.username === 'admin') {
      setSuccessMessage('ไม่สามารถลบผู้ใช้ admin ได้')
      setShowSuccessMessage(true)
      return
    }

    setDeletingId(id)
    setDeleteError(null)
    
    try {
      if (user) {
        setDeletingItemName(`${user.name} (${user.email})`)
      } else {
        setDeletingItemName(`User ID: ${id}`)
      }
    } catch {
      // Error is already handled, just set fallback name
      setDeletingItemName(`User ID: ${id}`)
    }
    
    setDeleteDialogOpen(true)
  }

  const handleDeleteConfirm = async () => {
    if (!deletingId) return
    
    // Double-check: Prevent deleting the locked admin user
    const user = users.find(u => u.id === deletingId)
    if (user && user.role === 'Admin' && user.username === 'admin') {
      setDeleteDialogOpen(false)
      setDeletingId(null)
      setDeletingItemName('')
      setSuccessMessage('ไม่สามารถลบผู้ใช้ admin ได้')
      setShowSuccessMessage(true)
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
      
      // Reload users
      await loadUsers()
      
      setSuccessMessage('ลบผู้ใช้เรียบร้อยแล้ว')
      setShowSuccessMessage(true)
      
    } catch (error) {
      // Error message is already user-friendly from ValidationError
      setDeleteError(error instanceof Error ? error.message : 'การลบข้อมูลล้มเหลว กรุณาลองใหม่อีกครั้ง')
      setIsDeleting(false)
      // Only log unexpected errors
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
    setSuccessMessage(editingUser ? 'แก้ไขผู้ใช้เรียบร้อยแล้ว' : 'สร้างผู้ใช้เรียบร้อยแล้ว')
    setShowSuccessMessage(true)
  }

  if (authLoading || loading) {
    return (
      <Box sx={{ flexGrow: 1, minHeight: '100vh', backgroundColor: 'background.default', display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
        <CircularProgress />
      </Box>
    )
  }

  return (
    <Box sx={{ flexGrow: 1, minHeight: '100vh', backgroundColor: 'background.default' }}>
      <Container maxWidth="xl" sx={{ py: 4 }}>
        <Link href="/admin-console" style={{ textDecoration: 'none' }}>
          <Button
            startIcon={<ArrowBack />}
            sx={{ mb: 2, textTransform: 'none' }}
          >
            กลับ
          </Button>
        </Link>
        {/* Header */}
        <Box sx={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', mb: 4 }}>
          <Typography variant="h4" component="h1" fontWeight="bold">
            จัดการผู้ใช้
          </Typography>
          <Button
            variant="contained"
            startIcon={<AddIcon />}
            onClick={handleCreate}
            sx={{ textTransform: 'none' }}
          >
            สร้างผู้ใช้ใหม่
          </Button>
        </Box>

        <Box sx={{ display: 'flex', gap: 2, mb: 3, flexWrap: 'wrap' }}>
          <TextField
            placeholder="ค้นหาชื่อผู้ใช้หรืออีเมล..."
            value={searchTerm}
            onChange={(e) => setSearchTerm(e.target.value)}
            size="small"
            sx={{ minWidth: 300 }}
            InputProps={{
              startAdornment: <SearchIcon sx={{ mr: 1, color: 'text.secondary' }} />,
            }}
          />
          <FormControl size="small" sx={{ minWidth: 200 }}>
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
        </Box>

        {/* Table */}
        <UsersTable
          data={filteredUsers}
          loading={loading}
          onEdit={handleEdit}
          onDelete={handleDelete}
        />

        {/* Create/Edit Modal */}
        <UserModal
          open={modalOpen}
          onClose={handleModalClose}
          onSuccess={handleModalSuccess}
          mode={editingUser ? 'edit' : 'create'}
          initialData={editingUser}
        />

        {/* Delete Confirmation Dialog */}
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

        {/* Success Snackbar */}
        <Snackbar
          open={showSuccessMessage}
          autoHideDuration={6000}
          onClose={() => setShowSuccessMessage(false)}
          anchorOrigin={{ vertical: 'bottom', horizontal: 'right' }}
        >
          <Alert onClose={() => setShowSuccessMessage(false)} severity="success" sx={{ width: '100%' }}>
            {successMessage}
          </Alert>
        </Snackbar>
      </Container>
    </Box>
  )
}

