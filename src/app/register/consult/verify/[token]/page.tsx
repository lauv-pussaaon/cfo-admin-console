'use client'

import { useEffect, useState } from 'react'
import { useParams } from 'next/navigation'
import {
  Alert,
  Box,
  Button,
  Card,
  CardContent,
  CircularProgress,
  IconButton,
  keyframes,
  LinearProgress,
  Typography,
} from '@mui/material'
import {
  CheckCircle as CheckCircleIcon,
  CheckCircleOutline as CheckCircleOutlineIcon,
  DeleteOutline as DeleteOutlineIcon,
  UploadFile as UploadFileIcon,
} from '@mui/icons-material'
import {
  MAX_VERIFICATION_DOCUMENTS,
  VERIFICATION_DOCUMENT_ACCEPT,
} from '@/lib/register/verification-documents'

type VerifyState =
  | { kind: 'loading' }
  | { kind: 'error'; message: string }
  | {
      kind: 'ready'
      name: string
      email: string
      role: string
      status: string
      canUpload: boolean
      existingCount: number
    }
  | { kind: 'submitted'; documentCount: number }

const fileEnter = keyframes`
  from {
    opacity: 0;
    transform: translateY(8px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
`

const checkPop = keyframes`
  0% {
    transform: scale(0.6);
    opacity: 0;
  }
  70% {
    transform: scale(1.12);
    opacity: 1;
  }
  100% {
    transform: scale(1);
    opacity: 1;
  }
`

const uploadPulse = keyframes`
  0% {
    background-position: 100% 0;
  }
  100% {
    background-position: -100% 0;
  }
`

