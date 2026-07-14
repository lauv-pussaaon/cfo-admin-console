'use client'

import React, { useCallback, useMemo, useRef, useState } from 'react'
import {
  Alert,
  Box,
  Button,
  CircularProgress,
  Dialog,
  DialogActions,
  DialogContent,
  DialogTitle,
  FormControl,
  FormControlLabel,
  IconButton,
  InputLabel,
  LinearProgress,
  MenuItem,
  Radio,
  RadioGroup,
  Select,
  Table,
  TableBody,
  TableCell,
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
import type { ScopeCategory } from '@/types/emission-resources'
import { EF_VERSION_LABELS, type EfCatalogVersion } from '@/lib/constants/ef-catalog'

type ImportMode = 'create' | 'replace'

interface ParsedRow {
  rowNum: number
  data: Record<string, unknown>
  errors: string[]
  willUpdate: boolean
}

interface Props {
  open: boolean
  onClose: () => void
  onComplete: (version: string) => void
  existingVersions: string[]
  categories: ScopeCategory[]
}

function str (value: unknown): string {
  if (value === null || value === undefined) return ''
  return String(value).trim()
}

function versionLabel (version: string): string {
  return EF_VERSION_LABELS[version as EfCatalogVersion] || version
}

export default function FuelResourceExcelImportModal ({
  open,
  onClose,
  onComplete,
  existingVersions,
  categories,
}: Props) {
  const [step, setStep] = useState(0)
  const [mode, setMode] = useState<ImportMode>('create')
  const [version, setVersion] = useState('')
  const [confirmText, setConfirmText] = useState('')
  const [file, setFile] = useState<File | null>(null)
  const [dragging, setDragging] = useState(false)
  const [parseError, setParseError] = useState<string | null>(null)
  const [parsedRows, setParsedRows] = useState<ParsedRow[]>([])
  const [importing, setImporting] = useState(false)
  const [importResult, setImportResult] = useState<{ imported: number; version: string } | null>(null)
  const [importError, setImportError] = useState<string | null>(null)
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
    setMode('create')
    setVersion('')
    setConfirmText('')
    setFile(null)
    setParseError(null)
    setParsedRows([])
    setImporting(false)
    setImportResult(null)
    setImportError(null)
  }

  const handleClose = () => {
    handleReset()
    onClose()
  }

  const processFile = useCallback(async (f: File) => {
    setFile(f)
    setParseError(null)
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
          willUpdate: !!str(raw.id),
        }
      })

      setParsedRows(validated)
      setStep(mode === 'replace' ? 3 : 4)
    } catch (err) {
      setParseError(`Failed to parse Excel: ${err instanceof Error ? err.message : 'Unknown error'}`)
    }
  }, [categoryById, categoryByName, mode])

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
    mode === 'create'
      ? version.trim().length > 0 && !existingVersions.includes(version.trim())
      : version.trim().length > 0 && existingVersions.includes(version.trim())

  const canConfirmReplace = confirmText.trim() === version.trim()

  const handleImport = async () => {
    setImporting(true)
    setImportError(null)
    const validRows = parsedRows.filter((r) => r.errors.length === 0).map((r) => r.data)
    try {
      const res = await fetch('/api/fuel-resources/import', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ version: version.trim(), mode, rows: validRows }),
      })
      const json = await res.json()
      if (!res.ok) {
        const detail = json.errors?.[0]
          ? ` row ${json.errors[0].row}: ${json.errors[0].error}`
          : ''
        throw new Error((json.error || 'Import failed') + detail)
      }
      setImportResult({ imported: json.imported, version: json.version })
      setStep(5)
    } catch (err) {
      setImportError(err instanceof Error ? err.message : 'Import failed')
    } finally {
      setImporting(false)
    }
  }

  const previewRows = parsedRows.slice(0, 40)

  return (
    <Dialog open={open} onClose={!importing ? handleClose : undefined} maxWidth="md" fullWidth>
      <DialogTitle>
        <Box sx={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
          Import Fuel Resources Excel
          <IconButton onClick={handleClose} disabled={importing} size="small">
            <CloseIcon />
          </IconButton>
        </Box>
      </DialogTitle>

      <DialogContent dividers>
        {step === 0 && (
          <Box>
            <Typography variant="body2" color="text.secondary" sx={{ mb: 2 }}>
              Choose whether to create a new catalog version or replace an existing one.
            </Typography>
            <RadioGroup
              value={mode}
              onChange={(e) => {
                setMode(e.target.value as ImportMode)
                setVersion('')
              }}
            >
              <FormControlLabel
                value="create"
                control={<Radio />}
                label="New version — insert fuels under a new version label"
              />
              <FormControlLabel
                value="replace"
                control={<Radio />}
                label="Update existing version — clear that version, then insert"
              />
            </RadioGroup>
          </Box>
        )}

        {step === 1 && (
          <Box>
            {mode === 'create' ? (
              <>
                <Typography variant="body2" color="text.secondary" sx={{ mb: 2 }}>
                  Enter a new version label (must not already exist).
                </Typography>
                <TextField
                  fullWidth
                  size="small"
                  label="Version label"
                  value={version}
                  onChange={(e) => setVersion(e.target.value)}
                  placeholder="e.g. TGO API 2026-07"
                  error={version.trim() !== '' && existingVersions.includes(version.trim())}
                  helperText={
                    version.trim() && existingVersions.includes(version.trim())
                      ? 'This version already exists'
                      : ' '
                  }
                />
              </>
            ) : (
              <>
                <Typography variant="body2" color="text.secondary" sx={{ mb: 2 }}>
                  Select the version to replace.
                </Typography>
                <FormControl fullWidth size="small">
                  <InputLabel>Existing version</InputLabel>
                  <Select
                    label="Existing version"
                    value={version}
                    onChange={(e) => setVersion(e.target.value)}
                  >
                    {existingVersions.map((v) => (
                      <MenuItem key={v} value={v}>
                        {versionLabel(v)}
                      </MenuItem>
                    ))}
                  </Select>
                </FormControl>
                {existingVersions.length === 0 && (
                  <Alert severity="warning" sx={{ mt: 2 }}>
                    No existing versions found. Use New version instead.
                  </Alert>
                )}
              </>
            )}
          </Box>
        )}

        {step === 2 && (
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

        {step === 3 && mode === 'replace' && (
          <Box>
            <Alert severity="warning" sx={{ mb: 2 }}>
              Updating <strong>{version}</strong> will soft-delete all existing fuel resources for
              this version and remove its linking rows, then insert the Excel data. This may affect
              clients already using these emission factors.
            </Alert>
            <Typography variant="body2" sx={{ mb: 1 }}>
              File: {file?.name} — {stats.valid} valid / {stats.errors} error rows
            </Typography>
            <Typography variant="body2" color="text.secondary" sx={{ mb: 2 }}>
              Type the version label exactly to confirm:
            </Typography>
            <TextField
              fullWidth
              size="small"
              label="Confirm version"
              value={confirmText}
              onChange={(e) => setConfirmText(e.target.value)}
              placeholder={version}
            />
          </Box>
        )}

        {step === 4 && (
          <Box>
            <Typography variant="body2" sx={{ mb: 1 }}>
              Target: <strong>{version}</strong> ({mode === 'create' ? 'new' : 'replace'}) —{' '}
              {file?.name}: {stats.total} rows · {stats.valid} valid · {stats.errors} errors
            </Typography>
            {stats.errors > 0 && (
              <Alert severity="warning" sx={{ mb: 2 }}>
                Rows with errors will be skipped.
              </Alert>
            )}
            {importing && <LinearProgress sx={{ mb: 2 }} />}
            {importError && <Alert severity="error" sx={{ mb: 2 }}>{importError}</Alert>}
            <Table size="small">
              <TableHead>
                <TableRow>
                  <TableCell>Row</TableCell>
                  <TableCell>Resource</TableCell>
                  <TableCell>Status</TableCell>
                  <TableCell>Errors</TableCell>
                </TableRow>
              </TableHead>
              <TableBody>
                {previewRows.map((r) => (
                  <TableRow key={r.rowNum}>
                    <TableCell>{r.rowNum}</TableCell>
                    <TableCell>{str(r.data.resource) || '—'}</TableCell>
                    <TableCell>
                      {r.errors.length > 0 ? 'Skip' : 'Import'}
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
          </Box>
        )}

        {step === 5 && importResult && (
          <Box sx={{ textAlign: 'center', py: 3 }}>
            <CheckCircleIcon color="success" sx={{ fontSize: 48, mb: 1 }} />
            <Typography variant="h6">Import complete</Typography>
            <Typography color="text.secondary">
              {importResult.imported} fuel resources imported into {importResult.version}
            </Typography>
          </Box>
        )}
      </DialogContent>

      <DialogActions>
        {step === 0 && (
          <>
            <Button onClick={handleClose}>Cancel</Button>
            <Button variant="contained" onClick={() => setStep(1)}>Next</Button>
          </>
        )}
        {step === 1 && (
          <>
            <Button onClick={() => setStep(0)}>Back</Button>
            <Button variant="contained" disabled={!canProceedVersion} onClick={() => setStep(2)}>
              Next
            </Button>
          </>
        )}
        {step === 2 && (
          <Button onClick={() => { setFile(null); setParseError(null); setStep(1) }}>Back</Button>
        )}
        {step === 3 && (
          <>
            <Button
              onClick={() => {
                setConfirmText('')
                setParsedRows([])
                setFile(null)
                setStep(2)
              }}
            >
              Back
            </Button>
            <Button
              variant="contained"
              color="warning"
              disabled={!canConfirmReplace || stats.valid === 0}
              onClick={() => setStep(4)}
            >
              Continue to preview
            </Button>
          </>
        )}
        {step === 4 && (
          <>
            <Button
              onClick={() => {
                setImportError(null)
                setStep(mode === 'replace' ? 3 : 2)
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
              {mode === 'replace' ? 'Replace & import' : 'Import'} {stats.valid} rows
            </Button>
          </>
        )}
        {step === 5 && importResult && (
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
