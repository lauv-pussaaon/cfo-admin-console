'use client'

import { useEffect } from 'react'
import { useRouter } from 'next/navigation'
import { Box, CircularProgress } from '@mui/material'
import SupportClientsDashboard from '@/components/admin/SupportClientsDashboard'
import { useAuth } from '@/contexts/AuthContext'
import { canAccessSupportChat } from '@/lib/permissions'

export default function SupportClientsPage () {
  const { user, isLoading } = useAuth()
  const router = useRouter()

  useEffect(() => {
    if (!isLoading && user && !canAccessSupportChat(user)) {
      router.replace('/admin-console')
    }
  }, [isLoading, user, router])

  if (isLoading) {
    return (
      <Box sx={{ minHeight: '50vh', display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
        <CircularProgress />
      </Box>
    )
  }

  if (user && !canAccessSupportChat(user)) {
    return null
  }

  return <SupportClientsDashboard />
}

