'use client'

import { useEffect, useState, type ReactNode } from 'react'
import NextLink from 'next/link'
import {
  Box,
  Button,
  Chip,
  CircularProgress,
  Divider,
  Drawer,
  IconButton,
  Link,
  Typography,
} from '@mui/material'
import {
  Close as CloseIcon,
  ChatBubbleOutline as ChatBubbleOutlineIcon,
  OpenInNew as OpenInNewIcon,
} from '@mui/icons-material'
import { authenticatedAdminFetch } from '@/lib/api/admin-fetch'
import type { OrganizationWithCreator } from '@/lib/api/organizations'
import { DEFAULT_ACCOUNT_TYPE } from '@/types/account-types'
import { formatPackagePeriod } from '@/types/package-periods'

interface SupportClientContextDrawerProps {
  open: boolean
  onClose: () => void
  organization: OrganizationWithCreator | null
  onOpenChat: (organizationId: string) => void
}

interface ClientUsageSummary {
  domain: string | null
  unique_users: number
  total_page_views: number
  last_activity_date: string | null
  days: number
}

function InfoRow ({ label, value }: { label: string; value: ReactNode }) {
  return (
    <Box sx={{ display: 'flex', flexDirection: 'column', gap: 0.25 }}>
      <Typography variant="caption" color="text.secondary">
        {label}
      </Typography>
      <Typography variant="body2" sx={{ wordBreak: 'break-word' }}>
        {value || '—'}
      </Typography>
    </Box>
  )
}

export default function SupportClientContextDrawer ({
  open,
  onClose,
  organization,
  onOpenChat,
}: SupportClientContextDrawerProps) {
  const [usage, setUsage] = useState<ClientUsageSummary | null>(null)
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)

  useEffect(() => {
    if (!open || !organization?.id) return

    let cancelled = false

    const loadUsage = async () => {
      try {
        setLoading(true)
        setError(null)
        setUsage(null)
        const response = await authenticatedAdminFetch(
          `/api/support/staff/client-usage?organization_id=${encodeURIComponent(organization.id)}`
        )
        if (!response.ok) {
          throw new Error('Failed to load usage')
        }
        const payload = await response.json()
        if (!cancelled) {
          setUsage(payload.data ?? null)
        }
      } catch (err) {
        console.error(err)
        if (!cancelled) {
          setError('ไม่สามารถโหลดสถิติการใช้งานได้')
        }
      } finally {
        if (!cancelled) {
          setLoading(false)
        }
      }
    }

    loadUsage()
    return () => {
      cancelled = true
    }
  }, [open, organization?.id])

  const packageLabel = organization
    ? formatPackagePeriod(organization.package_start ?? null, organization.package_end ?? null)
    : '—'

  return (
    <Drawer
      anchor="right"
      open={open}
      onClose={onClose}
      sx={{
        zIndex: 1400,
        '& .MuiDrawer-paper': {
          width: { xs: '100%', sm: 420 },
          maxWidth: '100%',
          height: '100%',
          display: 'flex',
          flexDirection: 'column',
        },
      }}
    >
      <Box sx={{ p: 2, borderBottom: 1, borderColor: 'divider' }}>
        <Box sx={{ display: 'flex', alignItems: 'flex-start', justifyContent: 'space-between', gap: 1 }}>
          <Box sx={{ minWidth: 0 }}>
            <Typography variant="h6" sx={{ fontWeight: 700 }}>
              {organization?.name ?? 'Client'}
            </Typography>
            <Box sx={{ display: 'flex', alignItems: 'center', gap: 1, mt: 0.75, flexWrap: 'wrap' }}>
              <Typography variant="body2" color="text.secondary">
                {organization?.code || '—'}
              </Typography>
              {organization && (
                <Chip
                  size="small"
                  label={organization.is_initialized ? 'Deployed' : 'Pending'}
                  color={organization.is_initialized ? 'success' : 'warning'}
                />
              )}
            </Box>
          </Box>
          <IconButton size="small" onClick={onClose}>
            <CloseIcon />
          </IconButton>
        </Box>
        {organization && (
          <Box sx={{ display: 'flex', gap: 1, mt: 2 }}>
            <Button
              size="small"
              variant="contained"
              startIcon={<ChatBubbleOutlineIcon />}
              onClick={() => onOpenChat(organization.id)}
            >
              Open chat
            </Button>
            <Button
              size="small"
              variant="outlined"
              endIcon={<OpenInNewIcon />}
              component={NextLink}
              href={`/admin-console/organizations/${organization.id}`}
            >
              Org detail
            </Button>
          </Box>
        )}
      </Box>

      <Box sx={{ flex: 1, overflowY: 'auto', p: 2, display: 'flex', flexDirection: 'column', gap: 2.5 }}>
        <Box>
          <Typography variant="subtitle2" sx={{ mb: 1.5, fontWeight: 700 }}>
            Snapshot
          </Typography>
          <Box sx={{ display: 'grid', gap: 1.5 }}>
            <InfoRow label="Client Admin Email" value={organization?.factory_admin_email} />
            <InfoRow
              label="ประเภทบัญชี"
              value={organization?.account_type || DEFAULT_ACCOUNT_TYPE}
            />
            <InfoRow label="แพ็กเกจ" value={packageLabel} />
            <InfoRow label="จำนวนผู้ใช้" value={organization?.userCount ?? 0} />
            <InfoRow
              label="App URL"
              value={
                organization?.app_url ? (
                  <Link href={organization.app_url} target="_blank" rel="noopener noreferrer">
                    {organization.app_url}
                  </Link>
                ) : (
                  '—'
                )
              }
            />
          </Box>
        </Box>

        <Divider />

        <Box>
          <Typography variant="subtitle2" sx={{ mb: 1.5, fontWeight: 700 }}>
            Usage (7 วันล่าสุด)
          </Typography>
          {loading && (
            <Box sx={{ display: 'flex', justifyContent: 'center', py: 3 }}>
              <CircularProgress size={28} />
            </Box>
          )}
          {!loading && error && (
            <Typography variant="body2" color="error">
              {error}
            </Typography>
          )}
          {!loading && !error && usage && !usage.domain && (
            <Typography variant="body2" color="text.secondary">
              ยังไม่มี domain สำหรับติดตามการใช้งาน (ต้องมี App URL)
            </Typography>
          )}
          {!loading && !error && usage?.domain && (
            <Box sx={{ display: 'grid', gap: 1.5 }}>
              <InfoRow label="Domain" value={usage.domain} />
              <InfoRow label="Unique users" value={usage.unique_users} />
              <InfoRow label="Page views" value={usage.total_page_views} />
              <InfoRow
                label="Last activity"
                value={usage.last_activity_date || 'ไม่มีข้อมูล'}
              />
            </Box>
          )}
        </Box>
      </Box>
    </Drawer>
  )
}
