'use client'

import React, { useCallback, useEffect, useMemo, useState } from 'react'
import {
  Alert,
  Box,
  Button,
  Card,
  CardActions,
  CardContent,
  CardMedia,
  Chip,
  Dialog,
  DialogActions,
  DialogContent,
  DialogTitle,
  Grid,
  IconButton,
  InputAdornment,
  Menu,
  MenuItem,
  Snackbar,
  Switch,
  TextField,
  Typography,
  CircularProgress,
} from '@mui/material'
import { Add as AddIcon, Edit as EditIcon, Search as SearchIcon, MoreVert as MoreVertIcon, PhotoCamera as PhotoCameraIcon } from '@mui/icons-material'
import { useRouter } from 'next/navigation'
import { useAuth } from '@/contexts/AuthContext'
import { isAdmin } from '@/lib/permissions'
import { useForm, Controller } from 'react-hook-form'
import DeleteConfirmationDialog from '@/components/DeleteConfirmationDialog'
import { templateImageUploadService } from '@/lib/services/template-image-upload.service'
import type { EmissionTemplateWithRelations } from '@/types/emission-templates'

interface TemplateFormValues {
  name_th: string
  name_en: string
  examples: string
  feature_image_url: string
  is_active: boolean
}

const PLACEHOLDER_IMAGE =
  'https://images.unsplash.com/photo-1497436072909-60f360e1d4b1?q=80&w=800&auto=format&fit=crop'

