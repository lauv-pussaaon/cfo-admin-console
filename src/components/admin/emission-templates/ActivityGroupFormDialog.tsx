'use client'

import React, { useCallback, useEffect, useState } from 'react'
import {
  Box,
  Button,
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

  const filteredCategories = categories.filter((c) => c.scope === scope)

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
      } else {
        setSubCategories([])
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
    }
  }, [open, editTarget, reset, fetchSubCategories])

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
    } else {
      setSubCategories([])
    }
  }, [scopeCategoryId, fetchSubCategories])

  const onSubmit = async (values: ActivityGroupFormValues) => {
    await onSave({
      template_id: templateId,
      name_th: values.name_th,
      name_en: values.name_en,
      scope: values.scope,
      scope_category_id: values.scope_category_id || null,
      scope_sub_category: subCategories.length > 0 ? (values.scope_sub_category || null) : null,
      is_common: values.is_common,
      sort_order: values.sort_order,
      status: values.status,
    })
  }

  const showSubCategory = subCategories.length > 0

  return (
    <Dialog open={open} onClose={!isSubmitting ? onClose : undefined} maxWidth="md" fullWidth>
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
