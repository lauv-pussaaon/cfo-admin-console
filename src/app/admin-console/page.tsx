'use client'

import { useEffect, useMemo } from 'react'
import { useRouter } from 'next/navigation'
import { Box, Container, Typography, Grid, Card, CardContent } from '@mui/material'
import {
  Business as BusinessIcon,
  People as PeopleIcon,
  Analytics as AnalyticsIcon,
  SupportAgent as SupportAgentIcon,
  HowToReg as HowToRegIcon,
} from '@mui/icons-material'
import { useAuth } from '@/contexts/AuthContext'
import { canManageOrganizations, isAdmin, isConsult, isAudit, isSupport } from '@/lib/permissions'
import { getAdminNavItemByPath } from '@/constants/admin-console-nav'
import SupportClientsDashboard from '@/components/admin/SupportClientsDashboard'

interface DashboardCardConfig {
  path: string
  icon: React.ReactNode
  visible: boolean
}

function DashboardCard ({
  title,
  description,
  icon,
  onClick,
}: {
  title: string
  description: string
  icon: React.ReactNode
  onClick: () => void
}) {
  return (
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
      onClick={onClick}
    >
      <CardContent>
        <Box sx={{ color: 'primary.main', mb: 2 }}>{icon}</Box>
        <Typography variant="h6" fontWeight="bold" gutterBottom>
          {title}
        </Typography>
        <Typography variant="body2" color="text.secondary">
          {description}
        </Typography>
      </CardContent>
    </Card>
  )
}

export default function AdminConsolePage () {
  const { user, isLoading } = useAuth()
  const router = useRouter()

  useEffect(() => {
    if (!isLoading && user && (isConsult(user) || isAudit(user))) {
      router.push('/admin-console/organizations')
    }
  }, [user, isLoading, router])

  const cards = useMemo((): DashboardCardConfig[] => {
    if (!user) return []

    return [
      {
        path: '/admin-console/organizations',
        icon: <BusinessIcon sx={{ fontSize: 48 }} />,
        visible: canManageOrganizations(user),
      },
      {
        path: '/admin-console/support-clients',
        icon: <SupportAgentIcon sx={{ fontSize: 48 }} />,
        visible: isAdmin(user),
      },
      {
        path: '/admin-console/trial-requests',
        icon: <HowToRegIcon sx={{ fontSize: 48 }} />,
        visible: isAdmin(user),
      },
      {
        path: '/admin-console/users',
        icon: <PeopleIcon sx={{ fontSize: 48 }} />,
        visible: isAdmin(user),
      },
      {
        path: '/admin-console/analytics',
        icon: <AnalyticsIcon sx={{ fontSize: 48 }} />,
        visible: isAdmin(user),
      },
    ]
  }, [user])

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

  if (user && isSupport(user)) {
    return <SupportClientsDashboard />
  }

  if (user && (isConsult(user) || isAudit(user))) {
    return null
  }

  return (
    <Container maxWidth="lg" sx={{ py: 4 }}>
      <Box sx={{ mb: 4 }}>
        <Typography variant="h4" fontWeight="bold" gutterBottom>
          แดชบอร์ด
        </Typography>
        <Typography variant="body1" color="text.secondary">
          เลือกเมนูด้านล่างเพื่อจัดการระบบและข้อมูลลูกค้า
        </Typography>
      </Box>

      <Grid container spacing={3}>
        {cards
          .filter((card) => card.visible)
          .map((card) => {
            const navItem = getAdminNavItemByPath(card.path)
            if (!navItem) return null

            return (
              <Grid item xs={12} sm={6} md={4} key={card.path}>
                <DashboardCard
                  title={navItem.title}
                  description={navItem.description}
                  icon={card.icon}
                  onClick={() => router.push(card.path)}
                />
              </Grid>
            )
          })}
      </Grid>
    </Container>
  )
}
