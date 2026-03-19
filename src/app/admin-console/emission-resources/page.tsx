'use client'

import React, { useState, useEffect, useCallback } from 'react'
import { useRouter } from 'next/navigation'
import {
  Box,
  Typography,
  Button,
  Tabs,
  Tab,
  TextField,
  Select,
  MenuItem,
  Menu,
  IconButton,
  FormControl,
  InputLabel,
  InputAdornment,
  Paper,
  Alert,
  Snackbar,
  Chip,
  CircularProgress,
} from '@mui/material'
import { useAuth } from '@/contexts/AuthContext'
import { isAdmin } from '@/lib/permissions'
import {
  FileUpload as FileUploadIcon,
  Add as AddIcon,
  Category as CategoryIcon,
  Search as SearchIcon,
  MoreVert as MoreVertIcon,
} from '@mui/icons-material'
import type { FuelResourceWithCategory, ScopeCategory } from '@/types/emission-resources'
import EmissionResourcesTable from '@/components/admin/emission-resources/EmissionResourcesTable'
import EmissionResourceForm from '@/components/admin/emission-resources/EmissionResourceForm'
import EmissionResourceImportModal from '@/components/admin/emission-resources/EmissionResourceImportModal'
import CategoriesPanel from '@/components/admin/emission-resources/CategoriesPanel'
import DeleteConfirmationDialog from '@/components/DeleteConfirmationDialog'

const SCOPE_TABS = [
  { value: 0, label: 'All' },
  { value: 1, label: 'Scope 1' },
  { value: 2, label: 'Scope 2' },
  { value: 3, label: 'Scope 3' },
  { value: 4, label: 'แยกรายงาน' },
]

const SCOPE_COLORS: Record<number, string> = {
  1: '#ef4444',
  2: '#f59e0b',
  3: '#3b82f6',
  4: '#8b5cf6',
}

