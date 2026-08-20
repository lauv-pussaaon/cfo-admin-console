'use client'

import { useMemo } from 'react'
import Link from 'next/link'
import { Box, Button, Chip, Paper } from '@mui/material'
import { ChevronRight as ChevronRightIcon } from '@mui/icons-material'
import { DataGrid, GridColDef, GridRowsProp } from '@mui/x-data-grid'
import type { OrganizationTrialRequest } from '@/types/database'
import {
  getOrgRequestKindChipColor,
  getOrgRequestKindLabel,
} from '@/types/org-request-kind'
import {
  getTrialRequestStatusChipColor,
  getTrialRequestStatusLabel,
} from '@/types/trial-request-status'
import {
  adminDataGridPaperSx,
  adminDataGridProps,
  adminDataGridSx,
  adminQuietChipSx,
} from '@/lib/admin-ui-styles'

interface Props {
  data: OrganizationTrialRequest[]
  loading: boolean
  onRowClick?: (id: string) => void
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

export default function TrialRequestsTable ({
  data,
  loading,
  onRowClick,
}: Props) {
  const rows: GridRowsProp = useMemo(() => {
    return data.map((request) => ({
      id: request.id,
      organization_name: request.organization_name,
      company_code: request.company_code || '—',
      request_kind: request.request_kind,
      contact_name: `${request.contact_first_name} ${request.contact_last_name}`,
      contact_email: request.contact_email,
      contact_phone: request.contact_phone,
      status: request.status,
      created_at: request.created_at,
      reviewed_at: request.reviewed_at,
      organization_id: request.organization_id,
    }))
  }, [data])

  const columns: GridColDef[] = useMemo(() => [
    {
      field: 'organization_name',
      headerName: 'ชื่อองค์กร',
      flex: 1.2,
      minWidth: 180,
    },
    {
      field: 'company_code',
      headerName: 'รหัสบริษัท',
      width: 140,
    },
    {
      field: 'request_kind',
      headerName: 'ประเภทคำขอ',
      width: 150,
      renderCell: (params) => (
        <Chip
          label={getOrgRequestKindLabel(params.value)}
          color={getOrgRequestKindChipColor(params.value)}
          size="small"
          variant="outlined"
          sx={adminQuietChipSx}
        />
      ),
    },
    {
      field: 'contact_name',
      headerName: 'ผู้ติดต่อ',
      flex: 1,
      minWidth: 150,
    },
    {
      field: 'contact_email',
      headerName: 'อีเมล',
      flex: 1.2,
      minWidth: 180,
    },
    {
      field: 'contact_phone',
      headerName: 'เบอร์โทร',
      width: 140,
    },
    {
      field: 'status',
      headerName: 'สถานะ',
      width: 150,
      renderCell: (params) => (
        <Chip
          label={getTrialRequestStatusLabel(params.value)}
          color={getTrialRequestStatusChipColor(params.value)}
          size="small"
          variant="outlined"
          sx={adminQuietChipSx}
        />
      ),
    },
    {
      field: 'created_at',
      headerName: 'วันที่ส่งคำขอ',
      width: 170,
      valueFormatter: (value) => formatDate(value as string),
    },
    {
      field: 'reviewed_at',
      headerName: 'วันที่ดำเนินการ',
      width: 170,
      valueFormatter: (value) => formatDate(value as string | null),
    },
    {
      field: 'organization_id',
      headerName: 'องค์กร',
      width: 120,
      sortable: false,
      filterable: false,
      renderCell: (params) => {
        if (!params.value) return '—'
        return (
          <Button
            component={Link}
            href={`/admin-console/organizations/${params.value}`}
            size="small"
            sx={{ textTransform: 'none' }}
            onClick={(event) => event.stopPropagation()}
          >
            ดู
          </Button>
        )
      },
    },
    {
      field: 'actions',
      headerName: '',
      width: 56,
      sortable: false,
      filterable: false,
      renderCell: () => (
        <ChevronRightIcon fontSize="small" sx={{ color: 'text.secondary' }} />
      ),
    },
  ], [])

  return (
    <Paper elevation={0} sx={adminDataGridPaperSx}>
      <Box sx={{ width: '100%' }}>
        <DataGrid
          rows={rows}
          columns={columns}
          loading={loading}
          disableRowSelectionOnClick
          {...adminDataGridProps}
          onRowClick={
            onRowClick
              ? (params) => {
                  onRowClick(params.row.id as string)
                }
              : undefined
          }
          pageSizeOptions={[10, 25, 50]}
          initialState={{
            pagination: { paginationModel: { pageSize: 10 } },
          }}
          sx={[
            adminDataGridSx,
            onRowClick ? { '& .MuiDataGrid-row': { cursor: 'pointer' } } : {},
          ]}
        />
      </Box>
    </Paper>
  )
}
