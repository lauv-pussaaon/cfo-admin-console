'use client'

import { useState } from 'react'
import {
  Box,
  Button,
  Checkbox,
  Dialog,
  DialogActions,
  DialogContent,
  DialogTitle,
  FormControlLabel,
  Typography,
} from '@mui/material'
import ConsentDocumentSection from './ConsentDocumentSection'
import { CONSENT_MODAL_COPY, REGISTRATION_POLICY_DOCUMENTS } from './policy-documents'
import type { RegistrationConsentPayload } from './types'

function ConsentCheckboxLabel ({
  children,
  required = false,
}: {
  children: React.ReactNode
  required?: boolean
}) {
  return (
    <Typography variant="body2" component="span">
      {children}
      {required && (
        <>
          {' '}
          <Typography
            component="span"
            variant="caption"
            sx={{ fontWeight: 600, color: 'error.main' }}
          >
            ({CONSENT_MODAL_COPY.requiredLabel})
          </Typography>
        </>
      )}
    </Typography>
  )
}

interface RegistrationConsentModalProps {
  open: boolean
  onConfirm: (consent: RegistrationConsentPayload) => void
  onCancel: () => void
}

export default function RegistrationConsentModal({
  open,
  onConfirm,
  onCancel,
}: RegistrationConsentModalProps) {
  const [termsAccepted, setTermsAccepted] = useState(false)
  const [privacyAcknowledged, setPrivacyAcknowledged] = useState(false)
  const [collectShareDataConsent, setCollectShareDataConsent] = useState(false)
  const [marketingConsent, setMarketingConsent] = useState(false)

  const canProceed = termsAccepted && privacyAcknowledged

  const handleConfirm = () => {
    if (!canProceed) return
    onConfirm({
      termsAccepted: true,
      privacyAcknowledged: true,
      collectShareDataConsent,
      marketingConsent,
    })
  }

  return (
    <Dialog
      open={open}
      maxWidth="sm"
      fullWidth
      disableEscapeKeyDown
      onClose={(_, reason) => {
        if (reason === 'backdropClick') return
      }}
      PaperProps={{
        sx: {
          borderRadius: 3,
          boxShadow: '0 16px 40px rgba(15, 23, 42, 0.10)',
        },
      }}
      aria-labelledby="registration-consent-title"
    >
      <DialogTitle id="registration-consent-title" sx={{ pb: 1 }}>
        <Typography variant="h5" component="span" fontWeight={700}>
          {CONSENT_MODAL_COPY.title}
        </Typography>
      </DialogTitle>

      <DialogContent sx={{ pt: 1 }}>
        <Typography variant="body2" color="text.secondary" sx={{ mb: 2.5 }}>
          {CONSENT_MODAL_COPY.subtitle}
        </Typography>

        <Box sx={{ display: 'grid', gap: 1.5, mb: 2.5 }}>
          {REGISTRATION_POLICY_DOCUMENTS.map((document) => (
            <ConsentDocumentSection key={document.key} document={document} />
          ))}
        </Box>

        <Box sx={{ display: 'grid', gap: 0.5 }}>
          <FormControlLabel
            control={
              <Checkbox
                checked={termsAccepted}
                onChange={(e) => setTermsAccepted(e.target.checked)}
              />
            }
            label={
              <ConsentCheckboxLabel required>
                {CONSENT_MODAL_COPY.termsCheckboxLabel}
              </ConsentCheckboxLabel>
            }
          />
          <FormControlLabel
            control={
              <Checkbox
                checked={privacyAcknowledged}
                onChange={(e) => setPrivacyAcknowledged(e.target.checked)}
              />
            }
            label={
              <ConsentCheckboxLabel required>
                {CONSENT_MODAL_COPY.privacyCheckboxLabel}
              </ConsentCheckboxLabel>
            }
          />
          <FormControlLabel
            control={
              <Checkbox
                checked={collectShareDataConsent}
                onChange={(e) => setCollectShareDataConsent(e.target.checked)}
              />
            }
            label={
              <Typography variant="body2">
                {CONSENT_MODAL_COPY.collectShareDataConsentCheckboxLabel}
              </Typography>
            }
          />
          <FormControlLabel
            control={
              <Checkbox
                checked={marketingConsent}
                onChange={(e) => setMarketingConsent(e.target.checked)}
              />
            }
            label={
              <Typography variant="body2">{CONSENT_MODAL_COPY.marketingCheckboxLabel}</Typography>
            }
          />
        </Box>
      </DialogContent>

      <DialogActions sx={{ px: 3, pb: 3, pt: 1, gap: 1 }}>
        <Button onClick={onCancel} variant="outlined" sx={{ textTransform: 'none' }}>
          {CONSENT_MODAL_COPY.cancelLabel}
        </Button>
        <Button
          onClick={handleConfirm}
          variant="contained"
          disabled={!canProceed}
          sx={{ textTransform: 'none', fontWeight: 600 }}
        >
          {CONSENT_MODAL_COPY.confirmLabel}
        </Button>
      </DialogActions>
    </Dialog>
  )
}
