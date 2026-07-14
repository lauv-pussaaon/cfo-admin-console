'use client'

import React, { useCallback, useEffect, useMemo, useState } from 'react'
import { useRouter } from 'next/navigation'
import {
  Alert,
  Box,
  Button,
  CircularProgress,
  IconButton,
  Paper,
  Snackbar,
  Tab,
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableRow,
  Tabs,
  TextField,
  Typography,
} from '@mui/material'
import {
  Add as AddIcon,
  Delete as DeleteIcon,
  FileDownload as FileDownloadIcon,
  Save as SaveIcon,
} from '@mui/icons-material'
import { useAuth } from '@/contexts/AuthContext'
import { isAdmin } from '@/lib/permissions'
import {
  EF_CATALOG_VERSIONS,
  EF_VERSION_MAY,
} from '@/lib/constants/ef-catalog'
import type {
  EfCatalogRelease,
  FuelResourceLinking,
  ScopeCategory,
} from '@/types/emission-resources'
import AddFuelLinkingModal from '@/components/admin/fuel-linking/AddFuelLinkingModal'

function orderVersions (versions: string[]): string[] {
  const knownOrder = EF_CATALOG_VERSIONS as readonly string[]
  const unique = [...new Set(versions.filter(Boolean))]
  const known = knownOrder.filter((v) => unique.includes(v))
  const rest = unique.filter((v) => !knownOrder.includes(v)).sort((a, b) => a.localeCompare(b))
  return [...known, ...rest]
}

