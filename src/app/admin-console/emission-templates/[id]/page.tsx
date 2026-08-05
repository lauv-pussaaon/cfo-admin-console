'use client'

import React, { useCallback, useEffect, useMemo, useState } from 'react'
import {
  Alert,
  Box,
  Button,
  Chip,
  Collapse,
  IconButton,
  Paper,
  Snackbar,
  Tab,
  Tabs,
  Table,
  TableBody,
  TableCell,
  TableContainer,
  TableHead,
  TableRow,
  Typography,
  CircularProgress,
} from '@mui/material'
import { Add as AddIcon, ArrowBack, ExpandLess as ExpandLessIcon, ExpandMore as ExpandMoreIcon } from '@mui/icons-material'
import { useParams, useRouter } from 'next/navigation'
import { useAuth } from '@/contexts/AuthContext'
import { isAdmin } from '@/lib/permissions'
import ActivityGroupFormDialog from '@/components/admin/emission-templates/ActivityGroupFormDialog'
import DeleteConfirmationDialog from '@/components/DeleteConfirmationDialog'
import type { EfCatalogRelease, ScopeCategory } from '@/types/emission-resources'
import type {
  EmissionTemplateWithRelations,
  TemplateActivityGroupWithRelations,
} from '@/types/emission-templates'
import {
  adminBackButtonSx,
  adminPageShellSx,
  adminPageTitleSx,
  adminPrimaryButtonSx,
} from '@/lib/admin-ui-styles'

function orderReleases (releases: EfCatalogRelease[]): EfCatalogRelease[] {
  return [...releases].sort((a, b) => {
    const aIdx = a.order_index ?? 0
    const bIdx = b.order_index ?? 0
    if (aIdx !== bIdx) return aIdx - bIdx
    return a.version.localeCompare(b.version, 'th')
  })
}

export default function TemplateDetailPage() {
  const params = useParams<{ id: string }>()
  const router = useRouter()
  const { user, isLoading: authLoading } = useAuth()
  const templateId = params.id

  useEffect(() => {
    if (!authLoading && user && !isAdmin(user)) {
      router.replace('/admin-console')
    }
  }, [user, authLoading, router])

  const [template, setTemplate] = useState<EmissionTemplateWithRelations | null>(null)
  const [groups, setGroups] = useState<TemplateActivityGroupWithRelations[]>([])
  const [categories, setCategories] = useState<ScopeCategory[]>([])
  const [releases, setReleases] = useState<EfCatalogRelease[]>([])
  const [selectedVersion, setSelectedVersion] = useState<string>('')
  const [loading, setLoading] = useState(false)
  const [groupsLoading, setGroupsLoading] = useState(false)
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

  const orderedReleases = useMemo(() => orderReleases(releases), [releases])

  const fetchPageData = useCallback(async () => {
    setLoading(true)
    setError(null)
    try {
      const [templateRes, categoriesRes, releasesRes] = await Promise.all([
        fetch(`/api/emission-templates/${templateId}`),
        fetch('/api/emission-categories'),
        fetch('/api/ef-catalog/releases'),
      ])

      if (!templateRes.ok) throw new Error('Failed to fetch template')
      if (!categoriesRes.ok) throw new Error('Failed to fetch categories')
      if (!releasesRes.ok) throw new Error('Failed to fetch catalog versions')

      const templateJson = await templateRes.json()
      const categoriesJson = await categoriesRes.json()
      const releasesJson = await releasesRes.json()
      const releaseRows: EfCatalogRelease[] = releasesJson.data ?? []

      setTemplate(templateJson)
      setCategories(categoriesJson.data ?? [])
      setReleases(releaseRows)

      setSelectedVersion((current) => {
        if (current && releaseRows.some((r) => r.version === current)) return current
        const ordered = orderReleases(releaseRows)
        return ordered.find((r) => r.is_default)?.version ?? ordered[0]?.version ?? ''
      })
    } catch (err) {
      console.error(err)
      setError('Failed to load template detail')
    } finally {
      setLoading(false)
    }
  }, [templateId])

  const fetchGroups = useCallback(async () => {
    if (!selectedVersion) {
      setGroups([])
      return
    }
    setGroupsLoading(true)
    try {
      const params = new URLSearchParams({ template_id: templateId, version: selectedVersion })
      const res = await fetch(`/api/template-activity-groups?${params}`)
      if (!res.ok) throw new Error('Failed to fetch activity groups')
      const json = await res.json()
      setGroups(json.data ?? [])
    } catch (err) {
      console.error(err)
      setError('Failed to load activity groups')
    } finally {
      setGroupsLoading(false)
    }
  }, [templateId, selectedVersion])

  useEffect(() => {
    fetchGroups()
  }, [fetchGroups])

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
    version: string
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
      fetchGroups()
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
      fetchGroups()
    } catch {
      setDeleteError('Failed to delete activity group. Please try again.')
    } finally {
      setIsDeleting(false)
    }
  }

  const sortedGroups = [...groups].sort((a, b) => (a.sort_order ?? 0) - (b.sort_order ?? 0))

  if (authLoading) {
    return (
      <Box sx={{ display: 'flex', justifyContent: 'center', alignItems: 'center', minHeight: '50vh' }}>
        <CircularProgress />
      </Box>
    )
  }

  if (user && !isAdmin(user)) {
    return null
  }

  return (
    <Box sx={adminPageShellSx}>
      <Button
        startIcon={<ArrowBack />}
        onClick={() => router.push('/admin-console/emission-templates')}
        sx={adminBackButtonSx}
      >
        กลับ
      </Button>

      <Box sx={{ mb: 2 }}>
        <Typography variant="h4" component="h1" sx={adminPageTitleSx}>
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

      {orderedReleases.length > 0 && (
        <Tabs
          value={orderedReleases.some((r) => r.version === selectedVersion) ? selectedVersion : false}
          onChange={(_, value) => setSelectedVersion(value)}
          variant="scrollable"
          scrollButtons="auto"
          sx={{ mb: 2, borderBottom: 1, borderColor: 'divider' }}
        >
          {orderedReleases.map((rel) => (
            <Tab key={rel.version} value={rel.version} label={rel.is_default ? `${rel.version} (default)` : rel.version} />
          ))}
        </Tabs>
      )}

      <Box sx={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', mb: 1.5 }}>
        <Typography variant="subtitle2" color="text.secondary">
          {(groups.length || 0).toLocaleString()} activity groups {selectedVersion ? `— ${selectedVersion}` : ''}
        </Typography>
        <Button
          variant="contained"
          startIcon={<AddIcon />}
          disabled={!selectedVersion}
          onClick={() => { setEditTarget(null); setDialogOpen(true) }}
          sx={adminPrimaryButtonSx}
        >
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
            {loading || groupsLoading ? (
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
        versions={orderedReleases}
        defaultVersion={selectedVersion}
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
