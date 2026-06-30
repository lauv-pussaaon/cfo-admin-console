'use client'

import { useMemo } from 'react'
import {
  Box,
  Chip,
  IconButton,
  Paper,
  Switch,
  Tooltip,
  Typography,
} from '@mui/material'
import { Delete as DeleteIcon } from '@mui/icons-material'
import { DataGrid, GridColDef, GridRowsProp } from '@mui/x-data-grid'
import type { NotificationRecipient } from '@/types/database'

interface Props {
  data: NotificationRecipient[]
  loading: boolean
  updatingId?: string | null
  onToggleEnabled: (recipient: NotificationRecipient, enabled: boolean) => void
  onDelete: (recipient: NotificationRecipient) => void
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

export default function NotificationRecipientsTable ({
  data,
  loading,
  updatingId = null,
  onToggleEnabled,
  onDelete,
}: Props) {
  const rows: GridRowsProp = useMemo(() => {
    return data.map((recipient) => ({
      id: recipient.id,
      email: recipient.email,
      label: recipient.label || '—',
      is_enabled: recipient.is_enabled,
      created_at: recipient.created_at,
      recipient,
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
        const recipient = params.row.recipient as NotificationRecipient
        const isUpdating = updatingId === recipient.id
        return (
          <Switch
            checked={Boolean(params.value)}
            disabled={isUpdating}
            onChange={(event) => onToggleEnabled(recipient, event.target.checked)}
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
            variant={enabled ? 'filled' : 'outlined'}
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
        const recipient = params.row.recipient as NotificationRecipient
        const isUpdating = updatingId === recipient.id
        return (
          <Tooltip title="ลบ">
            <span>
              <IconButton
                size="small"
                color="error"
                disabled={isUpdating}
                onClick={() => onDelete(recipient)}
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
    <Paper elevation={0} sx={{ border: '1px solid', borderColor: 'divider', borderRadius: 2 }}>
      <Box sx={{ width: '100%' }}>
        <DataGrid
          rows={rows}
          columns={columns}
          loading={loading}
          autoHeight
          disableRowSelectionOnClick
          pageSizeOptions={[10, 25]}
          initialState={{
            pagination: { paginationModel: { pageSize: 10 } },
          }}
          sx={{
            border: 'none',
            '& .MuiDataGrid-columnHeaders': {
              backgroundColor: 'grey.50',
            },
          }}
        />
      </Box>
    </Paper>
  )
}
