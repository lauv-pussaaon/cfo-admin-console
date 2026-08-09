'use client'

import { useEffect, useState } from 'react'
import {
  Box,
  Button,
  CircularProgress,
  Dialog,
  DialogActions,
  DialogContent,
  IconButton,
  Link as MuiLink,
  Typography,
} from '@mui/material'
import { Close as CloseIcon } from '@mui/icons-material'
import { authenticatedAdminFetch } from '@/lib/api/admin-fetch'
import type { VerificationDocument } from '@/lib/api/types'

interface Props {
  open: boolean
  userId: string | null
  userName?: string
  onClose: () => void
}

function formatUploadedDate (value: string): string {
  try {
    return new Date(value).toLocaleString('th-TH', {
      dateStyle: 'medium',
      timeStyle: 'short',
    })
  } catch {
    return value
  }
}

export default function ReviewDocumentsModal ({
  open,
  userId,
  userName,
  onClose,
}: Props) {
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)
  const [documents, setDocuments] = useState<VerificationDocument[]>([])
  const [verificationStatus, setVerificationStatus] = useState<string | null>(
    null
  )

  useEffect(() => {
    if (!open || !userId) return

    let cancelled = false
    ;(async () => {
      setLoading(true)
      setError(null)
      setDocuments([])
      setVerificationStatus(null)
      try {
        const response = await authenticatedAdminFetch(
          `/api/admin-console/users/${userId}/verification-documents`
        )
        const result = await response.json()
        if (!response.ok) {
          throw new Error(result.error || 'โหลดเอกสารไม่สำเร็จ')
        }
        if (cancelled) return
        setDocuments(result.documents ?? [])
        setVerificationStatus(result.verification?.status ?? null)
      } catch (err) {
        if (!cancelled) {
          setError(err instanceof Error ? err.message : 'โหลดเอกสารไม่สำเร็จ')
        }
      } finally {
        if (!cancelled) setLoading(false)
      }
    })()

    return () => {
      cancelled = true
    }
  }, [open, userId])

  return (
    <Dialog open={open} onClose={onClose} maxWidth="sm" fullWidth>
      <Box
        sx={{
          display: 'flex',
          alignItems: 'center',
          justifyContent: 'space-between',
          px: 3,
          py: 2,
          borderBottom: '1px solid',
          borderColor: 'divider',
        }}
      >
        <Box>
          <Typography variant="h6" fontWeight={700}>
            เอกสารยืนยัน
          </Typography>
          {userName && (
            <Typography variant="body2" color="text.secondary">
              {userName}
              {verificationStatus ? ` · ${verificationStatus}` : ''}
            </Typography>
          )}
        </Box>
        <IconButton onClick={onClose} size="small" aria-label="ปิด">
          <CloseIcon />
        </IconButton>
      </Box>

      <DialogContent sx={{ px: 3, py: 2.5 }}>
        {loading && (
          <Box sx={{ display: 'flex', justifyContent: 'center', py: 4 }}>
            <CircularProgress size={28} />
          </Box>
        )}

        {!loading && error && (
          <Typography color="error" variant="body2">
            {error}
          </Typography>
        )}

        {!loading && !error && documents.length === 0 && (
          <Typography color="text.secondary" variant="body2">
            ยังไม่มีเอกสารที่อัปโหลด
          </Typography>
        )}

        {!loading && !error && documents.length > 0 && (
          <Box sx={{ display: 'flex', flexDirection: 'column', gap: 1.25 }}>
            {documents.map((doc, index) => (
              <Box
                key={doc.id}
                sx={{
                  display: 'flex',
                  alignItems: 'flex-start',
                  justifyContent: 'space-between',
                  gap: 2,
                  border: '1px solid',
                  borderColor: 'divider',
                  borderRadius: 1,
                  px: 1.5,
                  py: 1.25,
                }}
              >
                <Box sx={{ minWidth: 0 }}>
                  <Typography variant="body2" fontWeight={600} noWrap>
                    {index + 1}. {doc.file_name}
                  </Typography>
                  <Typography variant="caption" color="text.secondary">
                    อัปโหลดเมื่อ {formatUploadedDate(doc.uploaded_date)}
                  </Typography>
                </Box>
                <MuiLink
                  href={doc.file_url}
                  target="_blank"
                  rel="noopener noreferrer"
                  underline="hover"
                  variant="body2"
                  sx={{ flexShrink: 0 }}
                >
                  เปิด / ดาวน์โหลด
                </MuiLink>
              </Box>
            ))}
          </Box>
        )}
      </DialogContent>

      <DialogActions sx={{ px: 3, py: 2 }}>
        <Button onClick={onClose} variant="outlined" color="inherit">
          ปิด
        </Button>
      </DialogActions>
    </Dialog>
  )
}
