'use client'

import { useMemo } from 'react'
import { Box, IconButton, Paper, Link, Chip } from '@mui/material'
import { DataGrid, GridColDef, GridRowsProp } from '@mui/x-data-grid'
import { 
  Edit as EditIcon, 
  Delete as DeleteIcon,
  Launch as LaunchIcon,
} from '@mui/icons-material'
import type { OrganizationWithStats } from '@/types/database'

interface Props {
  onEdit: (id: string) => void
  onDelete: (id: string) => void
  data: OrganizationWithStats[]
  loading: boolean
}

export default function OrganizationsTable({ onEdit, onDelete, data, loading }: Props) {
  const rows: GridRowsProp = useMemo(() => {
    return data.map((org) => ({
      id: org.id,
      name: org.name,
      code: org.code || '-',
      description: org.description || '-',
      userCount: org.userCount || 0,
      app_url: org.app_url || null,
      is_initialized: org.is_initialized || false,
      created_at: org.created_at,
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
      field: 'description',
      headerName: 'คำอธิบาย',
      width: 250,
      flex: 1.5,
      minWidth: 200,
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
      field: 'userCount',
      headerName: 'Users',
      width: 100,
      align: 'center',
      headerAlign: 'center',
      type: 'number',
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
      field: 'is_initialized',
      headerName: 'สถานะ',
      width: 120,
      align: 'center',
      headerAlign: 'center',
      renderCell: (params) => (
        <Chip
          label={params.value ? 'เริ่มต้นแล้ว' : 'ยังไม่เริ่มต้น'}
          color={params.value ? 'success' : 'warning'}
          size="small"
        />
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
          >
            <DeleteIcon fontSize="small" />
          </IconButton>
        </Box>
      ),
    },
  ], [onEdit, onDelete])

  return (
    <Paper elevation={0} sx={{ height: 600, width: '100%', backgroundColor: 'transparent' }}>
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

