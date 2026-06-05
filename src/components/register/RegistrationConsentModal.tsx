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
import { CONSENT_MODAL_COPY, POLICY_DOCUMENTS } from './policy-documents'
import type { RegistrationConsentPayload } from './types'

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
  const [marketingConsent, setMarketingConsent] = useState(false)

  const canProceed = termsAccepted && privacyAcknowledged

  const handleConfirm = () => {
    if (!canProceed) return
    onConfirm({
      termsAccepted: true,
      privacyAcknowledged: true,
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
          {POLICY_DOCUMENTS.map((document) => (
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
              <Typography variant="body2">{CONSENT_MODAL_COPY.termsCheckboxLabel}</Typography>
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
              <Typography variant="body2">{CONSENT_MODAL_COPY.privacyCheckboxLabel}</Typography>
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
