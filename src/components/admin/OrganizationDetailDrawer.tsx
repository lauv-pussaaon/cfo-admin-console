'use client'

import { type ReactNode } from 'react'
import NextLink from 'next/link'
import {
  Box,
  Button,
  Chip,
  Divider,
  Drawer,
  IconButton,
  Link,
  Typography,
} from '@mui/material'
import {
  Close as CloseIcon,
  Edit as EditIcon,
  Launch as LaunchIcon,
  OpenInNew as OpenInNewIcon,
} from '@mui/icons-material'
import type { OrganizationWithCreator } from '@/lib/api/organizations'
import type { OrganizationWithStats } from '@/types/database'
import { DEFAULT_ACCOUNT_TYPE } from '@/types/account-types'
import { formatPackagePeriod } from '@/types/package-periods'
import { CredentialField } from '@/components/admin/OrganizationCredentialField'

type OrganizationDetail = OrganizationWithStats | OrganizationWithCreator

interface OrganizationDetailDrawerProps {
  open: boolean
  onClose: () => void
  organization: OrganizationDetail | null
  onEdit?: (id: string) => void
  canEdit?: boolean
}

function InfoRow ({ label, value }: { label: string; value: ReactNode }) {
  return (
    <Box sx={{ display: 'flex', flexDirection: 'column', gap: 0.25 }}>
      <Typography variant="caption" color="text.secondary">
        {label}
      </Typography>
      <Typography variant="body2" component="div" sx={{ wordBreak: 'break-word' }}>
        {value ?? '—'}
      </Typography>
    </Box>
  )
}

export default function OrganizationDetailDrawer ({
  open,
  onClose,
  organization,
  onEdit,
  canEdit = false,
}: OrganizationDetailDrawerProps) {
  const packageLabel = organization
    ? formatPackagePeriod(organization.package_start ?? null, organization.package_end ?? null)
    : '—'

  const contactName =
    organization?.contact_first_name || organization?.contact_last_name
      ? `${organization?.contact_first_name || ''} ${organization?.contact_last_name || ''}`.trim()
      : null

  const userCount = organization && 'userCount' in organization ? organization.userCount : undefined

  return (
    <Drawer
      anchor="right"
      open={open}
      onClose={onClose}
      sx={{
        zIndex: 1300,
        '& .MuiDrawer-paper': {
          width: { xs: '100%', sm: 440 },
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
              {organization?.name ?? 'องค์กร'}
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
          <IconButton size="small" onClick={onClose} aria-label="ปิด">
            <CloseIcon />
          </IconButton>
        </Box>
        {organization && (
          <Box sx={{ display: 'flex', gap: 1, mt: 2, flexWrap: 'wrap' }}>
            {canEdit && onEdit && (
              <Button
                size="small"
                variant="contained"
                startIcon={<EditIcon />}
                onClick={() => onEdit(organization.id)}
              >
                แก้ไข
              </Button>
            )}
            <Button
              size="small"
              variant="outlined"
              endIcon={<OpenInNewIcon />}
              component={NextLink}
              href={`/admin-console/organizations/${organization.id}`}
            >
              หน้ารายละเอียด
            </Button>
          </Box>
        )}
      </Box>

      <Box sx={{ flex: 1, overflowY: 'auto', p: 2, display: 'flex', flexDirection: 'column', gap: 2.5 }}>
        <Box>
          <Typography variant="subtitle2" sx={{ mb: 1.5, fontWeight: 700 }}>
            ภาพรวม
          </Typography>
          <Box sx={{ display: 'grid', gap: 1.5 }}>
            <InfoRow
              label="ประเภทบัญชี"
              value={organization?.account_type || DEFAULT_ACCOUNT_TYPE}
            />
            <InfoRow label="แพ็กเกจ" value={packageLabel} />
            <InfoRow
              label="คำอธิบาย"
              value={organization?.description ? organization.description : '—'}
            />
            <InfoRow label="Client Admin Email" value={organization?.factory_admin_email || '—'} />
            <InfoRow
              label="สถานะ deploy"
              value={organization?.is_initialized ? 'Deployed' : 'Pending'}
            />
            {userCount !== undefined && (
              <InfoRow label="จำนวนผู้ใช้" value={userCount} />
            )}
            <InfoRow
              label="App URL"
              value={
                organization?.app_url ? (
                  <Link
                    href={organization.app_url}
                    target="_blank"
                    rel="noopener noreferrer"
                    sx={{ display: 'inline-flex', alignItems: 'center', gap: 0.5 }}
                  >
                    <LaunchIcon sx={{ fontSize: 16 }} />
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
            ผู้ติดต่อ
          </Typography>
          <Box sx={{ display: 'grid', gap: 1.5 }}>
            <InfoRow label="ชื่อ-นามสกุล" value={contactName || '—'} />
            <InfoRow label="เบอร์โทร" value={organization?.contact_phone || '—'} />
          </Box>
        </Box>

        <Divider />

        <Box>
          <Typography variant="subtitle2" sx={{ mb: 1.5, fontWeight: 700 }}>
            Instance login
          </Typography>
          <Box sx={{ display: 'grid', gap: 1.5 }}>
            <CredentialField label="ชื่อผู้ใช้" value={organization?.username} />
            <CredentialField label="รหัสผ่าน" value={organization?.password} masked />
          </Box>
        </Box>
      </Box>
    </Drawer>
  )
}
