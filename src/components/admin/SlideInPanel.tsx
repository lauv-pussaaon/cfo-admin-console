'use client'

import { type ReactNode } from 'react'
import { Box, Drawer, IconButton, Typography } from '@mui/material'
import { Close as CloseIcon } from '@mui/icons-material'

interface SlideInPanelProps {
  open: boolean
  onClose: () => void
  title: ReactNode
  subtitle?: ReactNode
  footer?: ReactNode
  children: ReactNode
}

export default function SlideInPanel ({
  open,
  onClose,
  title,
  subtitle,
  footer,
  children,
}: SlideInPanelProps) {
  return (
    <Drawer
      anchor="right"
      open={open}
      onClose={onClose}
      sx={{
        '& .MuiDrawer-paper': {
          width: { xs: '100%', sm: 440 },
          maxWidth: '100%',
          height: '100%',
          display: 'flex',
          flexDirection: 'column',
          backgroundColor: 'background.paper',
          color: 'text.primary',
          borderLeft: '1px solid',
          borderColor: 'divider',
        },
      }}
    >
      <Box sx={{ p: 2, borderBottom: 1, borderColor: 'divider' }}>
        <Box sx={{ display: 'flex', alignItems: 'flex-start', justifyContent: 'space-between', gap: 1 }}>
          <Box sx={{ minWidth: 0 }}>
            {typeof title === 'string' ? (
              <Typography variant="h6" sx={{ fontWeight: 700 }}>
                {title}
              </Typography>
            ) : (
              title
            )}
            {subtitle ? (
              <Box sx={{ mt: 0.75 }}>{subtitle}</Box>
            ) : null}
          </Box>
          <IconButton size="small" onClick={onClose} aria-label="Close">
            <CloseIcon />
          </IconButton>
        </Box>
      </Box>

      <Box sx={{ flex: 1, overflowY: 'auto', p: 2 }}>
        {children}
      </Box>

      {footer ? (
        <Box sx={{ p: 2, borderTop: 1, borderColor: 'divider' }}>
          {footer}
        </Box>
      ) : null}
    </Drawer>
  )
}
