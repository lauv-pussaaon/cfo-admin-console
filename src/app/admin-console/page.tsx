'use client'

import { useMemo } from 'react'
import { useRouter } from 'next/navigation'
import { Box, Container, Typography, Grid, Card, CardContent } from '@mui/material'
import {
  Business as BusinessIcon,
  People as PeopleIcon,
  Analytics as AnalyticsIcon,
  SupportAgent as SupportAgentIcon,
  HowToReg as HowToRegIcon,
  Science as ScienceIcon,
  ViewModule as ViewModuleIcon,
} from '@mui/icons-material'
import { useAuth } from '@/contexts/AuthContext'
import { getAdminNavItemByPath, getDashboardNavItemsForRole } from '@/constants/admin-console-nav'

const CARD_ICONS: Record<string, React.ReactNode> = {
  '/admin-console/organizations': <BusinessIcon sx={{ fontSize: 48 }} />,
  '/admin-console/trial-requests': <HowToRegIcon sx={{ fontSize: 48 }} />,
  '/admin-console/support-clients': <SupportAgentIcon sx={{ fontSize: 48 }} />,
  '/admin-console/users': <PeopleIcon sx={{ fontSize: 48 }} />,
  '/admin-console/analytics': <AnalyticsIcon sx={{ fontSize: 48 }} />,
  '/admin-console/emission-resources': <ScienceIcon sx={{ fontSize: 48 }} />,
  '/admin-console/emission-templates': <ViewModuleIcon sx={{ fontSize: 48 }} />,
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

  const cards = useMemo(() => {
    if (!user) return []
    return getDashboardNavItemsForRole(user.role)
      .filter((item) => item.path !== '/admin-console')
      .map((item) => ({
        path: item.path,
        icon: CARD_ICONS[item.path] ?? <BusinessIcon sx={{ fontSize: 48 }} />,
      }))
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
        {cards.map((card) => {
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
