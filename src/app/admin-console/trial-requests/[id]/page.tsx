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
  Grid,
  Link as MuiLink,
  Paper,
  Snackbar,
  Stack,
  Typography,
} from '@mui/material'
import { ArrowBack, Launch as LaunchIcon } from '@mui/icons-material'
import DeleteConfirmationDialog from '@/components/DeleteConfirmationDialog'
import { trialRequestService, userService } from '@/lib/services'
import { useAuth } from '@/contexts/AuthContext'
import { canAccessTrialRequests, isAdmin } from '@/lib/permissions'
import { isExpectedError } from '@/lib/utils/errors'
import type {
  OrganizationTrialRequest,
  OrganizationTrialRequestConsent,
} from '@/types/database'
import type { User } from '@/lib/api/types'
import {
  getOrgRequestKindChipColor,
  getOrgRequestKindLabel,
  isAnnualMembershipRequest,
} from '@/types/org-request-kind'
import { authenticatedAdminFetch } from '@/lib/api/admin-fetch'
import {
  canDeployTrialRequest,
  getTrialRequestStatusChipColor,
  getTrialRequestStatusLabel,
  isActiveTrialRequestStatus,
} from '@/types/trial-request-status'
import {
  adminBackButtonSx,
  adminPageTitleSx,
  adminQuietChipSx,
} from '@/lib/admin-ui-styles'

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
  const [cancelOpen, setCancelOpen] = useState(false)
  const [actionError, setActionError] = useState<string | null>(null)
  const [successMessage, setSuccessMessage] = useState<string | null>(null)
  const [showSuccessMessage, setShowSuccessMessage] = useState(false)
  const [snackbarSeverity, setSnackbarSeverity] = useState<'success' | 'error'>('success')

  useEffect(() => {
    if (!authLoading && user && !canAccessTrialRequests(user)) {
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
    if (user && canAccessTrialRequests(user)) {
      load()
    }
  }, [user, load])

  const handleStartProcessing = async () => {
    if (!request || !user) return

    setActionLoading(true)
    setActionError(null)

    try {
      const updated = await trialRequestService.updateTrialRequestStatus(request.id, {
        status: 'started',
        reviewedBy: user.id,
      })
      setRequest(updated)
      notify('เริ่มดำเนินการแล้ว')
    } catch (error) {
      const message = error instanceof Error ? error.message : 'เปลี่ยนสถานะไม่สำเร็จ'
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
      notify('ยกเลิกคำขอแล้ว')
      await load()
    } catch (error) {
      const message = error instanceof Error ? error.message : 'ยกเลิกไม่สำเร็จ'
      setActionError(message)
      notify(message, 'error')
    } finally {
      setActionLoading(false)
    }
  }

  const handleDeploy = async () => {
    if (!request || !user || actionLoading || request.status === 'deploying') return

    setActionLoading(true)
    setActionError(null)
    setRequest({
      ...request,
      status: 'deploying',
      deploy_error: null,
      deploy_log: null,
      deploy_log_path: null,
    })

    try {
      const response = await authenticatedAdminFetch(
        `/api/admin-console/trial-requests/${request.id}/deploy`,
        { method: 'POST' },
        { userId: user.id }
      )
      const result = await response.json().catch(() => ({}))
      if (!response.ok) {
        throw new Error(
          (result as { error?: string }).error || 'เริ่มติดตั้งไม่สำเร็จ'
        )
      }
      const next = await trialRequestService.getTrialRequestById(request.id)
      if (next) setRequest(next)
      notify('เขียนลง new-instances.csv แล้ว รัน ./deploy.sh new บนโฮสต์')
    } catch (error) {
      const message = error instanceof Error ? error.message : 'เริ่มติดตั้งไม่สำเร็จ'
      setActionError(message)
      notify(message, 'error')
      const next = await trialRequestService.getTrialRequestById(request.id)
      if (next) setRequest(next)
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

  if (!user || !canAccessTrialRequests(user)) {
    return null
  }

  if (!request) {
    return (
      <Box sx={{ py: 3 }}>
        <Button
          component={Link}
          href="/admin-console/trial-requests"
          startIcon={<ArrowBack />}
          sx={adminBackButtonSx}
        >
          กลับ
        </Button>
        <Typography color="text.secondary">ไม่พบคำขอสมัครองค์กร</Typography>
      </Box>
    )
  }

  const canCancel = isActiveTrialRequestStatus(request.status)
  const deployLocked = actionLoading || request.status === 'deploying'
  const showDeploy =
    isAdmin(user) && (canDeployTrialRequest(request.status) || request.status === 'deploying')
  const showActions = request.status === 'open' || canCancel || showDeploy

  return (
    <Box sx={{ py: 3, width: '100%', maxWidth: 960 }}>
      <Button
        component={Link}
        href="/admin-console/trial-requests"
        startIcon={<ArrowBack />}
        sx={adminBackButtonSx}
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
          <Typography variant="h4" component="h1" sx={[adminPageTitleSx, { mb: 1 }]}>
            {request.organization_name}
          </Typography>
          <Stack direction="row" flexWrap="wrap" gap={1}>
            <Chip
              label={getOrgRequestKindLabel(request.request_kind)}
              color={getOrgRequestKindChipColor(request.request_kind)}
              size="small"
              variant="outlined"
              sx={adminQuietChipSx}
            />
            <Chip
              label={getTrialRequestStatusLabel(request.status)}
              color={getTrialRequestStatusChipColor(request.status)}
              size="small"
              variant="outlined"
              sx={adminQuietChipSx}
            />
          </Stack>
        </Box>

        {showActions && (
          <Stack direction={{ xs: 'column', sm: 'row' }} spacing={1}>
            {request.status === 'open' && (
              <Button
                variant="outlined"
                disabled={actionLoading}
                onClick={handleStartProcessing}
                sx={{ textTransform: 'none', borderRadius: 2 }}
              >
                เริ่มดำเนินการ
              </Button>
            )}
            {showDeploy && (
              <Button
                variant="contained"
                disabled={deployLocked}
                onClick={handleDeploy}
                sx={{ textTransform: 'none', borderRadius: 2 }}
              >
                {request.status === 'deploying' ? 'กำลังติดตั้ง' : 'Deploy'}
              </Button>
            )}
            {canCancel && (
              <Button
                variant="outlined"
                color="error"
                disabled={actionLoading}
                onClick={() => {
                  setActionError(null)
                  setCancelOpen(true)
                }}
                sx={{ textTransform: 'none', borderRadius: 2 }}
              >
                ยกเลิก
              </Button>
            )}
          </Stack>
        )}
      </Box>

      {actionError && (
        <Alert severity="error" sx={{ mb: 2 }}>
          {actionError}
        </Alert>
      )}

      {request.status === 'deployment_failed' && (request.deploy_error || request.deploy_log) && (
        <Alert severity="error" sx={{ mb: 2 }}>
          <Typography fontWeight={600} sx={{ mb: 0.5 }}>
            ติดตั้งไม่สำเร็จ
          </Typography>
          {request.deploy_error && (
            <Typography variant="body2">{request.deploy_error}</Typography>
          )}
          {request.deploy_log_path && (
            <Typography variant="caption" display="block" sx={{ mt: 1 }}>
              ล็อกบนเซิร์ฟเวอร์: {request.deploy_log_path}
            </Typography>
          )}
        </Alert>
      )}

      {request.status === 'deployment_failed' && request.deploy_log && (
        <Paper
          elevation={0}
          sx={{ p: 2, mb: 3, border: '1px solid', borderColor: 'divider', borderRadius: 2 }}
        >
          <Typography variant="subtitle2" color="text.secondary" sx={{ mb: 1 }}>
            ล็อกการติดตั้ง
          </Typography>
          <Box
            component="pre"
            sx={{
              m: 0,
              maxHeight: 360,
              overflow: 'auto',
              fontSize: 12,
              lineHeight: 1.5,
              whiteSpace: 'pre-wrap',
              wordBreak: 'break-word',
            }}
          >
            {request.deploy_log}
          </Box>
        </Paper>
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
          <DetailRow
            label="ประเภทคำขอ"
            value={getOrgRequestKindLabel(request.request_kind)}
          />
          <DetailRow label="รหัสบริษัท" value={request.company_code || '—'} />
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

      <DeleteConfirmationDialog
        open={cancelOpen}
        onClose={() => !actionLoading && setCancelOpen(false)}
        onConfirm={handleConfirmCancel}
        title="ยืนยันการยกเลิกคำขอ"
        message={
          isAnnualMembershipRequest(request.request_kind)
            ? 'คุณแน่ใจหรือไม่ที่จะยกเลิกคำขอสมัครสมาชิกรายปีนี้?'
            : 'คุณแน่ใจหรือไม่ที่จะยกเลิกคำขอทดลองใช้งานนี้?'
        }
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
