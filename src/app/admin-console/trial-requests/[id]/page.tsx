'use client'

import { useCallback, useEffect, useState } from 'react'
import { useParams, useRouter } from 'next/navigation'
import Link from 'next/link'
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
  FormControl,
  Grid,
  InputLabel,
  Link as MuiLink,
  MenuItem,
  Paper,
  Select,
  Snackbar,
  Stack,
  Typography,
} from '@mui/material'
import { ArrowBack, Launch as LaunchIcon } from '@mui/icons-material'
import DeleteConfirmationDialog from '@/components/DeleteConfirmationDialog'
import { trialRequestService, userService } from '@/lib/services'
import { useAuth } from '@/contexts/AuthContext'
import { isAdmin } from '@/lib/permissions'
import { isExpectedError } from '@/lib/utils/errors'
import type {
  OrganizationTrialRequest,
  OrganizationTrialRequestConsent,
} from '@/types/database'
import type { User } from '@/lib/api/types'
import { ACCOUNT_TYPE_OPTIONS, type AccountType } from '@/types/account-types'
import {
  getTrialRequestStatusChipColor,
  getTrialRequestStatusLabel,
  isActiveTrialRequestStatus,
} from '@/types/trial-request-status'

function DetailRow ({ label, value }: { label: string; value: React.ReactNode }) {
  return (
    <Grid item xs={12} sm={6}>
      <Typography variant="caption" color="text.secondary" display="block" sx={{ mb: 0.5 }}>
        {label}
      </Typography>
      <Box sx={{ fontWeight: 500 }}>{value ?? '—'}</Box>
    </Grid>
  )
}

function ConsentFlag ({ label, accepted }: { label: string; accepted: boolean }) {
  return (
    <Chip
      label={`${label}: ${accepted ? 'ยอมรับ' : 'ไม่ยอมรับ'}`}
      color={accepted ? 'success' : 'default'}
      size="small"
      variant={accepted ? 'filled' : 'outlined'}
    />
  )
}

function formatDateTime (value: string | null | undefined) {
  if (!value) return '—'
  return new Date(value).toLocaleString('th-TH', {
    year: 'numeric',
    month: 'short',
    day: 'numeric',
    hour: '2-digit',
    minute: '2-digit',
  })
}

