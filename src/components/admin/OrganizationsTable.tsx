'use client'

import { useMemo } from 'react'
import { Box, IconButton, Paper, Chip, Typography, Badge } from '@mui/material'
import { DataGrid, GridColDef, GridRenderCellParams, GridRowsProp } from '@mui/x-data-grid'
import {
  Edit as EditIcon,
  Delete as DeleteIcon,
  InfoOutlined as InfoOutlinedIcon,
  FileDownload as FileDownloadIcon,
  PersonAdd as PersonAddIcon,
  ChatBubbleOutline as ChatBubbleOutlineIcon,
  Insights as InsightsIcon,
} from '@mui/icons-material'
import type { OrganizationWithStats } from '@/types/database'
import type { OrganizationWithCreator } from '@/lib/api/organizations'
import { DEFAULT_ACCOUNT_TYPE } from '@/types/account-types'
import { formatPackagePeriod } from '@/types/package-periods'
import { formatRelativeTimeTh } from '@/lib/utils/relative-time'

export type OrganizationsTableVariant = 'admin' | 'dealer' | 'support'

export interface SupportInboxMeta {
  has_unread_from_client: boolean
  unread_count: number
  last_message_at: string | null
  last_message_preview: string | null
}

interface Props {
  data: (OrganizationWithStats | OrganizationWithCreator)[]
  loading: boolean
  variant?: OrganizationsTableVariant
  onEdit?: (id: string) => void
  onDelete?: (id: string) => void
  onExport?: (id: string) => void
  onInvite?: (id: string) => void
  onViewDetail?: (id: string) => void
  onRowClick?: (id: string) => void
  onChatClick?: (id: string) => void
  onUsageClick?: (id: string) => void
  unreadByOrganization?: Record<string, boolean>
  inboxByOrganization?: Record<string, SupportInboxMeta>
}

function ellipsisCell (params: GridRenderCellParams) {
  const value = String(params.value ?? '')
  return (
    <Box
      sx={{
        overflow: 'hidden',
        textOverflow: 'ellipsis',
        whiteSpace: 'nowrap',
        maxWidth: '100%',
      }}
      title={value}
    >
      {value}
    </Box>
  )
}

