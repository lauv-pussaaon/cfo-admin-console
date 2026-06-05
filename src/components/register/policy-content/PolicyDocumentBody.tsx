'use client'

import { Box, Divider, Typography } from '@mui/material'
import PolicyBlockRenderer from './PolicyBlockRenderer'
import PolicySectionView from './PolicySectionView'
import type { PolicyContent } from './types'

interface PolicyDocumentBodyProps {
  content: PolicyContent
}

export default function PolicyDocumentBody({ content }: PolicyDocumentBodyProps) {
  const { header, sections, footerBlocks } = content

  return (
    <Box
      sx={{
        maxWidth: 800,
        mx: 'auto',
        color: 'text.primary',
        fontSize: '0.95rem',
      }}
    >
      <Box sx={{ textAlign: 'center', mb: 3 }}>
        <Typography variant="h5" component="h1" fontWeight={700} gutterBottom>
          {header.title}
        </Typography>
        {header.subtitle && (
          <Typography variant="body1" color="text.secondary" gutterBottom>
            {header.subtitle}
          </Typography>
        )}
        {header.provider && (
          <Typography variant="body2" color="text.secondary">
            {header.provider}
          </Typography>
        )}
        {header.effectiveDate && (
          <Typography variant="body2" color="text.secondary">
            {header.effectiveDate}
          </Typography>
        )}
        {header.version && (
          <Typography variant="body2" color="text.secondary">
            {header.version}
          </Typography>
        )}
      </Box>

      <Divider sx={{ mb: 3 }} />

      {sections.map((section) => (
        <PolicySectionView key={section.number} section={section} />
      ))}

      {footerBlocks && footerBlocks.length > 0 && (
        <Box sx={{ mt: 2 }}>
          <PolicyBlockRenderer blocks={footerBlocks} />
        </Box>
      )}
    </Box>
  )
}
