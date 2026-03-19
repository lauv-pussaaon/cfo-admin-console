'use client'

import React, { useCallback, useEffect, useMemo, useState } from 'react'
import {
  Alert,
  Box,
  Button,
  Chip,
  Snackbar,
  Typography,
} from '@mui/material'
import { Add as AddIcon } from '@mui/icons-material'
import { DataGrid, GridColDef } from '@mui/x-data-grid'
import { useParams, useRouter } from 'next/navigation'
import ActivityGroupFormDialog from '@/components/admin/emission-templates/ActivityGroupFormDialog'
import DeleteConfirmationDialog from '@/components/DeleteConfirmationDialog'
import type { ScopeCategory } from '@/types/emission-resources'
import type {
  EmissionTemplateWithRelations,
  TemplateActivityGroupWithRelations,
} from '@/types/emission-templates'

export default function TemplateDetailPage() {
  const params = useParams<{ id: string }>()
  const router = useRouter()
  const templateId = params.id

  const [template, setTemplate] = useState<EmissionTemplateWithRelations | null>(null)
  const [groups, setGroups] = useState<TemplateActivityGroupWithRelations[]>([])
  const [categories, setCategories] = useState<ScopeCategory[]>([])
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)
  const [dialogOpen, setDialogOpen] = useState(false)
  const [editTarget, setEditTarget] = useState<TemplateActivityGroupWithRelations | null>(null)
  const [deleteTarget, setDeleteTarget] = useState<TemplateActivityGroupWithRelations | null>(null)
  const [isDeleting, setIsDeleting] = useState(false)
  const [deleteError, setDeleteError] = useState<string | null>(null)
  const [snackbar, setSnackbar] = useState<{ open: boolean; message: string; severity: 'success' | 'error' }>({
    open: false,
    message: '',
    severity: 'success',
  })

  const showSnackbar = (message: string, severity: 'success' | 'error' = 'success') => {
    setSnackbar({ open: true, message, severity })
  }

  const fetchPageData = useCallback(async () => {
    setLoading(true)
    setError(null)
    try {
      const [templateRes, groupsRes, categoriesRes] = await Promise.all([
        fetch(`/api/emission-templates/${templateId}`),
        fetch(`/api/template-activity-groups?template_id=${templateId}`),
        fetch('/api/emission-categories'),
      ])

      if (!templateRes.ok) throw new Error('Failed to fetch template')
      if (!groupsRes.ok) throw new Error('Failed to fetch activity groups')
      if (!categoriesRes.ok) throw new Error('Failed to fetch categories')

      const templateJson = await templateRes.json()
      const groupsJson = await groupsRes.json()
      const categoriesJson = await categoriesRes.json()

      setTemplate(templateJson)
      setGroups(groupsJson.data ?? [])
      setCategories(categoriesJson.data ?? [])
    } catch (err) {
      console.error(err)
      setError('Failed to load template detail')
    } finally {
      setLoading(false)
    }
  }, [templateId])

  useEffect(() => {
    fetchPageData()
  }, [fetchPageData])

  const onSaveGroup = async (payload: {
    template_id: string
    name_th: string
    name_en: string
    scope: number
    scope_category_id: string | null
    scope_sub_category?: string | null
    is_common: boolean
    sort_order: number
    status: string
  }) => {
    try {
      const method = editTarget ? 'PUT' : 'POST'
      const url = editTarget ? `/api/template-activity-groups/${editTarget.id}` : '/api/template-activity-groups'

      const res = await fetch(url, {
        method,
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(payload),
      })
      if (!res.ok) throw new Error('Save failed')

      setDialogOpen(false)
      setEditTarget(null)
      showSnackbar(editTarget ? 'Activity group updated' : 'Activity group added')
      fetchPageData()
    } catch (err) {
      console.error(err)
      showSnackbar('Failed to save activity group', 'error')
    }
  }

  const handleDeleteConfirm = async () => {
    if (!deleteTarget) return
    setIsDeleting(true)
    setDeleteError(null)
    try {
      const res = await fetch(`/api/template-activity-groups/${deleteTarget.id}`, { method: 'DELETE' })
      if (!res.ok) throw new Error('Delete failed')
      setDeleteTarget(null)
      showSnackbar('Activity group deleted')
      fetchPageData()
    } catch {
      setDeleteError('Failed to delete activity group. Please try again.')
    } finally {
      setIsDeleting(false)
    }
  }

  const columns = useMemo<GridColDef[]>(
    () => [
      {
        field: 'name_en',
        headerName: 'Name',
        minWidth: 220,
        flex: 1,
        renderCell: (params) => (
          <Box>
            <Typography variant="body2" fontWeight={600}>{params.row.name_en}</Typography>
          </Box>
        ),
      },
      {
        field: 'name_th',
        headerName: 'Name (Thai)',
        minWidth: 220,
        flex: 1,
        renderCell: (params) => (
          <Box>
            <Typography variant="caption" color="text.secondary">{params.row.name_th}</Typography>
          </Box>
        ),
      },
      {
        field: 'scope',
        headerName: 'Scope',
        width: 90,
        renderCell: (params) => (params.value ? <Chip label={`S${params.value}`} size="small" /> : '—'),
      },
      {
        field: 'scope_category_id',
        headerName: 'Scope Category',
        minWidth: 240,
        flex: 1,
        renderCell: (params) => params.row.scope_category?.name_en ?? '—',
      },
      {
        field: 'is_common',
        headerName: 'Common',
        width: 100,
        renderCell: (params) => (
          <Chip
            label={params.value ? 'Yes' : 'No'}
            size="small"
            color={params.value ? 'success' : 'default'}
            variant={params.value ? 'filled' : 'outlined'}
          />
        ),
      },
      {
        field: 'status',
        headerName: 'Status',
        width: 110,
        renderCell: (params) => (
          <Chip
            label={params.value}
            size="small"
            color={params.value === 'active' ? 'success' : 'default'}
            variant={params.value === 'active' ? 'filled' : 'outlined'}
          />
        ),
      },
      {
        field: 'actions',
        headerName: '',
        width: 180,
        sortable: false,
        disableColumnMenu: true,
        renderCell: (params) => (
          <Box sx={{ display: 'flex', gap: 1 }}>
            <Button size="small" variant="outlined" onClick={() => { setEditTarget(params.row); setDialogOpen(true) }}>
              Edit
            </Button>
            <Button size="small" color="error" variant="outlined" onClick={() => setDeleteTarget(params.row)}>
              Delete
            </Button>
          </Box>
        ),
      },
    ],
    []
  )

  return (
    <Box sx={{ p: 3 }}>
      <Button variant="text" onClick={() => router.push('/admin-console/emission-templates')} sx={{ mb: 2 }}>
        ← Back to templates
      </Button>

      <Box sx={{ mb: 2 }}>
        <Typography variant="h4" fontWeight={700}>
          {template?.name_en ?? 'Template'}
        </Typography>
        <Typography variant="body2" color="text.secondary">
          Manage activity groups. Each group can map to one scope category or sub-category for future fuel-resource mapping.
        </Typography>
      </Box>

      {error && (
        <Alert severity="error" sx={{ mb: 2 }} onClose={() => setError(null)}>
          {error}
        </Alert>
      )}

      <Box sx={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', mb: 1.5 }}>
        <Typography variant="subtitle2" color="text.secondary">
          {(groups.length || 0).toLocaleString()} activity groups
        </Typography>
        <Button variant="contained" startIcon={<AddIcon />} onClick={() => { setEditTarget(null); setDialogOpen(true) }}>
          Add Group
        </Button>
      </Box>

      <DataGrid
        autoHeight
        rows={groups}
        columns={columns}
        loading={loading}
        disableRowSelectionOnClick
        pageSizeOptions={[25, 50, 100]}
        initialState={{ pagination: { paginationModel: { pageSize: 25, page: 0 } } }}
        rowHeight={80}
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
            paddingTop: 1,
            paddingBottom: 1,
          },
        }}
      />

      <ActivityGroupFormDialog
        open={dialogOpen}
        onClose={() => { setDialogOpen(false); setEditTarget(null) }}
        onSave={onSaveGroup}
        editTarget={editTarget}
        templateId={templateId}
        categories={categories}
      />

      <DeleteConfirmationDialog
        open={!!deleteTarget}
        onClose={() => {
          setDeleteTarget(null)
          setDeleteError(null)
        }}
        onConfirm={handleDeleteConfirm}
        title="Delete Activity Group"
        message={`Are you sure you want to delete "${deleteTarget?.name_en}"?`}
        description="This action soft-deletes the activity group and can affect template structures used by clients."
        isDeleting={isDeleting}
        error={deleteError}
      />

      <Snackbar
        open={snackbar.open}
        autoHideDuration={4000}
        onClose={() => setSnackbar((s) => ({ ...s, open: false }))}
        anchorOrigin={{ vertical: 'bottom', horizontal: 'right' }}
      >
        <Alert severity={snackbar.severity} onClose={() => setSnackbar((s) => ({ ...s, open: false }))}>
          {snackbar.message}
        </Alert>
      </Snackbar>
    </Box>
  )
}
