'use client'

import React from 'react'
import { Box, Container } from '@mui/material'
import Sidebar from '@/components/admin/Sidebar'
import AdminConsoleHeader from '@/components/AdminConsoleHeader'

export default function AdminConsoleLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <Box sx={{ display: 'flex', minHeight: '100vh', backgroundColor: 'background.default' }}>
      <Sidebar />
      <Box 
        component="main" 
        sx={{ 
          flexGrow: 1, 
          display: 'flex', 
          flexDirection: 'column',
          minWidth: 0, // Prevent flex items from overflowing
          overflowX: 'hidden',
          backgroundColor: 'background.default',
        }}
      >
        <AdminConsoleHeader />
        <Container 
          maxWidth={false} 
          sx={{  
            px: { xs: 2, sm: 3, md: 4 },
            flexGrow: 1,
            display: 'flex',
            flexDirection: 'column',
          }}
        >
          <Box className="animate-fade-in" sx={{ flexGrow: 1 }}>
            {children}
          </Box>
        </Container>
      </Box>
    </Box>
  )
}