export default function ConsultVerifyPage () {
  const params = useParams<{ token: string }>()
  const token = typeof params?.token === 'string' ? params.token : ''
  const [state, setState] = useState<VerifyState>({ kind: 'loading' })
  const [files, setFiles] = useState<File[]>([])
  const [uploadError, setUploadError] = useState<string | null>(null)
  const [isSubmitting, setIsSubmitting] = useState(false)

  useEffect(() => {
    if (!token) {
      setState({ kind: 'error', message: 'ลิงก์ไม่ถูกต้อง' })
      return
    }

    let cancelled = false
    ;(async () => {
      try {
        const response = await fetch(
          `/api/public/register/verify/${encodeURIComponent(token)}`
        )
        const result = await response.json()
        if (!response.ok) {
          throw new Error(result.error || 'โหลดข้อมูลไม่สำเร็จ')
        }
        if (cancelled) return

        const status = result.verification?.status as string | undefined

        if (status === 'pending_review' || status === 'approved') {
          setState({
            kind: 'submitted',
            documentCount: (result.documents ?? []).length,
          })
          return
        }

        if (status === 'rejected') {
          setState({
            kind: 'error',
            message: 'คำขอยืนยันถูกปฏิเสธแล้ว กรุณาติดต่อทีมงานหากต้องการส่งใหม่',
          })
          return
        }

        setState({
          kind: 'ready',
          name: result.user?.name || '',
          email: result.user?.email || '',
          role: result.user?.role || '',
          status: status || '',
          canUpload: Boolean(result.canUpload),
          existingCount: (result.documents ?? []).length,
        })
      } catch (error) {
        if (!cancelled) {
          setState({
            kind: 'error',
            message:
              error instanceof Error ? error.message : 'โหลดข้อมูลไม่สำเร็จ',
          })
        }
      }
    })()

    return () => {
      cancelled = true
    }
  }, [token])

  const onPickFiles = (event: React.ChangeEvent<HTMLInputElement>) => {
    const selected = event.target.files
    if (!selected?.length) return

    const picked = Array.from(selected)
    event.target.value = ''

    setUploadError(null)
    setFiles((prev) => {
      const remaining = MAX_VERIFICATION_DOCUMENTS - prev.length
      if (remaining <= 0) {
        setUploadError(`อัปโหลดได้สูงสุด ${MAX_VERIFICATION_DOCUMENTS} ไฟล์`)
        return prev
      }
      return [...prev, ...picked.slice(0, remaining)]
    })
  }

  const onSubmit = async () => {
    if (state.kind !== 'ready' || !state.canUpload) {
      setUploadError('สถานะนี้ยังอัปโหลดไม่ได้')
      return
    }
    if (files.length === 0) {
      setUploadError('กรุณาเลือกไฟล์อย่างน้อย 1 ไฟล์')
      return
    }

    setIsSubmitting(true)
    setUploadError(null)
    try {
      const body = new FormData()
      for (const file of files) {
        body.append('files', file)
      }
      const response = await fetch(
        `/api/public/register/verify/${encodeURIComponent(token)}/documents`,
        { method: 'POST', body }
      )
      const result = await response.json().catch(() => ({}))
      if (!response.ok) {
        throw new Error(
          (result as { error?: string }).error || 'ส่งเอกสารไม่สำเร็จ'
        )
      }
      setFiles([])
      setState({
        kind: 'submitted',
        documentCount:
          (result as { documentCount?: number }).documentCount ?? files.length,
      })
    } catch (error) {
      setUploadError(
        error instanceof Error ? error.message : 'ส่งเอกสารไม่สำเร็จ'
      )
    } finally {
      setIsSubmitting(false)
    }
  }

  return (
    <Box sx={{ width: '100%', maxWidth: 800, mx: 'auto', px: { xs: 1, sm: 2 }, py: 4 }}>
      <Card sx={{ borderRadius: 3, boxShadow: '0 16px 40px rgba(15, 23, 42, 0.10)' }}>
        <CardContent sx={{ p: { xs: 3, md: 4 } }}>
          {state.kind === 'loading' && (
            <Box sx={{ display: 'flex', justifyContent: 'center', py: 6 }}>
              <CircularProgress />
            </Box>
          )}

          {state.kind === 'error' && (
            <Alert severity="error">{state.message}</Alert>
          )}

          {state.kind === 'submitted' && (
            <Box sx={{ textAlign: 'center', py: 2 }}>
              <CheckCircleOutlineIcon color="success" sx={{ fontSize: 80, mb: 2 }} />
              <Typography variant="h4" fontWeight={700} gutterBottom>
                ส่งเอกสารแล้ว
              </Typography>
              <Typography color="text.secondary" sx={{ maxWidth: 420, mx: 'auto' }}>
                ได้รับ {state.documentCount} ไฟล์แล้ว ทีมงานจะตรวจสอบและแจ้งผลทางอีเมลเมื่ออนุมัติแล้ว
              </Typography>
            </Box>
          )}

          {state.kind === 'ready' && (
            <>
              <Typography variant="h4" component="h1" fontWeight={700} gutterBottom>
                อัปโหลดเอกสารยืนยัน
              </Typography>
              <Typography color="text.secondary" sx={{ mb: 3 }}>
                {state.name} ({state.email}) — กรุณาอัปโหลดเอกสารเพื่อให้ทีมงานตรวจสอบ
              </Typography>

              {!state.canUpload ? (
                <Alert severity="info">
                  สถานะปัจจุบันไม่สามารถอัปโหลดเอกสารได้ ({state.status})
                </Alert>
              ) : (
                <>
                  <Typography variant="caption" color="text.secondary" display="block" sx={{ mb: 1.5 }}>
                    สูงสุด {MAX_VERIFICATION_DOCUMENTS} ไฟล์ — รูปภาพ, PDF, Word, Excel ไฟล์ละไม่เกิน 5MB
                    {files.length > 0 ? ` · เลือกแล้ว ${files.length} ไฟล์` : ''}
                  </Typography>

                  {files.length > 0 && (
                    <Box sx={{ display: 'flex', flexDirection: 'column', gap: 1, mb: 2 }}>
                      {files.map((file, index) => (
                        <Box
                          key={`${file.name}-${file.size}-${index}`}
                          sx={{
                            position: 'relative',
                            overflow: 'hidden',
                            display: 'flex',
                            alignItems: 'center',
                            justifyContent: 'space-between',
                            gap: 1.5,
                            border: '1px solid',
                            borderColor: isSubmitting ? 'primary.light' : 'divider',
                            borderRadius: 1.5,
                            px: 1.5,
                            py: 1.25,
                            animation: `${fileEnter} 280ms ease-out both`,
                            animationDelay: `${index * 40}ms`,
                            ...(isSubmitting
                              ? {
                                  backgroundImage:
                                    'linear-gradient(90deg, rgba(15,118,110,0.06) 0%, rgba(15,118,110,0.16) 50%, rgba(15,118,110,0.06) 100%)',
                                  backgroundSize: '200% 100%',
                                  animation: `${fileEnter} 280ms ease-out both, ${uploadPulse} 1.2s linear infinite`,
                                }
                              : {}),
                          }}
                        >
                          <Box sx={{ display: 'flex', alignItems: 'center', gap: 1.25, minWidth: 0 }}>
                            {isSubmitting ? (
                              <CircularProgress size={20} thickness={5} />
                            ) : (
                              <CheckCircleIcon
                                color="success"
                                fontSize="small"
                                sx={{
                                  flexShrink: 0,
                                  animation: `${checkPop} 320ms ease-out both`,
                                  animationDelay: `${index * 40 + 80}ms`,
                                }}
                              />
                            )}
                            <Typography variant="body2" noWrap fontWeight={500}>
                              {file.name}
                            </Typography>
                          </Box>
                          <IconButton
                            size="small"
                            onClick={() =>
                              setFiles((prev) => prev.filter((_, i) => i !== index))
                            }
                            disabled={isSubmitting}
                            aria-label="ลบไฟล์"
                          >
                            <DeleteOutlineIcon fontSize="small" />
                          </IconButton>
                          {isSubmitting && (
                            <LinearProgress
                              sx={{
                                position: 'absolute',
                                left: 0,
                                right: 0,
                                bottom: 0,
                                height: 3,
                              }}
                            />
                          )}
                        </Box>
                      ))}
                    </Box>
                  )}

                  <Button
                    component="label"
                    variant="outlined"
                    fullWidth
                    startIcon={
                      isSubmitting ? <CircularProgress size={16} /> : <UploadFileIcon />
                    }
                    disabled={isSubmitting || files.length >= MAX_VERIFICATION_DOCUMENTS}
                    sx={{ textTransform: 'none', mb: 2, py: 1.1 }}
                  >
                    เลือกไฟล์
                    <input
                      type="file"
                      accept={VERIFICATION_DOCUMENT_ACCEPT}
                      multiple
                      hidden
                      onChange={onPickFiles}
                      disabled={isSubmitting || files.length >= MAX_VERIFICATION_DOCUMENTS}
                    />
                  </Button>

                  {uploadError && (
                    <Alert severity="error" sx={{ mb: 2 }}>
                      {uploadError}
                    </Alert>
                  )}

                  <Button
                    type="button"
                    variant="contained"
                    size="large"
                    fullWidth
                    disabled={isSubmitting || files.length === 0}
                    onClick={() => void onSubmit()}
                    startIcon={
                      isSubmitting ? <CircularProgress size={16} color="inherit" /> : null
                    }
                    sx={{ py: 1.3, fontWeight: 600 }}
                  >
                    {isSubmitting ? 'กำลังอัปโหลด...' : 'ส่งเอกสารเพื่อตรวจสอบ'}
                  </Button>
                </>
              )}
            </>
          )}
        </CardContent>
      </Card>
    </Box>
  )
}
