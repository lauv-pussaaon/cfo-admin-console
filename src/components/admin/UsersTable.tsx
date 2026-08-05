'use client'

import { useMemo } from 'react'
import {
  Box,
  IconButton,
  Paper,
  Chip,
  Avatar,
  Switch,
  Tooltip,
  CircularProgress,
  Typography,
} from '@mui/material'
import { DataGrid, GridColDef, GridRowsProp } from '@mui/x-data-grid'
import {
  Edit as EditIcon,
  Delete as DeleteIcon,
} from '@mui/icons-material'
import type { User } from '@/lib/api/types'
import { getRoleColor } from '@/types/roles'
import {
  adminDataGridPaperSx,
  adminDataGridProps,
  adminDataGridSx,
  adminGhostIconButtonSx,
  adminQuietChipSx,
} from '@/lib/admin-ui-styles'

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
        <Box sx={{ display: 'flex', alignItems: 'center', gap: 1.5, height: '100%', minWidth: 0 }}>
          <Avatar
            src={params.row.avatar_url || undefined}
            alt={params.row.name}
            sx={{
              width: 44,
              height: 44,
              fontSize: '0.95rem',
              fontWeight: 600,
              bgcolor: 'grey.100',
              color: 'text.secondary',
            }}
          >
            {params.row.name.charAt(0).toUpperCase()}
          </Avatar>
          <Typography
            variant="body2"
            sx={{
              fontWeight: 600,
              color: 'text.primary',
              overflow: 'hidden',
              textOverflow: 'ellipsis',
              whiteSpace: 'nowrap',
            }}
          >
            {params.row.name}
          </Typography>
        </Box>
      ),
    },
    {
      field: 'username',
      headerName: 'ชื่อผู้ใช้',
      width: 150,
      flex: 1,
      minWidth: 120,
      renderCell: (params) => (
        <Box sx={{ display: 'flex', alignItems: 'center', height: '100%' }}>
          <Typography variant="body2" color="text.secondary">
            {params.value}
          </Typography>
        </Box>
      ),
    },
    {
      field: 'role',
      headerName: 'บทบาท',
      width: 150,
      align: 'center',
      headerAlign: 'center',
      renderCell: (params) => (
        <Box sx={{ display: 'flex', alignItems: 'center', justifyContent: 'center', height: '100%' }}>
          <Chip
            label={params.value}
            color={getRoleColor(params.value)}
            size="small"
            variant="outlined"
            sx={adminQuietChipSx}
          />
        </Box>
      ),
    },
    {
      field: 'email',
      headerName: 'อีเมล์',
      width: 250,
      flex: 1.5,
      minWidth: 200,
      renderCell: (params) => (
        <Box sx={{ display: 'flex', alignItems: 'center', height: '100%', minWidth: 0 }}>
          <Typography
            variant="body2"
            color="text.secondary"
            sx={{ overflow: 'hidden', textOverflow: 'ellipsis', whiteSpace: 'nowrap' }}
          >
            {params.value}
          </Typography>
        </Box>
      ),
    },
    {
      field: 'is_approved',
      headerName: 'การอนุมัติ',
      width: 180,
      align: 'center',
      headerAlign: 'center',
      sortable: false,
      renderCell: (params) => {
        const locked = isLockedAdmin({ role: params.row.role, username: params.row.username })
        const busy = approvalUpdatingId === params.row.id
        const approved = Boolean(params.value)

        if (locked) {
          return (
            <Box sx={{ display: 'flex', alignItems: 'center', justifyContent: 'center', height: '100%' }}>
              <Chip
                label={approved ? 'อนุมัติแล้ว' : 'ยังไม่อนุมัติ'}
                color={approved ? 'success' : 'warning'}
                size="small"
                variant="outlined"
                sx={adminQuietChipSx}
              />
            </Box>
          )
        }

        return (
          <Box
            sx={{
              display: 'flex',
              alignItems: 'center',
              justifyContent: 'center',
              gap: 0.75,
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
            {busy && <CircularProgress size={16} thickness={4} />}
          </Box>
        )
      },
    },
    {
      field: 'organizations',
      headerName: 'องค์กรที่ดูแล',
      width: 180,
      flex: 1,
      minWidth: 140,
      renderCell: (params) => {
        const orgs = params.row.organizations || []
        if (orgs.length === 0) {
          return (
            <Box sx={{ display: 'flex', alignItems: 'center', height: '100%' }}>
              <Typography variant="body2" color="text.disabled">
                —
              </Typography>
            </Box>
          )
        }
        return (
          <Box sx={{ display: 'flex', alignItems: 'center', height: '100%' }}>
            <Chip
              label={`${orgs.length} องค์กร`}
              size="small"
              variant="outlined"
              sx={{
                height: 28,
                borderRadius: 1.5,
                fontWeight: 500,
                color: 'text.secondary',
                borderColor: 'divider',
                bgcolor: 'transparent',
              }}
            />
          </Box>
        )
      },
    },
    {
      field: 'actions',
      headerName: 'การดำเนินการ',
      width: 120,
      align: 'center',
      headerAlign: 'center',
      sortable: false,
      filterable: false,
      renderCell: (params) => {
        const isLocked = isLockedAdmin({ role: params.row.role, username: params.row.username })
        return (
          <Box
            sx={{
              display: 'flex',
              gap: 0.5,
              justifyContent: 'center',
              alignItems: 'center',
              height: '100%',
            }}
          >
            <IconButton
              size="small"
              onClick={() => onEdit(params.row.id)}
              disabled={isLocked}
              sx={adminGhostIconButtonSx.primary}
              title={isLocked ? 'ไม่สามารถแก้ไขผู้ใช้ admin ได้' : 'แก้ไข'}
            >
              <EditIcon fontSize="small" />
            </IconButton>
            <IconButton
              size="small"
              onClick={() => onDelete(params.row.id)}
              disabled={isLocked}
              sx={adminGhostIconButtonSx.error}
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
    <Paper elevation={0} sx={adminDataGridPaperSx}>
      <DataGrid
        rows={rows}
        columns={columns}
        loading={loading}
        disableRowSelectionOnClick
        {...adminDataGridProps}
        pageSizeOptions={[10, 25, 50, 100]}
        initialState={{
          pagination: {
            paginationModel: { pageSize: 25 },
          },
        }}
        sx={adminDataGridSx}
      />
    </Paper>
  )
}
