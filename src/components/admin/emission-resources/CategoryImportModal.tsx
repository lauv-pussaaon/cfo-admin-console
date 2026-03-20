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
import type { ScopeCategoryCSVRow } from '@/types/emission-resources'

const STEPS = ['Upload CSV', 'Preview & Validate', 'Confirm & Import']
const VALID_SCOPES = [1, 2, 3, 4]

interface ParsedRow {
  rowNum: number
  data: ScopeCategoryCSVRow
  errors: string[]
  willUpdate: boolean
}

interface Props {
  open: boolean
  onClose: () => void
  onComplete: () => void
}

function parseCSVFields(line: string): string[] {
  const fields: string[] = []
  let i = 0
  while (i <= line.length) {
    if (line[i] === '"') {
      i++
      let value = ''
      while (i < line.length) {
        if (line[i] === '"' && line[i + 1] === '"') { value += '"'; i += 2 }
        else if (line[i] === '"') { i++; break }
        else { value += line[i++] }
      }
      fields.push(value)
      if (line[i] === ',') i++
    } else {
      const end = line.indexOf(',', i)
      if (end === -1) { fields.push(line.slice(i).trim()); break }
      else { fields.push(line.slice(i, end).trim()); i = end + 1 }
    }
  }
  return fields
}

function parseCSV(text: string): Record<string, string>[] {
  const cleaned = text.replace(/^\uFEFF/, '')
  const lines = cleaned.split(/\r?\n/)
  const logicalLines: string[] = []
  let current = ''
  let inQuotes = false
  for (const line of lines) {
    for (let i = 0; i < line.length; i++) { if (line[i] === '"') inQuotes = !inQuotes }
    current = current ? current + '\n' + line : line
    if (!inQuotes) { if (current.trim()) logicalLines.push(current); current = '' }
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
  const headers = ['id', 'scope', 'name_th', 'name_en', 'display_order']
  const exampleRow = ['', '1', 'การเผาไหม้อยู่กับที่', 'Stationary combustion', '1']
  const csv = headers.join(',') + '\n' + exampleRow.join(',') + '\n'
  const blob = new Blob([csv], { type: 'text/csv' })
  const url = URL.createObjectURL(blob)
  const a = document.createElement('a')
  a.href = url
  a.download = 'scope_categories_template.csv'
  a.click()
  URL.revokeObjectURL(url)
}

export default function CategoryImportModal({ open, onClose, onComplete }: Props) {
  const [step, setStep] = useState(0)
  const [file, setFile] = useState<File | null>(null)
  const [dragging, setDragging] = useState(false)
  const [parseError, setParseError] = useState<string | null>(null)
  const [parsedRows, setParsedRows] = useState<ParsedRow[]>([])
  const [importing, setImporting] = useState(false)
  const [importResult, setImportResult] = useState<{ imported: number } | null>(null)
  const [importError, setImportError] = useState<string | null>(null)
  const fileInputRef = useRef<HTMLInputElement>(null)

  const handleReset = () => {
    setStep(0)
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
      const text = await f.text()
      const rawRows = parseCSV(text)

      if (rawRows.length === 0) {
        setParseError('CSV file is empty or has no data rows')
        return
      }

      const validated: ParsedRow[] = rawRows.map((raw, i) => {
        const errors: string[] = []
        if (!raw.scope) errors.push('Missing required field: scope')
        else if (!VALID_SCOPES.includes(parseInt(raw.scope, 10))) errors.push(`Invalid scope: "${raw.scope}" (must be 1, 2, 3, or 4)`)
        if (!raw.name_th) errors.push('Missing required field: name_th')
        if (!raw.name_en) errors.push('Missing required field: name_en')

        const data: ScopeCategoryCSVRow = {
          ...(raw.id ? { id: raw.id } : {}),
          scope: raw.scope ?? '',
          name_th: raw.name_th ?? '',
          name_en: raw.name_en ?? '',
          ...(raw.display_order ? { display_order: raw.display_order } : {}),
        }

        return {
          rowNum: i + 2,
          data,
          errors,
          willUpdate: !!raw.id,
        }
      })

      setParsedRows(validated)
      setStep(1)
    } catch (err) {
      setParseError(`Failed to parse CSV: ${err instanceof Error ? err.message : 'Unknown error'}`)
    }
  }, [])

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

  const validRows = parsedRows.filter((r) => r.errors.length === 0)
  const errorRows = parsedRows.filter((r) => r.errors.length > 0)
  const previewRows = parsedRows.slice(0, 50)

  const handleImport = async () => {
    setImporting(true)
    setImportError(null)

    const payload = validRows.map((r) => ({
      ...(r.data.id ? { id: r.data.id } : {}),
      scope: parseInt(r.data.scope, 10),
      name_th: r.data.name_th,
      name_en: r.data.name_en,
      display_order: r.data.display_order ? parseInt(r.data.display_order, 10) : 0,
    }))

    try {
      const res = await fetch('/api/emission-categories/import', {
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

  return (
    <Dialog open={open} onClose={!importing ? handleClose : undefined} maxWidth="md" fullWidth>
      <DialogTitle>
        <Box sx={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
          Import Scope Categories CSV
          <IconButton onClick={handleClose} disabled={importing} size="small">
            <CloseIcon />
          </IconButton>
        </Box>
      </DialogTitle>

      <DialogContent dividers>
        <Stepper activeStep={step} sx={{ mb: 3 }}>
          {STEPS.map((label) => (
            <Step key={label}><StepLabel>{label}</StepLabel></Step>
          ))}
        </Stepper>

        {step === 0 && (
          <Box>
            {parseError && <Alert severity="error" sx={{ mb: 2 }}>{parseError}</Alert>}
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
                transition: 'all 0.2s',
                '&:hover': { borderColor: 'primary.main', bgcolor: 'action.hover' },
              }}
            >
              <CloudUploadIcon sx={{ fontSize: 48, color: 'text.secondary', mb: 1 }} />
              <Typography variant="h6" gutterBottom>Drag & drop your CSV file here</Typography>
              <Typography variant="body2" color="text.secondary">or click to browse — accepts .csv only</Typography>
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
            <Box sx={{ mt: 2 }}>
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

        {step === 1 && (
          <Box>
            <Box sx={{ display: 'flex', gap: 1.5, mb: 2, flexWrap: 'wrap' }}>
              <Chip label={`${parsedRows.length} total rows`} />
              <Chip label={`${validRows.filter((r) => !r.willUpdate).length} will insert`} color="success" />
              <Chip label={`${validRows.filter((r) => r.willUpdate).length} will update`} color="info" />
              {errorRows.length > 0 && <Chip label={`${errorRows.length} errors`} color="error" icon={<ErrorIcon />} />}
            </Box>
            {errorRows.length > 0 && (
              <Alert severity="warning" sx={{ mb: 2 }}>
                {errorRows.length} row(s) have errors and will be skipped.
              </Alert>
            )}
            <Box sx={{ maxHeight: 360, overflow: 'auto', border: '1px solid', borderColor: 'divider', borderRadius: 1 }}>
              <Table size="small" stickyHeader>
                <TableHead>
                  <TableRow>
                    <TableCell>#</TableCell>
                    <TableCell>Status</TableCell>
                    <TableCell>Scope</TableCell>
                    <TableCell>Name (EN)</TableCell>
                    <TableCell>Name (TH)</TableCell>
                    <TableCell>Order</TableCell>
                    <TableCell>Errors</TableCell>
                  </TableRow>
                </TableHead>
                <TableBody>
                  {previewRows.map((row) => (
                    <TableRow key={row.rowNum} sx={{ bgcolor: row.errors.length > 0 ? 'error.50' : 'transparent' }}>
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
                      <TableCell>{row.data.scope}</TableCell>
                      <TableCell>{row.data.name_en}</TableCell>
                      <TableCell>{row.data.name_th}</TableCell>
                      <TableCell>{row.data.display_order || '0'}</TableCell>
                      <TableCell>
                        {row.errors.length > 0 && (
                          <Typography variant="caption" color="error">{row.errors.join('; ')}</Typography>
                        )}
                      </TableCell>
                    </TableRow>
                  ))}
                </TableBody>
              </Table>
            </Box>
          </Box>
        )}

        {step === 2 && (
          <Box sx={{ textAlign: 'center', py: 4 }}>
            {importResult ? (
              <>
                <CheckCircleIcon sx={{ fontSize: 64, color: 'success.main', mb: 2 }} />
                <Typography variant="h5" gutterBottom>Import Complete</Typography>
                <Typography color="text.secondary">
                  Successfully imported {importResult.imported} scope categories.
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
              Importing categories…
            </Typography>
          </Box>
        )}
      </DialogContent>

      <DialogActions sx={{ p: 2, gap: 1 }}>
        {step === 0 && (
          <Button onClick={handleClose} color="inherit" variant="outlined">Cancel</Button>
        )}
        {step === 1 && (
          <>
            <Button onClick={handleReset} color="inherit" variant="outlined" disabled={importing}>Back</Button>
            <Box sx={{ flex: 1 }} />
            <Button
              variant="contained"
              onClick={handleImport}
              disabled={importing || validRows.length === 0}
              startIcon={importing ? <CircularProgress size={16} /> : null}
            >
              {importing ? 'Importing…' : `Import ${validRows.length} Categories`}
            </Button>
          </>
        )}
        {step === 2 && (
          <>
            <Button onClick={handleReset} color="inherit" variant="outlined">Import Another</Button>
            <Button variant="contained" onClick={() => { handleReset(); onComplete() }}>Done</Button>
          </>
        )}
      </DialogActions>
    </Dialog>
  )
}
