'use client'

import { useState, useEffect, useCallback } from 'react'
import { useRouter } from 'next/navigation'
import {
  Box,
  Typography,
  TextField,
  CircularProgress,
  Snackbar,
  Alert,
  FormControl,
  InputLabel,
  Select,
  MenuItem,
} from '@mui/material'
import { Search as SearchIcon } from '@mui/icons-material'
import AdminOrganizationsTable from '@/components/admin/AdminOrganizationsTable'
import { organizationService } from '@/lib/services'
import { useOrganizationsFilter } from '@/hooks/useOrganizationsFilter'
import type { OrganizationWithCreator } from '@/lib/api/organizations'
import { isExpectedError } from '@/lib/utils/errors'

export default function SupportClientsDashboard () {
  const router = useRouter()
  const [organizations, setOrganizations] = useState<OrganizationWithCreator[]>([])
  const [loading, setLoading] = useState(true)
  const [errorMessage, setErrorMessage] = useState<string | null>(null)

  const {
    searchTerm,
    setSearchTerm,
    statusFilter,
    setStatusFilter,
    createdFrom,
    setCreatedFrom,
    createdTo,
    setCreatedTo,
    filteredOrganizations,
  } = useOrganizationsFilter(organizations)

  const loadOrganizations = useCallback(async () => {
    try {
      setLoading(true)
      const data = await organizationService.getOrganizationsForAdmin()
      setOrganizations(data)
    } catch (error) {
      if (!isExpectedError(error)) {
        console.error('Error loading organizations:', error)
      }
      setErrorMessage('เกิดข้อผิดพลาดในการโหลดข้อมูลลูกค้า')
    } finally {
      setLoading(false)
    }
  }, [])

  useEffect(() => {
    loadOrganizations()
  }, [loadOrganizations])

  const handleRowClick = (id: string) => {
    router.push(`/admin-console/organizations/${id}`)
  }

  return (
    <Box sx={{ py: 2, width: '100%' }}>
      <Typography variant="h4" fontWeight="bold" sx={{ mb: 3 }}>
        ลูกค้า (ฝ่ายสนับสนุน)
      </Typography>

      <Box sx={{ display: 'flex', gap: 2, mb: 3, flexWrap: 'wrap', alignItems: 'center' }}>
        <TextField
          placeholder="ค้นหาชื่อ รหัส อีเมล Dealer ผู้สร้าง..."
          value={searchTerm}
          onChange={(e) => setSearchTerm(e.target.value)}
          size="small"
          sx={{ minWidth: 300, flex: '1 1 280px' }}
          InputProps={{
            startAdornment: <SearchIcon sx={{ mr: 1, color: 'text.secondary' }} />,
          }}
        />
        <FormControl size="small" sx={{ minWidth: 180 }}>
          <InputLabel id="support-status-filter">สถานะ deployment</InputLabel>
          <Select
            labelId="support-status-filter"
            label="สถานะ deployment"
            value={statusFilter}
            onChange={(e) => setStatusFilter(e.target.value as 'all' | 'deployed' | 'pending')}
          >
            <MenuItem value="all">ทั้งหมด</MenuItem>
            <MenuItem value="deployed">Deployed</MenuItem>
            <MenuItem value="pending">Pending Deployment</MenuItem>
          </Select>
        </FormControl>
        <TextField
          label="สร้างตั้งแต่"
          type="date"
          size="small"
          value={createdFrom}
          onChange={(e) => setCreatedFrom(e.target.value)}
          InputLabelProps={{ shrink: true }}
          sx={{ minWidth: 160 }}
        />
        <TextField
          label="ถึงวันที่"
          type="date"
          size="small"
          value={createdTo}
          onChange={(e) => setCreatedTo(e.target.value)}
          InputLabelProps={{ shrink: true }}
          sx={{ minWidth: 160 }}
        />
      </Box>

      <AdminOrganizationsTable
        variant="support"
        data={filteredOrganizations as OrganizationWithCreator[]}
        loading={loading}
        onRowClick={handleRowClick}
      />

      <Snackbar
        open={Boolean(errorMessage)}
        autoHideDuration={6000}
        onClose={() => setErrorMessage(null)}
        anchorOrigin={{ vertical: 'bottom', horizontal: 'right' }}
      >
        <Alert severity="error" onClose={() => setErrorMessage(null)} sx={{ width: '100%' }}>
          {errorMessage}
        </Alert>
      </Snackbar>
    </Box>
  )
}
