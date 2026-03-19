'use client'

import React, { useCallback, useEffect, useState } from 'react'
import {
  Box,
  Button,
  Checkbox,
  Dialog,
  DialogActions,
  DialogContent,
  DialogTitle,
  FormControl,
  Grid,
  InputLabel,
  MenuItem,
  Select,
  Switch,
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableRow,
  TextField,
  Typography,
} from '@mui/material'
import { useForm, Controller } from 'react-hook-form'
import type { ScopeCategory } from '@/types/emission-resources'
import type { TemplateActivityGroupWithRelations } from '@/types/emission-templates'

interface ActivityGroupFormValues {
  name_th: string
  name_en: string
  scope: number
  scope_category_id: string
  scope_sub_category: string
  is_common: boolean
  sort_order: number
  status: 'active' | 'inactive'
}

interface FuelResourceMapping {
  fuel_resource_id: string
  note?: string | null
}

interface SavePayload {
  template_id: string
  name_th: string
  name_en: string
  scope: number
  scope_category_id: string | null
  scope_sub_category?: string | null
  is_common: boolean
  sort_order: number
  status: string
  fuel_resource_mappings?: FuelResourceMapping[]
}

interface Props {
  open: boolean
  onClose: () => void
  onSave: (data: SavePayload) => Promise<void>
  editTarget: TemplateActivityGroupWithRelations | null
  templateId: string
  categories: ScopeCategory[]
}

