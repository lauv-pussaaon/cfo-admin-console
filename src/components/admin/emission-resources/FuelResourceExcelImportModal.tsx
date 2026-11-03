'use client'

import React, { useCallback, useMemo, useRef, useState } from 'react'
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
  IconButton,
  LinearProgress,
  Table,
  TableBody,
  TableCell,
  TableContainer,
  TableHead,
  TableRow,
  TextField,
  Typography,
} from '@mui/material'
import {
  Close as CloseIcon,
  CloudUpload as CloudUploadIcon,
  CheckCircle as CheckCircleIcon,
} from '@mui/icons-material'
import * as XLSX from 'xlsx'
import type { CatalogFamily, ScopeCategory } from '@/types/emission-resources'

interface ParsedRow {
  rowNum: number
  data: Record<string, unknown>
  errors: string[]
}

interface Props {
  open: boolean
  onClose: () => void
  onComplete: (version: string) => void
  family: CatalogFamily
  existingVersions: string[]
  categories: ScopeCategory[]
}

type PreviewStatus = 'all' | 'save' | 'skip'

function str (value: unknown): string {
  if (value === null || value === undefined) return ''
  return String(value).trim()
}

export default function FuelResourceExcelImportModal ({
  open,
  onClose,
  onComplete,
  family,
  existingVersions,
  categories,
}: Props) {
  const [step, setStep] = useState(0)
  const [version, setVersion] = useState('')
  const [file, setFile] = useState<File | null>(null)
  const [dragging, setDragging] = useState(false)
  const [parseError, setParseError] = useState<string | null>(null)
  const [parsedRows, setParsedRows] = useState<ParsedRow[]>([])
  const [categoryMap, setCategoryMap] = useState<Array<Record<string, unknown>> | null>(null)
  const [importing, setImporting] = useState(false)
  const [importResult, setImportResult] = useState<{
    imported: number
    version: string
    categoryMapCount?: number
  } | null>(null)
  const [importError, setImportError] = useState<string | null>(null)
  const [statusFilter, setStatusFilter] = useState<PreviewStatus>('all')
  const fileInputRef = useRef<HTMLInputElement>(null)

  const categoryById = useMemo(
    () => new Map(categories.map((c) => [c.id, c])),
    [categories]
  )
  const categoryByName = useMemo(
    () => new Map(categories.map((c) => [c.name_th, c])),
    [categories]
  )

  const handleReset = () => {
    setStep(0)
    setVersion('')
    setFile(null)
    setParseError(null)
    setParsedRows([])
    setCategoryMap(null)
    setImporting(false)
    setImportResult(null)
    setImportError(null)
    setStatusFilter('all')
  }

  const handleClose = () => {
    handleReset()
    onClose()
  }

  const processFile = useCallback(async (f: File) => {
    setFile(f)
    setParseError(null)
    setCategoryMap(null)
    setStatusFilter('all')
    try {
      const buffer = await f.arrayBuffer()
      const workbook = XLSX.read(buffer, { type: 'array' })
      const sheetName = workbook.SheetNames[0]
      if (!sheetName) {
        setParseError('Excel file has no sheets')
        return
      }
      const sheet = workbook.Sheets[sheetName]
      const rawRows = XLSX.utils.sheet_to_json<Record<string, unknown>>(sheet, { defval: null })
      const mapSheet = family === 'iso' ? workbook.Sheets.tgo_to_iso_map : undefined
      setCategoryMap(
        mapSheet
          ? XLSX.utils.sheet_to_json<Record<string, unknown>>(mapSheet, { defval: null })
          : null
      )
      if (rawRows.length === 0) {
        setParseError('Excel sheet is empty')
        return
      }

      const validated: ParsedRow[] = rawRows.map((raw, i) => {
        const errors: string[] = []
        const resource = str(raw.resource)
        if (!resource) errors.push('Missing resource')

        const scopeCategoryId = str(raw.scope_category_id)
        const categoryNameTh = str(raw.category_name_th) || str(raw.category_th)
        if (scopeCategoryId) {
          if (!categoryById.has(scopeCategoryId)) {
            errors.push(`scope_category_id not found: ${scopeCategoryId}`)
          }
        } else if (categoryNameTh) {
          if (!categoryByName.has(categoryNameTh)) {
            errors.push(`Category not found: ${categoryNameTh.slice(0, 60)}`)
          }
        } else {
          errors.push('Missing scope_category_id or category_name_th')
        }

        return {
          rowNum: i + 2,
          data: raw,
          errors,
        }
      })

      setParsedRows(validated)
      setStep(2)
    } catch (err) {
      setParseError(`Failed to parse Excel: ${err instanceof Error ? err.message : 'Unknown error'}`)
    }
  }, [categoryById, categoryByName, family])

  const handleFileSelect = (f: File) => {
    if (!f.name.toLowerCase().endsWith('.xlsx')) {
      setParseError('Only .xlsx files are accepted')
      return
    }
    processFile(f)
  }

  const stats = useMemo(() => ({
    total: parsedRows.length,
    valid: parsedRows.filter((r) => r.errors.length === 0).length,
    errors: parsedRows.filter((r) => r.errors.length > 0).length,
  }), [parsedRows])

  const canProceedVersion =
    version.trim().length > 0 && !existingVersions.includes(version.trim())

  const handleImport = async () => {
    setImporting(true)
    setImportError(null)
    const validRows = parsedRows.filter((r) => r.errors.length === 0).map((r) => r.data)
    try {
      const res = await fetch('/api/fuel-resources/import', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          version: version.trim(),
          family,
          mode: 'create',
          rows: validRows,
          ...(categoryMap ? { category_map: categoryMap } : {}),
        }),
      })
      const json = await res.json()
      if (!res.ok) {
        const detail = json.errors?.[0]
          ? ` row ${json.errors[0].row}: ${json.errors[0].error}`
          : ''
        throw new Error((json.error || 'Import failed') + detail)
      }
      setImportResult({
        imported: json.imported,
        version: json.version,
        categoryMapCount: typeof json.category_map_count === 'number' ? json.category_map_count : undefined,
      })
      setStep(3)
    } catch (err) {
      setImportError(err instanceof Error ? err.message : 'Import failed')
    } finally {
      setImporting(false)
    }
  }

  const visibleRows = useMemo(() => {
    if (statusFilter === 'save') return parsedRows.filter((r) => r.errors.length === 0)
    if (statusFilter === 'skip') return parsedRows.filter((r) => r.errors.length > 0)
    return parsedRows
  }, [parsedRows, statusFilter])

  return (
    <Dialog
      open={open}
      onClose={!importing ? handleClose : undefined}
      maxWidth={false}
      PaperProps={{ sx: { width: '70vw', maxWidth: '70vw' } }}
    >
      <DialogTitle>
        <Box sx={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
          Import new catalog version
          <IconButton onClick={handleClose} disabled={importing} size="small">
            <CloseIcon />
          </IconButton>
        </Box>
      </DialogTitle>

      <DialogContent dividers>
        {step === 0 && (
          <Box>
            <Typography variant="body2" color="text.secondary" sx={{ mb: 2 }}>
              Excel import bootstraps a <strong>new</strong> version label only. To correct EF or duo
              values on an existing version, use the edit action on the table.
            </Typography>
            <TextField
              fullWidth
              size="small"
              label="Catalog"
              value={family === 'iso' ? 'ISO' : 'TGO'}
              disabled
              sx={{ mb: 2 }}
            />
            <TextField
              fullWidth
              size="small"
              label="Version label"
              value={version}
              onChange={(e) => setVersion(e.target.value)}
              placeholder="e.g. TGO July 2569"
              error={version.trim() !== '' && existingVersions.includes(version.trim())}
              helperText={
                version.trim() && existingVersions.includes(version.trim())
                  ? 'This version already exists'
                  : ' '
              }
            />
          </Box>
        )}

        {step === 1 && (
          <Box>
            <Typography variant="body2" color="text.secondary" sx={{ mb: 2 }}>
              Upload an .xlsx matching Export Excel columns. Rows will import into{' '}
              <strong>{version}</strong> (file version column is ignored).
            </Typography>
            <Box
              onDragOver={(e) => { e.preventDefault(); setDragging(true) }}
              onDragLeave={() => setDragging(false)}
              onDrop={(e) => {
                e.preventDefault()
                setDragging(false)
                const f = e.dataTransfer.files[0]
                if (f) handleFileSelect(f)
              }}
              onClick={() => fileInputRef.current?.click()}
              sx={{
                border: '2px dashed',
                borderColor: dragging ? 'primary.main' : 'divider',
                borderRadius: 2,
                p: 4,
                textAlign: 'center',
                cursor: 'pointer',
                bgcolor: dragging ? 'action.hover' : 'transparent',
              }}
            >
              <CloudUploadIcon sx={{ fontSize: 40, color: 'text.secondary', mb: 1 }} />
              <Typography>Drop .xlsx here or click to browse</Typography>
              <input
                ref={fileInputRef}
                type="file"
                accept=".xlsx"
                hidden
                onChange={(e) => {
                  const f = e.target.files?.[0]
                  if (f) handleFileSelect(f)
                }}
              />
            </Box>
            {parseError && <Alert severity="error" sx={{ mt: 2 }}>{parseError}</Alert>}
          </Box>
        )}

        {step === 2 && (
          <Box>
            <Box
              sx={{
                display: 'grid',
                gridTemplateColumns: 'auto 1fr',
                columnGap: 2,
                rowGap: 0.5,
                mb: 1.5,
                alignItems: 'baseline',
              }}
            >
              <Typography variant="body2" color="text.secondary">Catalog</Typography>
              <Typography variant="body2">{family === 'iso' ? 'ISO' : 'TGO'}</Typography>
              <Typography variant="body2" color="text.secondary">Version</Typography>
              <Typography variant="body2">
                {version}
                <Typography component="span" variant="body2" color="text.secondary" sx={{ ml: 1 }}>
                  {' '}new version
                </Typography>
              </Typography>
              <Typography variant="body2" color="text.secondary">File</Typography>
              <Typography variant="body2">{file?.name}</Typography>
            </Box>
            <Box sx={{ display: 'flex', gap: 1, flexWrap: 'wrap', mb: 2 }}>
              <Chip
                label={`All ${stats.total}`}
                size="small"
                color={statusFilter === 'all' ? 'primary' : 'default'}
                variant={statusFilter === 'all' ? 'filled' : 'outlined'}
                onClick={() => setStatusFilter('all')}
              />
              <Chip
                label={`OK ${stats.valid}`}
                size="small"
                color={statusFilter === 'save' ? 'success' : 'default'}
                variant={statusFilter === 'save' ? 'filled' : 'outlined'}
                onClick={() => setStatusFilter('save')}
              />
              <Chip
                label={`Will be skipped ${stats.errors}`}
                size="small"
                color={statusFilter === 'skip' ? 'warning' : 'default'}
                variant={statusFilter === 'skip' ? 'filled' : 'outlined'}
                onClick={() => setStatusFilter('skip')}
              />
            </Box>
            {stats.errors > 0 && (
              <Alert severity="warning" sx={{ mb: 2 }}>
                Rows with errors will be skipped.
              </Alert>
            )}
            {importing && <LinearProgress sx={{ mb: 2 }} />}
            {importError && <Alert severity="error" sx={{ mb: 2 }}>{importError}</Alert>}
            <TableContainer sx={{ maxHeight: 360 }}>
              <Table size="small" stickyHeader>
                <TableHead>
                  <TableRow>
                    <TableCell>Row</TableCell>
                    <TableCell>Resource</TableCell>
                    <TableCell>On confirm</TableCell>
                    <TableCell>Errors</TableCell>
                  </TableRow>
                </TableHead>
                <TableBody>
                  {visibleRows.map((r) => (
                    <TableRow key={r.rowNum}>
                      <TableCell>{r.rowNum}</TableCell>
                      <TableCell>{str(r.data.resource) || '—'}</TableCell>
                      <TableCell>
                        {r.errors.length > 0 ? (
                          <Chip label="Will be skipped" size="small" color="warning" variant="outlined" />
                        ) : (
                          <Chip label="OK" size="small" color="success" variant="outlined" />
                        )}
                      </TableCell>
                      <TableCell>
                        {r.errors.length > 0 ? (
                          <Typography variant="caption" color="error">
                            {r.errors.join('; ')}
                          </Typography>
                        ) : (
                          '—'
                        )}
                      </TableCell>
                    </TableRow>
                  ))}
                </TableBody>
              </Table>
            </TableContainer>
          </Box>
        )}

        {step === 3 && importResult && (
          <Box sx={{ textAlign: 'center', py: 3 }}>
            <CheckCircleIcon color="success" sx={{ fontSize: 48, mb: 1 }} />
            <Typography variant="h6">Import complete</Typography>
            <Typography color="text.secondary">
              {importResult.imported} fuel resources imported into {importResult.version}
            </Typography>
            {importResult.categoryMapCount != null && (
              <Typography color="text.secondary">
                {importResult.categoryMapCount} category pairs saved
              </Typography>
            )}
          </Box>
        )}
      </DialogContent>

      <DialogActions>
        {step === 0 && (
          <>
            <Button onClick={handleClose}>Cancel</Button>
            <Button variant="contained" disabled={!canProceedVersion} onClick={() => setStep(1)}>
              Next
            </Button>
          </>
        )}
        {step === 1 && (
          <Button onClick={() => { setFile(null); setParseError(null); setStep(0) }}>Back</Button>
        )}
        {step === 2 && (
          <>
            <Button
              onClick={() => {
                setImportError(null)
                setParsedRows([])
                setFile(null)
                setStatusFilter('all')
                setStep(1)
              }}
              disabled={importing}
            >
              Back
            </Button>
            <Button
              variant="contained"
              onClick={handleImport}
              disabled={importing || stats.valid === 0}
              startIcon={importing ? <CircularProgress size={16} /> : undefined}
            >
              Import {stats.valid} rows
            </Button>
          </>
        )}
        {step === 3 && importResult && (
          <Button
            variant="contained"
            onClick={() => {
              const v = importResult.version
              handleReset()
              onComplete(v)
            }}
          >
            Done
          </Button>
        )}
      </DialogActions>
    </Dialog>
  )
}
