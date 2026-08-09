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
  Button,
} from '@mui/material'
import { DataGrid, GridColDef, GridRowsProp } from '@mui/x-data-grid'
import {
  Edit as EditIcon,
  Delete as DeleteIcon,
} from '@mui/icons-material'
import type { User, UserStatus } from '@/lib/api/types'
import { getRoleColor } from '@/types/roles'
import { USER_STATUS_LABELS } from '@/lib/user-status'
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
  onApprove?: (id: string) => void | Promise<void>
  onReject?: (id: string) => void
  onStatusToggle?: (id: string, nextStatus: 'active' | 'inactive') => void | Promise<void>
  onReviewDocuments?: (id: string) => void
  statusUpdatingId?: string | null
  data: User[]
  loading: boolean
  showReviewDocuments?: boolean
  verificationDocumentCounts?: Record<string, number>
}

function statusChipColor (
  status: UserStatus
): 'default' | 'success' | 'warning' | 'error' {
  if (status === 'active') return 'success'
  if (status === 'requested') return 'warning'
  if (status === 'rejected') return 'error'
  return 'default'
}

export default function UsersTable({
  onEdit,
  onDelete,
  onApprove,
  onReject,
  onStatusToggle,
  onReviewDocuments,
  statusUpdatingId = null,
  data,
  loading,
  showReviewDocuments = false,
  verificationDocumentCounts = {},
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
      status: user.status,
      rejection_reason: user.rejection_reason,
      avatar_url: user.avatar_url,
      organizations: user.organizations || [],
      document_count: verificationDocumentCounts[user.id] ?? 0,
    }))
  }, [data, verificationDocumentCounts])

  const columns: GridColDef[] = useMemo(() => {
    const cols: GridColDef[] = [
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
            size="small"
            color={getRoleColor(params.value)}
            variant="outlined"
            sx={adminQuietChipSx}
          />
        </Box>
      ),
    },
    {
      field: 'email',
      headerName: 'อีเมล',
      width: 200,
      flex: 1.2,
      minWidth: 160,
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
      field: 'status',
      headerName: 'สถานะ',
      width: 240,
      align: 'center',
      headerAlign: 'center',
      sortable: false,
      renderCell: (params) => {
        const locked = isLockedAdmin({ role: params.row.role, username: params.row.username })
        const busy = statusUpdatingId === params.row.id
        const status = params.row.status as UserStatus
        const label = USER_STATUS_LABELS[status] || status

        if (locked) {
          return (
            <Box sx={{ display: 'flex', alignItems: 'center', justifyContent: 'center', height: '100%' }}>
              <Chip
                label={label}
                color={statusChipColor(status)}
                size="small"
                variant="outlined"
                sx={adminQuietChipSx}
              />
            </Box>
          )
        }

        if (status === 'requested') {
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
              <Button
                size="small"
                variant="contained"
                color="success"
                disabled={busy || !onApprove}
                onClick={() => {
                  if (onApprove) void onApprove(params.row.id as string)
                }}
              >
                อนุมัติ
              </Button>
              <Button
                size="small"
                variant="outlined"
                color="error"
                disabled={busy || !onReject}
                onClick={() => {
                  if (onReject) onReject(params.row.id as string)
                }}
              >
                ปฏิเสธ
              </Button>
              {busy && <CircularProgress size={16} thickness={4} />}
            </Box>
          )
        }

        if (status === 'rejected') {
          const reason = (params.row.rejection_reason as string | null) || ''
          return (
            <Box sx={{ display: 'flex', alignItems: 'center', justifyContent: 'center', height: '100%' }}>
              <Tooltip title={reason || 'ไม่มีเหตุผลระบุ'}>
                <Chip
                  label={label}
                  color="error"
                  size="small"
                  variant="outlined"
                  sx={adminQuietChipSx}
                />
              </Tooltip>
            </Box>
          )
        }

        if (status === 'active' || status === 'inactive') {
          const isActive = status === 'active'
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
              <Tooltip title={isActive ? 'ปิดใช้งาน' : 'เปิดใช้งาน'}>
                <span>
                  <Switch
                    size="small"
                    checked={isActive}
                    disabled={busy || !onStatusToggle}
                    onChange={(_, checked) => {
                      if (onStatusToggle) {
                        void onStatusToggle(
                          params.row.id as string,
                          checked ? 'active' : 'inactive'
                        )
                      }
                    }}
                    inputProps={{ 'aria-label': isActive ? 'ปิดใช้งาน' : 'เปิดใช้งาน' }}
                  />
                </span>
              </Tooltip>
              <Typography variant="caption" color="text.secondary">
                {label}
              </Typography>
              {busy && <CircularProgress size={16} thickness={4} />}
            </Box>
          )
        }

        return (
          <Box sx={{ display: 'flex', alignItems: 'center', justifyContent: 'center', height: '100%' }}>
            <Chip label={label} size="small" variant="outlined" sx={adminQuietChipSx} />
          </Box>
        )
      },
    },
    ]

    if (showReviewDocuments) {
      cols.push({
        field: 'document_count',
        headerName: 'Review documents',
        width: 160,
        align: 'center',
        headerAlign: 'center',
        sortable: false,
        renderCell: (params) => {
          const role = params.row.role as string
          if (role !== 'Consult' && role !== 'Audit') {
            return (
              <Box sx={{ display: 'flex', alignItems: 'center', justifyContent: 'center', height: '100%' }}>
                <Typography variant="body2" color="text.disabled">
                  —
                </Typography>
              </Box>
            )
          }
          const count = Number(params.row.document_count) || 0
          return (
            <Box
              sx={{ display: 'flex', alignItems: 'center', justifyContent: 'center', height: '100%' }}
              onClick={(e) => e.stopPropagation()}
            >
              <Button
                size="small"
                variant="text"
                onClick={() => onReviewDocuments?.(params.row.id as string)}
                sx={{
                  textTransform: 'none',
                  minWidth: 0,
                  fontWeight: 600,
                  color: count === 0 ? 'text.disabled' : 'primary.main',
                }}
              >
                {count} ไฟล์
              </Button>
            </Box>
          )
        },
      })
    }

    cols.push(
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
      }
    )

    return cols
  }, [
    onEdit,
    onDelete,
    onApprove,
    onReject,
    onStatusToggle,
    onReviewDocuments,
    statusUpdatingId,
    showReviewDocuments,
  ])

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
