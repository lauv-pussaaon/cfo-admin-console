'use client'

import { useMemo } from 'react'
import {
  Chip,
  IconButton,
  Paper,
  Switch,
  Tooltip,
} from '@mui/material'
import { Delete as DeleteIcon } from '@mui/icons-material'
import { DataGrid, GridColDef, GridRowsProp } from '@mui/x-data-grid'
import type { NotificationEmail } from '@/types/database'
import {
  adminDataGridPaperSx,
  adminDataGridProps,
  adminDataGridSx,
  adminGhostIconButtonSx,
  adminQuietChipSx,
} from '@/lib/admin-ui-styles'

interface Props {
  data: NotificationEmail[]
  loading: boolean
  updatingId?: string | null
  onToggleEnabled: (email: NotificationEmail, enabled: boolean) => void
  onDelete: (email: NotificationEmail) => void
}

function formatDate (value: string | null) {
  if (!value) return '—'
  return new Date(value).toLocaleString('th-TH', {
    year: 'numeric',
    month: 'short',
    day: 'numeric',
    hour: '2-digit',
    minute: '2-digit',
  })
}

export default function NotificationEmailsTable ({
  data,
  loading,
  updatingId = null,
  onToggleEnabled,
  onDelete,
}: Props) {
  const rows: GridRowsProp = useMemo(() => {
    return data.map((row) => ({
      id: row.id,
      email: row.email,
      label: row.label || '—',
      is_enabled: row.is_enabled,
      created_at: row.created_at,
      notificationEmail: row,
    }))
  }, [data])

  const columns: GridColDef[] = useMemo(() => [
    {
      field: 'email',
      headerName: 'อีเมล',
      flex: 1.2,
      minWidth: 220,
    },
    {
      field: 'label',
      headerName: 'ชื่อเรียก',
      flex: 1,
      minWidth: 160,
    },
    {
      field: 'is_enabled',
      headerName: 'เปิดใช้งาน',
      width: 120,
      sortable: false,
      filterable: false,
      renderCell: (params) => {
        const notificationEmail = params.row.notificationEmail as NotificationEmail
        const isUpdating = updatingId === notificationEmail.id
        return (
          <Switch
            checked={Boolean(params.value)}
            disabled={isUpdating}
            onChange={(event) => onToggleEnabled(notificationEmail, event.target.checked)}
            size="small"
          />
        )
      },
    },
    {
      field: 'created_at',
      headerName: 'เพิ่มเมื่อ',
      width: 170,
      valueFormatter: (value) => formatDate(value as string),
    },
    {
      field: 'status',
      headerName: 'สถานะ',
      width: 120,
      sortable: false,
      filterable: false,
      renderCell: (params) => {
        const enabled = params.row.is_enabled
        return (
          <Chip
            label={enabled ? 'ใช้งาน' : 'ปิด'}
            color={enabled ? 'success' : 'default'}
            size="small"
            variant="outlined"
            sx={adminQuietChipSx}
          />
        )
      },
    },
    {
      field: 'actions',
      headerName: '',
      width: 56,
      sortable: false,
      filterable: false,
      renderCell: (params) => {
        const notificationEmail = params.row.notificationEmail as NotificationEmail
        const isUpdating = updatingId === notificationEmail.id
        return (
          <Tooltip title="ลบ">
            <span>
              <IconButton
                size="small"
                disabled={isUpdating}
                onClick={() => onDelete(notificationEmail)}
                sx={adminGhostIconButtonSx.error}
              >
                <DeleteIcon fontSize="small" />
              </IconButton>
            </span>
          </Tooltip>
        )
      },
    },
  ], [onDelete, onToggleEnabled, updatingId])

  return (
    <Paper elevation={0} sx={adminDataGridPaperSx}>
      <DataGrid
        rows={rows}
        columns={columns}
        loading={loading}
        disableRowSelectionOnClick
        {...adminDataGridProps}
        pageSizeOptions={[10, 25]}
        initialState={{
          pagination: { paginationModel: { pageSize: 10 } },
        }}
        sx={adminDataGridSx}
      />
    </Paper>
  )
}
