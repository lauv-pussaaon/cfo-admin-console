'use client'

import { Suspense, useCallback, useEffect, useMemo, useState } from 'react'
import { usePathname, useRouter, useSearchParams } from 'next/navigation'
import {
  Alert,
  Box,
  Button,
  CircularProgress,
  IconButton,
  Paper,
  Snackbar,
  Tooltip,
  Typography,
} from '@mui/material'
import { DataGrid, GridColDef } from '@mui/x-data-grid'
import {
  ArrowBack,
  DeleteOutline as DeleteOutlineIcon,
  Restore as RestoreIcon,
} from '@mui/icons-material'
import Link from 'next/link'
import { useAuth } from '@/contexts/AuthContext'
import { isAdmin } from '@/lib/permissions'
import { authenticatedAdminFetch } from '@/lib/api/admin-fetch'
import { formatDateTime } from '@/lib/utils/datetime'
import {
  adminBackButtonSx,
  adminDataGridPaperSx,
  adminDataGridProps,
  adminDataGridSx,
  adminGhostIconButtonSx,
  adminPageShellSx,
  adminPageTitleSx,
} from '@/lib/admin-ui-styles'
import type { EfCatalogVersionBackup } from '@/types/emission-resources'
import FuelResourceBackupRestoreDialog from '@/components/admin/emission-resources/FuelResourceBackupRestoreDialog'
import FuelResourceBackupDeleteDialog from '@/components/admin/emission-resources/FuelResourceBackupDeleteDialog'