export default function ActivityGroupFormDialog({
  open,
  onClose,
  onSave,
  editTarget,
  templateId,
  categories,
}: Props) {
  const [subCategories, setSubCategories] = useState<string[]>([])
  const [loadingSubCategories, setLoadingSubCategories] = useState(false)
  const [fuelResources, setFuelResources] = useState<Array<{ id: string; resource: string; unit: string | null; ef_value: number | null; ref_info: string | null }>>([])
  const [loadingFuelResources, setLoadingFuelResources] = useState(false)
  const [selectedMappings, setSelectedMappings] = useState<Record<string, string>>({})

  const { control, reset, handleSubmit, watch, setValue, formState: { isSubmitting, errors } } = useForm<ActivityGroupFormValues>({
    defaultValues: {
      name_th: '',
      name_en: '',
      scope: 1,
      scope_category_id: '',
      scope_sub_category: '',
      is_common: false,
      sort_order: 0,
      status: 'active',
    },
  })

  const scope = watch('scope')
  const scopeCategoryId = watch('scope_category_id')
  const scopeSubCategory = watch('scope_sub_category')

  const filteredCategories = categories.filter((c) => c.scope === scope)

  const fetchFuelResources = useCallback(async (categoryId: string, subCategory?: string) => {
    if (!categoryId) {
      setFuelResources([])
      return
    }
    setLoadingFuelResources(true)
    try {
      const params = new URLSearchParams({ scope_category_id: categoryId })
      if (subCategory) params.set('sub_category', subCategory)
      const res = await fetch(`/api/fuel-resources/by-category?${params}`)
      if (!res.ok) throw new Error('Failed to fetch fuel resources')
      const json = await res.json()
      const list = (json.data ?? []).map((r: { id: string; resource: string; unit: string | null; ef_value: number | null; ref_info: string | null }) => ({
        id: r.id,
        resource: r.resource,
        unit: r.unit,
        ef_value: r.ef_value,
        ref_info: r.ref_info,
      }))
      setFuelResources(list)
    } catch {
      setFuelResources([])
    } finally {
      setLoadingFuelResources(false)
    }
  }, [])

  const fetchSubCategories = useCallback(async (categoryId: string) => {
    if (!categoryId) {
      setSubCategories([])
      return
    }
    setLoadingSubCategories(true)
    try {
      const res = await fetch(`/api/fuel-resources/sub-categories?scope_category_id=${categoryId}`)
      if (!res.ok) throw new Error('Failed to fetch sub-categories')
      const json = await res.json()
      setSubCategories(json.data ?? [])
    } catch {
      setSubCategories([])
    } finally {
      setLoadingSubCategories(false)
    }
  }, [])

  useEffect(() => {
    if (!open) return
    if (editTarget) {
      reset({
        name_th: editTarget.name_th ?? '',
        name_en: editTarget.name_en ?? '',
        scope: editTarget.scope ?? 1,
        scope_category_id: editTarget.scope_category_id ?? '',
        scope_sub_category: editTarget.scope_sub_category ?? '',
        is_common: !!editTarget.is_common,
        sort_order: editTarget.sort_order ?? 0,
        status: editTarget.status ?? 'active',
      })
      if (editTarget.scope_category_id) {
        fetchSubCategories(editTarget.scope_category_id)
        fetchFuelResources(editTarget.scope_category_id, editTarget.scope_sub_category ?? undefined)
        const map: Record<string, string> = {}
        for (const m of editTarget.fuel_resource_mappings ?? []) {
          map[m.fuel_resource_id] = m.note ?? ''
        }
        setSelectedMappings(map)
      } else {
        setSubCategories([])
        setFuelResources([])
        setSelectedMappings({})
      }
    } else {
      reset({
        name_th: '',
        name_en: '',
        scope: 1,
        scope_category_id: '',
        scope_sub_category: '',
        is_common: false,
        sort_order: 0,
        status: 'active',
      })
      setSubCategories([])
      setFuelResources([])
      setSelectedMappings({})
    }
  }, [open, editTarget, reset, fetchSubCategories, fetchFuelResources])

  useEffect(() => {
    if (scopeCategoryId) {
      const cat = categories.find((c) => c.id === scopeCategoryId)
      if (cat && cat.scope !== scope) {
        setValue('scope_category_id', '')
        setValue('scope_sub_category', '')
      }
    }
  }, [scope, scopeCategoryId, categories, setValue])

  useEffect(() => {
    if (scopeCategoryId) {
      fetchSubCategories(scopeCategoryId)
      fetchFuelResources(scopeCategoryId, scopeSubCategory || undefined)
    } else {
      setSubCategories([])
      setFuelResources([])
      setSelectedMappings({})
    }
  }, [scopeCategoryId, scopeSubCategory, fetchSubCategories, fetchFuelResources])

  const showSubCategory = subCategories.length > 0

  const toggleMapping = (fuelResourceId: string, checked: boolean) => {
    setSelectedMappings((prev) => {
      const next = { ...prev }
      if (checked) {
        next[fuelResourceId] = ''
      } else {
        delete next[fuelResourceId]
      }
      return next
    })
  }

  const setMappingNote = (fuelResourceId: string, note: string) => {
    setSelectedMappings((prev) => ({ ...prev, [fuelResourceId]: note }))
  }

  const onSubmit = async (values: ActivityGroupFormValues) => {
    const fuel_resource_mappings = Object.entries(selectedMappings).map(([fuel_resource_id, note]) => ({
      fuel_resource_id,
      note: note || null,
    }))
    await onSave({
      template_id: templateId,
      name_th: values.name_th,
      name_en: values.name_en,
      scope: values.scope,
      scope_category_id: values.scope_category_id || null,
      scope_sub_category: showSubCategory ? (values.scope_sub_category || null) : null,
      is_common: values.is_common,
      sort_order: values.sort_order,
      status: values.status,
      fuel_resource_mappings,
    })
  }

  return (
    <Dialog
      open={open}
      onClose={!isSubmitting ? onClose : undefined}
      maxWidth={false}
      PaperProps={{ sx: { width: '80vw', maxWidth: '80vw' } }}
    >
      <DialogTitle>{editTarget ? 'Edit Activity Group' : 'Add Activity Group'}</DialogTitle>
      <DialogContent dividers>
        <Box component="form" id="activity-group-form" onSubmit={handleSubmit(onSubmit)}>
          <Grid container spacing={3}>
            {/* Names */}
            <Grid item xs={12}>
              <Typography variant="subtitle2" color="text.secondary" sx={{ mb: 1 }}>
                Names
              </Typography>
              <Grid container spacing={2}>
                <Grid item xs={12} sm={6}>
                  <Controller
                    name="name_en"
                    control={control}
                    rules={{ required: 'English name is required' }}
                    render={({ field }) => (
                      <TextField
                        {...field}
                        label="Name (English)"
                        fullWidth
                        size="small"
                        error={!!errors.name_en}
                        helperText={errors.name_en?.message}
                      />
                    )}
                  />
                </Grid>
                <Grid item xs={12} sm={6}>
                  <Controller
                    name="name_th"
                    control={control}
                    rules={{ required: 'Thai name is required' }}
                    render={({ field }) => (
                      <TextField
                        {...field}
                        label="Name (Thai)"
                        fullWidth
                        size="small"
                        error={!!errors.name_th}
                        helperText={errors.name_th?.message}
                      />
                    )}
                  />
                </Grid>
              </Grid>
            </Grid>

            {/* Scope & Category */}
            <Grid item xs={12}>
              <Typography variant="subtitle2" color="text.secondary" sx={{ mb: 1 }}>
                Scope & Category
              </Typography>
              <Grid container spacing={2}>
                <Grid item xs={12} sm={showSubCategory ? 4 : 6}>
                  <Controller
                    name="scope"
                    control={control}
                    render={({ field }) => (
                      <FormControl fullWidth size="small">
                        <InputLabel>Scope</InputLabel>
                        <Select {...field} label="Scope">
                          {[1, 2, 3, 4].map((s) => (
                            <MenuItem key={s} value={s}>{s !== 4 ? `Scope ${s}` : `แยกรายงาน`}</MenuItem>
                          ))}
                        </Select>
                      </FormControl>
                    )}
                  />
                </Grid>
                <Grid item xs={12} sm={showSubCategory ? 4 : 6}>
                  <Controller
                    name="scope_category_id"
                    control={control}
                    render={({ field }) => (
                      <FormControl fullWidth size="small">
                        <InputLabel>Mapped Scope Category</InputLabel>
                        <Select {...field} label="Scope Category">                          
                          {filteredCategories.map((cat) => (
                            <MenuItem key={cat.id} value={cat.id}>
                              S{cat.scope} - {cat.name_en}
                            </MenuItem>
                          ))}
                        </Select>
                      </FormControl>
                    )}
                  />
                </Grid>
                {showSubCategory && (
                  <Grid item xs={12} sm={4}>
                    <Controller
                      name="scope_sub_category"
                      control={control}
                      render={({ field }) => (
                        <FormControl fullWidth size="small" disabled={loadingSubCategories}>
                          <InputLabel>Subcategory</InputLabel>
                          <Select {...field} label="Subcategory">
                            <MenuItem value="">ไม่ระบุ</MenuItem>
                            {subCategories.map((sub) => (
                              <MenuItem key={sub} value={sub}>{sub}</MenuItem>
                            ))}
                          </Select>
                        </FormControl>
                      )}
                    />
                  </Grid>
                )}
              </Grid>
            </Grid>

            {/* Fuel Resource Mapping */}
            {scopeCategoryId && (
              <Grid item xs={12}>
                <Typography variant="subtitle2" color="text.secondary" sx={{ mb: 1 }}>
                  Fuel Resource Mapping
                </Typography>
                <Box sx={{ maxHeight: 280, overflow: 'auto', border: '1px solid', borderColor: 'divider', borderRadius: 1 }}>
                  {loadingFuelResources ? (
                    <Typography variant="body2" color="text.secondary" sx={{ p: 2 }}>
                      Loading fuel resources…
                    </Typography>
                  ) : fuelResources.length === 0 ? (
                    <Typography variant="body2" color="text.secondary" sx={{ p: 2 }}>
                      No fuel resources in this category. Select a category first.
                    </Typography>
                  ) : (
                    <Table size="small" stickyHeader>
                      <TableHead>
                        <TableRow>
                          <TableCell padding="checkbox" sx={{ width: 48 }} />
                          <TableCell>Resource</TableCell>
                          <TableCell>Unit</TableCell>
                          <TableCell align="right">EF Value</TableCell>
                          <TableCell>Ref Info</TableCell>
                          <TableCell sx={{ minWidth: 160 }}>Note</TableCell>
                        </TableRow>
                      </TableHead>
                      <TableBody>
                        {fuelResources.map((fr) => (
                          <TableRow key={fr.id}>
                            <TableCell padding="checkbox">
                              <Checkbox
                                checked={fr.id in selectedMappings}
                                onChange={(e) => toggleMapping(fr.id, e.target.checked)}
                              />
                            </TableCell>
                            <TableCell>{fr.resource}</TableCell>
                            <TableCell>{fr.unit ?? '—'}</TableCell>
                            <TableCell align="right">{fr.ef_value != null ? fr.ef_value : '—'}</TableCell>
                            <TableCell
                              sx={{
                                maxWidth: 140,
                                overflow: 'hidden',
                                textOverflow: 'ellipsis',
                                whiteSpace: 'nowrap',
                              }}
                              title={fr.ref_info ?? undefined}
                            >
                              {fr.ref_info ?? '—'}
                            </TableCell>
                            <TableCell>
                              <TextField
                                size="small"
                                fullWidth
                                placeholder="Note"
                                value={selectedMappings[fr.id] ?? ''}
                                onChange={(e) => setMappingNote(fr.id, e.target.value)}
                                disabled={!(fr.id in selectedMappings)}
                              />
                            </TableCell>
                          </TableRow>
                        ))}
                      </TableBody>
                    </Table>
                  )}
                </Box>
              </Grid>
            )}

            {/* Metadata */}
            <Grid item xs={12}>
              <Typography variant="subtitle2" color="text.secondary" sx={{ mb: 1 }}>
                Metadata
              </Typography>
              <Grid container spacing={2}>
                <Grid item xs={12} sm={4}>
                  <Controller
                    name="status"
                    control={control}
                    render={({ field }) => (
                      <FormControl fullWidth size="small">
                        <InputLabel>Status</InputLabel>
                        <Select {...field} label="Status">
                          <MenuItem value="active">active</MenuItem>
                          <MenuItem value="inactive">inactive</MenuItem>
                        </Select>
                      </FormControl>
                    )}
                  />
                </Grid>
                <Grid item xs={12} sm={4}>
                  <Controller
                    name="sort_order"
                    control={control}
                    render={({ field }) => (
                      <TextField
                        {...field}
                        label="Sort Order"
                        type="number"
                        fullWidth
                        size="small"
                        onChange={(e) => field.onChange(parseInt(e.target.value || '0', 10))}
                      />
                    )}
                  />
                </Grid>
                <Grid item xs={12} sm={4}>
                  <Controller
                    name="is_common"
                    control={control}
                    render={({ field }) => (
                      <Box sx={{ display: 'flex', alignItems: 'center', height: '100%', minHeight: 40 }}>
                        <Typography variant="body2" sx={{ mr: 1 }}>Common Activity</Typography>
                        <Switch checked={field.value} onChange={(e) => field.onChange(e.target.checked)} />
                      </Box>
                    )}
                  />
                </Grid>
              </Grid>
            </Grid>
          </Grid>
        </Box>
      </DialogContent>
      <DialogActions>
        <Button onClick={onClose} variant="outlined" color="inherit" disabled={isSubmitting}>
          Cancel
        </Button>
        <Button type="submit" form="activity-group-form" variant="contained" disabled={isSubmitting}>
          {editTarget ? 'Update' : 'Add Group'}
        </Button>
      </DialogActions>
    </Dialog>
  )
}
