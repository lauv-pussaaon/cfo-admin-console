'use client'

import { useMemo } from 'react'
import { Box, IconButton, Paper, Chip, Avatar, Switch, Tooltip, CircularProgress } from '@mui/material'
import { DataGrid, GridColDef, GridRowsProp } from '@mui/x-data-grid'
import { 
  Edit as EditIcon, 
  Delete as DeleteIcon,
} from '@mui/icons-material'
import type { User } from '@/lib/api/types'
import { getRoleColor } from '@/types/roles'

interface Props {
  onEdit: (id: string) => void
  onDelete: (id: string) => void
  onApprovalChange?: (id: string, isApproved: boolean) => void | Promise<void>
  approvalUpdatingId?: string | null
  data: User[]
  loading: boolean
}

export default function UsersTable({
  onEdit,
  onDelete,
  onApprovalChange,
  approvalUpdatingId = null,
  data,
  loading,
}: Props) {
  // Helper function to check if user is the locked admin
  const isLockedAdmin = (user: { role: string; username: string }) => {
    return user.role === 'Admin' && user.username === 'admin'
  }

  const rows: GridRowsProp = useMemo(() => {
    return data.map((user) => ({
      id: user.id,
      name: user.name,
      username: user.username,
      email: user.email,
      role: user.role,
      is_approved: user.is_approved,
      avatar_url: user.avatar_url,
      organizations: user.organizations || [],
    }))
  }, [data])

  const columns: GridColDef[] = useMemo(() => [
    {
      field: 'name',
      headerName: 'ผู้ใช้',
      width: 250,
      flex: 1.5,
      minWidth: 200,
      renderCell: (params) => (
        <Box sx={{ display: 'flex', alignItems: 'center', gap: 2 }}>
          <Avatar
            src={params.row.avatar_url || undefined}
            alt={params.row.name}
            sx={{ width: 40, height: 40 }}
          >
            {params.row.name.charAt(0).toUpperCase()}
          </Avatar>
          <Box component="span" sx={{ fontWeight: 'medium' }}>
            {params.row.name}
          </Box>
        </Box>
      ),
    },
    {
      field: 'username',
      headerName: 'ชื่อผู้ใช้',
      width: 150,
      flex: 1,
      minWidth: 120,
    },
    {
      field: 'role',
      headerName: 'บทบาท',
      width: 150,
      align: 'center',
      headerAlign: 'center',
      renderCell: (params) => (
        <Chip
          label={params.value}
          color={getRoleColor(params.value)}
          size="small"
          sx={{
            fontWeight: 'medium',
          }}
        />
      ),
    },
    {
      field: 'email',
      headerName: 'อีเมล์',
      width: 250,
      flex: 1.5,
      minWidth: 200,
    },
    {
      field: 'is_approved',
      headerName: 'การอนุมัติ',
      width: 200,
      align: 'center',
      headerAlign: 'center',
      sortable: false,
      renderCell: (params) => {
        const locked = isLockedAdmin({ role: params.row.role, username: params.row.username })
        const busy = approvalUpdatingId === params.row.id
        const approved = Boolean(params.value)

        if (locked) {
          return (
            <Chip
              label={approved ? 'อนุมัติแล้ว' : 'ยังไม่อนุมัติ'}
              color={approved ? 'success' : 'warning'}
              size="small"
              sx={{ fontWeight: 'medium' }}
            />
          )
        }

        return (
          <Box
            sx={{
              display: 'flex',
              alignItems: 'center',
              justifyContent: 'center',
              gap: 1,
              height: '100%',
              width: '100%',
            }}
            onClick={(e) => e.stopPropagation()}
          >
            <Tooltip title={approved ? 'ปิดการอนุมัติ' : 'อนุมัติ'}>
              <span>
                <Switch
                  size="small"
                  checked={approved}
                  disabled={busy || !onApprovalChange}
                  onChange={(_, checked) => {
                    if (onApprovalChange) {
                      void onApprovalChange(params.row.id as string, checked)
                    }
                  }}
                  inputProps={{ 'aria-label': approved ? 'ปิดการอนุมัติ' : 'อนุมัติ' }}
                />
              </span>
            </Tooltip>
            {busy && <CircularProgress size={18} />}
          </Box>
        )
      },
    },
    {
      field: 'organizations',
      headerName: 'องค์กรที่ดูแล',
      width: 300,
      flex: 2,
      minWidth: 250,
      renderCell: (params) => {
        const orgs = params.row.organizations || []
        if (orgs.length === 0) {
          return <Box sx={{ color: 'text.secondary', fontStyle: 'italic' }}>-</Box>
        }
        return (
          <Box sx={{ display: 'flex', flexWrap: 'wrap', gap: 0.5 }}>
            {params.row.organizations.length}
          </Box>
        )
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
      renderCell: (params) => {
        const isLocked = isLockedAdmin({ role: params.row.role, username: params.row.username })
        return (
          <Box sx={{ display: 'flex', gap: 1, justifyContent: 'center', alignItems: 'center', height: '100%' }}>
            <IconButton 
              size="small" 
              onClick={() => onEdit(params.row.id)}
              disabled={isLocked}
              sx={{ 
                color: 'primary.main',
                '&:hover': { backgroundColor: 'primary.light', color: 'white' },
                '&.Mui-disabled': { color: 'text.disabled' }
              }}
              title={isLocked ? 'ไม่สามารถแก้ไขผู้ใช้ admin ได้' : 'แก้ไข'}
            >
              <EditIcon fontSize="small" />
            </IconButton>
            <IconButton 
              size="small" 
              onClick={() => onDelete(params.row.id)}
              disabled={isLocked}
              sx={{ 
                color: 'error.main',
                '&:hover': { backgroundColor: 'error.light', color: 'white' },
                '&.Mui-disabled': { color: 'text.disabled' }
              }}
              title={isLocked ? 'ไม่สามารถลบผู้ใช้ admin ได้' : 'ลบ'}
            >
              <DeleteIcon fontSize="small" />
            </IconButton>
          </Box>
        )
      },
    },
  ], [onEdit, onDelete, onApprovalChange, approvalUpdatingId])

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