function EmissionResourceBackupsPage () {
  const router = useRouter()
  const pathname = usePathname()
  const searchParams = useSearchParams()
  const { user, isLoading: authLoading } = useAuth()
  const [rows, setRows] = useState<EfCatalogVersionBackup[]>([])
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)
  const [restoreTarget, setRestoreTarget] = useState<EfCatalogVersionBackup | null>(null)
  const [deleteTarget, setDeleteTarget] = useState<EfCatalogVersionBackup | null>(null)
  const [snackbar, setSnackbar] = useState<{ open: boolean; message: string; severity: 'success' | 'error' }>({
    open: false,
    message: '',
    severity: 'success',
  })

  useEffect(() => {
    if (!authLoading && user && !isAdmin(user)) {
      router.replace('/admin-console')
    }
  }, [user, authLoading, router])

  const fetchBackups = useCallback(async () => {
    setLoading(true)
    setError(null)
    try {
      const res = await authenticatedAdminFetch(
        '/api/ef-catalog/backups',
        {},
        { userId: user?.id }
      )
      const json = await res.json().catch(() => ({}))
      if (!res.ok) throw new Error(json.error || 'โหลดสำรองไม่สำเร็จ')
      setRows((json.data ?? []) as EfCatalogVersionBackup[])
    } catch (err) {
      setError(err instanceof Error ? err.message : 'โหลดสำรองไม่สำเร็จ')
      setRows([])
    } finally {
      setLoading(false)
    }
  }, [user?.id])

  useEffect(() => {
    if (!user || !isAdmin(user)) return
    void fetchBackups()
  }, [user, fetchBackups])

  useEffect(() => {
    const created = searchParams.get('created')?.trim()
    if (!created) return
    const countRaw = searchParams.get('count')
    const count = countRaw ? Number(countRaw) : NaN
    setSnackbar({
      open: true,
      message: Number.isFinite(count)
        ? `สำรองแล้ว ${created} · ${count.toLocaleString()} รายการ`
        : `สำรองแล้ว ${created}`,
      severity: 'success',
    })
    router.replace(pathname, { scroll: false })
  }, [searchParams, pathname, router])

  const columns: GridColDef[] = useMemo(() => [
    {
      field: 'source_version',
      headerName: 'เวอร์ชันต้นทาง',
      flex: 1,
      minWidth: 180,
    },
    {
      field: 'fuel_count',
      headerName: 'จำนวนรายการ',
      width: 140,
      type: 'number',
      valueFormatter: (value) =>
        value == null || value === '' ? '—' : Number(value).toLocaleString(),
    },
    {
      field: 'created_at',
      headerName: 'สำรองเมื่อ',
      width: 200,
      valueFormatter: (value) =>
        typeof value === 'string' ? formatDateTime(value) : '—',
    },
    {
      field: 'created_by_name',
      headerName: 'ผู้สำรอง',
      width: 180,
      valueFormatter: (value) => (typeof value === 'string' && value ? value : '—'),
    },
    {
      field: 'actions',
      headerName: '',
      width: 96,
      sortable: false,
      filterable: false,
      disableColumnMenu: true,
      align: 'center',
      headerAlign: 'center',
      display: 'flex',
      renderCell: (params) => {
        const backup = params.row as EfCatalogVersionBackup
        return (
          <Box sx={{ display: 'flex', gap: 0.25, justifyContent: 'center' }}>
            <Tooltip title="กู้คืน">
              <IconButton
                size="small"
                aria-label="กู้คืน"
                onClick={() => setRestoreTarget(backup)}
                sx={adminGhostIconButtonSx.primary}
              >
                <RestoreIcon fontSize="small" />
              </IconButton>
            </Tooltip>
            <Tooltip title="ลบ">
              <IconButton
                size="small"
                aria-label="ลบ"
                onClick={() => setDeleteTarget(backup)}
                sx={adminGhostIconButtonSx.error}
              >
                <DeleteOutlineIcon fontSize="small" />
              </IconButton>
            </Tooltip>
          </Box>
        )
      },
    },
  ], [])

  if (authLoading) {
    return (
      <Box sx={{ display: 'flex', justifyContent: 'center', alignItems: 'center', minHeight: '50vh' }}>
        <CircularProgress />
      </Box>
    )
  }

  if (user && !isAdmin(user)) {
    return null
  }

  return (
    <Box sx={adminPageShellSx}>
      <Button
        component={Link}
        href="/admin-console/emission-resources"
        startIcon={<ArrowBack />}
        sx={adminBackButtonSx}
      >
        กลับ
      </Button>
      <Box sx={{ mb: 3 }}>
        <Typography variant="h4" component="h1" sx={adminPageTitleSx} gutterBottom>
          สำรองแคตตาล็อก EF
        </Typography>        
      </Box>

      {error && (
        <Alert severity="error" sx={{ mb: 2 }} onClose={() => setError(null)}>
          {error}
        </Alert>
      )}

      <Paper elevation={0} sx={adminDataGridPaperSx}>
        <DataGrid
          rows={rows}
          columns={columns}
          loading={loading}
          disableRowSelectionOnClick
          disableColumnSorting
          {...adminDataGridProps}
          sx={adminDataGridSx}
        />
      </Paper>

      <FuelResourceBackupRestoreDialog
        open={Boolean(restoreTarget)}
        backup={restoreTarget}
        onClose={() => setRestoreTarget(null)}
        onRestored={(version) => {
          setSnackbar({
            open: true,
            message: `กู้คืนแล้ว — Re-publish เวอร์ชัน ${version} เพื่อให้ลูกค้าเห็นการเปลี่ยนแปลง`,
            severity: 'success',
          })
        }}
      />

      <FuelResourceBackupDeleteDialog
        open={Boolean(deleteTarget)}
        backup={deleteTarget}
        onClose={() => setDeleteTarget(null)}
        onDeleted={() => {
          setSnackbar({ open: true, message: 'ลบสำรองแล้ว', severity: 'success' })
          void fetchBackups()
        }}
      />

      <Snackbar
        open={snackbar.open}
        autoHideDuration={6000}
        onClose={() => setSnackbar((s) => ({ ...s, open: false }))}
        anchorOrigin={{ vertical: 'bottom', horizontal: 'right' }}
      >
        <Alert severity={snackbar.severity} onClose={() => setSnackbar((s) => ({ ...s, open: false }))}>
          {snackbar.message}
        </Alert>
      </Snackbar>
    </Box>
  )
}

export default function EmissionResourceBackupsPageEntry () {
  return (
    <Suspense
      fallback={
        <Box sx={{ display: 'flex', justifyContent: 'center', alignItems: 'center', minHeight: '50vh' }}>
          <CircularProgress />
        </Box>
      }
    >
      <EmissionResourceBackupsPage />
    </Suspense>
  )
}
