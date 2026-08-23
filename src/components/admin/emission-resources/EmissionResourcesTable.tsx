'use client'

import React from 'react'
import { Box, Chip, IconButton, Paper, Tooltip, Typography } from '@mui/material'
import {
  DeleteOutline as DeleteOutlineIcon,
  EditOutlined as EditOutlinedIcon,
} from '@mui/icons-material'
import { DataGrid, GridColDef } from '@mui/x-data-grid'
import type { FuelResourceWithCategory } from '@/types/emission-resources'
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

interface Props {
  rows: FuelResourceWithCategory[]
  total: number
  page: number
  perPage: number
  loading: boolean
  onPageChange: (page: number) => void
  onPerPageChange: (perPage: number) => void
  onRowClick: (row: FuelResourceWithCategory) => void
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
  onRowClick,
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
      flex: 2,
      width: 100,
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
      flex: 1,
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
      flex: 3,
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
        <Box
          sx={{ display: 'flex', gap: 0.25, justifyContent: 'center' }}
          onClick={(e) => e.stopPropagation()}
        >
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
          onRowClick={(params, event) => {
            if ((event.target as HTMLElement).closest('.MuiIconButton-root')) return
            onRowClick(params.row as FuelResourceWithCategory)
          }}
          pageSizeOptions={[25, 50, 100]}
          disableRowSelectionOnClick
          disableColumnSorting
          {...adminDataGridProps}
          sx={[adminDataGridSx, { '& .MuiDataGrid-row': { cursor: 'pointer' } }]}
        />
      </Box>
    </Paper>
  )
}
