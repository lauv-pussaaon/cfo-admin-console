'use client'

import React, { useEffect } from 'react'
import {
  Dialog,
  DialogTitle,
  DialogContent,
  DialogActions,
  Button,
  TextField,
  Grid,
  MenuItem,
  FormControl,
  InputLabel,
  Select,
  Typography,
  Box,
  Chip,
  Divider,
  CircularProgress,
} from '@mui/material'
import { useForm, Controller } from 'react-hook-form'
import type { FuelResourceWithCategory, ScopeCategory } from '@/types/emission-resources'

const REF_SOURCES = ['SELF_COLLECT', 'SUPPLIER', 'TH_LCI', 'TGO', 'THAI_RES', 'INTERNATIONAL', 'OTHER', 'SUBSITUTE']

const SCOPE_COLORS: Record<number, string> = {
  1: '#ef4444',
  2: '#f59e0b',
  3: '#3b82f6',
  4: '#8b5cf6',
}

interface FormValues {
  scope_category_id: string
  resource: string
  sub_category: string
  unit: string
  ef_value: string
  value1_label: string
  value1_unit: string
  value2_label: string
  value2_unit: string
  ref_info: string
  ref_co2: string
  ref_ch4: string
  ref_n2o: string
  ref_source: string
}

interface Props {
  open: boolean
  onClose: () => void
  onSave: (data: Partial<FuelResourceWithCategory>) => Promise<void>
  initialData?: FuelResourceWithCategory | null
  categories: ScopeCategory[]
}

