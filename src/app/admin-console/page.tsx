'use client'

import { useRouter } from 'next/navigation'
import { Box, Container, Typography, Grid, Card, CardContent } from '@mui/material'
import {
  Business as BusinessIcon,
  People as PeopleIcon,
  Settings as SettingsIcon,
} from '@mui/icons-material'
import { useAuth } from '@/contexts/AuthContext'
import { isAdmin, isAudit, isDealer } from '@/lib/permissions'

export default function AdminConsolePage() {
  const { user, isLoading } = useAuth()
  const router = useRouter()

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

  return (
    <Container maxWidth="lg" sx={{ py: 4 }}>
        <Typography variant="h4" fontWeight="bold" gutterBottom>
          {isAudit(user) ? 'Audit Console' : 'Admin Console'}
        </Typography>

        <Grid container spacing={3}>
          {isAudit(user) && <Grid item xs={12} sm={6} md={4}>
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
        </Grid>
    </Container>
  )
}



