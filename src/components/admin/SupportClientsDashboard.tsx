'use client'

import { useState, useEffect, useCallback } from 'react'
import { useRouter } from 'next/navigation'
import {
  Box,
  Typography,
  TextField,
  Snackbar,
  Alert,
  FormControl,
  InputLabel,
  Select,
  MenuItem,
} from '@mui/material'
import { Search as SearchIcon } from '@mui/icons-material'
import AdminOrganizationsTable from '@/components/admin/AdminOrganizationsTable'
import SupportStaffChatDrawer from '@/components/admin/SupportStaffChatDrawer'
import { organizationService } from '@/lib/services'
import { useOrganizationsFilter } from '@/hooks/useOrganizationsFilter'
import type { OrganizationWithCreator } from '@/lib/api/organizations'
import { isExpectedError } from '@/lib/utils/errors'
import { authenticatedAdminFetch } from '@/lib/api/admin-fetch'
import { useAuth } from '@/contexts/AuthContext'
import { isAdmin } from '@/lib/permissions'

export default function SupportClientsDashboard () {
  const router = useRouter()
  const { user } = useAuth()
  const [organizations, setOrganizations] = useState<OrganizationWithCreator[]>([])
  const [loading, setLoading] = useState(true)
  const [errorMessage, setErrorMessage] = useState<string | null>(null)
  const [unreadByOrganization, setUnreadByOrganization] = useState<Record<string, boolean>>({})
  const [selectedOrganization, setSelectedOrganization] = useState<OrganizationWithCreator | null>(null)
  const [chatOpen, setChatOpen] = useState(false)

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

  const loadInbox = useCallback(async () => {
    try {
      const response = await authenticatedAdminFetch('/api/support/staff/inbox')
      if (!response.ok) return
      const payload = await response.json()
      const map: Record<string, boolean> = {}
      for (const row of payload.data ?? []) {
        map[row.organization_id] = Boolean(row.has_unread_from_client)
      }
      setUnreadByOrganization(map)
    } catch (error) {
      console.error('Failed to load support inbox:', error)
    }
  }, [])

  useEffect(() => {
    loadInbox()
    const poller = window.setInterval(() => {
      loadInbox()
    }, 15000)
    return () => {
      window.clearInterval(poller)
    }
  }, [loadInbox])

  const handleRowClick = (id: string) => {
    router.push(`/admin-console/organizations/${id}`)
  }

  const handleChatClick = (id: string) => {
    const org = organizations.find((item) => item.id === id)
    if (!org) return
    setSelectedOrganization(org)
    setChatOpen(true)
  }

  const handleChatRead = (organizationId: string) => {
    setUnreadByOrganization((prev) => ({
      ...prev,
      [organizationId]: false,
    }))
    loadInbox()
  }

  return (
    <Box sx={{ py: 2, width: '100%' }}>
      <Typography variant="h4" fontWeight="bold" sx={{ mb: 3 }}>
        {isAdmin(user) ? 'Support Clients' : 'ลูกค้า (ฝ่ายสนับสนุน)'}
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
        onChatClick={handleChatClick}
        unreadByOrganization={unreadByOrganization}
      />

      <SupportStaffChatDrawer
        open={chatOpen}
        onClose={() => setChatOpen(false)}
        organization={selectedOrganization ? { id: selectedOrganization.id, name: selectedOrganization.name } : null}
        onRead={handleChatRead}
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
