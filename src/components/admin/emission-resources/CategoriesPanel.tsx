'use client'

import React, { useState, useEffect, useCallback } from 'react'
import {
  Drawer,
  Box,
  Typography,
  IconButton,
  Button,
  Tabs,
  Tab,
  List,
  ListItem,
  Tooltip,
  TextField,
  Select,
  MenuItem,
  FormControl,
  InputLabel,
  Alert,
  Chip,
  Divider,
  CircularProgress,
  Snackbar,
} from '@mui/material'
import {
  Close as CloseIcon,
  Edit as EditIcon,
  Delete as DeleteIcon,
  Add as AddIcon,
  Check as CheckIcon,
  FileUpload as FileUploadIcon,
} from '@mui/icons-material'
import type { ScopeCategory } from '@/types/emission-resources'
import DeleteConfirmationDialog from '@/components/DeleteConfirmationDialog'
import CategoryImportModal from './CategoryImportModal'

const SCOPE_TABS = [
  { value: 0, label: 'All' },
  { value: 1, label: 'Scope 1' },
  { value: 2, label: 'Scope 2' },
  { value: 3, label: 'Scope 3' },
  { value: 4, label: 'Scope 4' },
]

const SCOPE_COLORS: Record<number, string> = {
  1: '#ef4444',
  2: '#f59e0b',
  3: '#3b82f6',
  4: '#8b5cf6',
}

interface Props {
  open: boolean
  onClose: () => void
  initialScope: number
  onCategoriesChanged: () => void
}

interface EditingState {
  id: string
  name_th: string
  name_en: string
  display_order: string
}

interface AddingState {
  scope: number
  name_th: string
  name_en: string
  display_order: string
}

