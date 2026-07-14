'use client'

import React, { useCallback, useEffect, useState } from 'react'
import { useRouter } from 'next/navigation'
import {
  Alert,
  Box,
  Button,
  CircularProgress,
  FormControl,
  InputLabel,
  MenuItem,
  Paper,
  Select,
  Snackbar,
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableRow,
  TextField,
  Typography,
} from '@mui/material'
import { useAuth } from '@/contexts/AuthContext'
import { isAdmin } from '@/lib/permissions'
import {
  EF_CATALOG_VERSIONS,
  EF_VERSION_LABELS,
  EF_VERSION_MAY,
  type EfCatalogVersion,
} from '@/lib/constants/ef-catalog'
import type { FuelResourceLinking } from '@/types/emission-resources'

export default function FuelResourcesLinkingPage () {
  const router = useRouter()
  const { user, isLoading: authLoading } = useAuth()
  const [version, setVersion] = useState<EfCatalogVersion>(EF_VERSION_MAY)
  const [rows, setRows] = useState<FuelResourceLinking[]>([])
  const [loading, setLoading] = useState(false)
  const [importText, setImportText] = useState('')
  const [snackbar, setSnackbar] = useState<{ open: boolean; message: string; severity: 'success' | 'error' }>({
    open: false,
    message: '',
    severity: 'success',
  })

  useEffect(() => {
    if (!authLoading && user && !isAdmin(user)) {
      router.replace('/admin-console')
    }
  }, [user, authLoading, router])

  const showSnackbar = (message: string, severity: 'success' | 'error' = 'success') => {
    setSnackbar({ open: true, message, severity })
  }

  const fetchRows = useCallback(async () => {
    setLoading(true)
    try {
      const res = await fetch(`/api/fuel-resources-linking?version=${encodeURIComponent(version)}`)
      const json = await res.json()
      if (!res.ok) throw new Error(json.error || 'Failed to load')
      setRows(json.data ?? [])
    } catch (err) {
      showSnackbar(err instanceof Error ? err.message : 'Failed to load links', 'error')
    } finally {
      setLoading(false)
    }
  }, [version])

  useEffect(() => {
    fetchRows()
  }, [fetchRows])

  const handleDelete = async (id: string) => {
    try {
      const res = await fetch(`/api/fuel-resources-linking?id=${encodeURIComponent(id)}`, {
        method: 'DELETE',
      })
      if (!res.ok) throw new Error('Delete failed')
      showSnackbar('Link deleted')
      fetchRows()
    } catch {
      showSnackbar('Failed to delete link', 'error')
    }
  }

  const parseCsvRows = (text: string) => {
    const lines = text.trim().split(/\r?\n/).filter(Boolean)
    if (lines.length < 2) return []
    const headers = lines[0].split(',').map((h) => h.trim().replace(/^"|"$/g, ''))
    return lines.slice(1).map((line) => {
      const cols = line.split(',').map((c) => c.trim().replace(/^"|"$/g, ''))
      const obj: Record<string, string> = {}
      headers.forEach((h, i) => {
        obj[h] = cols[i] ?? ''
      })
      return {
        source_category: obj.source_category || obj['source category'] || '',
        source_resource: obj.source_resource || obj['source resource'] || '',
        dest_category: obj.dest_category || obj['dest category'] || '',
        dest_resource: obj.dest_resource || obj['dest resource'] || '',
        source_fuel_id: obj.source_fuel_id || '',
        dest_fuel_id: obj.dest_fuel_id || '',
        unit_conversion_factor: obj.unit_conversion_factor || obj.factor || '1',
      }
    })
  }

  const handleImport = async () => {
    try {
      const parsed = parseCsvRows(importText)
      if (parsed.length === 0) throw new Error('No CSV rows found')
      const res = await fetch('/api/fuel-resources-linking/import', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ version, rows: parsed, replace: true }),
      })
      const json = await res.json()
      if (!res.ok) {
        const detail = json.errors?.[0]
          ? ` row ${json.errors[0].row}: ${json.errors[0].error}`
          : ''
        throw new Error((json.error || 'Import failed') + detail)
      }
      showSnackbar(`Imported ${json.imported} links`)
      setImportText('')
      fetchRows()
    } catch (err) {
      showSnackbar(err instanceof Error ? err.message : 'Import failed', 'error')
    }
  }

  const handleExport = async () => {
    const res = await fetch(
      `/api/ef-catalog/export?version=${encodeURIComponent(version)}&artifact=fuel_resources_linking&allow_draft=true`
    )
    if (!res.ok) {
      showSnackbar('Export failed', 'error')
      return
    }
    const blob = await res.blob()
    const url = URL.createObjectURL(blob)
    const a = document.createElement('a')
    a.href = url
    a.download = `fuel_resources_linking_${version}.csv`
    a.click()
    URL.revokeObjectURL(url)
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
    <Box sx={{ p: 3 }}>
      <Typography variant="h4" fontWeight={700} gutterBottom>
        Fuel Resource Linking
      </Typography>
      <Typography variant="body2" color="text.secondary" sx={{ mb: 2 }}>
        Scope 1 → Scope 3 Cat 3 links per EF catalog version (import from V3 CSV business keys)
      </Typography>

      <Box sx={{ display: 'flex', gap: 2, mb: 2, alignItems: 'center', flexWrap: 'wrap' }}>
        <FormControl size="small" sx={{ minWidth: 220 }}>
          <InputLabel>Version</InputLabel>
          <Select
            label="Version"
            value={version}
            onChange={(e) => setVersion(e.target.value as EfCatalogVersion)}
          >
            {EF_CATALOG_VERSIONS.map((v) => (
              <MenuItem key={v} value={v}>
                {EF_VERSION_LABELS[v]}
              </MenuItem>
            ))}
          </Select>
        </FormControl>
        <Button variant="outlined" onClick={handleExport}>
          Export CSV
        </Button>
        <Typography variant="body2" color="text.secondary">
          {rows.length} links
        </Typography>
      </Box>

      <Paper variant="outlined" sx={{ p: 2, mb: 3 }}>
        <Typography variant="subtitle2" gutterBottom>
          Import CSV (headers: source_category, source_resource, dest_category, dest_resource, factor)
        </Typography>
        <TextField
          multiline
          minRows={6}
          fullWidth
          value={importText}
          onChange={(e) => setImportText(e.target.value)}
          placeholder="source_category,source_resource,dest_category,dest_resource,factor"
        />
        <Button sx={{ mt: 1 }} variant="contained" onClick={handleImport}>
          Replace import for version
        </Button>
      </Paper>

      {loading ? (
        <CircularProgress />
      ) : (
        <Table size="small">
          <TableHead>
            <TableRow>
              <TableCell>Source</TableCell>
              <TableCell>Dest</TableCell>
              <TableCell align="right">Factor</TableCell>
              <TableCell />
            </TableRow>
          </TableHead>
          <TableBody>
            {rows.map((r) => (
              <TableRow key={r.id}>
                <TableCell>
                  <Typography variant="body2">{r.source_fuel?.resource || r.source_fuel_id}</Typography>
                  <Typography variant="caption" color="text.secondary">
                    {r.source_fuel_id}
                  </Typography>
                </TableCell>
                <TableCell>
                  <Typography variant="body2">{r.dest_fuel?.resource || r.dest_fuel_id}</Typography>
                  <Typography variant="caption" color="text.secondary">
                    {r.dest_fuel_id}
                  </Typography>
                </TableCell>
                <TableCell align="right">{r.unit_conversion_factor}</TableCell>
                <TableCell align="right">
                  <Button size="small" color="error" onClick={() => handleDelete(r.id)}>
                    Delete
                  </Button>
                </TableCell>
              </TableRow>
            ))}
          </TableBody>
        </Table>
      )}

      <Snackbar
        open={snackbar.open}
        autoHideDuration={5000}
        onClose={() => setSnackbar((s) => ({ ...s, open: false }))}
      >
        <Alert severity={snackbar.severity}>{snackbar.message}</Alert>
      </Snackbar>
    </Box>
  )
}