export default function EmissionResourceForm({ open, onClose, onSave, initialData, categories }: Props) {
  const isEdit = !!initialData

  const { control, handleSubmit, reset, formState: { isSubmitting, errors } } = useForm<FormValues>({
    defaultValues: {
      scope_category_id: '',
      resource: '',
      sub_category: '',
      unit: '',
      ef_value: '',
      value1_label: '',
      value1_unit: '',
      value2_label: '',
      value2_unit: '',
      ref_info: '',
      ref_co2: '',
      ref_ch4: '',
      ref_n2o: '',
      ref_source: '',
    },
  })

  useEffect(() => {
    if (open) {
      reset({
        scope_category_id: initialData?.scope_category_id ?? '',
        resource: initialData?.resource ?? '',
        sub_category: initialData?.sub_category ?? '',
        unit: initialData?.unit ?? '',
        ef_value: initialData?.ef_value != null ? String(initialData.ef_value) : '',
        value1_label: initialData?.value1_label ?? '',
        value1_unit: initialData?.value1_unit ?? '',
        value2_label: initialData?.value2_label ?? '',
        value2_unit: initialData?.value2_unit ?? '',
        ref_info: initialData?.ref_info ?? '',
        ref_co2: initialData?.ref_co2 != null ? String(initialData.ref_co2) : '',
        ref_ch4: initialData?.ref_ch4 != null ? String(initialData.ref_ch4) : '',
        ref_n2o: initialData?.ref_n2o != null ? String(initialData.ref_n2o) : '',
        ref_source: initialData?.ref_source ?? '',
      })
    }
  }, [open, initialData, reset])

  const onSubmit = async (values: FormValues) => {
    await onSave({
      scope_category_id: values.scope_category_id,
      resource: values.resource,
      sub_category: values.sub_category || null,
      unit: values.unit || null,
      ef_value: values.ef_value ? parseFloat(values.ef_value) : null,
      value1_label: values.value1_label || null,
      value1_unit: values.value1_unit || null,
      value2_label: values.value2_label || null,
      value2_unit: values.value2_unit || null,
      ref_info: values.ref_info || null,
      ref_co2: values.ref_co2 ? parseFloat(values.ref_co2) : null,
      ref_ch4: values.ref_ch4 ? parseFloat(values.ref_ch4) : null,
      ref_n2o: values.ref_n2o ? parseFloat(values.ref_n2o) : null,
      ref_source: (values.ref_source as FuelResourceWithCategory['ref_source']) || null,
    })
  }

  return (
    <Dialog open={open} onClose={!isSubmitting ? onClose : undefined} maxWidth="md" fullWidth>
      <DialogTitle>
        {isEdit ? 'Edit Emission Resource' : 'Add Emission Resource'}
      </DialogTitle>

      <DialogContent dividers>
        <form id="emission-resource-form" onSubmit={handleSubmit(onSubmit)}>
          <Grid container spacing={2}>
            {/* Category */}
            <Grid item xs={12}>
              <Controller
                name="scope_category_id"
                control={control}
                rules={{ required: 'Category is required' }}
                render={({ field }) => (
                  <FormControl fullWidth error={!!errors.scope_category_id} size="small">
                    <InputLabel>Scope Category *</InputLabel>
                    <Select {...field} label="Scope Category *">
                      {categories.map((c) => (
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
                    {errors.scope_category_id && (
                      <Typography variant="caption" color="error">
                        {errors.scope_category_id.message}
                      </Typography>
                    )}
                  </FormControl>
                )}
              />
            </Grid>

            {/* Resource */}
            <Grid item xs={12} sm={6}>
              <Controller
                name="resource"
                control={control}
                rules={{ required: 'Resource name is required' }}
                render={({ field }) => (
                  <TextField
                    {...field}
                    label="Resource *"
                    fullWidth
                    size="small"
                    error={!!errors.resource}
                    helperText={errors.resource?.message}
                    placeholder="e.g. Diesel: L"
                  />
                )}
              />
            </Grid>

            {/* Sub-category */}
            <Grid item xs={12} sm={6}>
              <Controller
                name="sub_category"
                control={control}
                render={({ field }) => (
                  <TextField
                    {...field}
                    label="Sub-category"
                    fullWidth
                    size="small"
                    placeholder="e.g. Off road"
                  />
                )}
              />
            </Grid>

            {/* Unit + EF Value */}
            <Grid item xs={12} sm={4}>
              <Controller
                name="unit"
                control={control}
                render={({ field }) => (
                  <TextField
                    {...field}
                    label="Unit"
                    fullWidth
                    size="small"
                    placeholder="e.g. Liter, kg"
                  />
                )}
              />
            </Grid>

            <Grid item xs={12} sm={4}>
              <Controller
                name="ef_value"
                control={control}
                render={({ field }) => (
                  <TextField
                    {...field}
                    label="EF Value"
                    fullWidth
                    size="small"
                    type="number"
                    inputProps={{ step: 'any' }}
                    placeholder="e.g. 2.707"
                  />
                )}
              />
            </Grid>

            <Grid item xs={12} sm={4}>
              <Controller
                name="ref_source"
                control={control}
                render={({ field }) => (
                  <FormControl fullWidth size="small">
                    <InputLabel>Ref Source</InputLabel>
                    <Select {...field} label="Ref Source">
                      <MenuItem value="">None</MenuItem>
                      {REF_SOURCES.map((s) => (
                        <MenuItem key={s} value={s}>{s}</MenuItem>
                      ))}
                    </Select>
                  </FormControl>
                )}
              />
            </Grid>

            {/* Value 1 */}
            <Grid item xs={12}>
              <Divider>
                <Typography variant="caption" color="text.secondary">
                  Value 1 (optional)
                </Typography>
              </Divider>
            </Grid>
            <Grid item xs={12} sm={6}>
              <Controller
                name="value1_label"
                control={control}
                render={({ field }) => (
                  <TextField {...field} label="Value 1 Label" fullWidth size="small" />
                )}
              />
            </Grid>
            <Grid item xs={12} sm={6}>
              <Controller
                name="value1_unit"
                control={control}
                render={({ field }) => (
                  <TextField {...field} label="Value 1 Unit" fullWidth size="small" />
                )}
              />
            </Grid>

            {/* Value 2 */}
            <Grid item xs={12}>
              <Divider>
                <Typography variant="caption" color="text.secondary">
                  Value 2 (optional)
                </Typography>
              </Divider>
            </Grid>
            <Grid item xs={12} sm={6}>
              <Controller
                name="value2_label"
                control={control}
                render={({ field }) => (
                  <TextField {...field} label="Value 2 Label" fullWidth size="small" />
                )}
              />
            </Grid>
            <Grid item xs={12} sm={6}>
              <Controller
                name="value2_unit"
                control={control}
                render={({ field }) => (
                  <TextField {...field} label="Value 2 Unit" fullWidth size="small" />
                )}
              />
            </Grid>

            {/* GHG References */}
            <Grid item xs={12}>
              <Divider>
                <Typography variant="caption" color="text.secondary">
                  GHG Reference Values (kg CO₂eq)
                </Typography>
              </Divider>
            </Grid>
            {(['ref_co2', 'ref_ch4', 'ref_n2o'] as const).map((field) => (
              <Grid item xs={12} sm={4} key={field}>
                <Controller
                  name={field}
                  control={control}
                  render={({ field: f }) => (
                    <TextField
                      {...f}
                      label={field.replace('ref_', 'ref ').toUpperCase()}
                      fullWidth
                      size="small"
                      type="number"
                      inputProps={{ step: 'any' }}
                    />
                  )}
                />
              </Grid>
            ))}

            {/* Reference Info */}
            <Grid item xs={12}>
              <Divider />
            </Grid>
            <Grid item xs={12}>
              <Controller
                name="ref_info"
                control={control}
                render={({ field }) => (
                  <TextField
                    {...field}
                    label="Reference Info"
                    fullWidth
                    size="small"
                    multiline
                    rows={2}
                    placeholder="Citation / source description"
                  />
                )}
              />
            </Grid>
          </Grid>
        </form>
      </DialogContent>

      <DialogActions sx={{ p: 2, gap: 1 }}>
        <Button onClick={onClose} disabled={isSubmitting} color="inherit" variant="outlined">
          Cancel
        </Button>
        <Button
          type="submit"
          form="emission-resource-form"
          variant="contained"
          disabled={isSubmitting}
          startIcon={isSubmitting ? <CircularProgress size={16} /> : null}
        >
          {isSubmitting ? 'Saving…' : isEdit ? 'Update' : 'Add Resource'}
        </Button>
      </DialogActions>
    </Dialog>
  )
}
