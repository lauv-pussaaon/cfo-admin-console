'use client'

import React, { useCallback, useEffect, useState } from 'react'
import {
  Alert,
  Box,
  Button,
  Chip,
  Collapse,
  IconButton,
  Paper,
  Snackbar,
  Table,
  TableBody,
  TableCell,
  TableContainer,
  TableHead,
  TableRow,
  Typography,
} from '@mui/material'
import { Add as AddIcon, ExpandLess as ExpandLessIcon, ExpandMore as ExpandMoreIcon } from '@mui/icons-material'
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
  const [expandedIds, setExpandedIds] = useState<Set<string>>(new Set())

  const toggleExpand = (id: string) => {
    setExpandedIds((prev) => {
      const next = new Set(prev)
      if (next.has(id)) next.delete(id)
      else next.add(id)
      return next
    })
  }

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
    fuel_resource_mappings?: { fuel_resource_id: string; note?: string | null }[]
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

  const sortedGroups = [...groups].sort((a, b) => (a.sort_order ?? 0) - (b.sort_order ?? 0))

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

      <TableContainer component={Paper} variant="outlined" sx={{ borderRadius: 2 }}>
        <Table size="small">
          <TableHead>
            <TableRow sx={{ backgroundColor: '#f8fafc' }}>
              <TableCell sx={{ width: 48 }} />
              <TableCell sx={{ fontWeight: 600 }}>Name</TableCell>
              <TableCell sx={{ fontWeight: 600, width: 90 }}>Scope</TableCell>
              <TableCell sx={{ fontWeight: 600, minWidth: 200 }}>Scope Category</TableCell>
              <TableCell sx={{ fontWeight: 600, width: 90 }}>Common</TableCell>
              <TableCell sx={{ fontWeight: 600, width: 100 }}>Status</TableCell>
              <TableCell sx={{ fontWeight: 600, width: 160 }} align="right">
                Actions
              </TableCell>
            </TableRow>
          </TableHead>
          <TableBody>
            {loading ? (
              <TableRow>
                <TableCell colSpan={7} align="center" sx={{ py: 4 }}>
                  Loading…
                </TableCell>
              </TableRow>
            ) : (
              sortedGroups.map((group) => (
                <React.Fragment key={group.id}>
                  <TableRow hover sx={{ '& > *': { borderBottom: 'unset' } }}>
                    <TableCell>
                      <IconButton size="small" onClick={() => toggleExpand(group.id)} aria-label="expand row">
                        {expandedIds.has(group.id) ? <ExpandLessIcon /> : <ExpandMoreIcon />}
                      </IconButton>
                    </TableCell>
                    <TableCell>
                      <Box>
                        <Typography variant="body2" fontWeight={600}>
                          {group.name_en}
                        </Typography>
                        <Typography variant="caption" color="text.secondary">
                          {group.name_th}
                        </Typography>
                      </Box>
                    </TableCell>
                    <TableCell>{group.scope ? <Chip label={`S${group.scope}`} size="small" /> : '—'}</TableCell>
                    <TableCell>{group.scope_category?.name_en ?? '—'}</TableCell>
                    <TableCell>
                      <Chip
                        label={group.is_common ? 'Yes' : 'No'}
                        size="small"
                        color={group.is_common ? 'success' : 'default'}
                        variant={group.is_common ? 'filled' : 'outlined'}
                      />
                    </TableCell>
                    <TableCell>
                      <Chip
                        label={group.status}
                        size="small"
                        color={group.status === 'active' ? 'success' : 'default'}
                        variant={group.status === 'active' ? 'filled' : 'outlined'}
                      />
                    </TableCell>
                    <TableCell align="right">
                      <Box sx={{ display: 'flex', gap: 1, justifyContent: 'flex-end' }}>
                        <Button size="small" variant="outlined" onClick={() => { setEditTarget(group); setDialogOpen(true) }}>
                          Edit
                        </Button>
                        <Button size="small" color="error" variant="outlined" onClick={() => setDeleteTarget(group)}>
                          Delete
                        </Button>
                      </Box>
                    </TableCell>
                  </TableRow>
                  <TableRow>
                    <TableCell colSpan={7} sx={{ py: 0, borderBottom: expandedIds.has(group.id) ? 1 : 0 }}>
                      <Collapse in={expandedIds.has(group.id)} timeout="auto" unmountOnExit>
                        <Box sx={{ py: 2, pl: 6 }}>
                          <Typography variant="subtitle2" color="text.secondary" sx={{ mb: 1 }}>
                            Mapped Fuel Resources ({(group.fuel_resource_mappings?.length ?? 0)})
                          </Typography>
                          {(group.fuel_resource_mappings?.length ?? 0) === 0 ? (
                            <Typography variant="body2" color="text.secondary">
                              No fuel resources mapped.
                            </Typography>
                          ) : (
                            <Table size="small" sx={{ maxWidth: 800 }}>
                              <TableHead>
                                <TableRow>
                                  <TableCell sx={{ fontWeight: 600 }}>Resource</TableCell>
                                  <TableCell sx={{ fontWeight: 600 }}>Unit</TableCell>
                                  <TableCell sx={{ fontWeight: 600 }} align="right">EF Value</TableCell>
                                  <TableCell sx={{ fontWeight: 600 }}>Ref Info</TableCell>
                                  <TableCell sx={{ fontWeight: 600 }}>Note</TableCell>
                                </TableRow>
                              </TableHead>
                              <TableBody>
                                {group.fuel_resource_mappings?.map((m) => (
                                  <TableRow key={m.id}>
                                    <TableCell>{m.fuel_resource?.resource ?? '—'}</TableCell>
                                    <TableCell>{m.fuel_resource?.unit ?? '—'}</TableCell>
                                    <TableCell align="right">{m.fuel_resource?.ef_value != null ? m.fuel_resource.ef_value : '—'}</TableCell>
                                    <TableCell sx={{ maxWidth: 200, overflow: 'hidden', textOverflow: 'ellipsis' }}>
                                      {m.fuel_resource?.ref_info ?? '—'}
                                    </TableCell>
                                    <TableCell>{m.note ?? '—'}</TableCell>
                                  </TableRow>
                                ))}
                              </TableBody>
                            </Table>
                          )}
                        </Box>
                      </Collapse>
                    </TableCell>
                  </TableRow>
                </React.Fragment>
              ))
            )}
          </TableBody>
        </Table>
      </TableContainer>

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
