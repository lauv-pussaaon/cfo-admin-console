'use client'

import React, { useCallback, useEffect, useState } from 'react'
import {
  Alert,
  Box,
  Button,
  Chip,
  CircularProgress,
  Divider,
  Drawer,
  IconButton,
  List,
  ListItem,
  MenuItem,
  Select,
  Snackbar,
  Tab,
  Tabs,
  Tooltip,
  Typography,
} from '@mui/material'
import { Check as CheckIcon, Close as CloseIcon, Edit as EditIcon } from '@mui/icons-material'
import { adminGhostIconButtonSx } from '@/lib/admin-ui-styles'
import type { CategoryMapDestination, CategoryMapRow } from '@/types/emission-resources'

const TGO_SCOPE_TABS = [
  { value: 0, label: 'All' },
  { value: 1, label: 'Scope 1' },
  { value: 2, label: 'Scope 2' },
  { value: 3, label: 'Scope 3' },
  { value: 4, label: 'แยกรายงาน' },
]

interface Props {
  open: boolean
  onClose: () => void
}

export default function CategoryMapPanel ({ open, onClose }: Props) {
  const [scopeTab, setScopeTab] = useState(0)
  const [rows, setRows] = useState<CategoryMapRow[]>([])
  const [destinations, setDestinations] = useState<CategoryMapDestination[]>([])
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)
  const [editingId, setEditingId] = useState<string | null>(null)
  const [draftIsoId, setDraftIsoId] = useState('')
  const [saving, setSaving] = useState(false)
  const [snackbar, setSnackbar] = useState<{ open: boolean; message: string; severity: 'success' | 'error' }>({
    open: false, message: '', severity: 'success',
  })

  const showSnackbar = (message: string, severity: 'success' | 'error' = 'success') => {
    setSnackbar({ open: true, message, severity })
  }

  const fetchMap = useCallback(async () => {
    setLoading(true)
    setError(null)
    try {
      const res = await fetch('/api/emission-category-map')
      const json = await res.json()
      if (!res.ok) throw new Error(json.error || 'Failed to load category map')
      setRows(json.data ?? [])
      setDestinations(json.destinations ?? [])
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Failed to load category map')
    } finally {
      setLoading(false)
    }
  }, [])

  useEffect(() => {
    if (!open) return
    setScopeTab(0)
    setEditingId(null)
    void fetchMap()
  }, [open, fetchMap])

  const filtered = rows.filter((row) => (scopeTab === 0 ? true : row.scope === scopeTab))
  const noneMapped = rows.length > 0 && rows.every((row) => !row.iso_scope_category_id)

  const startEdit = (row: CategoryMapRow) => {
    setEditingId(row.id)
    setDraftIsoId(row.iso_scope_category_id ?? '')
  }

  const handleSave = async () => {
    if (!editingId) return
    setSaving(true)
    try {
      const res = await fetch('/api/emission-category-map', {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          tgo_scope_category_id: editingId,
          iso_scope_category_id: draftIsoId || null,
        }),
      })
      const json = await res.json()
      if (!res.ok) throw new Error(json.error || 'Update failed')
      setEditingId(null)
      await fetchMap()
      showSnackbar('Category map updated')
    } catch (err) {
      showSnackbar(err instanceof Error ? err.message : 'Failed to update category map', 'error')
    } finally {
      setSaving(false)
    }
  }

  return (
    <>
      <Drawer
        anchor="right"
        open={open}
        onClose={onClose}
        PaperProps={{ sx: { width: 640, display: 'flex', flexDirection: 'column' } }}
      >
        <Box sx={{ p: 2, display: 'flex', alignItems: 'center', justifyContent: 'space-between', borderBottom: 1, borderColor: 'divider' }}>
          <Typography variant="h6" fontWeight={600}>
            Category map
          </Typography>
          <IconButton onClick={onClose} size="small">
            <CloseIcon />
          </IconButton>
        </Box>

        <Tabs
          value={scopeTab}
          onChange={(_, value) => setScopeTab(value)}
          variant="scrollable"
          sx={{ borderBottom: 1, borderColor: 'divider', px: 1 }}
        >
          {TGO_SCOPE_TABS.map((tab) => (
            <Tab key={tab.value} value={tab.value} label={tab.label} sx={{ minWidth: 64, textTransform: 'none' }} />
          ))}
        </Tabs>

        {noneMapped && !loading && (
          <Typography variant="body2" color="text.secondary" sx={{ px: 2, py: 1.5, borderBottom: 1, borderColor: 'divider' }}>
            An ISO import fills these pairs. You can still choose a destination.
          </Typography>
        )}

        <Box sx={{ flex: 1, overflow: 'auto', p: 2 }}>
          {error && <Alert severity="error" sx={{ mb: 2 }}>{error}</Alert>}
          {loading && (
            <Box sx={{ display: 'flex', justifyContent: 'center', py: 4 }}>
              <CircularProgress />
            </Box>
          )}

          {!loading && (
            <List disablePadding>
              {filtered.length === 0 && (
                <Typography variant="body2" color="text.secondary" sx={{ py: 4, textAlign: 'center' }}>
                  No categories found
                </Typography>
              )}
              {filtered.map((row, index) => (
                <React.Fragment key={row.id}>
                  {index > 0 && <Divider />}
                  <ListItem disablePadding sx={{ py: 1.5, display: 'block' }}>
                    <Box sx={{ display: 'flex', alignItems: 'flex-start', gap: 1 }}>
                      <Box sx={{ flex: 1, minWidth: 0 }}>
                        <Typography variant="body2" fontWeight={500}>
                          {row.name_en}
                        </Typography>
                        <Typography variant="caption" color="text.secondary">
                          {row.name_th}
                          {row.fuel_count ? ` · ${row.fuel_count} แถว` : ''}
                        </Typography>
                      </Box>
                      <Typography variant="body2" color="text.secondary" sx={{ mt: 0.4, flexShrink: 0 }}>
                        →
                      </Typography>
                      {editingId === row.id ? (
                        <Box sx={{ width: 220, flexShrink: 0, display: 'flex', flexDirection: 'column', gap: 1 }}>
                          <Select
                            size="small"
                            value={draftIsoId}
                            displayEmpty
                            onChange={(event) => setDraftIsoId(String(event.target.value))}
                            renderValue={(value) => {
                              if (!value) return 'ไม่มีที่อยู่'
                              return destinations.find((destination) => destination.id === value)?.code ?? 'ไม่มีที่อยู่'
                            }}
                          >
                            <MenuItem value="">ไม่มีที่อยู่</MenuItem>
                            {destinations.map((destination) => (
                              <MenuItem key={destination.id} value={destination.id}>
                                {destination.name_en}
                              </MenuItem>
                            ))}
                          </Select>
                          <Box sx={{ display: 'flex', gap: 1, justifyContent: 'flex-end' }}>
                            <Button size="small" onClick={() => setEditingId(null)} disabled={saving} color="inherit">
                              Cancel
                            </Button>
                            <Button
                              size="small"
                              variant="contained"
                              onClick={handleSave}
                              disabled={saving}
                              startIcon={saving ? <CircularProgress size={14} /> : <CheckIcon />}
                            >
                              Save
                            </Button>
                          </Box>
                        </Box>
                      ) : (
                        <Box sx={{ display: 'flex', alignItems: 'center', gap: 0.5, flexShrink: 0 }}>
                          <Chip
                            label={row.iso_code ?? 'ไม่มีที่อยู่'}
                            size="small"
                            variant="outlined"
                            sx={{ fontWeight: 700 }}
                          />
                          <Tooltip title="Edit">
                            <IconButton size="small" onClick={() => startEdit(row)} sx={adminGhostIconButtonSx.primary}>
                              <EditIcon fontSize="small" />
                            </IconButton>
                          </Tooltip>
                        </Box>
                      )}
                    </Box>
                  </ListItem>
                </React.Fragment>
              ))}
            </List>
          )}
        </Box>
      </Drawer>

      <Snackbar
        open={snackbar.open}
        autoHideDuration={4000}
        onClose={() => setSnackbar((current) => ({ ...current, open: false }))}
        anchorOrigin={{ vertical: 'bottom', horizontal: 'right' }}
      >
        <Alert severity={snackbar.severity} onClose={() => setSnackbar((current) => ({ ...current, open: false }))}>
          {snackbar.message}
        </Alert>
      </Snackbar>
    </>
  )
}
