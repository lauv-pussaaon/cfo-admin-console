'use client'

import React, { useCallback, useEffect, useMemo, useState } from 'react'
import {
  Alert,
  Autocomplete,
  Box,
  Button,
  CircularProgress,
  Dialog,
  DialogActions,
  DialogContent,
  DialogTitle,
  FormControl,
  InputLabel,
  MenuItem,
  Select,
  TextField,
  Typography,
} from '@mui/material'
import type { FuelResourceWithCategory, ScopeCategory } from '@/types/emission-resources'

interface Props {
  open: boolean
  version: string
  categories: ScopeCategory[]
  onClose: () => void
  onCreated: () => void
}

async function fetchFuels (params: URLSearchParams): Promise<FuelResourceWithCategory[]> {
  const res = await fetch(`/api/fuel-resources?${params}`)
  const json = await res.json()
  if (!res.ok) throw new Error(json.error || 'Failed to load fuels')
  return (json.data ?? []) as FuelResourceWithCategory[]
}

export default function AddFuelLinkingModal ({
  open,
  version,
  categories,
  onClose,
  onCreated,
}: Props) {
  const [sourceScope, setSourceScope] = useState<number>(1)
  const [sourceCategoryId, setSourceCategoryId] = useState('')
  const [sourceFuel, setSourceFuel] = useState<FuelResourceWithCategory | null>(null)
  const [sourceFuels, setSourceFuels] = useState<FuelResourceWithCategory[]>([])
  const [sourceLoading, setSourceLoading] = useState(false)

  const [destScope, setDestScope] = useState<number>(3)
  const [destCategoryId, setDestCategoryId] = useState('')
  const [destSubCategory, setDestSubCategory] = useState('')
  const [destSubCategories, setDestSubCategories] = useState<string[]>([])
  const [destFuel, setDestFuel] = useState<FuelResourceWithCategory | null>(null)
  const [destFuels, setDestFuels] = useState<FuelResourceWithCategory[]>([])
  const [destLoading, setDestLoading] = useState(false)
  const [subsLoading, setSubsLoading] = useState(false)

  const [factor, setFactor] = useState('1')
  const [submitting, setSubmitting] = useState(false)
  const [error, setError] = useState<string | null>(null)

  const sourceCategories = useMemo(
    () => categories.filter((c) => c.scope === sourceScope),
    [categories, sourceScope]
  )
  const destCategories = useMemo(
    () => categories.filter((c) => c.scope === destScope),
    [categories, destScope]
  )

  const reset = useCallback(() => {
    setSourceScope(1)
    setSourceCategoryId('')
    setSourceFuel(null)
    setSourceFuels([])
    setDestScope(3)
    setDestCategoryId('')
    setDestSubCategory('')
    setDestSubCategories([])
    setDestFuel(null)
    setDestFuels([])
    setFactor('1')
    setError(null)
    setSubmitting(false)
  }, [])

  const handleClose = () => {
    if (submitting) return
    reset()
    onClose()
  }

  useEffect(() => {
    if (!open) return
    if (!sourceCategoryId) {
      setSourceFuels([])
      setSourceFuel(null)
      return
    }
    let cancelled = false
    setSourceLoading(true)
    const params = new URLSearchParams({
      version,
      scope: String(sourceScope),
      category_id: sourceCategoryId,
      page: '1',
      per_page: '2000',
    })
    fetchFuels(params)
      .then((data) => {
        if (!cancelled) {
          setSourceFuels(data.sort((a, b) => a.resource.localeCompare(b.resource)))
        }
      })
      .catch((err) => {
        if (!cancelled) {
          setError(err instanceof Error ? err.message : 'Failed to load source fuels')
          setSourceFuels([])
        }
      })
      .finally(() => {
        if (!cancelled) setSourceLoading(false)
      })
    return () => {
      cancelled = true
    }
  }, [open, version, sourceScope, sourceCategoryId])

  useEffect(() => {
    if (!open || !destCategoryId) {
      setDestSubCategories([])
      setDestSubCategory('')
      return
    }
    let cancelled = false
    setSubsLoading(true)
    fetch(
      `/api/fuel-resources/sub-categories?scope_category_id=${encodeURIComponent(destCategoryId)}`
    )
      .then(async (res) => {
        const json = await res.json()
        if (!res.ok) throw new Error(json.error || 'Failed to load sub-categories')
        return (json.data ?? []) as string[]
      })
      .then((data) => {
        if (!cancelled) setDestSubCategories(data)
      })
      .catch((err) => {
        if (!cancelled) {
          setError(err instanceof Error ? err.message : 'Failed to load sub-categories')
          setDestSubCategories([])
        }
      })
      .finally(() => {
        if (!cancelled) setSubsLoading(false)
      })
    return () => {
      cancelled = true
    }
  }, [open, destCategoryId])

  useEffect(() => {
    if (!open) return
    if (!destCategoryId) {
      setDestFuels([])
      setDestFuel(null)
      return
    }
    let cancelled = false
    setDestLoading(true)
    const params = new URLSearchParams({
      version,
      category_id: destCategoryId,
      page: '1',
      per_page: '2000',
    })
    if (destSubCategory) params.set('sub_category', destSubCategory)
    fetchFuels(params)
      .then((data) => {
        if (!cancelled) {
          setDestFuels(data.sort((a, b) => a.resource.localeCompare(b.resource)))
        }
      })
      .catch((err) => {
        if (!cancelled) {
          setError(err instanceof Error ? err.message : 'Failed to load dest fuels')
          setDestFuels([])
        }
      })
      .finally(() => {
        if (!cancelled) setDestLoading(false)
      })
    return () => {
      cancelled = true
    }
  }, [open, version, destCategoryId, destSubCategory])

  const handleSubmit = async () => {
    setError(null)
    if (!sourceFuel || !destFuel) {
      setError('Select both source and destination fuels')
      return
    }
    if (sourceFuel.id === destFuel.id) {
      setError('Source and destination must be different fuels')
      return
    }
    const factorNum = Number(factor)
    if (!Number.isFinite(factorNum) || factorNum <= 0) {
      setError('Factor must be a positive number')
      return
    }
    setSubmitting(true)
    try {
      const res = await fetch('/api/fuel-resources-linking', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          source_fuel_id: sourceFuel.id,
          dest_fuel_id: destFuel.id,
          unit_conversion_factor: factorNum,
          version,
        }),
      })
      const json = await res.json()
      if (!res.ok) throw new Error(json.error || 'Failed to create link')
      reset()
      onCreated()
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Failed to create link')
    } finally {
      setSubmitting(false)
    }
  }

  return (
    <Dialog open={open} onClose={handleClose} maxWidth="sm" fullWidth>
      <DialogTitle>Add linkage</DialogTitle>
      <DialogContent dividers>
        <Typography variant="caption" color="text.secondary" display="block" sx={{ mb: 2 }}>
          Version: {version} · dest_qty = source_qty × factor
        </Typography>

        {error && (
          <Alert severity="error" sx={{ mb: 2 }} onClose={() => setError(null)}>
            {error}
          </Alert>
        )}

        <Typography variant="subtitle2" sx={{ mb: 1 }}>
          Source (Scope 1 / 2)
        </Typography>
        <Box sx={{ display: 'flex', flexDirection: 'column', gap: 1.5, mb: 3 }}>
          <FormControl size="small" fullWidth>
            <InputLabel>Scope</InputLabel>
            <Select
              label="Scope"
              value={sourceScope}
              onChange={(e) => {
                setSourceScope(Number(e.target.value))
                setSourceCategoryId('')
                setSourceFuel(null)
              }}
            >
              <MenuItem value={1}>Scope 1</MenuItem>
              <MenuItem value={2}>Scope 2</MenuItem>
            </Select>
          </FormControl>
          <FormControl size="small" fullWidth>
            <InputLabel>Category</InputLabel>
            <Select
              label="Category"
              value={sourceCategoryId}
              onChange={(e) => {
                setSourceCategoryId(e.target.value)
                setSourceFuel(null)
              }}
            >
              {sourceCategories.map((c) => (
                <MenuItem key={c.id} value={c.id}>
                  {c.name_en}
                </MenuItem>
              ))}
            </Select>
          </FormControl>
          <Autocomplete
            size="small"
            options={sourceFuels}
            loading={sourceLoading}
            disabled={!sourceCategoryId}
            value={sourceFuel}
            onChange={(_, v) => setSourceFuel(v)}
            getOptionLabel={(o) =>
              `${o.resource}${o.sub_category ? ` · ${o.sub_category}` : ''}${o.unit ? ` (${o.unit})` : ''}`
            }
            isOptionEqualToValue={(a, b) => a.id === b.id}
            renderOption={(props, option) => {
              const { key: _key, ...rest } = props as typeof props & { key?: string }
              return (
                <li key={option.id} {...rest}>
                  {option.resource}
                  {option.sub_category ? ` · ${option.sub_category}` : ''}
                  {option.unit ? ` (${option.unit})` : ''}
                </li>
              )
            }}
            renderInput={(params) => (
              <TextField {...params} label="Fuel resource" placeholder="Search…" />
            )}
          />
        </Box>

        <Typography variant="subtitle2" sx={{ mb: 1 }}>
          Destination
        </Typography>
        <Box sx={{ display: 'flex', flexDirection: 'column', gap: 1.5, mb: 3 }}>
          <FormControl size="small" fullWidth>
            <InputLabel>Scope</InputLabel>
            <Select
              label="Scope"
              value={destScope}
              onChange={(e) => {
                setDestScope(Number(e.target.value))
                setDestCategoryId('')
                setDestSubCategory('')
                setDestFuel(null)
              }}
            >
              <MenuItem value={1}>Scope 1</MenuItem>
              <MenuItem value={2}>Scope 2</MenuItem>
              <MenuItem value={3}>Scope 3</MenuItem>
              <MenuItem value={4}>Scope 4</MenuItem>
            </Select>
          </FormControl>
          <FormControl size="small" fullWidth>
            <InputLabel>Category</InputLabel>
            <Select
              label="Category"
              value={destCategoryId}
              onChange={(e) => {
                setDestCategoryId(e.target.value)
                setDestSubCategory('')
                setDestFuel(null)
              }}
            >
              {destCategories.map((c) => (
                <MenuItem key={c.id} value={c.id}>
                  {c.name_en}
                </MenuItem>
              ))}
            </Select>
          </FormControl>
          <FormControl size="small" fullWidth disabled={!destCategoryId}>
            <InputLabel>Sub-category</InputLabel>
            <Select
              label="Sub-category"
              value={destSubCategory}
              onChange={(e) => {
                setDestSubCategory(e.target.value)
                setDestFuel(null)
              }}
            >
              <MenuItem value="">All</MenuItem>
              {destSubCategories.map((s) => (
                <MenuItem key={s} value={s}>
                  {s}
                </MenuItem>
              ))}
            </Select>
          </FormControl>
          {subsLoading && (
            <Typography variant="caption" color="text.secondary">
              Loading sub-categories…
            </Typography>
          )}
          <Autocomplete
            size="small"
            options={destFuels}
            loading={destLoading}
            disabled={!destCategoryId}
            value={destFuel}
            onChange={(_, v) => setDestFuel(v)}
            getOptionLabel={(o) =>
              `${o.resource}${o.sub_category ? ` · ${o.sub_category}` : ''}${o.unit ? ` (${o.unit})` : ''}`
            }
            isOptionEqualToValue={(a, b) => a.id === b.id}
            renderOption={(props, option) => {
              const { key: _key, ...rest } = props as typeof props & { key?: string }
              return (
                <li key={option.id} {...rest}>
                  {option.resource}
                  {option.sub_category ? ` · ${option.sub_category}` : ''}
                  {option.unit ? ` (${option.unit})` : ''}
                </li>
              )
            }}
            renderInput={(params) => (
              <TextField {...params} label="Fuel resource" placeholder="Search…" />
            )}
          />
        </Box>

        <TextField
          size="small"
          label="Unit conversion factor"
          value={factor}
          onChange={(e) => setFactor(e.target.value)}
          fullWidth
          helperText="dest_qty = source_qty × factor"
        />
      </DialogContent>
      <DialogActions>
        <Button onClick={handleClose} disabled={submitting}>
          Cancel
        </Button>
        <Button
          variant="contained"
          onClick={handleSubmit}
          disabled={submitting || !sourceFuel || !destFuel}
          startIcon={submitting ? <CircularProgress size={16} /> : undefined}
        >
          Add linkage
        </Button>
      </DialogActions>
    </Dialog>
  )
}
