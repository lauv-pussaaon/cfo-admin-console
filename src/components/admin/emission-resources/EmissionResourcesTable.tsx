'use client'

import React from 'react'
import { Box, Chip, IconButton, Tooltip, Typography } from '@mui/material'
import { EditOutlined as EditOutlinedIcon } from '@mui/icons-material'
import { DataGrid, GridColDef } from '@mui/x-data-grid'
import type { FuelResourceWithCategory } from '@/types/emission-resources'

const SCOPE_COLORS: Record<number, string> = {
  1: '#ef4444',
  2: '#f59e0b',
  3: '#3b82f6',
  4: '#8b5cf6',
}

function hasDuoValues (row: FuelResourceWithCategory): boolean {
  return Boolean(
    row.value1_label ||
    row.value1_unit ||
    row.value2_label ||
    row.value2_unit
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
        <Box sx={{ display: 'flex', alignItems: 'center', gap: 0.75, minWidth: 0 }}>
          <Tooltip title={params.value} enterDelay={300}>
            <Typography variant="body2" fontWeight={500} noWrap>
              {params.value}
            </Typography>
          </Tooltip>
          {hasDuoValues(params.row) && (
            <Chip
              label="Duo"
              size="small"
              variant="outlined"
              sx={{ height: 18, fontSize: '0.65rem', flexShrink: 0 }}
            />
          )}
        </Box>
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
      field: 'actions',
      headerName: '',
      width: 56,
      sortable: false,
      filterable: false,
      disableColumnMenu: true,
      align: 'center',
      headerAlign: 'center',
      display: 'flex',
      renderCell: (params) => (
        <Tooltip title="Edit EF">
          <IconButton
            size="small"
            aria-label="Edit EF"
            onClick={() => onEdit(params.row as FuelResourceWithCategory)}
          >
            <EditOutlinedIcon fontSize="small" />
          </IconButton>
        </Tooltip>
      ),
    },
  ]

  return (
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
        autoHeight
        sx={{
          border: '1px solid',
          borderColor: 'divider',
          borderRadius: 2,
          '& .MuiDataGrid-columnHeader': {
            backgroundColor: '#f8fafc',
            fontWeight: 600,
          },
          '& .MuiDataGrid-cell': {
            display: 'flex',
            alignItems: 'center',
          },
          '& .MuiDataGrid-row:hover': {
            backgroundColor: 'rgba(0, 0, 0, 0.02)',
          },
        }}
      />
    </Box>
  )
}
