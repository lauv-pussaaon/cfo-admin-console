'use client'

import { Box, Container, Typography, Button, Paper } from '@mui/material'
import { Home as HomeIcon, ErrorOutline as ErrorOutlineIcon } from '@mui/icons-material'
import Link from 'next/link'

// This is the special not-found.tsx file that Next.js uses for automatic 404s
// For programmatic navigation to /not-found, see app/not-found/page.tsx
export default function NotFound() {

  return (
    <Box sx={{ flexGrow: 1, minHeight: '100vh', backgroundColor: 'background.default', display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
      <Container maxWidth="sm">
        <Paper 
          elevation={0}
          sx={{ 
            p: 6, 
            textAlign: 'center',
            borderRadius: 3,
            border: '1px solid',
            borderColor: 'divider',
            backgroundColor: 'background.paper'
          }}
        >
          <Box sx={{ mb: 4 }}>
            <ErrorOutlineIcon 
              sx={{ 
                fontSize: '6rem', 
                color: 'error.main', 
                mb: 2,
                opacity: 0.8
              }} 
            />
            <Typography 
              variant="h1" 
              component="h1" 
              sx={{ 
                fontSize: '4rem', 
                fontWeight: 700, 
                color: 'text.secondary', 
                mb: 2 
              }}
            >
              404
            </Typography>
          </Box>

          <Typography 
            variant="h4" 
            component="h2" 
            fontWeight="bold" 
            gutterBottom
            sx={{ mb: 2 }}
          >
            หน้าที่คุณกำลังมองหาไม่พบ
          </Typography>

          <Typography 
            variant="body1" 
            color="text.secondary" 
            sx={{ mb: 4, maxWidth: 500, mx: 'auto', lineHeight: 1.7 }}
          >
            หน้าที่คุณกำลังพยายามเข้าถึงไม่มีอยู่หรือถูกลบไปแล้ว
          </Typography>

          <Box sx={{ display: 'flex', gap: 2, justifyContent: 'center', flexWrap: 'wrap' }}>
            <Button
              variant="contained"
              size="large"
              startIcon={<HomeIcon />}
              component={Link}
              href="/"
              sx={{ textTransform: 'none', minWidth: 200 }}
            >
              กลับไปหน้าหลัก
            </Button>
          </Box>
        </Paper>
      </Container>
    </Box>
  )
}
