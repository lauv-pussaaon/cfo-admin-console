'use client'

import { useMemo } from 'react'
import { Box, IconButton, Paper, Link, Chip, Typography } from '@mui/material'
import { DataGrid, GridColDef, GridRowsProp } from '@mui/x-data-grid'
import { 
  Edit as EditIcon, 
  Delete as DeleteIcon,
  Launch as LaunchIcon,
} from '@mui/icons-material'
import type { OrganizationWithCreator } from '@/lib/api/organizations'

interface Props {
  onEdit: (id: string) => void
  onDelete: (id: string) => void
  data: OrganizationWithCreator[]
  loading: boolean
}

export default function AdminOrganizationsTable({ onEdit, onDelete, data, loading }: Props) {
  const rows: GridRowsProp = useMemo(() => {
    return data.map((org) => ({
      id: org.id,
      name: org.name,
      code: org.code || '-',
      description: org.description || '-',
      app_url: org.app_url || null,
      is_initialized: org.is_initialized || false,
      factory_admin_email: org.factory_admin_email || '-',
      created_at: org.created_at,
      creator_name: org.creator?.name || '-',
      creator_email: org.creator?.email || '-',
      creator_role: org.creator?.role || '-',
      dealer_name: org.dealer?.name || '-',
      dealer_email: org.dealer?.email || '-',
    }))
  }, [data])

  const columns: GridColDef[] = useMemo(() => [
    {
      field: 'name',
      headerName: 'ชื่อองค์กร',
      width: 200,
      flex: 1,
      minWidth: 150,
    },
    {
      field: 'code',
      headerName: 'รหัสองค์กร',
      width: 150,
      flex: 0.8,
      minWidth: 120,
    },
    {
      field: 'status',
      headerName: 'สถานะ',
      width: 150,
      flex: 0.8,
      minWidth: 130,
      renderCell: (params) => {
        const isInitialized = params.row.is_initialized
        return (
          <Chip
            label={isInitialized ? 'Deployed' : 'Pending Deployment'}
            color={isInitialized ? 'success' : 'warning'}
            size="small"
            sx={{ fontWeight: 500 }}
          />
        )
      },
    },
    {
      field: 'factory_admin_email',
      headerName: 'Client Admin Email',
      width: 200,
      flex: 1,
      minWidth: 180,
      renderCell: (params) => (
        <Box
          sx={{
            overflow: 'hidden',
            textOverflow: 'ellipsis',
            whiteSpace: 'nowrap',
            maxWidth: '100%',
          }}
          title={params.value}
        >
          {params.value}
        </Box>
      ),
    },
    {
      field: 'app_url',
      headerName: 'App URL',
      width: 200,
      flex: 1,
      minWidth: 150,
      renderCell: (params) => {
        if (!params.value) {
          return <Box sx={{ color: 'text.secondary', fontStyle: 'italic' }}>ยังไม่ได้ตั้งค่า</Box>
        }
        return (
          <Link
            href={params.value}
            target="_blank"
            rel="noopener noreferrer"
            sx={{ display: 'flex', alignItems: 'center', gap: 0.5 }}
          >
            <LaunchIcon fontSize="small" />
            {params.value}
          </Link>
        )
      },
    },
    {
      field: 'creator_name',
      headerName: 'สร้างโดย',
      width: 180,
      flex: 1,
      minWidth: 150,
      renderCell: (params) => (
        <Box sx={{ display: 'flex', flexDirection: 'column', gap: 0.5 }}>
          <Typography variant="body2" fontWeight={500}>
            {params.row.creator_name}
          </Typography>
          <Typography variant="caption" color="text.secondary">
            {params.row.creator_email} ({params.row.creator_role})
          </Typography>
        </Box>
      ),
    },
    {
      field: 'dealer_name',
      headerName: 'Dealer',
      width: 180,
      flex: 1,
      minWidth: 150,
      renderCell: (params) => (
        <Box sx={{ display: 'flex', flexDirection: 'column', gap: 0.5 }}>
          {params.row.dealer_name !== '-' ? (
            <>
              <Typography variant="body2" fontWeight={500}>
                {params.row.dealer_name}
              </Typography>
              <Typography variant="caption" color="text.secondary">
                {params.row.dealer_email}
              </Typography>
            </>
          ) : (
            <Typography variant="body2" color="text.secondary" fontStyle="italic">
              ไม่มี Dealer
            </Typography>
          )}
        </Box>
      ),
    },
    {
      field: 'created_at',
      headerName: 'วันที่สร้าง',
      width: 150,
      flex: 0.8,
      minWidth: 130,
      renderCell: (params) => {
        return new Date(params.value).toLocaleDateString('th-TH', {
          year: 'numeric',
          month: 'short',
          day: 'numeric',
          hour: '2-digit',
          minute: '2-digit',
        })
      },
    },
    {
      field: 'actions',
      headerName: 'การดำเนินการ',
      width: 150,
      align: 'center',
      headerAlign: 'center',
      sortable: false,
      filterable: false,
      renderCell: (params) => (
        <Box sx={{ display: 'flex', justifyContent: 'center', gap: 1, height: '100%' }}>
          <IconButton
            size="small"
            onClick={() => onEdit(params.row.id)}
            sx={{
              color: 'primary.main',
              '&:hover': {
                backgroundColor: 'primary.light',
                color: 'primary.dark',
              },
            }}
            title="แก้ไข"
          >
            <EditIcon fontSize="small" />
          </IconButton>
          <IconButton
            size="small"
            onClick={() => onDelete(params.row.id)}
            sx={{
              color: 'error.main',
              '&:hover': {
                backgroundColor: 'error.light',
                color: 'error.dark',
              },
            }}
            title="ลบ"
          >
            <DeleteIcon fontSize="small" />
          </IconButton>
        </Box>
      ),
    },
  ], [onEdit, onDelete])

  return (
    <Paper elevation={0} sx={{ minHeight: 400, width: '100%', backgroundColor: 'transparent', overflowX: 'scroll' }}>
      <DataGrid
        rows={rows}
        columns={columns}
        loading={loading}
        disableRowSelectionOnClick
        pageSizeOptions={[10, 25, 50, 100]}
        initialState={{
          pagination: {
            paginationModel: { pageSize: 25 },
          },
        }}
        sx={{
          border: 'none',
          backgroundColor: 'transparent',
          '& .MuiDataGrid-root': {
            backgroundColor: 'transparent',
          },
          '& .MuiDataGrid-main': {
            backgroundColor: 'transparent',
          },
          '& .MuiDataGrid-cell': {
            borderBottom: '1px solid',
            borderColor: 'divider',
            backgroundColor: 'transparent',
          },
          '& .MuiDataGrid-columnHeaders': {
            backgroundColor: 'grey.50',
            borderBottom: '1px solid',
            borderColor: 'divider',
          },
          '& .MuiDataGrid-row': {
            backgroundColor: 'transparent',
          },
          '& .MuiDataGrid-row:hover': {
            backgroundColor: 'action.hover',
          },
          '& .MuiDataGrid-footerContainer': {
            backgroundColor: 'transparent',
          },
        }}
      />
    </Paper>
  )
}

