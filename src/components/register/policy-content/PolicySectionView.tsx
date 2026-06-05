'use client'

import { Box, Typography } from '@mui/material'
import PolicyBlockRenderer from './PolicyBlockRenderer'
import type { PolicySection } from './types'

interface PolicySectionViewProps {
  section: PolicySection
}

export default function PolicySectionView({ section }: PolicySectionViewProps) {
  return (
    <Box sx={{ mb: 3 }}>
      <Typography variant="h6" component="h2" fontWeight={700} sx={{ mb: 1.5, fontSize: '1.05rem' }}>
        {section.number}. {section.title}
      </Typography>
      <PolicyBlockRenderer blocks={section.blocks} />
    </Box>
  )
}
