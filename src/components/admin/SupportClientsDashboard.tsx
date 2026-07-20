'use client'

import { useState, useEffect, useCallback, useMemo } from 'react'
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
  Chip,
} from '@mui/material'
import { Search as SearchIcon } from '@mui/icons-material'
import OrganizationsTable, { type SupportInboxMeta } from '@/components/admin/OrganizationsTable'
import SupportStaffChatDrawer from '@/components/admin/SupportStaffChatDrawer'
import SupportClientContextDrawer from '@/components/admin/SupportClientContextDrawer'
import { organizationService } from '@/lib/services'
import { useOrganizationsFilter } from '@/hooks/useOrganizationsFilter'
import type { OrganizationWithCreator } from '@/lib/api/organizations'
import { isExpectedError } from '@/lib/utils/errors'
import { authenticatedAdminFetch } from '@/lib/api/admin-fetch'
import { useAuth } from '@/contexts/AuthContext'
import { isAdmin } from '@/lib/permissions'

type DrawerMode = 'chat' | 'usage' | null

function sortSupportOrganizations (
  organizations: OrganizationWithCreator[],
  inboxByOrganization: Record<string, SupportInboxMeta>
): OrganizationWithCreator[] {
  return organizations.slice().sort((a, b) => {
    const aAt = inboxByOrganization[a.id]?.last_message_at ?? null
    const bAt = inboxByOrganization[b.id]?.last_message_at ?? null

    if (aAt && bAt) {
      const byTime = new Date(bAt).getTime() - new Date(aAt).getTime()
      if (byTime !== 0) return byTime
      return a.name.localeCompare(b.name, 'th')
    }
    if (aAt && !bAt) return -1
    if (!aAt && bAt) return 1
    return a.name.localeCompare(b.name, 'th')
  })
}

export default function SupportClientsDashboard () {
  const { user } = useAuth()
  const [organizations, setOrganizations] = useState<OrganizationWithCreator[]>([])
  const [loading, setLoading] = useState(true)
  const [errorMessage, setErrorMessage] = useState<string | null>(null)
  const [inboxByOrganization, setInboxByOrganization] = useState<Record<string, SupportInboxMeta>>({})
  const [selectedOrganization, setSelectedOrganization] = useState<OrganizationWithCreator | null>(null)
  const [drawerMode, setDrawerMode] = useState<DrawerMode>(null)
  const [unreadOnly, setUnreadOnly] = useState(false)

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
      const map: Record<string, SupportInboxMeta> = {}
      for (const row of payload.data ?? []) {
        map[row.organization_id] = {
          has_unread_from_client: Boolean(row.has_unread_from_client),
          unread_count: Number(row.unread_count ?? 0),
          last_message_at: row.last_message_at ?? null,
          last_message_preview: row.last_message_preview ?? null,
        }
      }
      setInboxByOrganization(map)
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

  const unreadCount = useMemo(
    () => Object.values(inboxByOrganization).filter((entry) => entry.has_unread_from_client).length,
    [inboxByOrganization]
  )

  const sortedOrganizations = useMemo(() => {
    let list = filteredOrganizations as OrganizationWithCreator[]
    if (unreadOnly) {
      list = list.filter((org) => inboxByOrganization[org.id]?.has_unread_from_client)
    }
    return sortSupportOrganizations(list, inboxByOrganization)
  }, [filteredOrganizations, inboxByOrganization, unreadOnly])

  const openChat = (id: string) => {
    const org = organizations.find((item) => item.id === id)
    if (!org) return
    setSelectedOrganization(org)
    setDrawerMode('chat')
  }

  const openUsage = (id: string) => {
    const org = organizations.find((item) => item.id === id)
    if (!org) return
    setSelectedOrganization(org)
    setDrawerMode('usage')
  }

  const handleChatRead = useCallback((organizationId: string) => {
    setInboxByOrganization((prev) => ({
      ...prev,
      [organizationId]: {
        ...(prev[organizationId] ?? {
          has_unread_from_client: false,
          unread_count: 0,
          last_message_at: null,
          last_message_preview: null,
        }),
        has_unread_from_client: false,
        unread_count: 0,
      },
    }))
    loadInbox()
  }, [loadInbox])

  return (
    <Box sx={{ py: 2, width: '100%' }}>
      <Typography variant="h4" fontWeight="bold" sx={{ mb: 3 }}>
        {isAdmin(user) ? 'Support Clients' : 'ลูกค้า (ฝ่ายสนับสนุน)'}
      </Typography>

      <Box sx={{ display: 'flex', gap: 2, mb: 2, flexWrap: 'wrap', alignItems: 'center' }}>
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

      <Box sx={{ display: 'flex', gap: 1, mb: 2, alignItems: 'center' }}>
        <Chip
          label={`Unread (${unreadCount})`}
          color={unreadOnly ? 'error' : 'default'}
          variant={unreadOnly ? 'filled' : 'outlined'}
          onClick={() => setUnreadOnly((prev) => !prev)}
          sx={{ fontWeight: 600 }}
        />
      </Box>

      <OrganizationsTable
        variant="support"
        data={sortedOrganizations}
        loading={loading}
        onRowClick={openChat}
        onChatClick={openChat}
        onUsageClick={openUsage}
        inboxByOrganization={inboxByOrganization}
      />

      <SupportStaffChatDrawer
        open={drawerMode === 'chat'}
        onClose={() => setDrawerMode(null)}
        organization={selectedOrganization ? { id: selectedOrganization.id, name: selectedOrganization.name } : null}
        onRead={handleChatRead}
      />

      <SupportClientContextDrawer
        open={drawerMode === 'usage'}
        onClose={() => setDrawerMode(null)}
        organization={selectedOrganization}
        onOpenChat={(organizationId) => openChat(organizationId)}
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
