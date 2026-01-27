'use client'

import { useEffect } from 'react'
import { useRouter } from 'next/navigation'
import { Box, Container, Typography, Grid, Card, CardContent } from '@mui/material'
import {
  Business as BusinessIcon,
  People as PeopleIcon,
  Analytics as AnalyticsIcon
} from '@mui/icons-material'
import { useAuth } from '@/contexts/AuthContext'
import { canManageOrganizations, isAdmin, isConsult, isAudit } from '@/lib/permissions'

export default function AdminConsolePage() {
  const { user, isLoading } = useAuth()
  const router = useRouter()

  // Redirect Consult and Audit users to organizations page (similar to Dealers)
  useEffect(() => {
    if (!isLoading && user && (isConsult(user) || isAudit(user))) {
      router.push('/admin-console/organizations')
    }
  }, [user, isLoading, router])

  if (isLoading) {
    return (
      <Box
        sx={{
          display: 'flex',
          alignItems: 'center',
          justifyContent: 'center',
          minHeight: '100vh',
        }}
      >
        <Typography>Loading...</Typography>
      </Box>
    )
  }

  // Don't render dashboard for Consult/Audit (they're redirected)
  if (user && (isConsult(user) || isAudit(user))) {
    return null
  }

  return (
    <Container maxWidth="lg" sx={{ py: 4 }}>
        <Grid container spacing={3}>
          {canManageOrganizations(user) && <Grid item xs={12} sm={6} md={4}>
            <Card
              sx={{
                height: '100%',
                cursor: 'pointer',
                transition: 'all 0.2s',
                '&:hover': {
                  transform: 'translateY(-4px)',
                  boxShadow: 4,
                },
              }}
              onClick={() => router.push('/admin-console/organizations')}
            >
              <CardContent>
                <BusinessIcon sx={{ fontSize: 48, color: 'primary.main', mb: 2 }} />
                <Typography variant="h6" fontWeight="bold" gutterBottom>
                  Clients
                </Typography>
              </CardContent>
            </Card>
          </Grid>
          }

          {isAdmin(user) && <Grid item xs={12} sm={6} md={4}>
            <Card
              sx={{
                height: '100%',
                cursor: 'pointer',
                transition: 'all 0.2s',
                '&:hover': {
                  transform: 'translateY(-4px)',
                  boxShadow: 4,
                },
              }}
              onClick={() => router.push('/admin-console/users')}
            >
              <CardContent>
                <PeopleIcon sx={{ fontSize: 48, color: 'primary.main', mb: 2 }} />
                <Typography variant="h6" fontWeight="bold" gutterBottom>
                  Users Management
                </Typography>
              </CardContent>
            </Card>
          </Grid>}

          {isAdmin(user) && <Grid item xs={12} sm={6} md={4}>
            <Card
              sx={{
                height: '100%',
                cursor: 'pointer',
                transition: 'all 0.2s',
                '&:hover': {
                  transform: 'translateY(-4px)',
                  boxShadow: 4,
                },
              }}
              onClick={() => router.push('/admin-console/analytics')}
            >
              <CardContent>
                <AnalyticsIcon sx={{ fontSize: 48, color: 'primary.main', mb: 2 }} />
                <Typography variant="h6" fontWeight="bold" gutterBottom>
                  Client Analytics
                </Typography>
              </CardContent>
            </Card>
          </Grid>}
        </Grid>
    </Container>
  )
}



