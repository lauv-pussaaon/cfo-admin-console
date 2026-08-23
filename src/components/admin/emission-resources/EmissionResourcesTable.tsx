'use client'

import React from 'react'
import { Box, Chip, IconButton, Paper, Tooltip, Typography } from '@mui/material'
import {
  DeleteOutline as DeleteOutlineIcon,
  EditOutlined as EditOutlinedIcon,
} from '@mui/icons-material'
import { DataGrid, GridColDef } from '@mui/x-data-grid'
import type { FuelResourceWithCategory } from '@/types/emission-resources'
import { serializeFuelResourceMeta } from '@/types/emission-resources'
import {
  adminDataGridPaperSx,
  adminDataGridProps,
  adminDataGridSx,
  adminGhostIconButtonSx,
} from '@/lib/admin-ui-styles'

const SCOPE_COLORS: Record<number, string> = {
  1: '#ef4444',
  2: '#f59e0b',
  3: '#3b82f6',
  4: '#8b5cf6',
}

function OptionalTextCell ({ value }: { value: string | null | undefined }) {
  if (!value) {
    return <Typography variant="body2" color="text.disabled">—</Typography>
  }
  return (
    <Tooltip title={value} enterDelay={300}>
      <Typography variant="body2" noWrap>
        {value}
      </Typography>
    </Tooltip>
  )
}

interface Props {
  rows: FuelResourceWithCategory[]
  total: number
  page: number
  perPage: number
  loading: boolean
  onPageChange: (page: number) => void
  onPerPageChange: (perPage: number) => void
  onEdit: (row: FuelResourceWithCategory) => void
  onDelete: (row: FuelResourceWithCategory) => void
}

