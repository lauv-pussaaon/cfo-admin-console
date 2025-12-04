'use client'

import { Box, Container, Typography, Button, Paper } from '@mui/material'
import { 
  Home as HomeIcon, 
  Login as LoginIcon,
  ErrorOutline as ErrorOutlineIcon
} from '@mui/icons-material'
import { useRouter } from 'next/navigation'
import { useAuth } from '@/contexts/AuthContext'
import AdminConsoleHeader from '@/components/AdminConsoleHeader'

export default function NotFoundPage() {
  const router = useRouter()
  const { user, logout } = useAuth()

  const handleGoHome = () => {
    if (user) {
      router.push('/admin-console')
    } else {
      router.push('/login')
    }
  }

  const handleClearSession = () => {
    logout()
    router.push('/login')
  }

  return (
    <Box sx={{ flexGrow: 1, minHeight: '100vh', backgroundColor: 'background.default' }}>
      <AdminConsoleHeader />
      <Container maxWidth="md" sx={{ py: 8 }}>
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
            sx={{ mb: 3, maxWidth: 500, mx: 'auto', lineHeight: 1.7 }}
          >
            หน้าที่คุณกำลังพยายามเข้าถึงไม่มีอยู่หรือคุณไม่มีสิทธิ์เข้าถึงหน้านี้
          </Typography>

          <Box sx={{ display: 'flex', gap: 2, justifyContent: 'center', flexWrap: 'wrap', mt: 4 }}>
            <Button
              variant="contained"
              size="large"
              startIcon={<HomeIcon />}
              onClick={handleGoHome}
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

