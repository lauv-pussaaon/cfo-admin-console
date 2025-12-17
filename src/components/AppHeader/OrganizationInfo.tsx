'use client'

import { Box, Typography, IconButton } from '@mui/material'
import { Business as BusinessIcon } from '@mui/icons-material'
import type { User } from '@/lib/api/types'

interface OrganizationInfoProps {
  organizationName?: string | null
  hasMultipleOrgs: boolean
  user: User | null
  onOrgSwitch: () => void
}

export default function OrganizationInfo({
  organizationName,
  hasMultipleOrgs,
  user,
  onOrgSwitch,
}: OrganizationInfoProps) {
  if (!organizationName) return null

  return (
    <Box sx={{ display: 'flex', alignItems: 'center', gap: 0.5, mt: 0.5 }}>
      <Typography variant="caption" sx={{ color: 'text.secondary', fontSize: '0.7rem' }}>
        {organizationName && `Organization: ${organizationName}`}
      </Typography>
      {organizationName && hasMultipleOrgs && user && (
        <IconButton
          size="small"
          onClick={onOrgSwitch}
          sx={{ p: 0.25, color: 'text.secondary', '&:hover': { color: 'primary.main', backgroundColor: 'action.hover' } }}
          title="Switch Organization"
        >
          <BusinessIcon fontSize="small" />
        </IconButton>
      )}
    </Box>
  )
}

