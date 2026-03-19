'use client'

import { Box, Typography, AppBar, Toolbar, Breadcrumbs, Link, Container } from '@mui/material'
import { useRouter, usePathname } from 'next/navigation'
import { useAuth } from '@/contexts/AuthContext'
import UserMenu from './AppHeader/UserMenu'
import NavigateNextIcon from '@mui/icons-material/NavigateNext'

export default function AdminConsoleHeader() {
  const { user, logout } = useAuth()
  const router = useRouter()
  const pathname = usePathname()

  const handleLogout = () => {
    logout()
    router.push('/login')
  }

  // Generate breadcrumbs based on pathname
  const pathnames = pathname.split('/').filter((x) => x)

  return (
    <AppBar 
      position="sticky" 
      elevation={0} 
      sx={{ 
        backgroundColor: 'rgba(255, 255, 255, 0.7)', 
        backdropFilter: 'blur(20px)',
        borderBottom: '1px solid rgba(226, 232, 240, 0.8)',
        zIndex: 1100,
        top: 0,
      }}
    >
      <Container maxWidth={false}>
        <Toolbar sx={{ py: 1.5, px: { xs: 1, sm: 2 }, minHeight: 72, justifyContent: 'space-between' }}>
          <Box sx={{ display: 'flex', flexDirection: 'column' }}>
            <Breadcrumbs 
              separator={<NavigateNextIcon fontSize="small" sx={{ color: 'text.secondary', opacity: 0.6 }} />}
              aria-label="breadcrumb"
              sx={{ mb: 0.5 }}
            >
              <Link
                underline="hover"
                color="inherit"
                href="/admin-console"
                onClick={(e) => {
                  e.preventDefault()
                  router.push('/admin-console')
                }}
                sx={{ 
                  fontSize: '0.75rem', 
                  fontWeight: 500, 
                  color: 'text.secondary',
                  '&:hover': { color: 'primary.main' }
                }}
              >
                ADMIN
              </Link>
              {pathnames.slice(1).map((value, index) => {
                const last = index === pathnames.length - 2
                const to = `/${pathnames.slice(0, index + 2).join('/')}`

                return last ? (
                  <Typography 
                    key={to} 
                    sx={{ 
                      fontSize: '0.75rem', 
                      fontWeight: 600, 
                      color: 'primary.main',
                      textTransform: 'uppercase',
                      letterSpacing: '0.05em'
                    }}
                  >
                    {value.replace(/-/g, ' ')}
                  </Typography>
                ) : (
                  <Link
                    key={to}
                    underline="hover"
                    color="inherit"
                    href={to}
                    onClick={(e) => {
                      e.preventDefault()
                      router.push(to)
                    }}
                    sx={{ 
                      fontSize: '0.75rem', 
                      fontWeight: 500, 
                      color: 'text.secondary',
                      textTransform: 'uppercase',
                      '&:hover': { color: 'primary.main' }
                    }}
                  >
                    {value.replace(/-/g, ' ')}
                  </Link>
                )
              })}
            </Breadcrumbs>
          </Box>

          <Box sx={{ display: 'flex', alignItems: 'center', gap: 2 }}>
            <Box sx={{ textAlign: 'right', display: { xs: 'none', md: 'block' }, mr: 1 }}>
              <Typography variant="subtitle2" sx={{ fontWeight: 700, lineHeight: 1 }}>
                {user?.name || 'Admin User'}
              </Typography>
              <Typography variant="caption" sx={{ color: 'text.secondary', fontWeight: 500 }}>
                {user?.role || 'Administrator'}
              </Typography>
            </Box>
            <UserMenu
              user={user}
              onLogout={handleLogout}
            />
          </Box>
        </Toolbar>
      </Container>
    </AppBar>
  )
}

