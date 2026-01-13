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
  Chip,
  IconButton,
  Tooltip,
} from '@mui/material'
import {
  Add as AddIcon,
  ArrowBack,
  Search as SearchIcon,
  ContentCopy as CopyIcon,
} from '@mui/icons-material'
import OrganizationsTable from '@/components/admin/OrganizationsTable'
import AdminOrganizationsTable from '@/components/admin/AdminOrganizationsTable'
import AdminOrganizationModal from '@/components/admin/AdminOrganizationModal'
import InviteClientAdminModal from '@/components/admin/InviteClientAdminModal'
import DeleteConfirmationDialog from '@/components/DeleteConfirmationDialog'
import { organizationService } from '@/lib/services'
import { useAuth } from '@/contexts/AuthContext'
import type { OrganizationWithStats } from '@/types/database'
import type { OrganizationWithCreator } from '@/lib/api/organizations'
import { isExpectedError } from '@/lib/utils/errors'
import { useOrganizationsFilter } from '@/hooks/useOrganizationsFilter'
import { shouldFilterOrganizationsByAssignment, isDealer, isAdmin, isConsult, isAudit, canManageOrganizations } from '@/lib/permissions'
import { exportOrganizationAsCSV } from '@/lib/utils/export'

export default function AdminConsoleOrganizationsPage() {
  const { user, isLoading: authLoading } = useAuth()
  const router = useRouter()
  const [organizations, setOrganizations] = useState<(OrganizationWithStats | OrganizationWithCreator)[]>([])
  const [loading, setLoading] = useState(true)
  
  const {
    searchTerm,
    setSearchTerm,
    filteredOrganizations,
  } = useOrganizationsFilter(organizations)
  const [modalOpen, setModalOpen] = useState(false)
  const [editingOrganization, setEditingOrganization] = useState<OrganizationWithStats | null>(null)
  const [inviteModalOpen, setInviteModalOpen] = useState(false)
  const [invitingOrganization, setInvitingOrganization] = useState<OrganizationWithStats | null>(null)
  const [deleteDialogOpen, setDeleteDialogOpen] = useState(false)
  const [deletingId, setDeletingId] = useState<string | null>(null)
  const [deletingItemName, setDeletingItemName] = useState('')
  const [isDeleting, setIsDeleting] = useState(false)
  const [deleteError, setDeleteError] = useState<string | null>(null)
  const [successMessage, setSuccessMessage] = useState<string | null>(null)
  const [showSuccessMessage, setShowSuccessMessage] = useState(false)
  const [copySuccess, setCopySuccess] = useState(false)

  // Redirect if not authenticated
  useEffect(() => {
    if (!authLoading && !user) {
      router.push('/login')
    }
  }, [user, authLoading, router])

  // Load organizations
  useEffect(() => {
    if (user) {
      loadOrganizations()
    }
  }, [user])

  const loadOrganizations = async () => {
    if (!user) return
    
    try {
      setLoading(true)
      let data: (OrganizationWithStats | OrganizationWithCreator)[]
      
      if (isAdmin(user)) {
        // Admin sees all organizations with creator info
        data = await organizationService.getOrganizationsForAdmin()
      } else if (isDealer(user)) {
        // Dealer sees only assigned organizations
        data = await organizationService.getOrganizationsForDealer(user.id)
      } else if (isConsult(user) || isAudit(user)) {
        // Consult/Audit see only assigned organizations
        data = await organizationService.getOrganizationsForConsultAudit(user.id)
      } else {
        // Other roles see all organizations
        data = await organizationService.getOrganizationsWithStats()
      }
      
      setOrganizations(data)
    } catch (error) {
      // Only log unexpected errors
      if (!isExpectedError(error)) {
        console.error('Error loading organizations:', error)
      }
      setSuccessMessage('เกิดข้อผิดพลาดในการโหลดข้อมูลองค์กร')
      setShowSuccessMessage(true)
    } finally {
      setLoading(false)
    }
  }

  const handleCreate = () => {
    setEditingOrganization(null)
    setModalOpen(true)
  }

  const handleEdit = (id: string) => {
    const org = organizations.find(o => o.id === id)
    if (org) {
      setEditingOrganization(org)
      setModalOpen(true)
    }
  }

  const handleDelete = async (id: string) => {
    setDeletingId(id)
    setDeleteError(null)
    
    try {
      const org = organizations.find(o => o.id === id)
      if (org) {
        setDeletingItemName(`${org.name}${org.code ? ` (${org.code})` : ''}`)
      } else {
        setDeletingItemName(`Organization ID: ${id}`)
      }
    } catch {
      // Error is already handled, just set fallback name
      setDeletingItemName(`Organization ID: ${id}`)
    }
    
    setDeleteDialogOpen(true)
  }

  const confirmDelete = async () => {
    if (!deletingId) return

    setIsDeleting(true)
    setDeleteError(null)

    try {
      await organizationService.deleteOrganization(deletingId)
      setSuccessMessage('ลบองค์กรสำเร็จ')
      setShowSuccessMessage(true)
      setDeleteDialogOpen(false)
      setDeletingId(null)
      setDeletingItemName('')
      // Reload organizations
      await loadOrganizations()
    } catch (error) {
      if (isExpectedError(error)) {
        setDeleteError(error instanceof Error ? error.message : 'ไม่สามารถลบองค์กรได้')
      } else {
        console.error('Error deleting organization:', error)
        setDeleteError('เกิดข้อผิดพลาดในการลบองค์กร')
      }
    } finally {
      setIsDeleting(false)
    }
  }

  const handleModalSuccess = () => {
    loadOrganizations()
    setSuccessMessage(editingOrganization ? 'แก้ไของค์กรสำเร็จ' : 'สร้างองค์กรสำเร็จ')
    setShowSuccessMessage(true)
  }

  const handleExportOrganization = async (organizationId: string) => {
    try {
      const org = organizations.find(o => o.id === organizationId)
      if (!org) {
        setSuccessMessage('ไม่พบข้อมูลองค์กร')
        setShowSuccessMessage(true)
        return
      }
      
      // Export with dealer info if dealer is viewing
      exportOrganizationAsCSV(org, isDealer(user) && user ? user : undefined)
      setSuccessMessage('ส่งออกข้อมูลสำเร็จ')
      setShowSuccessMessage(true)
    } catch (error) {
      console.error('Error exporting organization:', error)
      setSuccessMessage('เกิดข้อผิดพลาดในการส่งออกข้อมูล')
      setShowSuccessMessage(true)
    }
  }

  const handleInvite = (organizationId: string) => {
    const org = organizations.find(o => o.id === organizationId)
    if (org) {
      setInvitingOrganization(org as OrganizationWithStats)
      setInviteModalOpen(true)
    }
  }

  const handleInviteSuccess = () => {
    setSuccessMessage('สร้างคำเชิญสำเร็จ')
    setShowSuccessMessage(true)
  }

  const handleCopyHashcode = async () => {
    if (user?.invite_hashcode) {
      try {
        await navigator.clipboard.writeText(user.invite_hashcode)
        setCopySuccess(true)
        setTimeout(() => setCopySuccess(false), 2000)
      } catch (error) {
        console.error('Failed to copy hashcode:', error)
      }
    }
  }

  if (authLoading) {
    return (
      <Box
        sx={{
          display: 'flex',
          alignItems: 'center',
          justifyContent: 'center',
          minHeight: '100vh',
        }}
      >
        <CircularProgress />
      </Box>
    )
  }

  return (
    <Box sx={{ py: 2, width: '100%', px: 3 }}>
      <Link href="/admin-console" style={{ textDecoration: 'none' }}>
        <Button
          startIcon={<ArrowBack />}
          sx={{ mb: 2, textTransform: 'none' }}
        >
          กลับ
        </Button>
      </Link>
      <Box sx={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', mb: 4 }}>
        <Typography variant="h4" fontWeight="bold">
          {isDealer(user) ? 'องค์กรที่ดูแล' : isConsult(user) || isAudit(user) ? 'องค์กรที่ดูแล' : isAdmin(user) ? 'จัดการลูกค้า (Admin)' : 'จัดการลูกค้า'}
        </Typography>
        <Box sx={{ display: 'flex', gap: 2, alignItems: 'center' }}>
          {/* Display invite hashcode for Consult/Audit */}
          {(isConsult(user) || isAudit(user)) && user?.invite_hashcode && (
            <Chip
              label={`Invite Code: ${user.invite_hashcode}`}
              onDelete={handleCopyHashcode}
              deleteIcon={
                <Tooltip title={copySuccess ? 'Copied!' : 'Copy to clipboard'}>
                  <IconButton size="small" onClick={handleCopyHashcode}>
                    <CopyIcon fontSize="small" />
                  </IconButton>
                </Tooltip>
              }
              color={copySuccess ? 'success' : 'primary'}
              variant="outlined"
              sx={{
                fontWeight: 'medium',
                '& .MuiChip-label': {
                  fontFamily: 'monospace',
                  fontSize: '0.875rem',
                },
              }}
            />
          )}
          {canManageOrganizations(user) && (
            <Button
              variant="contained"
              startIcon={<AddIcon />}
              onClick={handleCreate}
              sx={{
                textTransform: 'none',
                borderRadius: 1,
              }}
            >
              สร้างองค์กรใหม่
            </Button>
          )}
        </Box>
      </Box>

      <Box sx={{ display: 'flex', gap: 2, mb: 3, flexWrap: 'wrap' }}>
        <TextField
          placeholder="ค้นหาชื่อองค์กรหรือรหัส..."
          value={searchTerm}
          onChange={(e) => setSearchTerm(e.target.value)}
          size="small"
          sx={{ minWidth: 300 }}
          InputProps={{
            startAdornment: <SearchIcon sx={{ mr: 1, color: 'text.secondary' }} />,
          }}
        />
      </Box>

      {isAdmin(user) ? (
        <AdminOrganizationsTable
          data={filteredOrganizations as OrganizationWithCreator[]}
          loading={loading}
          onEdit={handleEdit}
          onDelete={handleDelete}
        />
      ) : (
        <OrganizationsTable
          data={filteredOrganizations as OrganizationWithStats[]}
          loading={loading}
          onEdit={handleEdit}
          onDelete={handleDelete}
          onExport={handleExportOrganization}
          onInvite={handleInvite}
        />
      )}

      {/* Unified modal for all roles */}
      <AdminOrganizationModal
        open={modalOpen}
        onClose={() => {
          setModalOpen(false)
          setEditingOrganization(null)
        }}
        onSuccess={handleModalSuccess}
        mode={editingOrganization ? 'edit' : 'create'}
        initialData={editingOrganization}
      />

      {/* Invite modal for non-admin users */}
      {!isAdmin(user) && (
        <InviteClientAdminModal
          open={inviteModalOpen}
          onClose={() => {
            setInviteModalOpen(false)
            setInvitingOrganization(null)
          }}
          onSuccess={handleInviteSuccess}
          organization={invitingOrganization}
        />
      )}

      <DeleteConfirmationDialog
        open={deleteDialogOpen}
        onClose={() => {
          setDeleteDialogOpen(false)
          setDeletingId(null)
          setDeletingItemName('')
          setDeleteError(null)
        }}
        onConfirm={confirmDelete}
        title="ยืนยันการลบองค์กร"
        description={`คุณแน่ใจหรือไม่ว่าต้องการลบองค์กร "${deletingItemName}"? การดำเนินการนี้ไม่สามารถยกเลิกได้`}
        error={deleteError}
        isDeleting={isDeleting}
      />

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
    </Box>
  )
}
