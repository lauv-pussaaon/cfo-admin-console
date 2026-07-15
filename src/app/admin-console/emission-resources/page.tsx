'use client'

import React, { useState, useEffect, useCallback, useMemo } from 'react'
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
  Category as CategoryIcon,
  Search as SearchIcon,
  FileDownload as FileDownloadIcon,
  FileUpload as FileUploadIcon,
} from '@mui/icons-material'
import type { EfCatalogRelease, FuelResourceWithCategory, ScopeCategory } from '@/types/emission-resources'
import EmissionResourcesTable from '@/components/admin/emission-resources/EmissionResourcesTable'
import CategoriesPanel from '@/components/admin/emission-resources/CategoriesPanel'
import FuelResourceExcelImportModal from '@/components/admin/emission-resources/FuelResourceExcelImportModal'
import FuelResourceEditModal from '@/components/admin/emission-resources/FuelResourceEditModal'
import DeleteConfirmationDialog from '@/components/DeleteConfirmationDialog'
import { formatDateTime } from '@/lib/utils/datetime'
import {
  EF_CATALOG_VERSIONS,
  EF_VERSION_MAY,
} from '@/lib/constants/ef-catalog'

function orderVersions (versions: string[]): string[] {
  const knownOrder = EF_CATALOG_VERSIONS as readonly string[]
  const unique = [...new Set(versions.filter(Boolean))]
  const known = knownOrder.filter((v) => unique.includes(v))
  const rest = unique.filter((v) => !knownOrder.includes(v)).sort((a, b) => a.localeCompare(b))
  return [...known, ...rest]
}

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
  const [catalogVersion, setCatalogVersion] = useState<string>(EF_VERSION_MAY)
  const [categoryId, setCategoryId] = useState<string>('')
  const [search, setSearch] = useState('')
  const [categories, setCategories] = useState<ScopeCategory[]>([])
  const [resources, setResources] = useState<FuelResourceWithCategory[]>([])
  const [total, setTotal] = useState(0)
  const [page, setPage] = useState(0)
  const [perPage, setPerPage] = useState(50)
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)
  const [categoriesPanelOpen, setCategoriesPanelOpen] = useState(false)
  const [importOpen, setImportOpen] = useState(false)
  const [deleteVersionOpen, setDeleteVersionOpen] = useState(false)
  const [isDeletingVersion, setIsDeletingVersion] = useState(false)
  const [deleteVersionError, setDeleteVersionError] = useState<string | null>(null)
  const [releases, setReleases] = useState<EfCatalogRelease[]>([])
  const [releaseLoading, setReleaseLoading] = useState(false)
  const [actionBusy, setActionBusy] = useState(false)
  const [editTarget, setEditTarget] = useState<FuelResourceWithCategory | null>(null)

  const versionTabs = useMemo(
    () => orderVersions(releases.map((r) => r.version)),
    [releases]
  )
  const release = useMemo(
    () => releases.find((r) => r.version === catalogVersion) ?? null,
    [releases, catalogVersion]
  )
  const existingVersions = versionTabs

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
      const res = await fetch('/api/emission-categories')
      const json = await res.json()
      setCategories(json.data ?? [])
      setCategoryId('')
    } catch {
      console.error('Failed to load categories')
    }
  }, [])

  const fetchResources = useCallback(async (overrides?: { version?: string; page?: number }) => {
    setLoading(true)
    setError(null)
    try {
      const params = new URLSearchParams()
      if (scopeTab > 0) params.set('scope', String(scopeTab))
      if (categoryId) params.set('category_id', categoryId)
      if (search) params.set('search', search)
      params.set('version', overrides?.version ?? catalogVersion)
      params.set('page', String((overrides?.page ?? page) + 1))
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
  }, [scopeTab, categoryId, search, page, perPage, catalogVersion])

  const fetchReleases = useCallback(async () => {
    setReleaseLoading(true)
    try {
      const res = await fetch('/api/ef-catalog/releases')
      const json = await res.json()
      if (!res.ok) throw new Error(json.error || 'Failed to load releases')
      const next = (json.data ?? []) as EfCatalogRelease[]
      setReleases(next)
      return next
    } catch (err) {
      console.error(err)
      setReleases([])
      return [] as EfCatalogRelease[]
    } finally {
      setReleaseLoading(false)
    }
  }, [])

  useEffect(() => { fetchCategories() }, [fetchCategories])
  useEffect(() => { fetchResources() }, [fetchResources])
  useEffect(() => { fetchReleases() }, [fetchReleases])

  useEffect(() => {
    if (versionTabs.length === 0) return
    if (!versionTabs.includes(catalogVersion)) {
      setCatalogVersion(versionTabs.includes(EF_VERSION_MAY) ? EF_VERSION_MAY : versionTabs[0])
      setPage(0)
    }
  }, [versionTabs, catalogVersion])

  const handleScopeChange = (_: React.SyntheticEvent, newValue: number) => {
    setScopeTab(newValue)
    setCategoryId('')
    setPage(0)
  }

  const handlePublish = async () => {
    setActionBusy(true)
    try {
      const res = await fetch('/api/ef-catalog/releases', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ version: catalogVersion, action: 'publish' }),
      })
      const json = await res.json()
      if (!res.ok) throw new Error(json.error || 'Publish failed')
      showSnackbar(`Published ${catalogVersion}`)
      await fetchReleases()
    } catch (err) {
      showSnackbar(err instanceof Error ? err.message : 'Publish failed', 'error')
    } finally {
      setActionBusy(false)
    }
  }

  const handleExportExcel = async () => {
    setActionBusy(true)
    try {
      const params = new URLSearchParams({
        version: catalogVersion,
        artifact: 'fuel_resources',
      })
      if (release?.status !== 'published') params.set('allow_draft', 'true')
      const res = await fetch(`/api/ef-catalog/export?${params}`)
      if (!res.ok) {
        const json = await res.json().catch(() => ({}))
        throw new Error(json.error || 'Export failed')
      }
      const blob = await res.blob()
      const url = URL.createObjectURL(blob)
      const a = document.createElement('a')
      a.href = url
      a.download = `fuel_resources_${catalogVersion}.xlsx`
      a.click()
      URL.revokeObjectURL(url)
      showSnackbar('Exported Excel')
    } catch (err) {
      showSnackbar(err instanceof Error ? err.message : 'Export failed', 'error')
    } finally {
      setActionBusy(false)
    }
  }

  const handleDeleteVersionConfirm = async () => {
    setIsDeletingVersion(true)
    setDeleteVersionError(null)
    try {
      const res = await fetch(
        `/api/fuel-resources?version=${encodeURIComponent(catalogVersion)}`,
        { method: 'DELETE' }
      )
      const json = await res.json()
      if (!res.ok) throw new Error(json.error ?? 'Delete failed')
      setDeleteVersionOpen(false)
      showSnackbar(`Soft-deleted ${json.deleted ?? 0} fuels for ${catalogVersion}`)
      await Promise.all([fetchResources(), fetchReleases()])
    } catch (err) {
      setDeleteVersionError(err instanceof Error ? err.message : 'Failed to delete version fuels')
    } finally {
      setIsDeletingVersion(false)
    }
  }

  const handleImportComplete = async (version: string) => {
    setImportOpen(false)
    setCatalogVersion(version)
    setPage(0)
    showSnackbar(`Import completed for ${version}`)
    await fetchReleases()
    await fetchResources({ version, page: 0 })
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
      <Box sx={{ display: 'flex', alignItems: 'flex-start', justifyContent: 'space-between', mb: 3 }}>
        <Box>
          <Typography variant="h4" fontWeight={700} gutterBottom>
            Emission Resources
          </Typography>
          <Typography variant="body2" color="text.secondary">
            Versioned emission factors — edit inline or import a new version
          </Typography>
        </Box>
        <Box sx={{ display: 'flex', gap: 1, flexWrap: 'wrap' }}>
          <Button
            variant="outlined"
            startIcon={<FileUploadIcon />}
            onClick={() => setImportOpen(true)}
          >
            Import new version
          </Button>
          <Button
            variant="outlined"
            startIcon={<CategoryIcon />}
            onClick={() => setCategoriesPanelOpen(true)}
          >
            Manage Categories
          </Button>
        </Box>
      </Box>

      {error && (
        <Alert severity="error" sx={{ mb: 2 }} onClose={() => setError(null)}>
          {error}
        </Alert>
      )}

      <Paper variant="outlined" sx={{ mb: 2 }}>
        <Box sx={{ px: 2, pt: 2 }}>
          {versionTabs.length > 0 ? (
            <Tabs
              value={catalogVersion}
              onChange={(_, v: string) => {
                setCatalogVersion(v)
                setPage(0)
              }}
              variant="scrollable"
              allowScrollButtonsMobile
            >
              {versionTabs.map((v) => (
                <Tab key={v} value={v} label={v} />
              ))}
            </Tabs>
          ) : (
            <Typography variant="body2" color="text.secondary" sx={{ pb: 2 }}>
              {releaseLoading
                ? 'Loading versions…'
                : 'No catalog versions yet. Use Import new version to create one.'}
            </Typography>
          )}
        </Box>

        {versionTabs.length > 0 && (
        <Box
          sx={{
            display: 'flex',
            gap: 2,
            px: 2,
            py: 1.5,
            alignItems: 'center',
            flexWrap: 'wrap',
            borderBottom: 1,
            borderColor: 'divider',
          }}
        >
          {releaseLoading ? (
            <CircularProgress size={20} />
          ) : (
            <>
              <Chip
                size="small"
                label={release?.status ?? 'draft'}
                color={release?.status === 'published' ? 'success' : 'default'}
              />
              <Typography variant="body2" color="text.secondary">
                Links: {release?.link_count ?? 0}
              </Typography>
              {release?.status === 'published' && release.published_at && (
                <Typography variant="body2" color="text.secondary">
                  Published: {formatDateTime(release.published_at)}
                </Typography>
              )}
            </>
          )}
          <Box sx={{ display: 'flex', gap: 1, ml: 'auto', flexWrap: 'wrap' }}>
            <Button
              size="small"
              variant="outlined"
              color="error"
              disabled={actionBusy || releaseLoading}
              onClick={() => {
                setDeleteVersionError(null)
                setDeleteVersionOpen(true)
              }}
            >
              Delete version fuels
            </Button>
            <Button
              size="small"
              variant="outlined"
              disabled={actionBusy || releaseLoading}
              onClick={handlePublish}
            >
              {release?.status === 'published' ? 'Re-publish' : 'Publish'}
            </Button>
            <Button
              size="small"
              variant="contained"
              startIcon={<FileDownloadIcon />}
              disabled={actionBusy || releaseLoading}
              onClick={handleExportExcel}
            >
              Export Excel
            </Button>
          </Box>
        </Box>
        )}

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

      <EmissionResourcesTable
        rows={resources}
        total={total}
        page={page}
        perPage={perPage}
        loading={loading}
        onPageChange={setPage}
        onPerPageChange={(v) => { setPerPage(v); setPage(0) }}
        onEdit={setEditTarget}
      />

      <CategoriesPanel
        open={categoriesPanelOpen}
        onClose={() => setCategoriesPanelOpen(false)}
        initialScope={scopeTab}
        onCategoriesChanged={fetchCategories}
      />

      <FuelResourceEditModal
        open={Boolean(editTarget)}
        resource={editTarget}
        releaseStatus={release?.status ?? null}
        onClose={() => setEditTarget(null)}
        onSaved={() => {
          showSnackbar('Emission factor saved')
          void fetchResources()
        }}
      />

      <FuelResourceExcelImportModal
        open={importOpen}
        onClose={() => setImportOpen(false)}
        onComplete={handleImportComplete}
        existingVersions={existingVersions}
        categories={categories}
      />

      <DeleteConfirmationDialog
        open={deleteVersionOpen}
        onClose={() => {
          setDeleteVersionOpen(false)
          setDeleteVersionError(null)
        }}
        onConfirm={handleDeleteVersionConfirm}
        title="Delete Fuels for Version"
        message={`Soft-delete all fuel resources for version "${catalogVersion}"?`}
        description="Other versions are not affected. Re-import Excel or re-run dataprep SQL to restore."
        isDeleting={isDeletingVersion}
        error={deleteVersionError}
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
