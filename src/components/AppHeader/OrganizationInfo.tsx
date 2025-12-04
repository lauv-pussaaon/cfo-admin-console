'use client'

import { Box, Typography, IconButton } from '@mui/material'
import { Business as BusinessIcon, SwapHoriz as SwapHorizIcon } from '@mui/icons-material'
import type { User } from '@/lib/api/types'

interface OrganizationInfoProps {
  organizationName?: string | null
  businessUnitName?: string | null
  hasMultipleOrgs: boolean
  user: User | null
  onOrgSwitch: () => void
  onBuSwitch: () => void
}

export default function OrganizationInfo({
  organizationName,
  businessUnitName,
  hasMultipleOrgs,
  user,
  onOrgSwitch,
  onBuSwitch,
}: OrganizationInfoProps) {
  if (!organizationName && !businessUnitName) return null

  return (
    <Box sx={{ display: 'flex', alignItems: 'center', gap: 0.5, mt: 0.5 }}>
      <Typography variant="caption" sx={{ color: 'text.secondary', fontSize: '0.7rem' }}>
        {organizationName && `Organization: ${organizationName}`}
        {organizationName && businessUnitName && ' | '}
        {businessUnitName && `Business Unit: ${businessUnitName}`}
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
      {businessUnitName && user && (
        <IconButton
          size="small"
          onClick={onBuSwitch}
          sx={{ p: 0.25, color: 'text.secondary', '&:hover': { color: 'primary.main', backgroundColor: 'action.hover' } }}
          title="Switch Business Unit"
        >
          <SwapHorizIcon fontSize="small" />
        </IconButton>
      )}
    </Box>
  )
}

