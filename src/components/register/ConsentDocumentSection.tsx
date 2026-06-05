'use client'

import Link from 'next/link'
import { Box, Button, Typography } from '@mui/material'
import { OpenInNew as OpenInNewIcon } from '@mui/icons-material'
import type { PolicyDocument } from './policy-documents'

interface ConsentDocumentSectionProps {
  document: PolicyDocument
}

export default function ConsentDocumentSection({ document }: ConsentDocumentSectionProps) {
  return (
    <Box
      sx={{
        p: 2,
        borderRadius: 2,
        border: '1px solid',
        borderColor: 'divider',
        bgcolor: 'background.paper',
      }}
    >
      <Typography variant="subtitle2" fontWeight={700} gutterBottom>
        {document.title}
      </Typography>
      <Typography variant="body2" color="text.secondary" sx={{ mb: 1.5 }}>
        &ldquo;{document.summary}&rdquo;
      </Typography>
      <Button
        component={Link}
        href={document.routePath}
        target="_blank"
        rel="noopener noreferrer"
        size="small"
        endIcon={<OpenInNewIcon sx={{ fontSize: 16 }} />}
        sx={{ textTransform: 'none', px: 0 }}
      >
        {document.readFullLabel}
      </Button>
    </Box>
  )
}
