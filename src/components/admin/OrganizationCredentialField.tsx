'use client'

import { useState } from 'react'
import {
  Box,
  IconButton,
  Tooltip,
  Typography,
} from '@mui/material'
import {
  ContentCopy as CopyIcon,
  Visibility as VisibilityIcon,
  VisibilityOff as VisibilityOffIcon,
} from '@mui/icons-material'

export function CredentialField ({
  label,
  value,
  masked = false,
}: {
  label: string
  value: string | null | undefined
  masked?: boolean
}) {
  const [show, setShow] = useState(false)
  const [copied, setCopied] = useState(false)

  if (!value) {
    return (
      <Box>
        <Typography variant="caption" color="text.secondary" display="block" sx={{ mb: 0.5 }}>
          {label}
        </Typography>
        <Typography variant="body2">—</Typography>
      </Box>
    )
  }

  const handleCopy = async () => {
    try {
      await navigator.clipboard.writeText(value)
      setCopied(true)
      setTimeout(() => setCopied(false), 2000)
    } catch (error) {
      console.error('Failed to copy:', error)
    }
  }

  const display = masked && !show ? '••••••••' : value

  return (
    <Box>
      <Typography variant="caption" color="text.secondary" display="block" sx={{ mb: 0.5 }}>
        {label}
      </Typography>
      <Box sx={{ display: 'flex', alignItems: 'center', gap: 0.5, flexWrap: 'wrap' }}>
        <Typography variant="body2" sx={{ fontWeight: 500, fontFamily: masked ? 'monospace' : undefined, wordBreak: 'break-all' }}>
          {display}
        </Typography>
        {masked && (
          <IconButton size="small" onClick={() => setShow((v) => !v)} aria-label={show ? 'ซ่อน' : 'แสดง'}>
            {show ? <VisibilityOffIcon fontSize="small" /> : <VisibilityIcon fontSize="small" />}
          </IconButton>
        )}
        <Tooltip title={copied ? 'คัดลอกแล้ว' : 'คัดลอก'}>
          <IconButton size="small" onClick={handleCopy} aria-label="คัดลอก">
            <CopyIcon fontSize="small" />
          </IconButton>
        </Tooltip>
      </Box>
    </Box>
  )
}
