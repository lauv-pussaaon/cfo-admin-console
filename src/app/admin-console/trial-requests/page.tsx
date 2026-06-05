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
  FormControl,
  InputLabel,
  MenuItem,
  Select,
  Snackbar,
  TextField,
  Typography,
} from '@mui/material'
import { ArrowBack, Search as SearchIcon } from '@mui/icons-material'
import TrialRequestsTable from '@/components/admin/TrialRequestsTable'
import { trialRequestService } from '@/lib/services'
import { useAuth } from '@/contexts/AuthContext'
import { isAdmin } from '@/lib/permissions'
import { isExpectedError } from '@/lib/utils/errors'
import type { OrganizationTrialRequest } from '@/types/database'
import { ACCOUNT_TYPE_OPTIONS, type AccountType } from '@/types/account-types'

type StatusFilter = '' | 'pending' | 'approved'

export default function AdminTrialRequestsPage () {
  const { user, isLoading: authLoading } = useAuth()
  const router = useRouter()
  const [requests, setRequests] = useState<OrganizationTrialRequest[]>([])
  const [loading, setLoading] = useState(true)
  const [searchTerm, setSearchTerm] = useState('')
  const [statusFilter, setStatusFilter] = useState<StatusFilter>('')
  const [approveTarget, setApproveTarget] = useState<OrganizationTrialRequest | null>(null)
  const [accountType, setAccountType] = useState<AccountType>('demo')
  const [approvingId, setApprovingId] = useState<string | null>(null)
  const [approveError, setApproveError] = useState<string | null>(null)
  const [successMessage, setSuccessMessage] = useState<string | null>(null)
  const [showSuccessMessage, setShowSuccessMessage] = useState(false)
  const [snackbarSeverity, setSnackbarSeverity] = useState<'success' | 'error'>('success')

  useEffect(() => {
    if (!authLoading && user && !isAdmin(user)) {
      router.replace('/admin-console')
    }
  }, [user, authLoading, router])

  const loadRequests = async () => {
    try {
      setLoading(true)
      const data = await trialRequestService.getTrialRequests()
      setRequests(data)
    } catch (error) {
      if (!isExpectedError(error)) {
        console.error('Failed to load trial requests:', error)
      }
    } finally {
      setLoading(false)
    }
  }

  useEffect(() => {
    if (user && isAdmin(user)) {
      loadRequests()
    }
  }, [user])

  const filteredRequests = useMemo(() => {
    const term = searchTerm.trim().toLowerCase()
    return requests.filter((request) => {
      if (statusFilter && request.status !== statusFilter) {
        return false
      }
      if (!term) return true
      const haystack = [
        request.organization_name,
        request.contact_first_name,
        request.contact_last_name,
        request.contact_email,
        request.contact_phone,
      ].join(' ').toLowerCase()
      return haystack.includes(term)
    })
  }, [requests, searchTerm, statusFilter])

  const notify = (message: string, severity: 'success' | 'error' = 'success') => {
    setSuccessMessage(message)
    setSnackbarSeverity(severity)
    setShowSuccessMessage(true)
  }

  const handleOpenApprove = (request: OrganizationTrialRequest) => {
    setApproveTarget(request)
    setAccountType('demo')
    setApproveError(null)
  }

  const handleCloseApprove = () => {
    if (approvingId) return
    setApproveTarget(null)
    setApproveError(null)
  }

  const handleConfirmApprove = async () => {
    if (!approveTarget || !user) return

    setApprovingId(approveTarget.id)
    setApproveError(null)

    try {
      await trialRequestService.approveTrialRequest(approveTarget.id, {
        reviewedBy: user.id,
        accountType,
      })
      setApproveTarget(null)
      notify('อนุมัติคำขอทดลองใช้งานและสร้างองค์กรเรียบร้อยแล้ว')
      await loadRequests()
    } catch (error) {
      const message = error instanceof Error ? error.message : 'อนุมัติไม่สำเร็จ'
      setApproveError(message)
      notify(message, 'error')
    } finally {
      setApprovingId(null)
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

      <Typography variant="h4" fontWeight="bold" sx={{ mb: 3 }}>
        คำขอทดลองใช้งานองค์กร
      </Typography>

      <Box sx={{ display: 'flex', flexWrap: 'wrap', gap: 2, mb: 3 }}>
        <TextField
          placeholder="ค้นหาชื่อองค์กร ผู้ติดต่อ อีเมล..."
          value={searchTerm}
          onChange={(e) => setSearchTerm(e.target.value)}
          size="small"
          sx={{ minWidth: 280, flex: 1 }}
          InputProps={{
            startAdornment: <SearchIcon sx={{ mr: 1, color: 'action.active' }} />,
          }}
        />
        <FormControl size="small" sx={{ minWidth: 180 }}>
          <InputLabel>สถานะ</InputLabel>
          <Select
            label="สถานะ"
            value={statusFilter}
            onChange={(e) => setStatusFilter(e.target.value as StatusFilter)}
          >
            <MenuItem value="">ทั้งหมด</MenuItem>
            <MenuItem value="pending">รออนุมัติ</MenuItem>
            <MenuItem value="approved">อนุมัติแล้ว</MenuItem>
          </Select>
        </FormControl>
      </Box>

      <TrialRequestsTable
        data={filteredRequests}
        loading={loading}
        approvingId={approvingId}
        onApprove={handleOpenApprove}
      />

      <Dialog open={Boolean(approveTarget)} onClose={handleCloseApprove} maxWidth="sm" fullWidth>
        <DialogTitle>อนุมัติคำขอทดลองใช้งาน</DialogTitle>
        <DialogContent>
          {approveError && (
            <Alert severity="error" sx={{ mb: 2 }}>
              {approveError}
            </Alert>
          )}
          {approveTarget && (
            <Box sx={{ display: 'grid', gap: 1.5 }}>
              <Typography variant="body2">
                <strong>ชื่อองค์กร:</strong> {approveTarget.organization_name}
              </Typography>
              <Typography variant="body2">
                <strong>ผู้ติดต่อ:</strong> {approveTarget.contact_first_name} {approveTarget.contact_last_name}
              </Typography>
              <Typography variant="body2">
                <strong>อีเมล:</strong> {approveTarget.contact_email}
              </Typography>
              <Typography variant="body2" sx={{ mb: 1 }}>
                <strong>เบอร์โทร:</strong> {approveTarget.contact_phone}
              </Typography>
              <FormControl fullWidth>
                <InputLabel>ประเภทบัญชี</InputLabel>
                <Select
                  label="ประเภทบัญชี"
                  value={accountType}
                  onChange={(e) => setAccountType(e.target.value as AccountType)}
                  disabled={Boolean(approvingId)}
                >
                  {ACCOUNT_TYPE_OPTIONS.map((option) => (
                    <MenuItem key={option.value} value={option.value}>
                      {option.label}
                    </MenuItem>
                  ))}
                </Select>
              </FormControl>
              <Typography variant="caption" color="text.secondary">
                ระบบจะสร้างองค์กรใหม่และบันทึกข้อมูลผู้ติดต่อลงในตาราง organizations
              </Typography>
            </Box>
          )}
        </DialogContent>
        <DialogActions>
          <Button onClick={handleCloseApprove} disabled={Boolean(approvingId)} sx={{ textTransform: 'none' }}>
            ยกเลิก
          </Button>
          <Button
            variant="contained"
            onClick={handleConfirmApprove}
            disabled={Boolean(approvingId)}
            sx={{ textTransform: 'none' }}
          >
            {approvingId ? 'กำลังอนุมัติ...' : 'ยืนยันอนุมัติ'}
          </Button>
        </DialogActions>
      </Dialog>

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
