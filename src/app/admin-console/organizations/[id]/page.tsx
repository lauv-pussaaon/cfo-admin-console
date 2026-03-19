'use client'

import { useEffect, useState, useCallback } from 'react'
import { useParams, useRouter } from 'next/navigation'
import Link from 'next/link'
import {
  Box,
  Button,
  Typography,
  Paper,
  Chip,
  Grid,
  CircularProgress,
  Link as MuiLink,
} from '@mui/material'
import { ArrowBack, Launch as LaunchIcon } from '@mui/icons-material'
import { useAuth } from '@/contexts/AuthContext'
import { isAdmin, isSupport, canManageOrganization } from '@/lib/permissions'
import { organizationService } from '@/lib/services'
import type { OrganizationWithCreator } from '@/lib/api/organizations'
import { isExpectedError } from '@/lib/utils/errors'

function DetailRow ({ label, value }: { label: string; value: React.ReactNode }) {
  return (
    <Grid item xs={12} sm={6}>
      <Typography variant="caption" color="text.secondary" display="block" sx={{ mb: 0.5 }}>
        {label}
      </Typography>
      <Box sx={{ fontWeight: 500 }}>{value ?? '—'}</Box>
    </Grid>
  )
}

export default function OrganizationDetailPage () {
  const params = useParams<{ id: string }>()
  const orgId = params.id
  const router = useRouter()
  const { user, isLoading: authLoading } = useAuth()
  const [org, setOrg] = useState<OrganizationWithCreator | null>(null)
  const [loading, setLoading] = useState(true)
  const [accessDenied, setAccessDenied] = useState(false)

  const load = useCallback(async () => {
    if (!orgId) return
    try {
      setLoading(true)
      const data = await organizationService.getOrganizationForAdminById(orgId)
      setOrg(data)
    } catch (error) {
      if (!isExpectedError(error)) {
        console.error('Failed to load organization:', error)
      }
      setOrg(null)
    } finally {
      setLoading(false)
    }
  }, [orgId])

  useEffect(() => {
    load()
  }, [load])

  useEffect(() => {
    let cancelled = false
    async function checkAccess () {
      if (authLoading || !user) return
      if (isAdmin(user) || isSupport(user)) {
        setAccessDenied(false)
        return
      }
      try {
        const ok = await canManageOrganization(user, orgId)
        if (!cancelled) setAccessDenied(!ok)
      } catch {
        if (!cancelled) setAccessDenied(true)
      }
    }
    checkAccess()
    return () => {
      cancelled = true
    }
  }, [user, authLoading, orgId])

  useEffect(() => {
    if (!authLoading && !user) {
      router.push('/login')
    }
  }, [user, authLoading, router])

  useEffect(() => {
    if (!authLoading && user && accessDenied) {
      router.replace('/admin-console')
    }
  }, [authLoading, user, accessDenied, router])

  if (authLoading || loading) {
    return (
      <Box sx={{ display: 'flex', justifyContent: 'center', alignItems: 'center', minHeight: 320 }}>
        <CircularProgress />
      </Box>
    )
  }

  if (!user || accessDenied) {
    return null
  }

  if (!org) {
    return (
      <Box sx={{ py: 2 }}>
        <Button component={Link} href="/admin-console" startIcon={<ArrowBack />} sx={{ mb: 2, textTransform: 'none' }}>
          กลับ
        </Button>
        <Typography color="text.secondary">ไม่พบองค์กร</Typography>
      </Box>
    )
  }

  const isInitialized = org.is_initialized

  return (
    <Box sx={{ py: 2, width: '100%', maxWidth: 960 }}>
      <Button
        component={Link}
        href={isSupport(user) ? '/admin-console' : '/admin-console/organizations'}
        startIcon={<ArrowBack />}
        sx={{ mb: 2, textTransform: 'none' }}
      >
        กลับ
      </Button>

      <Typography variant="h4" fontWeight="bold" sx={{ mb: 3 }}>
        {org.name}
      </Typography>

      <Paper elevation={0} sx={{ p: 3, border: '1px solid', borderColor: 'divider', borderRadius: 2 }}>
        <Typography variant="subtitle2" color="text.secondary" sx={{ mb: 2 }}>
          รายละเอียดลูกค้า (อ่านอย่างเดียว)
        </Typography>
        <Grid container spacing={3}>
          <DetailRow label="รหัสองค์กร" value={org.code || '—'} />
          <DetailRow
            label="สถานะ"
            value={
              <Chip
                label={isInitialized ? 'Deployed' : 'Pending Deployment'}
                color={isInitialized ? 'success' : 'warning'}
                size="small"
              />
            }
          />
          <Grid item xs={12}>
            <Typography variant="caption" color="text.secondary" display="block" sx={{ mb: 0.5 }}>
              คำอธิบาย
            </Typography>
            <Typography variant="body2" sx={{ whiteSpace: 'pre-wrap' }}>
              {org.description || '—'}
            </Typography>
          </Grid>
          <DetailRow label="Client Admin Email" value={org.factory_admin_email || '—'} />
          <DetailRow
            label="App URL"
            value={
              org.app_url ? (
                <MuiLink href={org.app_url} target="_blank" rel="noopener noreferrer" sx={{ display: 'inline-flex', alignItems: 'center', gap: 0.5 }}>
                  <LaunchIcon fontSize="small" />
                  {org.app_url}
                </MuiLink>
              ) : (
                '—'
              )
            }
          />
          <DetailRow label="จำนวนผู้ใช้ที่ผูกองค์กร" value={String(org.userCount)} />
          <DetailRow
            label="สร้างโดย"
            value={
              org.creator ? (
                <>
                  {org.creator.name}
                  <Typography component="span" variant="body2" color="text.secondary" display="block">
                    {org.creator.email} · {org.creator.role}
                  </Typography>
                </>
              ) : (
                '—'
              )
            }
          />
          <DetailRow
            label="Dealer"
            value={
              org.dealer ? (
                <>
                  {org.dealer.name}
                  <Typography component="span" variant="body2" color="text.secondary" display="block">
                    {org.dealer.email}
                  </Typography>
                </>
              ) : (
                'ไม่มี Dealer'
              )
            }
          />
          <DetailRow
            label="วันที่สร้าง"
            value={new Date(org.created_at).toLocaleString('th-TH', {
              year: 'numeric',
              month: 'short',
              day: 'numeric',
              hour: '2-digit',
              minute: '2-digit',
            })}
          />
          {org.initialized_at && (
            <DetailRow
              label="วันที่ deploy"
              value={new Date(org.initialized_at).toLocaleString('th-TH', {
                year: 'numeric',
                month: 'short',
                day: 'numeric',
                hour: '2-digit',
                minute: '2-digit',
              })}
            />
          )}
        </Grid>
      </Paper>
    </Box>
  )
}