export default function TrialRequestDetailPage () {
  const params = useParams<{ id: string }>()
  const requestId = params.id
  const router = useRouter()
  const { user, isLoading: authLoading } = useAuth()
  const [request, setRequest] = useState<OrganizationTrialRequest | null>(null)
  const [consent, setConsent] = useState<OrganizationTrialRequestConsent | null>(null)
  const [reviewer, setReviewer] = useState<User | null>(null)
  const [loading, setLoading] = useState(true)
  const [actionLoading, setActionLoading] = useState(false)
  const [approveOpen, setApproveOpen] = useState(false)
  const [cancelOpen, setCancelOpen] = useState(false)
  const [accountType, setAccountType] = useState<AccountType>('demo')
  const [actionError, setActionError] = useState<string | null>(null)
  const [successMessage, setSuccessMessage] = useState<string | null>(null)
  const [showSuccessMessage, setShowSuccessMessage] = useState(false)
  const [snackbarSeverity, setSnackbarSeverity] = useState<'success' | 'error'>('success')

  useEffect(() => {
    if (!authLoading && user && !isAdmin(user)) {
      router.replace('/admin-console')
    }
  }, [user, authLoading, router])

  const notify = (message: string, severity: 'success' | 'error' = 'success') => {
    setSuccessMessage(message)
    setSnackbarSeverity(severity)
    setShowSuccessMessage(true)
  }

  const load = useCallback(async () => {
    if (!requestId) return

    try {
      setLoading(true)
      const [requestData, consentData] = await Promise.all([
        trialRequestService.getTrialRequestById(requestId),
        trialRequestService.getTrialRequestConsent(requestId),
      ])
      setRequest(requestData)
      setConsent(consentData)

      if (requestData?.reviewed_by) {
        const reviewerData = await userService.getUserById(requestData.reviewed_by)
        setReviewer(reviewerData)
      } else {
        setReviewer(null)
      }
    } catch (error) {
      if (!isExpectedError(error)) {
        console.error('Failed to load trial request:', error)
      }
      setRequest(null)
      setConsent(null)
      setReviewer(null)
    } finally {
      setLoading(false)
    }
  }, [requestId])

  useEffect(() => {
    if (user && isAdmin(user)) {
      load()
    }
  }, [user, load])

  const handleStartProcessing = async () => {
    if (!request || !user) return

    setActionLoading(true)
    setActionError(null)

    try {
      const updated = await trialRequestService.updateTrialRequestStatus(request.id, {
        status: 'processing',
        reviewedBy: user.id,
      })
      setRequest(updated)
      notify('เปลี่ยนสถานะเป็นกำลังดำเนินการแล้ว')
    } catch (error) {
      const message = error instanceof Error ? error.message : 'เปลี่ยนสถานะไม่สำเร็จ'
      setActionError(message)
      notify(message, 'error')
    } finally {
      setActionLoading(false)
    }
  }

  const handleConfirmApprove = async () => {
    if (!request || !user) return

    setActionLoading(true)
    setActionError(null)

    try {
      const updated = await trialRequestService.approveTrialRequest(request.id, {
        reviewedBy: user.id,
        accountType,
      })
      setRequest(updated)
      setApproveOpen(false)
      notify('อนุมัติคำขอทดลองใช้งานและสร้างองค์กรเรียบร้อยแล้ว')
      await load()
    } catch (error) {
      const message = error instanceof Error ? error.message : 'อนุมัติไม่สำเร็จ'
      setActionError(message)
      notify(message, 'error')
    } finally {
      setActionLoading(false)
    }
  }

  const handleConfirmCancel = async () => {
    if (!request || !user) return

    setActionLoading(true)
    setActionError(null)

    try {
      const updated = await trialRequestService.updateTrialRequestStatus(request.id, {
        status: 'cancelled',
        reviewedBy: user.id,
      })
      setRequest(updated)
      setCancelOpen(false)
      notify('ยกเลิกคำขอทดลองใช้งานแล้ว')
      await load()
    } catch (error) {
      const message = error instanceof Error ? error.message : 'ยกเลิกไม่สำเร็จ'
      setActionError(message)
      notify(message, 'error')
    } finally {
      setActionLoading(false)
    }
  }

  if (authLoading || loading) {
    return (
      <Box sx={{ display: 'flex', justifyContent: 'center', alignItems: 'center', minHeight: 320 }}>
        <CircularProgress />
      </Box>
    )
  }

  if (!user || !isAdmin(user)) {
    return null
  }

  if (!request) {
    return (
      <Box sx={{ py: 2 }}>
        <Button
          component={Link}
          href="/admin-console/trial-requests"
          startIcon={<ArrowBack />}
          sx={{ mb: 2, textTransform: 'none' }}
        >
          กลับ
        </Button>
        <Typography color="text.secondary">ไม่พบคำขอทดลองใช้งาน</Typography>
      </Box>
    )
  }

  const canTakeAction = isActiveTrialRequestStatus(request.status)

  return (
    <Box sx={{ py: 2, width: '100%', maxWidth: 960 }}>
      <Button
        component={Link}
        href="/admin-console/trial-requests"
        startIcon={<ArrowBack />}
        sx={{ mb: 2, textTransform: 'none' }}
      >
        กลับ
      </Button>

      <Box
        sx={{
          display: 'flex',
          flexWrap: 'wrap',
          alignItems: 'flex-start',
          justifyContent: 'space-between',
          gap: 2,
          mb: 3,
        }}
      >
        <Box>
          <Typography variant="h4" fontWeight="bold" sx={{ mb: 1 }}>
            {request.organization_name}
          </Typography>
          <Chip
            label={getTrialRequestStatusLabel(request.status)}
            color={getTrialRequestStatusChipColor(request.status)}
            size="small"
          />
        </Box>

        {canTakeAction && (
          <Stack direction={{ xs: 'column', sm: 'row' }} spacing={1}>
            {request.status === 'pending' && (
              <Button
                variant="outlined"
                disabled={actionLoading}
                onClick={handleStartProcessing}
                sx={{ textTransform: 'none' }}
              >
                เริ่มดำเนินการ
              </Button>
            )}
            <Button
              variant="contained"
              disabled={actionLoading}
              onClick={() => {
                setAccountType('demo')
                setActionError(null)
                setApproveOpen(true)
              }}
              sx={{ textTransform: 'none' }}
            >
              อนุมัติ
            </Button>
            <Button
              variant="outlined"
              color="error"
              disabled={actionLoading}
              onClick={() => {
                setActionError(null)
                setCancelOpen(true)
              }}
              sx={{ textTransform: 'none' }}
            >
              ยกเลิก
            </Button>
          </Stack>
        )}
      </Box>

      {actionError && (
        <Alert severity="error" sx={{ mb: 2 }}>
          {actionError}
        </Alert>
      )}

      <Paper
        elevation={0}
        sx={{ p: 3, mb: 3, border: '1px solid', borderColor: 'divider', borderRadius: 2 }}
      >
        <Typography variant="subtitle2" color="text.secondary" sx={{ mb: 2 }}>
          ข้อมูลคำขอ
        </Typography>
        <Grid container spacing={3}>
          <DetailRow
            label="ผู้ติดต่อ"
            value={`${request.contact_first_name} ${request.contact_last_name}`}
          />
          <DetailRow label="อีเมล" value={request.contact_email} />
          <DetailRow label="เบอร์โทร" value={request.contact_phone} />
          <DetailRow label="วันที่ส่งคำขอ" value={formatDateTime(request.created_at)} />
          <DetailRow label="อัปเดตล่าสุด" value={formatDateTime(request.updated_at)} />
        </Grid>
      </Paper>

      <Paper
        elevation={0}
        sx={{ p: 3, mb: 3, border: '1px solid', borderColor: 'divider', borderRadius: 2 }}
      >
        <Typography variant="subtitle2" color="text.secondary" sx={{ mb: 2 }}>
          ความยินยอม (PDPA)
        </Typography>
        {consent ? (
          <Box sx={{ display: 'grid', gap: 2 }}>
            <Stack direction="row" flexWrap="wrap" gap={1}>
              <ConsentFlag label="ข้อกำหนด" accepted={consent.terms_accepted} />
              <ConsentFlag label="นโยบายความเป็นส่วนตัว" accepted={consent.privacy_acknowledged} />
              <ConsentFlag label="การตลาด" accepted={consent.marketing_consent} />
              <ConsentFlag label="การเก็บ/แชร์ข้อมูล" accepted={consent.collect_share_data_consent} />
            </Stack>
            <Grid container spacing={3}>
              <DetailRow
                label="เอกสารข้อกำหนด"
                value={
                  <MuiLink href={consent.terms_document_url} target="_blank" rel="noopener noreferrer">
                    เปิดเอกสาร
                  </MuiLink>
                }
              />
              <DetailRow
                label="เอกสารนโยบายความเป็นส่วนตัว"
                value={
                  <MuiLink href={consent.privacy_document_url} target="_blank" rel="noopener noreferrer">
                    เปิดเอกสาร
                  </MuiLink>
                }
              />
              <DetailRow
                label="เอกสารความยินยอมเก็บ/แชร์ข้อมูล"
                value={
                  <MuiLink
                    href={consent.collect_share_data_consent_url}
                    target="_blank"
                    rel="noopener noreferrer"
                  >
                    เปิดเอกสาร
                  </MuiLink>
                }
              />
              <DetailRow label="วันที่ให้ความยินยอม" value={formatDateTime(consent.consented_at)} />
            </Grid>
          </Box>
        ) : (
          <Typography color="text.secondary">ไม่พบข้อมูลความยินยอม</Typography>
        )}
      </Paper>

      <Paper elevation={0} sx={{ p: 3, border: '1px solid', borderColor: 'divider', borderRadius: 2 }}>
        <Typography variant="subtitle2" color="text.secondary" sx={{ mb: 2 }}>
          ข้อมูลการตรวจสอบ
        </Typography>
        <Grid container spacing={3}>
          <DetailRow label="วันที่ดำเนินการ" value={formatDateTime(request.reviewed_at)} />
          <DetailRow
            label="ผู้ดำเนินการ"
            value={
              reviewer ? (
                <>
                  {reviewer.name}
                  <Typography component="span" variant="body2" color="text.secondary" display="block">
                    {reviewer.email}
                  </Typography>
                </>
              ) : (
                '—'
              )
            }
          />
          <DetailRow label="ประเภทบัญชีที่อนุมัติ" value={request.approved_account_type || '—'} />
          <DetailRow
            label="องค์กรที่สร้าง"
            value={
              request.organization_id ? (
                <MuiLink
                  component={Link}
                  href={`/admin-console/organizations/${request.organization_id}`}
                  sx={{ display: 'inline-flex', alignItems: 'center', gap: 0.5 }}
                >
                  <LaunchIcon fontSize="small" />
                  ดูองค์กร
                </MuiLink>
              ) : (
                '—'
              )
            }
          />
        </Grid>
      </Paper>

      <Dialog open={approveOpen} onClose={() => !actionLoading && setApproveOpen(false)} maxWidth="sm" fullWidth>
        <DialogTitle>อนุมัติคำขอทดลองใช้งาน</DialogTitle>
        <DialogContent>
          {actionError && (
            <Alert severity="error" sx={{ mb: 2 }}>
              {actionError}
            </Alert>
          )}
          <Box sx={{ display: 'grid', gap: 1.5, pt: 1 }}>
            <Typography variant="body2">
              <strong>ชื่อองค์กร:</strong> {request.organization_name}
            </Typography>
            <Typography variant="body2">
              <strong>ผู้ติดต่อ:</strong> {request.contact_first_name} {request.contact_last_name}
            </Typography>
            <Typography variant="body2">
              <strong>อีเมล:</strong> {request.contact_email}
            </Typography>
            <Typography variant="body2" sx={{ mb: 1 }}>
              <strong>เบอร์โทร:</strong> {request.contact_phone}
            </Typography>
            <FormControl fullWidth>
              <InputLabel>ประเภทบัญชี</InputLabel>
              <Select
                label="ประเภทบัญชี"
                value={accountType}
                onChange={(e) => setAccountType(e.target.value as AccountType)}
                disabled={actionLoading}
              >
                {ACCOUNT_TYPE_OPTIONS.map((option) => (
                  <MenuItem key={option.value} value={option.value}>
                    {option.label}
                  </MenuItem>
                ))}
              </Select>
            </FormControl>
            <Typography variant="caption" color="text.secondary">
              ระบบจะสร้างองค์กรใหม่และบันทึกข้อมูลผู้ติดต่อลงในตาราง organizations
            </Typography>
          </Box>
        </DialogContent>
        <DialogActions>
          <Button onClick={() => setApproveOpen(false)} disabled={actionLoading} sx={{ textTransform: 'none' }}>
            ยกเลิก
          </Button>
          <Button
            variant="contained"
            onClick={handleConfirmApprove}
            disabled={actionLoading}
            sx={{ textTransform: 'none' }}
          >
            {actionLoading ? 'กำลังอนุมัติ...' : 'ยืนยันอนุมัติ'}
          </Button>
        </DialogActions>
      </Dialog>

      <DeleteConfirmationDialog
        open={cancelOpen}
        onClose={() => !actionLoading && setCancelOpen(false)}
        onConfirm={handleConfirmCancel}
        title="ยืนยันการยกเลิกคำขอ"
        message="คุณแน่ใจหรือไม่ที่จะยกเลิกคำขอทดลองใช้งานนี้?"
        description="การยกเลิกไม่สามารถย้อนกลับได้ และจะไม่มีการสร้างองค์กรจากคำขอนี้"
        isDeleting={actionLoading}
        error={actionError}
      />

      <Snackbar
        open={showSuccessMessage}
        autoHideDuration={4000}
        onClose={() => setShowSuccessMessage(false)}
        anchorOrigin={{ vertical: 'bottom', horizontal: 'center' }}
      >
        <Alert
          onClose={() => setShowSuccessMessage(false)}
          severity={snackbarSeverity}
          sx={{ width: '100%' }}
        >
          {successMessage}
        </Alert>
      </Snackbar>
    </Box>
  )
}
