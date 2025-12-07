'use client'

import { Box, Typography, AppBar, Toolbar } from '@mui/material'
import { useRouter } from 'next/navigation'
import { useAuth } from '@/contexts/AuthContext'
import CFOLogo from './CFOLogo'
import UserMenu from './AppHeader/UserMenu'

export default function AdminConsoleHeader() {
  const { user, logout } = useAuth()
  const router = useRouter()

  const handleLogout = () => {
    logout()
    router.push('/login')
  }

  return (
    <AppBar position="static" elevation={0} sx={{ backgroundColor: 'white', borderBottom: '1px solid #e5e7eb', boxShadow: '0 1px 3px rgba(0, 0, 0, 0.1)' }}>
      <Toolbar sx={{ py: 2, px: 3, minHeight: 80 }}>
        <Box sx={{ display: 'flex', alignItems: 'center', flexGrow: 1 }}>
          <CFOLogo size={48} color="#10b981" />
          <Box sx={{ ml: 2 }}>
            <Typography variant="h5" component="div" sx={{ fontWeight: 700, color: 'text.primary', lineHeight: 1.2 }}>
              {`IdeaCarb - ${user?.role} Console`}
            </Typography>
          </Box>
        </Box>

        <Box sx={{ display: 'flex', alignItems: 'center', gap: 2 }}>
          <UserMenu
            user={user}
            onLogout={handleLogout}
          />
        </Box>
      </Toolbar>
    </AppBar>
  )
}

