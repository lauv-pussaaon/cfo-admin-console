'use client'

import { useEffect, useMemo, useState } from 'react'
import { useRouter } from 'next/navigation'
import Link from 'next/link'
import {
  Box,
  Button,
  Chip,
  CircularProgress,
  FormControl,
  InputLabel,
  MenuItem,
  Select,
  Snackbar,
  Alert,
  TextField,
  Typography,
} from '@mui/material'
import { ArrowBack, Search as SearchIcon } from '@mui/icons-material'
import TrialRequestsTable from '@/components/admin/TrialRequestsTable'
import { trialRequestService } from '@/lib/services'
import { useAuth } from '@/contexts/AuthContext'
import { isAdmin } from '@/lib/permissions'
import { isExpectedError } from '@/lib/utils/errors'
import type { OrganizationTrialRequest, OrganizationTrialRequestStatus } from '@/types/database'
import {
  TRIAL_REQUEST_STATUS_OPTIONS,
  getTrialRequestStatusChipColor,
} from '@/types/trial-request-status'

type StatusFilter = '' | OrganizationTrialRequestStatus

export default function AdminTrialRequestsPage () {
  const { user, isLoading: authLoading } = useAuth()
  const router = useRouter()
  const [requests, setRequests] = useState<OrganizationTrialRequest[]>([])
  const [loading, setLoading] = useState(true)
  const [searchTerm, setSearchTerm] = useState('')
  const [statusFilter, setStatusFilter] = useState<StatusFilter>('')
  const [successMessage, setSuccessMessage] = useState<string | null>(null)
  const [showSuccessMessage, setShowSuccessMessage] = useState(false)

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

  const statusCounts = useMemo(() => {
    return TRIAL_REQUEST_STATUS_OPTIONS.reduce<Record<OrganizationTrialRequestStatus, number>>(
      (counts, option) => {
        counts[option.value] = requests.filter((request) => request.status === option.value).length
        return counts
      },
      {
        pending: 0,
        processing: 0,
        approved: 0,
        cancelled: 0,
      }
    )
  }, [requests])

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

  const handleRowClick = (id: string) => {
    router.push(`/admin-console/trial-requests/${id}`)
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

      <Box sx={{ display: 'flex', flexWrap: 'wrap', gap: 1.5, mb: 3 }}>
        <Chip
          label={`ทั้งหมด ${requests.length}`}
          clickable
          color={statusFilter === '' ? 'primary' : 'default'}
          variant={statusFilter === '' ? 'filled' : 'outlined'}
          onClick={() => setStatusFilter('')}
        />
        {TRIAL_REQUEST_STATUS_OPTIONS.map((option) => (
          <Chip
            key={option.value}
            label={`${option.label} ${statusCounts[option.value]}`}
            clickable
            color={statusFilter === option.value ? getTrialRequestStatusChipColor(option.value) : 'default'}
            variant={statusFilter === option.value ? 'filled' : 'outlined'}
            onClick={() => setStatusFilter(option.value)}
          />
        ))}
      </Box>

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
            {TRIAL_REQUEST_STATUS_OPTIONS.map((option) => (
              <MenuItem key={option.value} value={option.value}>
                {option.label}
              </MenuItem>
            ))}
          </Select>
        </FormControl>
      </Box>

      <TrialRequestsTable
        data={filteredRequests}
        loading={loading}
        onRowClick={handleRowClick}
      />

      <Snackbar
        open={showSuccessMessage}
        autoHideDuration={4000}
        onClose={() => setShowSuccessMessage(false)}
        anchorOrigin={{ vertical: 'bottom', horizontal: 'center' }}
      >
        <Alert
          onClose={() => setShowSuccessMessage(false)}
          severity="success"
          sx={{ width: '100%' }}
        >
          {successMessage}
        </Alert>
      </Snackbar>
    </Box>
  )
}
