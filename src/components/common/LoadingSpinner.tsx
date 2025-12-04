'use client'

import React from 'react'
import { Box, CircularProgress, Typography } from '@mui/material'

interface LoadingSpinnerProps {
  message?: string
  size?: number
  thickness?: number
  minHeight?: string | number
}

export default function LoadingSpinner({ 
  message = 'Loading...', 
  size = 40, 
  thickness = 4,
  minHeight = '200px'
}: LoadingSpinnerProps) {
  return (
    <Box 
      sx={{ 
        display: 'flex', 
        flexDirection: 'column',
        justifyContent: 'center', 
        alignItems: 'center', 
        minHeight,
        gap: 2,
        p: 3
      }}
    >
      <CircularProgress size={size} thickness={thickness} />
      <Typography variant="body2" color="text.secondary">
        {message}
      </Typography>
    </Box>
  )
}