export default function OrganizationsTable ({
  data,
  loading,
  variant = 'dealer',
  onEdit,
  onDelete,
  onExport,
  onInvite,
  onViewDetail,
  onRowClick,
  onChatClick,
  onUsageClick,
  unreadByOrganization = {},
  inboxByOrganization = {},
}: Props) {
  const rows: GridRowsProp = useMemo(() => {
    return data.map((org) => {
      const inbox = inboxByOrganization[org.id]
      return {
        id: org.id,
        name: org.name,
        code: org.code || '-',
        description: org.description || '-',
        account_type: org.account_type || DEFAULT_ACCOUNT_TYPE,
        package_period: formatPackagePeriod(org.package_start, org.package_end),
        is_initialized: org.is_initialized || false,
        factory_admin_email: org.factory_admin_email || '-',
        last_message_at: inbox?.last_message_at ?? null,
        last_message_preview: inbox?.last_message_preview ?? null,
        unread_count: inbox?.unread_count ?? 0,
        has_unread: inbox?.has_unread_from_client ?? unreadByOrganization[org.id] ?? false,
      }
    })
  }, [data, inboxByOrganization, unreadByOrganization])

  const columns: GridColDef[] = useMemo(() => {
    if (variant === 'support') {
      return [
        {
          field: 'name',
          headerName: 'ชื่อองค์กร',
          width: 200,
          flex: 1,
          minWidth: 150,
          renderCell: (params) => {
            const hasUnread = Boolean(params.row.has_unread)
            return (
              <Box
                sx={{
                  display: 'flex',
                  alignItems: 'center',
                  height: '100%',
                  minWidth: 0,
                }}
              >
                <Typography
                  variant="body2"
                  sx={{
                    fontWeight: hasUnread ? 700 : 500,
                    overflow: 'hidden',
                    textOverflow: 'ellipsis',
                    whiteSpace: 'nowrap',
                  }}
                  title={String(params.value ?? '')}
                >
                  {params.value}
                </Typography>
              </Box>
            )
          },
        },
        {
          field: 'code',
          headerName: 'รหัส',
          width: 110,
          minWidth: 90,
        },
        {
          field: 'status',
          headerName: 'สถานะ',
          width: 130,
          minWidth: 120,
          renderCell: (params) => {
            const isInitialized = params.row.is_initialized
            return (
              <Chip
                label={isInitialized ? 'Deployed' : 'Pending'}
                color={isInitialized ? 'success' : 'warning'}
                size="small"
                sx={{ fontWeight: 500 }}
              />
            )
          },
        },
        {
          field: 'factory_admin_email',
          headerName: 'Client Admin',
          width: 180,
          flex: 0.9,
          minWidth: 150,
          renderCell: ellipsisCell,
        },
        {
          field: 'last_message_at',
          headerName: 'ล่าสุด',
          width: 130,
          minWidth: 110,
          sortable: false,
          renderCell: (params) => (
            <Typography variant="body2" color="text.secondary" sx={{ fontVariantNumeric: 'tabular-nums' }}>
              {formatRelativeTimeTh(params.row.last_message_at)}
            </Typography>
          ),
        },
        {
          field: 'last_message_preview',
          headerName: 'ข้อความล่าสุด',
          flex: 1.2,
          minWidth: 180,
          sortable: false,
          renderCell: (params) => {
            const preview = params.row.last_message_preview as string | null
            const hasUnread = Boolean(params.row.has_unread)
            return (
              <Typography
                variant="body2"
                color={preview ? 'text.primary' : 'text.secondary'}
                sx={{
                  overflow: 'hidden',
                  textOverflow: 'ellipsis',
                  whiteSpace: 'nowrap',
                  fontWeight: hasUnread && preview ? 600 : 400,
                }}
                title={preview || 'ยังไม่มีข้อความ'}
              >
                {preview || 'ยังไม่มีข้อความ'}
              </Typography>
            )
          },
        },
        {
          field: 'actions',
          headerName: '',
          width: 100,
          align: 'center',
          headerAlign: 'center',
          sortable: false,
          filterable: false,
          renderCell: (params) => {
            const orgId = params.row.id as string
            const unreadCount = Number(params.row.unread_count ?? 0)
            const hasUnread = Boolean(params.row.has_unread)
            return (
              <Box sx={{ display: 'flex', justifyContent: 'center', gap: 0.25, height: '100%', alignItems: 'center' }}>
                <IconButton
                  size="small"
                  onClick={(event) => {
                    event.stopPropagation()
                    onChatClick?.(orgId)
                  }}
                  sx={{
                    color: hasUnread ? 'error.main' : 'primary.main',
                    '&:hover': { backgroundColor: 'action.hover' },
                  }}
                  title="Open support chat"
                >
                  <Badge
                    color="error"
                    badgeContent={unreadCount > 1 ? unreadCount : undefined}
                    variant={unreadCount > 1 ? 'standard' : 'dot'}
                    overlap="circular"
                    invisible={!hasUnread}
                  >
                    <ChatBubbleOutlineIcon fontSize="small" />
                  </Badge>
                </IconButton>
                <IconButton
                  size="small"
                  onClick={(event) => {
                    event.stopPropagation()
                    onUsageClick?.(orgId)
                  }}
                  sx={{
                    color: 'text.secondary',
                    '&:hover': { backgroundColor: 'action.hover', color: 'primary.main' },
                  }}
                  title="Client usage"
                >
                  <InsightsIcon fontSize="small" />
                </IconButton>
              </Box>
            )
          },
        },
      ]
    }

    const base: GridColDef[] = [
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
    ]

    if (variant === 'dealer') {
      base.push({
        field: 'description',
        headerName: 'คำอธิบาย',
        width: 250,
        flex: 1.5,
        minWidth: 200,
        renderCell: ellipsisCell,
      })
    }

    base.push(
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
        renderCell: ellipsisCell,
      },
      {
        field: 'account_type',
        headerName: 'ประเภทบัญชี',
        width: 160,
        flex: 0.8,
        minWidth: 140,
        renderCell: (params) => (
          <Chip
            label={params.value}
            size="small"
            variant="outlined"
            sx={{ fontWeight: 500 }}
          />
        ),
      },
      {
        field: 'package_period',
        headerName: 'แพ็กเกจ',
        width: 260,
        flex: 1.2,
        minWidth: 220,
        renderCell: (params) => (
          <Box sx={{ display: 'flex', alignItems: 'center', height: '100%' }}>
            <Typography variant="body2" sx={{ fontVariantNumeric: 'tabular-nums' }}>
              {params.value}
            </Typography>
          </Box>
        ),
      }
    )

    const actionWidth =
      variant === 'dealer'
        ? (onExport ? 50 : 0) + (onInvite ? 50 : 0) + (onViewDetail ? 50 : 0) + 150
        : (onViewDetail ? 50 : 0) + 150

    return [
      ...base,
      {
        field: 'actions',
        headerName: 'การดำเนินการ',
        width: actionWidth,
        align: 'center',
        headerAlign: 'center',
        sortable: false,
        filterable: false,
        renderCell: (params) => (
          <Box
            sx={{ display: 'flex', justifyContent: 'center', gap: 1, height: '100%' }}
            onClick={(event) => event.stopPropagation()}
          >
            {variant === 'dealer' && onExport && (
              <IconButton
                size="small"
                onClick={() => onExport(params.row.id)}
                sx={{
                  color: 'info.main',
                  '&:hover': {
                    backgroundColor: 'info.light',
                    color: 'info.dark',
                  },
                }}
                title="ส่งออกข้อมูล"
              >
                <FileDownloadIcon fontSize="small" />
              </IconButton>
            )}
            {variant === 'dealer' && onInvite && params.row.is_initialized && (
              <IconButton
                size="small"
                onClick={() => onInvite(params.row.id)}
                sx={{
                  color: 'success.main',
                  '&:hover': {
                    backgroundColor: 'success.light',
                    color: 'success.dark',
                  },
                }}
                title="เชิญ Client Admin"
              >
                <PersonAddIcon fontSize="small" />
              </IconButton>
            )}
            {onViewDetail && (
              <IconButton
                size="small"
                onClick={() => onViewDetail(params.row.id)}
                sx={{
                  color: 'text.secondary',
                  '&:hover': {
                    backgroundColor: 'action.hover',
                    color: 'primary.main',
                  },
                }}
                title="ดูรายละเอียด"
              >
                <InfoOutlinedIcon fontSize="small" />
              </IconButton>
            )}
            <IconButton
              size="small"
              onClick={() => onEdit?.(params.row.id)}
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
              onClick={() => onDelete?.(params.row.id)}
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
    ]
  }, [variant, onEdit, onDelete, onExport, onInvite, onViewDetail, onChatClick, onUsageClick])

  return (
    <Paper elevation={0} sx={{ minHeight: 400, width: '100%', backgroundColor: 'transparent', overflowX: 'scroll' }}>
      <DataGrid
        rows={rows}
        columns={columns}
        loading={loading}
        disableRowSelectionOnClick
        getRowClassName={(params) => (params.row.has_unread ? 'support-row-unread' : '')}
        onRowClick={
          onRowClick
            ? (params) => {
                onRowClick(params.row.id as string)
              }
            : undefined
        }
        pageSizeOptions={[10, 25, 50, 100]}
        initialState={{
          pagination: {
            paginationModel: { pageSize: 10 },
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
            ...(onRowClick ? { cursor: 'pointer' } : {}),
          },
          '& .MuiDataGrid-row.support-row-unread': {
            backgroundColor: 'rgba(211, 47, 47, 0.04)',
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
