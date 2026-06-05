'use client'

import { useMemo } from 'react'
import Link from 'next/link'
import { Box, Button, Chip, Paper } from '@mui/material'
import { DataGrid, GridColDef, GridRowsProp } from '@mui/x-data-grid'
import type { OrganizationTrialRequest } from '@/types/database'

interface Props {
  data: OrganizationTrialRequest[]
  loading: boolean
  approvingId?: string | null
  onApprove: (request: OrganizationTrialRequest) => void
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
  approvingId = null,
  onApprove,
}: Props) {
  const rows: GridRowsProp = useMemo(() => {
    return data.map((request) => ({
      id: request.id,
      organization_name: request.organization_name,
      contact_name: `${request.contact_first_name} ${request.contact_last_name}`,
      contact_email: request.contact_email,
      contact_phone: request.contact_phone,
      status: request.status,
      created_at: request.created_at,
      reviewed_at: request.reviewed_at,
      organization_id: request.organization_id,
      approved_account_type: request.approved_account_type,
      request,
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
      width: 130,
      renderCell: (params) => {
        const approved = params.value === 'approved'
        return (
          <Chip
            label={approved ? 'อนุมัติแล้ว' : 'รออนุมัติ'}
            color={approved ? 'success' : 'warning'}
            size="small"
          />
        )
      },
    },
    {
      field: 'created_at',
      headerName: 'วันที่ส่งคำขอ',
      width: 170,
      valueFormatter: (value) => formatDate(value as string),
    },
    {
      field: 'reviewed_at',
      headerName: 'วันที่อนุมัติ',
      width: 170,
      valueFormatter: (value) => formatDate(value as string | null),
    },
    {
      field: 'organization_id',
      headerName: 'องค์กร',
      width: 120,
      renderCell: (params) => {
        if (!params.value) return '—'
        return (
          <Button
            component={Link}
            href={`/admin-console/organizations/${params.value}`}
            size="small"
            sx={{ textTransform: 'none' }}
          >
            ดู
          </Button>
        )
      },
    },
    {
      field: 'actions',
      headerName: 'การดำเนินการ',
      width: 130,
      sortable: false,
      filterable: false,
      renderCell: (params) => {
        if (params.row.status !== 'pending') return null
        const isApproving = approvingId === params.row.id
        return (
          <Button
            variant="contained"
            size="small"
            disabled={isApproving}
            onClick={() => onApprove(params.row.request)}
            sx={{ textTransform: 'none' }}
          >
            {isApproving ? 'กำลังอนุมัติ...' : 'อนุมัติ'}
          </Button>
        )
      },
    },
  ], [approvingId, onApprove])

  return (
    <Paper elevation={0} sx={{ border: '1px solid', borderColor: 'divider', borderRadius: 2 }}>
      <Box sx={{ width: '100%' }}>
        <DataGrid
          rows={rows}
          columns={columns}
          loading={loading}
          autoHeight
          disableRowSelectionOnClick
          pageSizeOptions={[10, 25, 50]}
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