export default function CategoriesPanel({ open, onClose, initialScope, onCategoriesChanged }: Props) {
  const [scopeTab, setScopeTab] = useState(initialScope)
  const [categories, setCategories] = useState<ScopeCategory[]>([])
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)
  const [editing, setEditing] = useState<EditingState | null>(null)
  const [saving, setSaving] = useState(false)
  const [adding, setAdding] = useState<AddingState | null>(null)
  const [deleteTarget, setDeleteTarget] = useState<ScopeCategory | null>(null)
  const [isDeleting, setIsDeleting] = useState(false)
  const [deleteError, setDeleteError] = useState<string | null>(null)
  const [importOpen, setImportOpen] = useState(false)
  const [snackbar, setSnackbar] = useState<{ open: boolean; message: string; severity: 'success' | 'error' }>({
    open: false, message: '', severity: 'success',
  })

  const showSnackbar = (message: string, severity: 'success' | 'error' = 'success') => {
    setSnackbar({ open: true, message, severity })
  }

  const fetchCategories = useCallback(async () => {
    setLoading(true)
    setError(null)
    try {
      const res = await fetch('/api/emission-categories')
      const json = await res.json()
      setCategories(json.data ?? [])
    } catch {
      setError('Failed to load categories')
    } finally {
      setLoading(false)
    }
  }, [])

  useEffect(() => {
    if (open) {
      fetchCategories()
      setScopeTab(initialScope)
    }
  }, [open, initialScope, fetchCategories])

  const filteredCategories = categories.filter((c) =>
    scopeTab === 0 ? true : c.scope === scopeTab
  )

  const startEdit = (cat: ScopeCategory) => {
    setAdding(null)
    setEditing({
      id: cat.id,
      name_th: cat.name_th,
      name_en: cat.name_en,
      display_order: String(cat.display_order),
    })
  }

  const handleSaveEdit = async () => {
    if (!editing) return
    setSaving(true)
    try {
      const res = await fetch(`/api/emission-categories/${editing.id}`, {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          name_th: editing.name_th,
          name_en: editing.name_en,
          display_order: parseInt(editing.display_order || '0', 10),
        }),
      })
      if (!res.ok) throw new Error('Update failed')
      setEditing(null)
      await fetchCategories()
      onCategoriesChanged()
      showSnackbar('Category updated')
    } catch {
      showSnackbar('Failed to update category', 'error')
    } finally {
      setSaving(false)
    }
  }

  const handleStartAdd = () => {
    setEditing(null)
    setAdding({
      scope: scopeTab > 0 ? scopeTab : 1,
      name_th: '',
      name_en: '',
      display_order: '',
    })
  }

  const handleSaveAdd = async () => {
    if (!adding) return
    if (!adding.name_th || !adding.name_en) {
      showSnackbar('Both Thai and English names are required', 'error')
      return
    }
    setSaving(true)
    try {
      const res = await fetch('/api/emission-categories', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          scope: adding.scope,
          name_th: adding.name_th,
          name_en: adding.name_en,
          display_order: parseInt(adding.display_order || '0', 10),
        }),
      })
      if (!res.ok) throw new Error('Create failed')
      setAdding(null)
      await fetchCategories()
      onCategoriesChanged()
      showSnackbar('Category added')
    } catch {
      showSnackbar('Failed to add category', 'error')
    } finally {
      setSaving(false)
    }
  }

  const handleDeleteConfirm = async () => {
    if (!deleteTarget) return
    setIsDeleting(true)
    setDeleteError(null)
    try {
      const res = await fetch(`/api/emission-categories/${deleteTarget.id}`, { method: 'DELETE' })
      if (!res.ok) throw new Error('Delete failed')
      setDeleteTarget(null)
      await fetchCategories()
      onCategoriesChanged()
      showSnackbar('Category deleted')
    } catch {
      setDeleteError('Failed to delete category. It may have associated fuel resources.')
    } finally {
      setIsDeleting(false)
    }
  }

  return (
    <>
      <Drawer
        anchor="right"
        open={open}
        onClose={onClose}
        PaperProps={{ sx: { width: 500, display: 'flex', flexDirection: 'column' } }}
      >
        {/* Header */}
        <Box sx={{ p: 2, display: 'flex', alignItems: 'center', justifyContent: 'space-between', borderBottom: 1, borderColor: 'divider' }}>
          <Typography variant="h6" fontWeight={600}>
            Manage Categories
          </Typography>
          <Box sx={{ display: 'flex', gap: 1 }}>
            <Button
              size="small"
              startIcon={<FileUploadIcon />}
              variant="outlined"
              onClick={() => setImportOpen(true)}
            >
              Import CSV
            </Button>
            <IconButton onClick={onClose} size="small">
              <CloseIcon />
            </IconButton>
          </Box>
        </Box>

        {/* Scope filter tabs */}
        <Tabs
          value={scopeTab}
          onChange={(_, v) => setScopeTab(v)}
          variant="scrollable"
          sx={{ borderBottom: 1, borderColor: 'divider', px: 1 }}
        >
          {SCOPE_TABS.map((t) => (
            <Tab key={t.value} value={t.value} label={t.label} sx={{ minWidth: 64 }} />
          ))}
        </Tabs>

        {/* Add category bar */}
        <Box sx={{ px: 2, py: 1.5, display: 'flex', justifyContent: 'flex-end', borderBottom: 1, borderColor: 'divider' }}>
          <Button
            size="small"
            startIcon={<AddIcon />}
            variant="contained"
            onClick={handleStartAdd}
          >
            Add Category
          </Button>
        </Box>

        {/* Content */}
        <Box sx={{ flex: 1, overflow: 'auto', p: 2 }}>
          {error && <Alert severity="error" sx={{ mb: 2 }}>{error}</Alert>}

          {loading && (
            <Box sx={{ display: 'flex', justifyContent: 'center', py: 4 }}>
              <CircularProgress />
            </Box>
          )}

          {/* Add form */}
          {adding && (
            <Box sx={{ mb: 2, p: 2, border: '1px solid', borderColor: 'primary.main', borderRadius: 2 }}>
              <Typography variant="subtitle2" gutterBottom>New Category</Typography>
              <Box sx={{ display: 'flex', flexDirection: 'column', gap: 1.5 }}>
                <FormControl size="small" fullWidth>
                  <InputLabel>Scope</InputLabel>
                  <Select
                    value={adding.scope}
                    onChange={(e) => setAdding((a) => a ? { ...a, scope: e.target.value as number } : null)}
                    label="Scope"
                  >
                    {[1, 2, 3, 4].map((s) => (
                      <MenuItem key={s} value={s}>Scope {s}</MenuItem>
                    ))}
                  </Select>
                </FormControl>
                <TextField
                  size="small"
                  label="Name (Thai) *"
                  value={adding.name_th}
                  onChange={(e) => setAdding((a) => a ? { ...a, name_th: e.target.value } : null)}
                  fullWidth
                />
                <TextField
                  size="small"
                  label="Name (English) *"
                  value={adding.name_en}
                  onChange={(e) => setAdding((a) => a ? { ...a, name_en: e.target.value } : null)}
                  fullWidth
                />
                <TextField
                  size="small"
                  label="Display Order"
                  type="number"
                  value={adding.display_order}
                  onChange={(e) => setAdding((a) => a ? { ...a, display_order: e.target.value } : null)}
                  fullWidth
                />
                <Box sx={{ display: 'flex', gap: 1, justifyContent: 'flex-end' }}>
                  <Button size="small" onClick={() => setAdding(null)} color="inherit" disabled={saving}>
                    Cancel
                  </Button>
                  <Button
                    size="small"
                    variant="contained"
                    onClick={handleSaveAdd}
                    disabled={saving}
                    startIcon={saving ? <CircularProgress size={14} /> : <CheckIcon />}
                  >
                    Save
                  </Button>
                </Box>
              </Box>
            </Box>
          )}

          {/* Category list */}
          {!loading && (
            <List disablePadding>
              {filteredCategories.length === 0 && (
                <Typography variant="body2" color="text.secondary" sx={{ py: 4, textAlign: 'center' }}>
                  No categories found
                </Typography>
              )}

              {filteredCategories.map((cat, i) => (
                <React.Fragment key={cat.id}>
                  {i > 0 && <Divider />}
                  <ListItem
                    disablePadding
                    sx={{ py: 1.5, display: 'block' }}
                  >
                    {editing?.id === cat.id ? (
                      /* Inline edit form */
                      <Box sx={{ display: 'flex', flexDirection: 'column', gap: 1 }}>
                        <TextField
                          size="small"
                          label="Name (Thai)"
                          value={editing.name_th}
                          onChange={(e) => setEditing((ed) => ed ? { ...ed, name_th: e.target.value } : null)}
                          fullWidth
                        />
                        <TextField
                          size="small"
                          label="Name (English)"
                          value={editing.name_en}
                          onChange={(e) => setEditing((ed) => ed ? { ...ed, name_en: e.target.value } : null)}
                          fullWidth
                        />
                        <TextField
                          size="small"
                          label="Display Order"
                          type="number"
                          value={editing.display_order}
                          onChange={(e) => setEditing((ed) => ed ? { ...ed, display_order: e.target.value } : null)}
                          sx={{ width: 120 }}
                        />
                        <Box sx={{ display: 'flex', gap: 1, justifyContent: 'flex-end' }}>
                          <Button size="small" onClick={() => setEditing(null)} disabled={saving} color="inherit">
                            Cancel
                          </Button>
                          <Button
                            size="small"
                            variant="contained"
                            onClick={handleSaveEdit}
                            disabled={saving}
                            startIcon={saving ? <CircularProgress size={14} /> : <CheckIcon />}
                          >
                            Save
                          </Button>
                        </Box>
                      </Box>
                    ) : (
                      /* Display row */
                      <Box sx={{ display: 'flex', alignItems: 'flex-start', gap: 1 }}>
                        <Chip
                          label={`S${cat.scope}`}
                          size="small"
                          sx={{
                            bgcolor: SCOPE_COLORS[cat.scope],
                            color: 'white',
                            fontWeight: 700,
                            fontSize: '0.65rem',
                            height: 20,
                            mt: 0.3,
                            flexShrink: 0,
                          }}
                        />
                        <Box sx={{ flex: 1, minWidth: 0 }}>
                          <Typography variant="body2" fontWeight={500} noWrap>
                            {cat.name_en}
                          </Typography>
                          <Typography variant="caption" color="text.secondary" noWrap>
                            {cat.name_th}
                          </Typography>
                        </Box>
                        <Box sx={{ display: 'flex', gap: 0.5, flexShrink: 0 }}>
                          <Tooltip title="Edit">
                            <IconButton size="small" onClick={() => startEdit(cat)}>
                              <EditIcon fontSize="small" />
                            </IconButton>
                          </Tooltip>
                          <Tooltip title="Delete">
                            <IconButton size="small" color="error" onClick={() => setDeleteTarget(cat)}>
                              <DeleteIcon fontSize="small" />
                            </IconButton>
                          </Tooltip>
                        </Box>
                      </Box>
                    )}
                  </ListItem>
                </React.Fragment>
              ))}
            </List>
          )}
        </Box>
      </Drawer>

      {/* Delete confirmation */}
      <DeleteConfirmationDialog
        open={!!deleteTarget}
        onClose={() => { setDeleteTarget(null); setDeleteError(null) }}
        onConfirm={handleDeleteConfirm}
        title="Delete Category"
        message={`Are you sure you want to delete "${deleteTarget?.name_en}"?`}
        description="This will soft-delete the category. Fuel resources linked to it will remain but may need reassignment."
        isDeleting={isDeleting}
        error={deleteError}
      />

      {/* Category Import Modal */}
      <CategoryImportModal
        open={importOpen}
        onClose={() => setImportOpen(false)}
        onComplete={() => {
          setImportOpen(false)
          fetchCategories()
          onCategoriesChanged()
          showSnackbar('Categories imported successfully')
        }}
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
    </>
  )
}
