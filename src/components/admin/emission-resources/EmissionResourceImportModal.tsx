'use client'

import React, { useState, useRef, useCallback } from 'react'
import {
  Dialog,
  DialogTitle,
  DialogContent,
  DialogActions,
  Button,
  Stepper,
  Step,
  StepLabel,
  Box,
  Typography,
  Alert,
  LinearProgress,
  Table,
  TableHead,
  TableBody,
  TableRow,
  TableCell,
  Chip,
  IconButton,
  CircularProgress,
} from '@mui/material'
import {
  CloudUpload as CloudUploadIcon,
  Close as CloseIcon,
  Download as DownloadIcon,
  CheckCircle as CheckCircleIcon,
  Error as ErrorIcon,
} from '@mui/icons-material'
import type { ScopeCategory, FuelResourceCSVRow, ImportPreviewStats } from '@/types/emission-resources'

const STEPS = ['Upload CSV', 'Preview & Validate', 'Confirm & Import']

const REQUIRED_COLUMNS = ['resource']

interface ParsedRow {
  rowNum: number
  data: FuelResourceCSVRow & { category_name_th?: string; category_th?: string }
  errors: string[]
  willUpdate: boolean
}

interface Props {
  open: boolean
  onClose: () => void
  onComplete: () => void
  categories: ScopeCategory[]
}

/**
 * RFC 4180-compliant CSV parser.
 * Handles quoted fields that contain commas, newlines, and escaped double-quotes ("").
 */
function parseCSVFields(line: string): string[] {
  const fields: string[] = []
  let i = 0
  while (i <= line.length) {
    if (line[i] === '"') {
      // Quoted field
      i++ // skip opening quote
      let value = ''
      while (i < line.length) {
        if (line[i] === '"' && line[i + 1] === '"') {
          value += '"'
          i += 2
        } else if (line[i] === '"') {
          i++ // skip closing quote
          break
        } else {
          value += line[i++]
        }
      }
      fields.push(value)
      if (line[i] === ',') i++ // skip comma after field
    } else {
      // Unquoted field — read until next comma or end
      const end = line.indexOf(',', i)
      if (end === -1) {
        fields.push(line.slice(i).trim())
        break
      } else {
        fields.push(line.slice(i, end).trim())
        i = end + 1
      }
    }
  }
  return fields
}

function parseCSV(text: string): Record<string, string>[] {
  // Remove BOM
  const cleaned = text.replace(/^\uFEFF/, '')
  // Normalise line endings
  const lines = cleaned.split(/\r?\n/)

  // Collect logical lines, merging lines that are inside an open quoted field
  const logicalLines: string[] = []
  let current = ''
  let inQuotes = false
  for (const line of lines) {
    for (let i = 0; i < line.length; i++) {
      if (line[i] === '"') inQuotes = !inQuotes
    }
    current = current ? current + '\n' + line : line
    if (!inQuotes) {
      if (current.trim()) logicalLines.push(current)
      current = ''
    }
  }
  if (current.trim()) logicalLines.push(current)

  if (logicalLines.length < 2) return []

  const headers = parseCSVFields(logicalLines[0]).map((h) => h.trim())
  return logicalLines.slice(1).map((line) => {
    const values = parseCSVFields(line)
    const row: Record<string, string> = {}
    headers.forEach((h, i) => { row[h] = values[i] ?? '' })
    return row
  })
}

function downloadTemplate() {
  const headers = [
    'id', 'scope_category_id', 'resource', 'sub_category', 'unit', 'ef_value',
    'value1_label', 'value1_unit', 'value2_label', 'value2_unit',
    'ref_info', 'ref_co2', 'ref_fossil_ch4', 'ref_ch4', 'ref_n2o',
    'ref_sf6', 'ref_nf3', 'ref_hfcs', 'ref_pfcs',
    'gwp100_hfcs', 'gwp100_pfcs', 'extraghg_ef', 'extraghg_gwp100', 'ref_source',
  ]
  const csv = headers.join(',') + '\n'
  const blob = new Blob([csv], { type: 'text/csv' })
  const url = URL.createObjectURL(blob)
  const a = document.createElement('a')
  a.href = url
  a.download = 'fuel_resources_template.csv'
  a.click()
  URL.revokeObjectURL(url)
}