export default function FuelResourcesLinkingPage () {
  const router = useRouter()
  const { user, isLoading: authLoading } = useAuth()

  const [version, setVersion] = useState<string>(EF_VERSION_MAY)
  const [releases, setReleases] = useState<EfCatalogRelease[]>([])
  const [categories, setCategories] = useState<ScopeCategory[]>([])
  const [links, setLinks] = useState<FuelResourceLinking[]>([])
  const [linksLoading, setLinksLoading] = useState(false)
  const [busy, setBusy] = useState(false)
  const [addOpen, setAddOpen] = useState(false)
  const [factorEdits, setFactorEdits] = useState<Record<string, string>>({})

  const [snackbar, setSnackbar] = useState<{
    open: boolean
    message: string
    severity: 'success' | 'error'
  }>({ open: false, message: '', severity: 'success' })

  useEffect(() => {
    if (!authLoading && user && !isAdmin(user)) {
      router.replace('/admin-console')
    }
  }, [user, authLoading, router])

  const showSnackbar = (message: string, severity: 'success' | 'error' = 'success') => {
    setSnackbar({ open: true, message, severity })
  }

  const versionTabs = useMemo(
    () => orderVersions(releases.map((r) => r.version)),
    [releases]
  )

  const fetchReleases = useCallback(async () => {
    const res = await fetch('/api/ef-catalog/releases')
    const json = await res.json()
    if (!res.ok) throw new Error(json.error || 'Failed to load releases')
    setReleases((json.data ?? []) as EfCatalogRelease[])
  }, [])

  const fetchCategories = useCallback(async () => {
    const res = await fetch('/api/emission-categories')
    const json = await res.json()
    setCategories((json.data ?? []) as ScopeCategory[])
  }, [])

  const fetchLinks = useCallback(async () => {
    if (!version) return
    setLinksLoading(true)
    try {
      const res = await fetch(
        `/api/fuel-resources-linking?version=${encodeURIComponent(version)}`
      )
      const json = await res.json()
      if (!res.ok) throw new Error(json.error || 'Failed to load links')
      setLinks((json.data ?? []) as FuelResourceLinking[])
      setFactorEdits({})
    } catch (err) {
      showSnackbar(err instanceof Error ? err.message : 'Failed to load links', 'error')
    } finally {
      setLinksLoading(false)
    }
  }, [version])

  useEffect(() => {
    fetchCategories().catch(() => undefined)
    fetchReleases().catch((err) =>
      showSnackbar(err instanceof Error ? err.message : 'Failed to load releases', 'error')
    )
  }, [fetchCategories, fetchReleases])

  useEffect(() => {
    if (versionTabs.length === 0) return
    if (!versionTabs.includes(version)) {
      setVersion(versionTabs.includes(EF_VERSION_MAY) ? EF_VERSION_MAY : versionTabs[0])
    }
  }, [versionTabs, version])

  useEffect(() => {
    fetchLinks()
  }, [fetchLinks])

  const handleUpdateFactor = async (linkId: string, factor: number) => {
    setBusy(true)
    try {
      const res = await fetch('/api/fuel-resources-linking', {
        method: 'PATCH',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ id: linkId, unit_conversion_factor: factor }),
      })
      const json = await res.json()
      if (!res.ok) throw new Error(json.error || 'Failed to update factor')
      showSnackbar('Factor updated')
      await fetchLinks()
    } catch (err) {
      showSnackbar(err instanceof Error ? err.message : 'Update failed', 'error')
    } finally {
      setBusy(false)
    }
  }

  const handleDelete = async (linkId: string) => {
    setBusy(true)
    try {
      const res = await fetch(
        `/api/fuel-resources-linking?id=${encodeURIComponent(linkId)}`,
        { method: 'DELETE' }
      )
      const json = await res.json().catch(() => ({}))
      if (!res.ok) throw new Error(json.error || 'Delete failed')
      showSnackbar('Link deleted')
      await fetchLinks()
      await fetchReleases()
    } catch (err) {
      showSnackbar(err instanceof Error ? err.message : 'Delete failed', 'error')
    } finally {
      setBusy(false)
    }
  }

  const handleExport = async () => {
    try {
      const res = await fetch(
        `/api/ef-catalog/export?version=${encodeURIComponent(version)}&artifact=fuel_resources_linking&allow_draft=true`
      )
      if (!res.ok) throw new Error('Export failed')
      const blob = await res.blob()
      const url = URL.createObjectURL(blob)
      const a = document.createElement('a')
      a.href = url
      a.download = `fuel_resources_linking_${version}.csv`
      a.click()
      URL.revokeObjectURL(url)
      showSnackbar('Exported CSV')
    } catch {
      showSnackbar('Export failed', 'error')
    }
  }

  if (authLoading) {
    return (
      <Box sx={{ display: 'flex', justifyContent: 'center', minHeight: '40vh', alignItems: 'center' }}>
        <CircularProgress />
      </Box>
    )
  }
  if (user && !isAdmin(user)) return null

  return (
    <Box sx={{ p: 3, maxWidth: '100%' }}>
      <Box
        sx={{
          display: 'flex',
          justifyContent: 'space-between',
          alignItems: 'flex-start',
          mb: 2,
          gap: 2,
          flexWrap: 'wrap',
        }}
      >
        <Box>
          <Typography variant="h4" fontWeight={700} gutterBottom>
            Fuel Resource Linking
          </Typography>
          <Typography variant="body2" color="text.secondary">
            Directed pairs per catalog version (source → dest + unit conversion factor)
          </Typography>
        </Box>
        <Button
          variant="outlined"
          startIcon={<FileDownloadIcon />}
          onClick={handleExport}
          disabled={!version || versionTabs.length === 0}
        >
          Export CSV
        </Button>
      </Box>

      <Paper variant="outlined" sx={{ mb: 2 }}>
        <Box sx={{ px: 2, pt: 1 }}>
          {versionTabs.length > 0 ? (
            <Tabs
              value={version}
              onChange={(_, v: string) => setVersion(v)}
              variant="scrollable"
              allowScrollButtonsMobile
            >
              {versionTabs.map((v) => (
                <Tab key={v} value={v} label={v} />
              ))}
            </Tabs>
          ) : (
            <Typography variant="body2" color="text.secondary" sx={{ py: 2 }}>
              No catalog versions yet. Import fuels on Emission Resources first.
            </Typography>
          )}
        </Box>
      </Paper>

      {versionTabs.length > 0 && (
        <>
          <Paper variant="outlined" sx={{ mb: 2 }}>
            <Box
              sx={{
                display: 'flex',
                justifyContent: 'flex-end',
                alignItems: 'center',
                gap: 2,
                px: 2,
                py: 1.5,
                borderBottom: 1,
                borderColor: 'divider',
              }}
            >
              <Typography variant="body2" color="text.secondary">
                Total: {linksLoading ? '…' : `${links.length} links`}
              </Typography>
              <Button
                variant="contained"
                startIcon={<AddIcon />}
                onClick={() => setAddOpen(true)}
              >
                Add linkage
              </Button>
            </Box>

            {linksLoading ? (
              <Box sx={{ display: 'flex', justifyContent: 'center', py: 4 }}>
                <CircularProgress size={28} />
              </Box>
            ) : links.length === 0 ? (
              <Typography variant="body2" color="text.secondary" sx={{ p: 3 }}>
                No links for this version yet. Click Add linkage to create one.
              </Typography>
            ) : (
              <Table size="small">
                <TableHead>
                  <TableRow>
                    <TableCell>Source</TableCell>
                    <TableCell>Destination</TableCell>
                    <TableCell width={120}>Factor</TableCell>
                    <TableCell width={100} align="right">
                      Actions
                    </TableCell>
                  </TableRow>
                </TableHead>
                <TableBody>
                  {links.map((link) => {
                    const editValue = factorEdits[link.id]
                    const displayFactor =
                      editValue !== undefined
                        ? editValue
                        : String(link.unit_conversion_factor)
                    const dirty =
                      editValue !== undefined &&
                      Number(editValue) !== Number(link.unit_conversion_factor)
                    return (
                      <TableRow key={link.id}>
                        <TableCell>
                          <Typography variant="body2">
                            {link.source_fuel?.resource || link.source_fuel_id}
                          </Typography>
                          <Typography variant="caption" color="text.secondary">
                            {link.source_fuel?.scope_category?.name_en ?? ''}
                            {link.source_fuel?.unit ? ` · ${link.source_fuel.unit}` : ''}
                          </Typography>
                        </TableCell>
                        <TableCell>
                          <Typography variant="body2">
                            {link.dest_fuel?.resource || link.dest_fuel_id}
                          </Typography>
                          <Typography variant="caption" color="text.secondary">
                            {link.dest_fuel?.scope_category?.name_en ?? ''}
                            {link.dest_fuel?.sub_category
                              ? ` · ${link.dest_fuel.sub_category}`
                              : ''}
                            {link.dest_fuel?.unit ? ` · ${link.dest_fuel.unit}` : ''}
                          </Typography>
                        </TableCell>
                        <TableCell>
                          <TextField
                            size="small"
                            value={displayFactor}
                            onChange={(e) =>
                              setFactorEdits((prev) => ({
                                ...prev,
                                [link.id]: e.target.value,
                              }))
                            }
                            inputProps={{ inputMode: 'decimal' }}
                            sx={{ width: 100 }}
                          />
                        </TableCell>
                        <TableCell align="right">
                          <IconButton
                            size="small"
                            disabled={!dirty || busy}
                            title="Save factor"
                            onClick={() => {
                              const factor = Number(displayFactor)
                              if (!Number.isFinite(factor) || factor <= 0) {
                                showSnackbar('Factor must be a positive number', 'error')
                                return
                              }
                              handleUpdateFactor(link.id, factor)
                            }}
                          >
                            <SaveIcon fontSize="small" />
                          </IconButton>
                          <IconButton
                            size="small"
                            color="error"
                            disabled={busy}
                            title="Delete link"
                            onClick={() => handleDelete(link.id)}
                          >
                            <DeleteIcon fontSize="small" />
                          </IconButton>
                        </TableCell>
                      </TableRow>
                    )
                  })}
                </TableBody>
              </Table>
            )}
          </Paper>
        </>
      )}

      <AddFuelLinkingModal
        open={addOpen}
        version={version}
        categories={categories}
        onClose={() => setAddOpen(false)}
        onCreated={async () => {
          setAddOpen(false)
          showSnackbar('Link added')
          await fetchLinks()
          await fetchReleases()
        }}
      />

      <Snackbar
        open={snackbar.open}
        autoHideDuration={5000}
        onClose={() => setSnackbar((s) => ({ ...s, open: false }))}
        anchorOrigin={{ vertical: 'bottom', horizontal: 'right' }}
      >
        <Alert
          severity={snackbar.severity}
          onClose={() => setSnackbar((s) => ({ ...s, open: false }))}
        >
          {snackbar.message}
        </Alert>
      </Snackbar>
    </Box>
  )
}
