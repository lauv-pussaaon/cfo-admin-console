'use client'

import React, { useEffect, useState } from 'react'
import {
  Alert,
  Box,
  Button,
  Chip,
  CircularProgress,
  Dialog,
  DialogActions,
  DialogContent,
  DialogTitle,
  TextField,
  Typography,
} from '@mui/material'
import type { EfCatalogReleaseStatus, FuelResourceWithCategory } from '@/types/emission-resources'

interface Props {
  open: boolean
  resource: FuelResourceWithCategory | null
  releaseStatus: EfCatalogReleaseStatus | null
  onClose: () => void
  onSaved: () => void
}

export default function FuelResourceEditModal ({
  open,
  resource,
  releaseStatus,
  onClose,
  onSaved,
}: Props) {
  const [efValue, setEfValue] = useState('')
  const [value1Label, setValue1Label] = useState('')
  const [value1Unit, setValue1Unit] = useState('')
  const [value2Label, setValue2Label] = useState('')
  const [value2Unit, setValue2Unit] = useState('')
  const [submitting, setSubmitting] = useState(false)
  const [error, setError] = useState<string | null>(null)

  useEffect(() => {
    if (!open || !resource) return
    setEfValue(resource.ef_value != null ? String(resource.ef_value) : '')
    setValue1Label(resource.value1_label ?? '')
    setValue1Unit(resource.value1_unit ?? '')
    setValue2Label(resource.value2_label ?? '')
    setValue2Unit(resource.value2_unit ?? '')
    setError(null)
    setSubmitting(false)
  }, [open, resource])

  const handleClose = () => {
    if (submitting) return
    onClose()
  }

  const handleSave = async () => {
    if (!resource) return
    setSubmitting(true)
    setError(null)

    const trimmedEf = efValue.trim()
    let parsedEf: number | null = null
    if (trimmedEf !== '') {
      parsedEf = Number(trimmedEf)
      if (!Number.isFinite(parsedEf)) {
        setError('EF value must be a number')
        setSubmitting(false)
        return
      }
    }

    try {
      const res = await fetch(`/api/fuel-resources/${resource.id}`, {
        method: 'PATCH',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          ef_value: parsedEf,
          value1_label: value1Label.trim() || null,
          value1_unit: value1Unit.trim() || null,
          value2_label: value2Label.trim() || null,
          value2_unit: value2Unit.trim() || null,
        }),
      })
      const json = await res.json().catch(() => ({}))
      if (!res.ok) {
        throw new Error(json.error || 'Failed to save')
      }
      onSaved()
      onClose()
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Failed to save')
    } finally {
      setSubmitting(false)
    }
  }

  return (
    <Dialog open={open} onClose={handleClose} maxWidth="sm" fullWidth>
      <DialogTitle>Edit emission factor</DialogTitle>
      <DialogContent dividers>
        {resource && (
          <Box sx={{ display: 'flex', flexDirection: 'column', gap: 2 }}>
            <Box>
              <Typography variant="subtitle1" fontWeight={600}>
                {resource.resource}
              </Typography>
              <Box sx={{ display: 'flex', flexWrap: 'wrap', gap: 0.75, mt: 1 }}>
                {resource.scope_category && (
                  <Chip
                    size="small"
                    label={`S${resource.scope_category.scope} · ${resource.scope_category.name_en}`}
                  />
                )}
                {resource.sub_category && (
                  <Chip size="small" variant="outlined" label={resource.sub_category} />
                )}
                {resource.unit && (
                  <Chip size="small" variant="outlined" label={resource.unit} />
                )}
                {resource.version && (
                  <Chip size="small" color="primary" variant="outlined" label={resource.version} />
                )}
              </Box>
            </Box>

            {releaseStatus === 'published' && (
              <Alert severity="info">
                Saved changes reach client apps after you click Publish on this version tab.
              </Alert>
            )}

            {error && <Alert severity="error">{error}</Alert>}

            <TextField
              label="EF value"
              size="small"
              fullWidth
              value={efValue}
              onChange={(e) => setEfValue(e.target.value)}
              placeholder="e.g. 2.3145"
              inputProps={{ inputMode: 'decimal' }}
            />

            <Typography variant="subtitle2" color="text.secondary">
              Duo values
            </Typography>
            <Box
              sx={{
                display: 'grid',
                gridTemplateColumns: { xs: '1fr', sm: '1fr 1fr' },
                gap: 1.5,
              }}
            >
              <TextField
                label="Value 1 label"
                size="small"
                value={value1Label}
                onChange={(e) => setValue1Label(e.target.value)}
              />
              <TextField
                label="Value 1 unit"
                size="small"
                value={value1Unit}
                onChange={(e) => setValue1Unit(e.target.value)}
              />
              <TextField
                label="Value 2 label"
                size="small"
                value={value2Label}
                onChange={(e) => setValue2Label(e.target.value)}
              />
              <TextField
                label="Value 2 unit"
                size="small"
                value={value2Unit}
                onChange={(e) => setValue2Unit(e.target.value)}
              />
            </Box>
          </Box>
        )}
      </DialogContent>
      <DialogActions>
        <Button onClick={handleClose} disabled={submitting}>
          Cancel
        </Button>
        <Button
          variant="contained"
          onClick={handleSave}
          disabled={submitting || !resource}
          startIcon={submitting ? <CircularProgress size={16} /> : undefined}
        >
          Save
        </Button>
      </DialogActions>
    </Dialog>
  )
}