export default function EmissionResourceImportModal({ open, onClose, onComplete, categories }: Props) {
  const [step, setStep] = useState(0)
  const [file, setFile] = useState<File | null>(null)
  const [dragging, setDragging] = useState(false)
  const [parseError, setParseError] = useState<string | null>(null)
  const [parsedRows, setParsedRows] = useState<ParsedRow[]>([])
  const [stats, setStats] = useState<ImportPreviewStats | null>(null)
  const [importing, setImporting] = useState(false)
  const [importResult, setImportResult] = useState<{ imported: number } | null>(null)
  const [importError, setImportError] = useState<string | null>(null)
  const fileInputRef = useRef<HTMLInputElement>(null)

  // id → category (for scope_category_id validation)
  const categoryById = React.useMemo(
    () => new Map(categories.map((c) => [c.id, c])),
    [categories]
  )
  // name_th → category (for category_name_th resolution)
  const categoryByName = React.useMemo(
    () => new Map(categories.map((c) => [c.name_th, c])),
    [categories]
  )

  const handleReset = () => {
    setStep(0)
    setFile(null)
    setParseError(null)
    setParsedRows([])
    setStats(null)
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
      const text = await f.text()
      const rawRows = parseCSV(text)

      if (rawRows.length === 0) {
        setParseError('CSV file is empty or has no data rows')
        return
      }

      const validated: ParsedRow[] = rawRows.map((raw, i) => {
        const errors: string[] = []

        for (const col of REQUIRED_COLUMNS) {
          if (!raw[col]) errors.push(`Missing required field: ${col}`)
        }

        // Resolve category: accept scope_category_id OR category_name_th / category_th
        const categoryNameTh = raw.category_name_th || raw.category_th || ''
        if (raw.scope_category_id) {
          if (!categoryById.has(raw.scope_category_id)) {
            errors.push(`scope_category_id "${raw.scope_category_id}" not found`)
          }
        } else if (categoryNameTh) {
          if (categoryByName.size > 0 && !categoryByName.has(categoryNameTh)) {
            errors.push(`Category not found: "${categoryNameTh.slice(0, 60)}"`)
          }
        } else {
          errors.push('Missing category: provide scope_category_id or category_name_th')
        }

        if (raw.ref_source && !['SELF_COLLECT','SUPPLIER','TH_LCI','TGO','THAI_RES','INTERNATIONAL','OTHER','SUBSITUTE'].includes(raw.ref_source)) {
          errors.push(`Invalid ref_source: "${raw.ref_source}"`)
        }

        return {
          rowNum: i + 2,
          data: raw as unknown as ParsedRow['data'],
          errors,
          willUpdate: !!raw.id,
        }
      })

      setParsedRows(validated)
      setStats({
        total: validated.length,
        toInsert: validated.filter((r) => !r.willUpdate && r.errors.length === 0).length,
        toUpdate: validated.filter((r) => r.willUpdate && r.errors.length === 0).length,
        errors: validated.filter((r) => r.errors.length > 0).length,
      })
      setStep(1)
    } catch (err) {
      setParseError(`Failed to parse CSV: ${err instanceof Error ? err.message : 'Unknown error'}`)
    }
  }, [categoryById, categoryByName])

  const handleFileSelect = (f: File) => {
    if (!f.name.endsWith('.csv')) {
      setParseError('Only .csv files are accepted')
      return
    }
    processFile(f)
  }

  const handleDrop = (e: React.DragEvent) => {
    e.preventDefault()
    setDragging(false)
    const f = e.dataTransfer.files[0]
    if (f) handleFileSelect(f)
  }

  const handleImport = async () => {
    setImporting(true)
    setImportError(null)

    const validRows = parsedRows.filter((r) => r.errors.length === 0)
    const payload = validRows.map((r) => {
      const row: Record<string, unknown> = {}
      if (r.data.id) row.id = r.data.id
      if (r.data.scope_category_id) {
        row.scope_category_id = r.data.scope_category_id
      } else {
        // Pass category_name_th for server-side resolution
        const catName = r.data.category_name_th || r.data.category_th || ''
        if (catName) row.category_name_th = catName
      }
      row.resource = r.data.resource
      if (r.data.sub_category) row.sub_category = r.data.sub_category
      if (r.data.unit) row.unit = r.data.unit
      if (r.data.ef_value) row.ef_value = parseFloat(r.data.ef_value)
      if (r.data.value1_label) row.value1_label = r.data.value1_label
      if (r.data.value1_unit) row.value1_unit = r.data.value1_unit
      if (r.data.value2_label) row.value2_label = r.data.value2_label
      if (r.data.value2_unit) row.value2_unit = r.data.value2_unit
      if (r.data.ref_info) row.ref_info = r.data.ref_info
      if (r.data.ref_co2) row.ref_co2 = parseFloat(r.data.ref_co2)
      if (r.data.ref_fossil_ch4) row.ref_fossil_ch4 = parseFloat(r.data.ref_fossil_ch4)
      if (r.data.ref_ch4) row.ref_ch4 = parseFloat(r.data.ref_ch4)
      if (r.data.ref_n2o) row.ref_n2o = parseFloat(r.data.ref_n2o)
      if (r.data.ref_sf6) row.ref_sf6 = parseFloat(r.data.ref_sf6)
      if (r.data.ref_nf3) row.ref_nf3 = parseFloat(r.data.ref_nf3)
      if (r.data.ref_hfcs) row.ref_hfcs = parseFloat(r.data.ref_hfcs)
      if (r.data.ref_pfcs) row.ref_pfcs = parseFloat(r.data.ref_pfcs)
      if (r.data.gwp100_hfcs) row.gwp100_hfcs = parseFloat(r.data.gwp100_hfcs)
      if (r.data.gwp100_pfcs) row.gwp100_pfcs = parseFloat(r.data.gwp100_pfcs)
      if (r.data.extraghg_ef) row.extraghg_ef = parseFloat(r.data.extraghg_ef)
      if (r.data.extraghg_gwp100) row.extraghg_gwp100 = parseFloat(r.data.extraghg_gwp100)
      if (r.data.ref_source) row.ref_source = r.data.ref_source
      return row
    })

    try {
      const res = await fetch('/api/fuel-resources/import', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ rows: payload }),
      })
      const json = await res.json()
      if (!res.ok) throw new Error(json.error ?? 'Import failed')
      setImportResult({ imported: json.imported })
      setStep(2)
    } catch (err) {
      setImportError(err instanceof Error ? err.message : 'Import failed')
    } finally {
      setImporting(false)
    }
  }

  const previewRows = parsedRows.slice(0, 50)

  return (
    <Dialog open={open} onClose={!importing ? handleClose : undefined} maxWidth="lg" fullWidth>
      <DialogTitle>
        <Box sx={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
          Import Fuel Resources CSV
          <IconButton onClick={handleClose} disabled={importing} size="small">
            <CloseIcon />
          </IconButton>
        </Box>
      </DialogTitle>

      <DialogContent dividers>
        <Stepper activeStep={step} sx={{ mb: 3 }}>
          {STEPS.map((label) => (
            <Step key={label}>
              <StepLabel>{label}</StepLabel>
            </Step>
          ))}
        </Stepper>

        {/* Step 0 — Upload */}
        {step === 0 && (
          <Box>
            {parseError && (
              <Alert severity="error" sx={{ mb: 2 }}>
                {parseError}
              </Alert>
            )}
            <Box
              onDragOver={(e) => { e.preventDefault(); setDragging(true) }}
              onDragLeave={() => setDragging(false)}
              onDrop={handleDrop}
              onClick={() => fileInputRef.current?.click()}
              sx={{
                border: '2px dashed',
                borderColor: dragging ? 'primary.main' : 'divider',
                borderRadius: 2,
                p: 6,
                textAlign: 'center',
                cursor: 'pointer',
                bgcolor: dragging ? 'primary.50' : 'transparent',
                transition: 'all 0.2s',
                '&:hover': { borderColor: 'primary.main', bgcolor: 'action.hover' },
              }}
            >
              <CloudUploadIcon sx={{ fontSize: 48, color: 'text.secondary', mb: 1 }} />
              <Typography variant="h6" gutterBottom>
                Drag & drop your CSV file here
              </Typography>
              <Typography variant="body2" color="text.secondary">
                or click to browse — accepts .csv only
              </Typography>
              <input
                ref={fileInputRef}
                type="file"
                accept=".csv"
                style={{ display: 'none' }}
                onChange={(e) => {
                  const f = e.target.files?.[0]
                  if (f) handleFileSelect(f)
                  e.target.value = ''
                }}
              />
            </Box>

            <Box sx={{ mt: 2, display: 'flex', alignItems: 'center', gap: 1 }}>
              <Button
                size="small"
                startIcon={<DownloadIcon />}
                onClick={(e) => { e.stopPropagation(); downloadTemplate() }}
                variant="text"
              >
                Download CSV template
              </Button>
            </Box>
          </Box>
        )}

        {/* Step 1 — Preview */}
        {step === 1 && stats && (
          <Box>
            {/* Stats chips */}
            <Box sx={{ display: 'flex', gap: 1.5, mb: 2, flexWrap: 'wrap' }}>
              <Chip label={`${stats.total} total rows`} color="default" />
              <Chip label={`${stats.toInsert} will insert`} color="success" />
              <Chip label={`${stats.toUpdate} will update`} color="info" />
              {stats.errors > 0 && (
                <Chip label={`${stats.errors} errors`} color="error" icon={<ErrorIcon />} />
              )}
            </Box>

            {stats.errors > 0 && (
              <Alert severity="warning" sx={{ mb: 2 }}>
                {stats.errors} row(s) have validation errors and will be skipped during import.
              </Alert>
            )}

            <Typography variant="body2" color="text.secondary" sx={{ mb: 1 }}>
              Showing first {Math.min(50, parsedRows.length)} of {parsedRows.length} rows
            </Typography>

            <Box sx={{ maxHeight: 400, overflow: 'auto', border: '1px solid', borderColor: 'divider', borderRadius: 1 }}>
              <Table size="small" stickyHeader>
                <TableHead>
                  <TableRow>
                    <TableCell width={36}>#</TableCell>
                    <TableCell width={80}>Status</TableCell>
                    <TableCell>Category</TableCell>
                    <TableCell>Resource</TableCell>
                    <TableCell width={80}>Unit</TableCell>
                    <TableCell width={110}>EF Value</TableCell>
                    <TableCell>Errors</TableCell>
                  </TableRow>
                </TableHead>
                <TableBody>
                  {previewRows.map((row) => {
                    const catNameTh = row.data.category_name_th || row.data.category_th || ''
                    const resolvedCat = row.data.scope_category_id
                      ? categoryById.get(row.data.scope_category_id)
                      : categoryByName.get(catNameTh)
                    return (
                      <TableRow
                        key={row.rowNum}
                        sx={{ bgcolor: row.errors.length > 0 ? 'error.50' : 'transparent' }}
                      >
                        <TableCell>{row.rowNum}</TableCell>
                        <TableCell>
                          {row.errors.length > 0 ? (
                            <Chip label="Error" size="small" color="error" />
                          ) : row.willUpdate ? (
                            <Chip label="Update" size="small" color="info" />
                          ) : (
                            <Chip label="Insert" size="small" color="success" />
                          )}
                        </TableCell>
                        <TableCell>
                          {resolvedCat ? (
                            <Box>
                              <Chip
                                label={`S${resolvedCat.scope}`}
                                size="small"
                                sx={{
                                  height: 16,
                                  fontSize: '0.6rem',
                                  mr: 0.5,
                                  bgcolor: ['', '#ef4444', '#f59e0b', '#3b82f6', '#8b5cf6'][resolvedCat.scope],
                                  color: 'white',
                                }}
                              />
                              <Typography variant="caption">{resolvedCat.name_en}</Typography>
                            </Box>
                          ) : (
                            <Typography variant="caption" color="text.secondary" sx={{ fontStyle: 'italic' }}>
                              {catNameTh ? catNameTh.slice(0, 40) : '—'}
                            </Typography>
                          )}
                        </TableCell>
                        <TableCell>
                          <Typography variant="body2" fontWeight={500}>{row.data.resource}</Typography>
                          {row.data.sub_category && (
                            <Typography variant="caption" color="text.secondary">{row.data.sub_category}</Typography>
                          )}
                        </TableCell>
                        <TableCell>{row.data.unit || '—'}</TableCell>
                        <TableCell sx={{ fontFamily: 'monospace', fontSize: '0.75rem' }}>
                          {row.data.ef_value || '—'}
                        </TableCell>
                        <TableCell>
                          {row.errors.length > 0 && (
                            <Typography variant="caption" color="error">
                              {row.errors.join('; ')}
                            </Typography>
                          )}
                        </TableCell>
                      </TableRow>
                    )
                  })}
                </TableBody>
              </Table>
            </Box>
          </Box>
        )}

        {/* Step 2 — Result */}
        {step === 2 && (
          <Box sx={{ textAlign: 'center', py: 4 }}>
            {importResult ? (
              <>
                <CheckCircleIcon sx={{ fontSize: 64, color: 'success.main', mb: 2 }} />
                <Typography variant="h5" gutterBottom>
                  Import Complete
                </Typography>
                <Typography variant="body1" color="text.secondary">
                  Successfully imported {importResult.imported} fuel resource records.
                </Typography>
              </>
            ) : (
              <>
                <ErrorIcon sx={{ fontSize: 64, color: 'error.main', mb: 2 }} />
                <Typography variant="h5" gutterBottom>Import Failed</Typography>
                <Typography color="error">{importError}</Typography>
              </>
            )}
          </Box>
        )}

        {importing && (
          <Box sx={{ mt: 2 }}>
            <LinearProgress />
            <Typography variant="body2" color="text.secondary" sx={{ mt: 1, textAlign: 'center' }}>
              Importing records…
            </Typography>
          </Box>
        )}

        {importError && step !== 2 && (
          <Alert severity="error" sx={{ mt: 2 }}>{importError}</Alert>
        )}
      </DialogContent>

      <DialogActions sx={{ p: 2, gap: 1 }}>
        {step === 0 && (
          <Button onClick={handleClose} color="inherit" variant="outlined">
            Cancel
          </Button>
        )}

        {step === 1 && (
          <>
            <Button onClick={handleReset} color="inherit" variant="outlined" disabled={importing}>
              Back
            </Button>
            <Box sx={{ flex: 1 }} />
            <Typography variant="body2" color="text.secondary" sx={{ alignSelf: 'center' }}>
              {stats && stats.errors > 0 && `${stats.errors} rows will be skipped · `}
              {stats && `${stats.toInsert + stats.toUpdate} rows will be imported`}
            </Typography>
            <Button
              variant="contained"
              onClick={handleImport}
              disabled={importing || (stats?.toInsert === 0 && stats?.toUpdate === 0)}
              startIcon={importing ? <CircularProgress size={16} /> : null}
            >
              {importing ? 'Importing…' : 'Confirm Import'}
            </Button>
          </>
        )}

        {step === 2 && (
          <>
            <Button onClick={handleReset} color="inherit" variant="outlined">
              Import Another
            </Button>
            <Button variant="contained" onClick={() => { handleReset(); onComplete() }}>
              Done
            </Button>
          </>
        )}
      </DialogActions>
    </Dialog>
  )
}
