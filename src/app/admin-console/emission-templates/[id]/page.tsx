'use client'

import React, { useCallback, useEffect, useMemo, useState } from 'react'
import {
  Alert,
  Box,
  Button,
  Chip,
  Dialog,
  DialogActions,
  DialogContent,
  DialogTitle,
  FormControl,
  Grid,
  InputLabel,
  MenuItem,
  Select,
  Snackbar,
  Switch,
  TextField,
  Typography,
} from '@mui/material'
import { Add as AddIcon } from '@mui/icons-material'
import { DataGrid, GridColDef } from '@mui/x-data-grid'
import { useParams, useRouter } from 'next/navigation'
import { useForm, Controller } from 'react-hook-form'
import DeleteConfirmationDialog from '@/components/DeleteConfirmationDialog'
import type { ScopeCategory } from '@/types/emission-resources'
import type {
  EmissionTemplateWithRelations,
  TemplateActivityGroupWithRelations,
} from '@/types/emission-templates'

interface ActivityGroupFormValues {
  name_th: string
  name_en: string
  scope: number
  category_label: string
  subcategory_label: string
  scope_category_id: string
  scope_sub_category: string
  is_common: boolean
  sort_order: number
  status: 'active' | 'inactive'
}

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

  const { control, reset, handleSubmit, formState: { isSubmitting, errors } } = useForm<ActivityGroupFormValues>({
    defaultValues: {
      name_th: '',
      name_en: '',
      scope: 1,
      category_label: '',
      subcategory_label: '',
      scope_category_id: '',
      scope_sub_category: '',
      is_common: false,
      sort_order: 0,
      status: 'active',
    },
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

  useEffect(() => {
    if (!dialogOpen) return
    if (editTarget) {
      reset({
        name_th: editTarget.name_th ?? '',
        name_en: editTarget.name_en ?? '',
        scope: editTarget.scope ?? 1,
        category_label: editTarget.category_label ?? '',
        subcategory_label: editTarget.subcategory_label ?? '',
        scope_category_id: editTarget.scope_category_id ?? '',
        scope_sub_category: editTarget.scope_sub_category ?? '',
        is_common: !!editTarget.is_common,
        sort_order: editTarget.sort_order ?? 0,
        status: editTarget.status ?? 'active',
      })
    } else {
      reset({
        name_th: '',
        name_en: '',
        scope: 1,
        category_label: '',
        subcategory_label: '',
        scope_category_id: '',
        scope_sub_category: '',
        is_common: false,
        sort_order: 0,
        status: 'active',
      })
    }
  }, [dialogOpen, editTarget, reset])

  const onSaveGroup = async (values: ActivityGroupFormValues) => {
    try {
      const method = editTarget ? 'PUT' : 'POST'
      const url = editTarget ? `/api/template-activity-groups/${editTarget.id}` : '/api/template-activity-groups'
      const payload = {
        template_id: templateId,
        name_th: values.name_th,
        name_en: values.name_en,
        scope: values.scope,
        category_label: values.category_label || null,
        subcategory_label: values.subcategory_label || null,
        scope_category_id: values.scope_category_id || null,
        scope_sub_category: values.scope_sub_category || null,
        is_common: values.is_common,
        sort_order: values.sort_order,
        status: values.status,
      }

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
      { field: 'sort_order', headerName: 'Order', width: 80, type: 'number' },
      {
        field: 'name_en',
        headerName: 'Name',
        minWidth: 220,
        flex: 1,
        renderCell: (params) => (
          <Box>
            <Typography variant="body2" fontWeight={600}>{params.row.name_en}</Typography>
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
        field: 'category_label',
        headerName: 'Category',
        minWidth: 180,
        flex: 1,
        renderCell: (params) => params.value || '—',
      },
      {
        field: 'scope_category_id',
        headerName: 'Mapped Scope Category',
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
        sx={{
          border: '1px solid',
          borderColor: 'divider',
          borderRadius: 2,
          '& .MuiDataGrid-columnHeader': {
            backgroundColor: '#f8fafc',
            fontWeight: 600,
          },
        }}
      />

      <Dialog open={dialogOpen} onClose={!isSubmitting ? () => setDialogOpen(false) : undefined} maxWidth="md" fullWidth>
        <DialogTitle>{editTarget ? 'Edit Activity Group' : 'Add Activity Group'}</DialogTitle>
        <DialogContent dividers>
          <Box component="form" id="activity-group-form" onSubmit={handleSubmit(onSaveGroup)}>
            <Grid container spacing={2}>
              <Grid item xs={12} sm={6}>
                <Controller
                  name="name_en"
                  control={control}
                  rules={{ required: 'English name is required' }}
                  render={({ field }) => (
                    <TextField
                      {...field}
                      label="Name (English)"
                      fullWidth
                      size="small"
                      error={!!errors.name_en}
                      helperText={errors.name_en?.message}
                    />
                  )}
                />
              </Grid>
              <Grid item xs={12} sm={6}>
                <Controller
                  name="name_th"
                  control={control}
                  rules={{ required: 'Thai name is required' }}
                  render={({ field }) => (
                    <TextField
                      {...field}
                      label="Name (Thai)"
                      fullWidth
                      size="small"
                      error={!!errors.name_th}
                      helperText={errors.name_th?.message}
                    />
                  )}
                />
              </Grid>

              <Grid item xs={12} sm={4}>
                <Controller
                  name="scope"
                  control={control}
                  render={({ field }) => (
                    <FormControl fullWidth size="small">
                      <InputLabel>Scope</InputLabel>
                      <Select {...field} label="Scope">
                        {[1, 2, 3, 4].map((s) => (
                          <MenuItem key={s} value={s}>Scope {s}</MenuItem>
                        ))}
                      </Select>
                    </FormControl>
                  )}
                />
              </Grid>
              <Grid item xs={12} sm={4}>
                <Controller
                  name="sort_order"
                  control={control}
                  render={({ field }) => (
                    <TextField
                      {...field}
                      label="Sort Order"
                      type="number"
                      fullWidth
                      size="small"
                      onChange={(e) => field.onChange(parseInt(e.target.value || '0', 10))}
                    />
                  )}
                />
              </Grid>
              <Grid item xs={12} sm={4}>
                <Controller
                  name="status"
                  control={control}
                  render={({ field }) => (
                    <FormControl fullWidth size="small">
                      <InputLabel>Status</InputLabel>
                      <Select {...field} label="Status">
                        <MenuItem value="active">active</MenuItem>
                        <MenuItem value="inactive">inactive</MenuItem>
                      </Select>
                    </FormControl>
                  )}
                />
              </Grid>

              <Grid item xs={12} sm={6}>
                <Controller
                  name="category_label"
                  control={control}
                  render={({ field }) => <TextField {...field} label="Category Label" fullWidth size="small" />}
                />
              </Grid>
              <Grid item xs={12} sm={6}>
                <Controller
                  name="subcategory_label"
                  control={control}
                  render={({ field }) => <TextField {...field} label="Subcategory Label" fullWidth size="small" />}
                />
              </Grid>

              <Grid item xs={12} sm={6}>
                <Controller
                  name="scope_category_id"
                  control={control}
                  render={({ field }) => (
                    <FormControl fullWidth size="small">
                      <InputLabel>Mapped Scope Category</InputLabel>
                      <Select {...field} label="Mapped Scope Category">
                        <MenuItem value="">None</MenuItem>
                        {categories.map((cat) => (
                          <MenuItem key={cat.id} value={cat.id}>
                            S{cat.scope} - {cat.name_en}
                          </MenuItem>
                        ))}
                      </Select>
                    </FormControl>
                  )}
                />
              </Grid>
              <Grid item xs={12} sm={6}>
                <Controller
                  name="scope_sub_category"
                  control={control}
                  render={({ field }) => (
                    <TextField
                      {...field}
                      label="Scope Sub-category (future mapping key)"
                      fullWidth
                      size="small"
                    />
                  )}
                />
              </Grid>

              <Grid item xs={12}>
                <Controller
                  name="is_common"
                  control={control}
                  render={({ field }) => (
                    <Box sx={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                      <Typography variant="body2">Common Group Across Industries</Typography>
                      <Switch checked={field.value} onChange={(e) => field.onChange(e.target.checked)} />
                    </Box>
                  )}
                />
              </Grid>
            </Grid>
          </Box>
        </DialogContent>
        <DialogActions>
          <Button onClick={() => setDialogOpen(false)} variant="outlined" color="inherit" disabled={isSubmitting}>
            Cancel
          </Button>
          <Button type="submit" form="activity-group-form" variant="contained" disabled={isSubmitting}>
            {editTarget ? 'Update' : 'Add Group'}
          </Button>
        </DialogActions>
      </Dialog>

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