export default function EmissionTemplatesPage() {
  const router = useRouter()
  const { user, isLoading: authLoading } = useAuth()

  useEffect(() => {
    if (!authLoading && user && !isAdmin(user)) {
      router.replace('/admin-console')
    }
  }, [user, authLoading, router])

  const [templates, setTemplates] = useState<EmissionTemplateWithRelations[]>([])
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)
  const [search, setSearch] = useState('')
  const [formOpen, setFormOpen] = useState(false)
  const [editTarget, setEditTarget] = useState<EmissionTemplateWithRelations | null>(null)
  const [menuAnchorEl, setMenuAnchorEl] = useState<null | HTMLElement>(null)
  const [menuTemplate, setMenuTemplate] = useState<EmissionTemplateWithRelations | null>(null)
  const [deleteTarget, setDeleteTarget] = useState<EmissionTemplateWithRelations | null>(null)
  const [isDeleting, setIsDeleting] = useState(false)
  const [deleteError, setDeleteError] = useState<string | null>(null)
  const [snackbar, setSnackbar] = useState<{ open: boolean; message: string; severity: 'success' | 'error' }>({
    open: false,
    message: '',
    severity: 'success',
  })
  const [uploadingImage, setUploadingImage] = useState(false)
  const fileInputRef = React.useRef<HTMLInputElement>(null)

  const { control, reset, handleSubmit, setValue, watch, formState: { isSubmitting } } = useForm<TemplateFormValues>({
    defaultValues: {
      name_th: '',
      name_en: '',
      examples: '',
      feature_image_url: '',
      is_active: true,
    },
  })

  const showSnackbar = (message: string, severity: 'success' | 'error' = 'success') => {
    setSnackbar({ open: true, message, severity })
  }

  const featureImageUrl = watch('feature_image_url')

  const handleUploadClick = () => {
    fileInputRef.current?.click()
  }

  const handleFileChange = async (event: React.ChangeEvent<HTMLInputElement>) => {
    const file = event.target.files?.[0]
    if (!file) return

    setUploadingImage(true)
    try {
      const result = await templateImageUploadService.uploadImage(file)
      if (result.success && result.fileUrl) {
        setValue('feature_image_url', result.fileUrl)
        showSnackbar('Image uploaded')
      } else {
        showSnackbar(result.error ?? 'Upload failed', 'error')
      }
    } catch {
      showSnackbar('Upload failed', 'error')
    } finally {
      setUploadingImage(false)
      event.target.value = ''
    }
  }

  const handleRemoveImage = () => {
    setValue('feature_image_url', '')
  }

  const handleMenuOpen = (event: React.MouseEvent<HTMLElement>, template: EmissionTemplateWithRelations) => {
    setMenuAnchorEl(event.currentTarget)
    setMenuTemplate(template)
  }

  const handleMenuClose = () => {
    setMenuAnchorEl(null)
    setMenuTemplate(null)
  }

  const fetchTemplates = useCallback(async () => {
    setLoading(true)
    setError(null)
    try {
      const params = new URLSearchParams()
      params.set('page', '1')
      params.set('per_page', '100')
      if (search) params.set('search', search)

      const res = await fetch(`/api/emission-templates?${params.toString()}`)
      if (!res.ok) throw new Error('Failed to fetch templates')
      const json = await res.json()
      setTemplates(json.data ?? [])
    } catch (err) {
      console.error(err)
      setError('Failed to load emission templates')
    } finally {
      setLoading(false)
    }
  }, [search])

  useEffect(() => {
    fetchTemplates()
  }, [fetchTemplates])

  useEffect(() => {
    if (formOpen) {
      if (editTarget) {
        reset({
          name_th: editTarget.name_th ?? '',
          name_en: editTarget.name_en ?? '',
          examples: editTarget.examples ?? '',
          feature_image_url: editTarget.feature_image_url ?? '',
          is_active: editTarget.is_active,
        })
      } else {
        reset({
          name_th: '',
          name_en: '',
          examples: '',
          feature_image_url: '',
          is_active: true,
        })
      }
    }
  }, [formOpen, editTarget, reset])

  const onSaveTemplate = async (values: TemplateFormValues) => {
    try {
      const payload = {
        name_th: values.name_th,
        name_en: values.name_en,
        examples: values.examples || null,
        feature_image_url: values.feature_image_url || null,
        is_active: values.is_active,
      }
      if (editTarget) {
        const res = await fetch(`/api/emission-templates/${editTarget.id}`, {
          method: 'PUT',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify(payload),
        })
        if (!res.ok) throw new Error('Save failed')
        setFormOpen(false)
        setEditTarget(null)
        showSnackbar('Template updated')
      } else {
        const res = await fetch('/api/emission-templates', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify(payload),
        })
        if (!res.ok) throw new Error('Create failed')
        setFormOpen(false)
        setEditTarget(null)
        showSnackbar('Template added')
      }
      fetchTemplates()
    } catch (err) {
      console.error(err)
      showSnackbar(editTarget ? 'Failed to update template' : 'Failed to add template', 'error')
    }
  }

  const handleDeleteConfirm = async () => {
    if (!deleteTarget) return
    setIsDeleting(true)
    setDeleteError(null)
    try {
      const res = await fetch(`/api/emission-templates/${deleteTarget.id}`, { method: 'DELETE' })
      if (!res.ok) throw new Error('Delete failed')
      setDeleteTarget(null)
      showSnackbar('Template deleted')
      fetchTemplates()
    } catch {
      setDeleteError('Failed to delete template. Please try again.')
    } finally {
      setIsDeleting(false)
    }
  }

  const sortedTemplates = useMemo(
    () => [...templates].sort((a, b) => a.display_order - b.display_order),
    [templates]
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
    <Box sx={{ p: 3 }}>
      <Box sx={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start', mb: 3, gap: 2, flexWrap: 'wrap' }}>
        <Box>
          <Typography variant="h4" fontWeight={700} gutterBottom>
            Emission Templates
          </Typography>
          <Typography variant="body2" color="text.secondary">
            Manage 13 industry templates and their activity groups for client reporting setup.
          </Typography>
        </Box>

        <Box sx={{ display: 'flex', gap: 1.5, alignItems: 'center', flexWrap: 'wrap' }}>
          <TextField
            size="small"
            placeholder="Search template…"
            value={search}
            onChange={(e) => setSearch(e.target.value)}
            InputProps={{
              startAdornment: (
                <InputAdornment position="start">
                  <SearchIcon fontSize="small" />
                </InputAdornment>
              ),
            }}
            sx={{ minWidth: 280 }}
          />
          <Button
            variant="contained"
            startIcon={<AddIcon />}
            onClick={() => {
              setEditTarget(null)
              setFormOpen(true)
            }}
          >
            Add Template
          </Button>
        </Box>
      </Box>

      {error && (
        <Alert severity="error" sx={{ mb: 2 }} onClose={() => setError(null)}>
          {error}
        </Alert>
      )}

      <Grid container spacing={2.5}>
        {sortedTemplates.map((template) => (
          <Grid item key={template.id} xs={12} sm={6} md={4} lg={3}>
            <Card sx={{ height: '100%', display: 'flex', flexDirection: 'column' }}>
              <CardMedia
                component="img"
                image={template.feature_image_url || PLACEHOLDER_IMAGE}
                alt={template.name_en}
                sx={{ height: 150, objectFit: 'cover', borderBottom: '1px solid', borderColor: 'divider' }}
              />
              <CardContent sx={{ pb: 1.5 }}>
                <Box sx={{ display: 'flex', justifyContent: 'space-between', gap: 1, alignItems: 'flex-start' }}>
                  <Typography variant="subtitle1" fontWeight={700} sx={{ lineHeight: 1.3 }}>
                    {template.name_en}
                  </Typography>
                  <Box sx={{ display: 'flex', alignItems: 'center', gap: 0.5 }}>
                    <Chip
                      label={template.is_active ? 'Active' : 'Inactive'}
                      size="small"
                      color={template.is_active ? 'success' : 'default'}
                      variant={template.is_active ? 'filled' : 'outlined'}
                    />
                    <IconButton
                      size="small"
                      onClick={(event) => handleMenuOpen(event, template)}
                      aria-label="Template options"
                    >
                      <MoreVertIcon fontSize="small" />
                    </IconButton>
                  </Box>
                </Box>

                <Typography variant="body2" color="text.secondary" sx={{ mt: 0.5 }}>
                  {template.name_th}
                </Typography>

                <Typography variant="caption" color="text.secondary" sx={{ mt: 1, display: 'block', minHeight: 40 }}>
                  {(template.examples ?? '').split('\n').slice(0, 2).join(' ').trim() || 'No examples provided'}
                </Typography>

                <Box sx={{ mt: 1.25 }} />
              </CardContent>

              <CardActions sx={{ mt: 'auto', px: 2, pb: 2, pt: 0 }}>
                <Button
                  fullWidth
                  variant="contained"
                  endIcon={<EditIcon fontSize="small" />}
                  onClick={() => router.push(`/admin-console/emission-templates/${template.id}`)}
                >
                  {`Activity Group (${template.activity_group_count ?? 0})`}
                </Button>
              </CardActions>
            </Card>
          </Grid>
        ))}
      </Grid>

      <Menu
        anchorEl={menuAnchorEl}
        open={!!menuAnchorEl}
        onClose={handleMenuClose}
        anchorOrigin={{ vertical: 'bottom', horizontal: 'right' }}
        transformOrigin={{ vertical: 'top', horizontal: 'right' }}
      >
        <MenuItem
          onClick={() => {
            if (menuTemplate) {
              setEditTarget(menuTemplate)
              setFormOpen(true)
            }
            handleMenuClose()
          }}
        >
          Edit Template
        </MenuItem>
        <MenuItem
          onClick={() => {
            if (menuTemplate) setDeleteTarget(menuTemplate)
            handleMenuClose()
          }}
          sx={{ color: 'error.main' }}
        >
          Delete Template
        </MenuItem>
      </Menu>

      {!loading && sortedTemplates.length === 0 && (
        <Typography variant="body2" color="text.secondary" sx={{ mt: 4, textAlign: 'center' }}>
          No templates found.
        </Typography>
      )}

      <Dialog
        open={formOpen}
        onClose={!isSubmitting && !uploadingImage ? () => { setFormOpen(false); setEditTarget(null) } : undefined}
        maxWidth="sm"
        fullWidth
      >
        <DialogTitle>{editTarget ? 'Edit Template' : 'Add Template'}</DialogTitle>
        <DialogContent dividers>
          <Box component="form" id="template-edit-form" onSubmit={handleSubmit(onSaveTemplate)} sx={{ display: 'grid', gap: 2 }}>
            <Controller
              name="name_en"
              control={control}
              rules={{ required: 'English name is required' }}
              render={({ field, fieldState }) => (
                <TextField
                  {...field}
                  label="Name (English)"
                  fullWidth
                  size="small"
                  error={!!fieldState.error}
                  helperText={fieldState.error?.message}
                />
              )}
            />
            <Controller
              name="name_th"
              control={control}
              rules={{ required: 'Thai name is required' }}
              render={({ field, fieldState }) => (
                <TextField
                  {...field}
                  label="Name (Thai)"
                  fullWidth
                  size="small"
                  error={!!fieldState.error}
                  helperText={fieldState.error?.message}
                />
              )}
            />
            <Box>
              <Typography variant="subtitle2" color="text.secondary" sx={{ mb: 1 }}>
                Feature Image
              </Typography>
              <Box sx={{ display: 'flex', gap: 2, alignItems: 'flex-start', flexWrap: 'wrap' }}>
                <Box
                  sx={{
                    width: 100,
                    height: 100,
                    borderRadius: 1,
                    overflow: 'hidden',
                    border: '1px solid',
                    borderColor: 'divider',
                    flexShrink: 0,
                  }}
                >
                  <Box
                    component="img"
                    src={featureImageUrl || PLACEHOLDER_IMAGE}
                    alt="Preview"
                    sx={{ width: '100%', height: '100%', objectFit: 'cover' }}
                    onError={(e) => {
                      (e.target as HTMLImageElement).src = PLACEHOLDER_IMAGE
                    }}
                  />
                </Box>
                <Box sx={{ flex: 1, minWidth: 200 }}>
                  <Controller
                    name="feature_image_url"
                    control={control}
                    render={({ field }) => (
                      <TextField
                        {...field}
                        label="Image URL"
                        fullWidth
                        size="small"
                        placeholder="https://images.unsplash.com/photo-..."
                        sx={{ mb: 1 }}
                      />
                    )}
                  />
                  <Box sx={{ display: 'flex', gap: 1, flexWrap: 'wrap' }}>
                    <Button
                      variant="outlined"
                      size="small"
                      startIcon={uploadingImage ? null : <PhotoCameraIcon />}
                      onClick={handleUploadClick}
                      disabled={isSubmitting || uploadingImage}
                    >
                      {uploadingImage ? 'Uploading…' : 'Upload Image'}
                    </Button>
                    {featureImageUrl && (
                      <Button
                        variant="outlined"
                        size="small"
                        color="error"
                        onClick={handleRemoveImage}
                        disabled={isSubmitting || uploadingImage}
                      >
                        Remove
                      </Button>
                    )}
                  </Box>
                  <input
                    ref={fileInputRef}
                    type="file"
                    accept="image/jpeg,image/jpg,image/png,image/gif,image/webp"
                    onChange={handleFileChange}
                    style={{ display: 'none' }}
                  />
                </Box>
              </Box>
              <Typography variant="caption" color="text.secondary" sx={{ display: 'block', mt: 0.5 }}>
                Paste a URL or upload an image (JPG, PNG, GIF, WebP, max 2MB)
              </Typography>
            </Box>
            <Controller
              name="examples"
              control={control}
              render={({ field }) => (
                <TextField
                  {...field}
                  label="Examples"
                  fullWidth
                  size="small"
                  multiline
                  rows={3}
                />
              )}
            />
            <Controller
              name="is_active"
              control={control}
              render={({ field }) => (
                <Box sx={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between' }}>
                  <Typography variant="body2">Active Template</Typography>
                  <Switch checked={field.value} onChange={(e) => field.onChange(e.target.checked)} />
                </Box>
              )}
            />
          </Box>
        </DialogContent>
        <DialogActions>
          <Button
            onClick={() => { setFormOpen(false); setEditTarget(null) }}
            color="inherit"
            variant="outlined"
            disabled={isSubmitting || uploadingImage}
          >
            Cancel
          </Button>
          <Button type="submit" form="template-edit-form" variant="contained" disabled={isSubmitting || uploadingImage}>
            {editTarget ? 'Save' : 'Add Template'}
          </Button>
        </DialogActions>
      </Dialog>

      <DeleteConfirmationDialog
        open={!!deleteTarget}
        onClose={() => {
          setDeleteTarget(null)
          setDeleteError(null)
        }}
        onConfirm={handleDeleteConfirm}
        title="Delete Template"
        message={deleteTarget ? `Are you sure you want to delete "${deleteTarget.name_en}"?` : ''}
        description="This action soft-deletes the template and can affect structures used by clients."
        isDeleting={isDeleting}
        error={deleteError}
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