export default function EmissionResourcesPage() {
  const router = useRouter()
  const { user, isLoading: authLoading } = useAuth()

  useEffect(() => {
    if (!authLoading && user && !isAdmin(user)) {
      router.replace('/admin-console')
    }
  }, [user, authLoading, router])

  const [scopeTab, setScopeTab] = useState(0)
  const [categoryId, setCategoryId] = useState<string>('')
  const [search, setSearch] = useState('')
  const [categories, setCategories] = useState<ScopeCategory[]>([])
  const [resources, setResources] = useState<FuelResourceWithCategory[]>([])
  const [total, setTotal] = useState(0)
  const [page, setPage] = useState(0)
  const [perPage, setPerPage] = useState(50)
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)

  // Modal states
  const [formOpen, setFormOpen] = useState(false)
  const [editTarget, setEditTarget] = useState<FuelResourceWithCategory | null>(null)
  const [importOpen, setImportOpen] = useState(false)
  const [categoriesPanelOpen, setCategoriesPanelOpen] = useState(false)
  const [menuAnchorEl, setMenuAnchorEl] = useState<null | HTMLElement>(null)
  const [resetDialogOpen, setResetDialogOpen] = useState(false)
  const [isResetting, setIsResetting] = useState(false)
  const [resetError, setResetError] = useState<string | null>(null)

  // Snackbar
  const [snackbar, setSnackbar] = useState<{ open: boolean; message: string; severity: 'success' | 'error' }>({
    open: false,
    message: '',
    severity: 'success',
  })

  const showSnackbar = (message: string, severity: 'success' | 'error' = 'success') => {
    setSnackbar({ open: true, message, severity })
  }

  const fetchCategories = useCallback(async () => {
    try {
      const params = new URLSearchParams()
      if (scopeTab > 0) params.set('scope', String(scopeTab))
      const res = await fetch(`/api/emission-categories?${params}`)
      const json = await res.json()
      setCategories(json.data ?? [])
      // Reset category filter when scope changes
      setCategoryId('')
    } catch {
      console.error('Failed to load categories')
    }
  }, [scopeTab])

  const fetchResources = useCallback(async () => {
    setLoading(true)
    setError(null)
    try {
      const params = new URLSearchParams()
      if (scopeTab > 0) params.set('scope', String(scopeTab))
      if (categoryId) params.set('category_id', categoryId)
      if (search) params.set('search', search)
      params.set('page', String(page + 1))
      params.set('per_page', String(perPage))

      const res = await fetch(`/api/fuel-resources?${params}`)
      if (!res.ok) throw new Error('Failed to fetch')
      const json = await res.json()
      setResources(json.data ?? [])
      setTotal(json.total ?? 0)
    } catch (err) {
      setError('Failed to load emission resources')
      console.error(err)
    } finally {
      setLoading(false)
    }
  }, [scopeTab, categoryId, search, page, perPage])

  useEffect(() => { fetchCategories() }, [fetchCategories])
  useEffect(() => { fetchResources() }, [fetchResources])

  const handleScopeChange = (_: React.SyntheticEvent, newValue: number) => {
    setScopeTab(newValue)
    setPage(0)
  }

  const handleEdit = (resource: FuelResourceWithCategory) => {
    setEditTarget(resource)
    setFormOpen(true)
  }

  const handleDelete = async (id: string) => {
    try {
      const res = await fetch(`/api/fuel-resources/${id}`, { method: 'DELETE' })
      if (!res.ok) throw new Error('Delete failed')
      showSnackbar('Emission resource deleted')
      fetchResources()
    } catch {
      showSnackbar('Failed to delete resource', 'error')
    }
  }

  const handleFormSave = async (data: Partial<FuelResourceWithCategory>) => {
    try {
      const method = editTarget ? 'PUT' : 'POST'
      const url = editTarget ? `/api/fuel-resources/${editTarget.id}` : '/api/fuel-resources'
      const res = await fetch(url, {
        method,
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(data),
      })
      if (!res.ok) throw new Error('Save failed')
      showSnackbar(editTarget ? 'Resource updated' : 'Resource added')
      setFormOpen(false)
      setEditTarget(null)
      fetchResources()
    } catch {
      showSnackbar('Failed to save resource', 'error')
    }
  }

  const handleImportComplete = () => {
    setImportOpen(false)
    showSnackbar('Import completed successfully')
    fetchResources()
  }

  const handleMenuOpen = (event: React.MouseEvent<HTMLElement>) => {
    setMenuAnchorEl(event.currentTarget)
  }

  const handleMenuClose = () => {
    setMenuAnchorEl(null)
  }

  const handleResetClick = () => {
    handleMenuClose()
    setResetError(null)
    setResetDialogOpen(true)
  }

  const handleResetConfirm = async () => {
    setIsResetting(true)
    setResetError(null)
    try {
      const res = await fetch('/api/fuel-resources', { method: 'DELETE' })
      const json = await res.json()
      if (!res.ok) throw new Error(json.error ?? 'Reset failed')
      setResetDialogOpen(false)
      showSnackbar(`All emission resources reset (${json.deleted ?? 0} deleted)`)
      fetchResources()
      fetchCategories()
    } catch (err) {
      setResetError(err instanceof Error ? err.message : 'Failed to reset emission resources')
    } finally {
      setIsResetting(false)
    }
  }

  const filteredCategories = categories.filter((c) =>
    scopeTab === 0 ? true : c.scope === scopeTab
  )

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
    <Box sx={{ p: 3, maxWidth: '100%' }}>
      {/* Page Header */}
      <Box sx={{ display: 'flex', alignItems: 'flex-start', justifyContent: 'space-between', mb: 3 }}>
        <Box>
          <Typography variant="h4" fontWeight={700} gutterBottom>
            Emission Resources
          </Typography>
          <Typography variant="body2" color="text.secondary">
            Manage fuel resource emission factors (EF) for all scopes
          </Typography>
        </Box>
        <Box sx={{ display: 'flex', gap: 1.5, flexWrap: 'wrap', justifyContent: 'flex-end' }}>
          <Button
            variant="outlined"
            startIcon={<CategoryIcon />}
            onClick={() => setCategoriesPanelOpen(true)}
          >
            Manage Categories
          </Button>
          <Button
            variant="outlined"
            startIcon={<FileUploadIcon />}
            onClick={() => setImportOpen(true)}
          >
            Import CSV
          </Button>
          <Button
            variant="contained"
            startIcon={<AddIcon />}
            onClick={() => { setEditTarget(null); setFormOpen(true) }}
          >
            Add Resource
          </Button>
          <IconButton
            onClick={handleMenuOpen}
            aria-label="More options"
            aria-controls={menuAnchorEl ? 'emission-resources-menu' : undefined}
            aria-haspopup="true"
            aria-expanded={menuAnchorEl ? 'true' : undefined}
          >
            <MoreVertIcon />
          </IconButton>
          <Menu
            id="emission-resources-menu"
            anchorEl={menuAnchorEl}
            open={!!menuAnchorEl}
            onClose={handleMenuClose}
            anchorOrigin={{ vertical: 'bottom', horizontal: 'right' }}
            transformOrigin={{ vertical: 'top', horizontal: 'right' }}
          >
            <MenuItem onClick={handleResetClick} sx={{ color: 'error.main' }}>
              Reset all emission resources
            </MenuItem>
          </Menu>
        </Box>
      </Box>

      {error && (
        <Alert severity="error" sx={{ mb: 2 }} onClose={() => setError(null)}>
          {error}
        </Alert>
      )}

      {/* Filter Bar */}
      <Paper variant="outlined" sx={{ mb: 2 }}>
        {/* Scope Tabs */}
        <Tabs
          value={scopeTab}
          onChange={handleScopeChange}
          sx={{ borderBottom: 1, borderColor: 'divider', px: 2 }}
        >
          {SCOPE_TABS.map((t) => (
            <Tab
              key={t.value}
              value={t.value}
              label={
                t.value === 0 ? (
                  t.label
                ) : (
                  <Box sx={{ display: 'flex', alignItems: 'center', gap: 0.5 }}>
                    <Box
                      sx={{
                        width: 8,
                        height: 8,
                        borderRadius: '50%',
                        backgroundColor: SCOPE_COLORS[t.value],
                      }}
                    />
                    {t.label}
                  </Box>
                )
              }
            />
          ))}
        </Tabs>

        {/* Category + Search Row */}
        <Box sx={{ display: 'flex', gap: 2, p: 2, alignItems: 'center', flexWrap: 'wrap' }}>
          <FormControl size="small" sx={{ minWidth: 260 }}>
            <InputLabel>Category</InputLabel>
            <Select
              value={categoryId}
              onChange={(e) => { setCategoryId(e.target.value); setPage(0) }}
              label="Category"
            >
              <MenuItem value="">All Categories</MenuItem>
              {filteredCategories.map((c) => (
                <MenuItem key={c.id} value={c.id}>
                  <Box sx={{ display: 'flex', alignItems: 'center', gap: 1 }}>
                    <Chip
                      label={`S${c.scope}`}
                      size="small"
                      sx={{
                        height: 18,
                        fontSize: '0.65rem',
                        bgcolor: SCOPE_COLORS[c.scope],
                        color: 'white',
                      }}
                    />
                    {c.name_en}
                  </Box>
                </MenuItem>
              ))}
            </Select>
          </FormControl>

          <TextField
            size="small"
            placeholder="Search resource, sub-category, unit…"
            value={search}
            onChange={(e) => { setSearch(e.target.value); setPage(0) }}
            InputProps={{
              startAdornment: (
                <InputAdornment position="start">
                  <SearchIcon fontSize="small" />
                </InputAdornment>
              ),
            }}
            sx={{ minWidth: 280 }}
          />

          <Typography variant="body2" color="text.secondary" sx={{ ml: 'auto' }}>
            {total.toLocaleString()} records
          </Typography>
        </Box>
      </Paper>

      {/* Table */}
      <EmissionResourcesTable
        rows={resources}
        total={total}
        page={page}
        perPage={perPage}
        loading={loading}
        onEdit={handleEdit}
        onDelete={handleDelete}
        onPageChange={setPage}
        onPerPageChange={(v) => { setPerPage(v); setPage(0) }}
      />

      {/* Add / Edit Modal */}
      <EmissionResourceForm
        open={formOpen}
        onClose={() => { setFormOpen(false); setEditTarget(null) }}
        onSave={handleFormSave}
        initialData={editTarget}
        categories={categories}
      />

      {/* Import CSV Modal */}
      <EmissionResourceImportModal
        open={importOpen}
        onClose={() => setImportOpen(false)}
        onComplete={handleImportComplete}
        categories={categories}
      />

      {/* Categories Panel */}
      <CategoriesPanel
        open={categoriesPanelOpen}
        onClose={() => setCategoriesPanelOpen(false)}
        initialScope={scopeTab}
        onCategoriesChanged={fetchCategories}
      />

      {/* Reset all confirmation */}
      <DeleteConfirmationDialog
        open={resetDialogOpen}
        onClose={() => {
          setResetDialogOpen(false)
          setResetError(null)
        }}
        onConfirm={handleResetConfirm}
        title="Reset All Emission Resources"
        message="This will permanently delete all fuel resources in all scopes. This action cannot be undone."
        description="All emission factors and related data will be removed. Use Import CSV to restore data if needed."
        isDeleting={isResetting}
        error={resetError}
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
