'use client'

import { useEffect, useMemo, useState } from 'react'
import { useRouter } from 'next/navigation'
import {
  Alert,
  Box,
  Button,
  CircularProgress,
  MenuItem,
  Stack,
  TextField,
  Typography,
} from '@mui/material'
import { Add as AddIcon } from '@mui/icons-material'
import { useAuth } from '@/contexts/AuthContext'
import { authenticatedAdminFetch } from '@/lib/api/admin-fetch'
import { isAdmin } from '@/lib/permissions'
import {
  adminPageShellSx,
  adminPageTitleSx,
  adminPrimaryButtonSx,
  adminSearchFieldSx,
} from '@/lib/admin-ui-styles'
import { bangkokToday } from '@/lib/platform-updates/document'
import { isWaitingForPublishDate } from '@/lib/platform-updates/live'
import type { PlatformUpdateRecord } from '@/lib/platform-updates/types'

type StatusFilter = 'all' | 'active' | 'inactive'

export default function PlatformUpdatesPage () {
  const { user, isLoading: authLoading } = useAuth()
  const router = useRouter()
  const [updates, setUpdates] = useState<PlatformUpdateRecord[]>([])
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)
  const [creating, setCreating] = useState(false)
  const [query, setQuery] = useState('')
  const [status, setStatus] = useState<StatusFilter>('all')
  const today = useMemo(() => bangkokToday(), [])

  useEffect(() => {
    if (!authLoading && user && !isAdmin(user)) router.replace('/admin-console')
  }, [authLoading, router, user])

  useEffect(() => {
    if (authLoading || !user || !isAdmin(user)) return
    let cancelled = false
    setLoading(true)
    authenticatedAdminFetch('/api/admin-console/platform-updates')
      .then(async (response) => {
        const body = await response.json()
        if (!response.ok) throw new Error(body.error ?? 'โหลดประกาศไม่สำเร็จ')
        if (!cancelled) setUpdates(body.updates ?? [])
      })
      .catch((err: unknown) => {
        if (!cancelled) setError(err instanceof Error ? err.message : 'โหลดประกาศไม่สำเร็จ')
      })
      .finally(() => {
        if (!cancelled) setLoading(false)
      })
    return () => { cancelled = true }
  }, [authLoading, user])

  const visible = useMemo(() => {
    const needle = query.trim().toLowerCase()
    return updates.filter((row) => {
      if (status !== 'all' && row.status !== status) return false
      if (!needle) return true
      return row.titleTh.toLowerCase().includes(needle) || row.titleEn.toLowerCase().includes(needle)
    })
  }, [query, status, updates])

  const createUpdate = async () => {
    setCreating(true)
    setError(null)
    try {
      const response = await authenticatedAdminFetch('/api/admin-console/platform-updates', { method: 'POST' })
      const body = await response.json()
      if (!response.ok) throw new Error(body.error ?? 'สร้างประกาศไม่สำเร็จ')
      router.push(`/admin-console/platform-updates/${body.update.id}`)
    } catch (err: unknown) {
      setError(err instanceof Error ? err.message : 'สร้างประกาศไม่สำเร็จ')
      setCreating(false)
    }
  }

  return (
    <Box sx={adminPageShellSx}>
      <Stack direction={{ xs: 'column', sm: 'row' }} spacing={2} sx={{ mb: 3, alignItems: { sm: 'center' } }}>
        <Typography variant="h4" sx={{ ...adminPageTitleSx, flexGrow: 1 }}>ประกาศอัปเดต</Typography>
        <Button
          variant="contained"
          startIcon={creating ? <CircularProgress size={16} color="inherit" /> : <AddIcon />}
          sx={adminPrimaryButtonSx}
          disabled={creating}
          onClick={() => { void createUpdate() }}
        >
          เพิ่มประกาศ
        </Button>
      </Stack>
      <Stack direction={{ xs: 'column', sm: 'row' }} spacing={1.5} sx={{ mb: 2 }}>
        <TextField
          size="small"
          placeholder="ค้นหาชื่อ"
          value={query}
          onChange={(event) => setQuery(event.target.value)}
          sx={adminSearchFieldSx}
        />
        <TextField
          select
          size="small"
          label="สถานะ"
          value={status}
          onChange={(event) => setStatus(event.target.value as StatusFilter)}
          sx={{ minWidth: 160 }}
        >
          <MenuItem value="all">ทั้งหมด</MenuItem>
          <MenuItem value="active">ใช้งาน</MenuItem>
          <MenuItem value="inactive">ปิด</MenuItem>
        </TextField>
      </Stack>
      {error && <Alert severity="error" sx={{ mb: 2 }}>{error}</Alert>}
      {authLoading || loading ? (
        <CircularProgress size={28} />
      ) : !user || !isAdmin(user) ? null : visible.length === 0 ? (
        <Typography color="text.secondary">ยังไม่มีประกาศ</Typography>
      ) : (
        <Stack divider={<Box sx={{ borderTop: '1px solid', borderColor: 'divider' }} />}>
          {visible.map((row) => (
            <Box
              key={row.id}
              role="link"
              tabIndex={0}
              onClick={() => router.push(`/admin-console/platform-updates/${row.id}`)}
              onKeyDown={(event) => {
                if (event.key === 'Enter') router.push(`/admin-console/platform-updates/${row.id}`)
              }}
              sx={{
                display: 'grid',
                gridTemplateColumns: { xs: '72px 1fr', md: '96px 1fr 140px 120px' },
                gap: 2,
                alignItems: 'center',
                py: 1.5,
                cursor: 'pointer',
              }}
            >
              <Thumb row={row} />
              <Box>
                <Typography sx={{ fontWeight: 600 }}>{row.titleTh || 'ไม่มีชื่อ'}</Typography>
                <Typography variant="body2" color="text.secondary">{row.titleEn}</Typography>
              </Box>
              <Typography variant="body2">{row.publishedOn ?? ''}</Typography>
              <Box>
                <Typography variant="body2">{row.status === 'active' ? 'ใช้งาน' : 'ปิด'}</Typography>
                {isWaitingForPublishDate(row, today) && (
                  <Typography variant="caption" color="text.secondary">รอถึงวันที่เผยแพร่</Typography>
                )}
              </Box>
            </Box>
          ))}
        </Stack>
      )}
    </Box>
  )
}

function Thumb ({ row }: { row: PlatformUpdateRecord }) {
  if (row.bannerKind === 'image' && row.bannerUrl) {
    return (
      <Box
        component="img"
        src={row.bannerUrl}
        alt=""
        sx={{ width: 84, height: 48, objectFit: 'cover', borderRadius: 1, bgcolor: 'action.hover' }}
      />
    )
  }
  return (
    <Box sx={{ width: 84, height: 48, borderRadius: 1, border: '1px solid', borderColor: 'divider', display: 'grid', placeItems: 'center' }}>
      <Typography variant="caption" color="text.secondary">{row.bannerKind === 'video' ? 'วิดีโอ' : '—'}</Typography>
    </Box>
  )
}
