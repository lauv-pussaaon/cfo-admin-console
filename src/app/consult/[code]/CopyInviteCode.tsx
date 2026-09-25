'use client'

import { useState } from 'react'
import { Box, Button, Typography } from '@mui/material'

export function CopyInviteCode ({ code }: { code: string }) {
  const [copied, setCopied] = useState(false)

  const copy = async () => {
    try {
      await navigator.clipboard.writeText(code)
      setCopied(true)
      setTimeout(() => setCopied(false), 2000)
    } catch (error) {
      console.error('Failed to copy invite code:', error)
    }
  }

  return (
    <Box sx={{ textAlign: 'center' }}>
      <Typography variant="caption" color="text.secondary">
        รหัสเชิญ
      </Typography>
      <Typography
        sx={{
          mt: 0.5,
          fontFamily: 'monospace',
          fontWeight: 700,
          fontSize: '1.05rem',
          letterSpacing: '0.02em',
          wordBreak: 'break-all',
        }}
      >
        {code}
      </Typography>
      <Button
        size="small"
        variant="outlined"
        onClick={copy}
        sx={{ mt: 1.5, textTransform: 'none', borderRadius: 2 }}
      >
        {copied ? 'คัดลอกแล้ว' : 'คัดลอก'}
      </Button>
    </Box>
  )
}