export default function EmissionResourcesTable({
  rows,
  total,
  page,
  perPage,
  loading,
  onPageChange,
  onPerPageChange,
  onEdit,
  onDelete,
}: Props) {
  const columns: GridColDef[] = [
    {
      field: 'scope',
      headerName: 'Scope',
      width: 60,
      display: 'flex',
      renderCell: (params) => {
        const scope = params.row.scope_category?.scope
        if (!scope) return null
        return (
          <Chip
            label={`S${scope}`}
            size="small"
            sx={{
              bgcolor: SCOPE_COLORS[scope] ?? '#64748b',
              color: 'white',
              fontWeight: 700,
              fontSize: '0.7rem',
              height: 22,
            }}
          />
        )
      },
    },
    {
      field: 'category',
      headerName: 'Category',
      width: 200,
      flex: 1,
      minWidth: 150,
      display: 'flex',
      renderCell: (params) => {
        const cat = params.row.scope_category
        if (!cat) return <Typography variant="body2" color="text.disabled">—</Typography>
        return (
          <Tooltip title={`${cat.name_th}`}>
            <Typography variant="body2" noWrap>
              {cat.name_en}
            </Typography>
          </Tooltip>
        )
      },
    },
    {
      field: 'sub_category',
      headerName: 'Sub-category',
      width: 120,
      display: 'flex',
      renderCell: (params) =>
        params.value ? (
          <Tooltip title={params.value} enterDelay={300}>
            <Typography variant="body2" noWrap>{params.value}</Typography>
          </Tooltip>
        ) : (
          <Typography variant="body2" color="text.disabled">—</Typography>
        ),
    },
    {
      field: 'resource',
      headerName: 'Resource',
      width: 220,
      flex: 1,
      minWidth: 130,
      display: 'flex',
      renderCell: (params) => (
        <Tooltip title={params.value} enterDelay={300}>
          <Typography variant="body2" fontWeight={500} noWrap>
            {params.value}
          </Typography>
        </Tooltip>
      ),
    },
    {
      field: 'unit',
      headerName: 'Unit',
      width: 90,
      display: 'flex',
      renderCell: (params) =>
        params.value ? (
          <Chip label={params.value} size="small" variant="outlined" sx={{ fontSize: '0.7rem', height: 22 }} />
        ) : (
          <Typography variant="body2" color="text.disabled">—</Typography>
        ),
    },
    {
      field: 'ef_value',
      headerName: 'EF Value',
      width: 110,
      type: 'number',
      display: 'flex',
      renderCell: (params) =>
        params.value != null ? (
          <Typography variant="body2" fontFamily="monospace">
            {Number(params.value).toPrecision(6)}
          </Typography>
        ) : (
          <Typography variant="body2" color="text.disabled">—</Typography>
        ),
    },
    {
      field: 'value1_label',
      headerName: 'Value 1 label',
      width: 120,
      display: 'flex',
      renderCell: (params) => <OptionalTextCell value={params.value} />,
    },
    {
      field: 'value1_unit',
      headerName: 'Value 1 unit',
      width: 100,
      display: 'flex',
      renderCell: (params) => <OptionalTextCell value={params.value} />,
    },
    {
      field: 'value2_label',
      headerName: 'Value 2 label',
      width: 120,
      display: 'flex',
      renderCell: (params) => <OptionalTextCell value={params.value} />,
    },
    {
      field: 'value2_unit',
      headerName: 'Value 2 unit',
      width: 100,
      display: 'flex',
      renderCell: (params) => <OptionalTextCell value={params.value} />,
    },
    {
      field: 'ref_info',
      headerName: 'Ref.',
      width: 200,
      display: 'flex',
      renderCell: (params) =>
        params.value ? (
          <Tooltip title={params.value} enterDelay={300}>
            <Chip label={params.value} size="small" variant="outlined" sx={{ fontSize: '0.65rem', height: 22 }} />
          </Tooltip>
        ) : (
          <Typography variant="body2" color="text.disabled">—</Typography>
        ),
    },
    {
      field: 'description',
      headerName: 'Description',
      width: 240,
      display: 'flex',
      renderCell: (params) => <OptionalTextCell value={params.value} />,
    },
    {
      field: 'meta',
      headerName: 'Meta',
      width: 160,
      display: 'flex',
      renderCell: (params) => {
        const serialized = serializeFuelResourceMeta(params.row.meta)
        if (serialized === '{}') {
          return <Typography variant="body2" color="text.disabled">—</Typography>
        }
        return (
          <Tooltip title={serialized} enterDelay={300}>
            <Typography variant="body2" noWrap fontFamily="monospace">
              {serialized}
            </Typography>
          </Tooltip>
        )
      },
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
      renderCell: (params) => (
        <Box sx={{ display: 'flex', gap: 0.25, justifyContent: 'center' }}>
          <Tooltip title="Edit EF">
            <IconButton
              size="small"
              aria-label="Edit EF"
              onClick={() => onEdit(params.row as FuelResourceWithCategory)}
              sx={adminGhostIconButtonSx.primary}
            >
              <EditOutlinedIcon fontSize="small" />
            </IconButton>
          </Tooltip>
          <Tooltip title="ลบ">
            <IconButton
              size="small"
              aria-label="ลบ"
              onClick={() => onDelete(params.row as FuelResourceWithCategory)}
              sx={adminGhostIconButtonSx.error}
            >
              <DeleteOutlineIcon fontSize="small" />
            </IconButton>
          </Tooltip>
        </Box>
      ),
    },
  ]

  return (
    <Paper elevation={0} sx={adminDataGridPaperSx}>
      <Box sx={{ width: '100%' }}>
        <DataGrid
          rows={rows}
          columns={columns}
          rowCount={total}
          loading={loading}
          paginationMode="server"
          paginationModel={{ page, pageSize: perPage }}
          onPaginationModelChange={(model) => {
            if (model.page !== page) onPageChange(model.page)
            if (model.pageSize !== perPage) onPerPageChange(model.pageSize)
          }}
          pageSizeOptions={[25, 50, 100]}
          disableRowSelectionOnClick
          disableColumnSorting
          {...adminDataGridProps}
          sx={adminDataGridSx}
        />
      </Box>
    </Paper>
  )
}
