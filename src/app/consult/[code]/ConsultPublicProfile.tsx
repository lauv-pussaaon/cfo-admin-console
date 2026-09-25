'use client'

import type { ReactNode } from 'react'
import { alpha } from '@mui/material/styles'
import { Avatar, Box, Paper, Typography } from '@mui/material'
import { Email as EmailIcon, Phone as PhoneIcon } from '@mui/icons-material'
import { ROLE_LABELS } from '@/types/roles'
import { CopyInviteCode } from './CopyInviteCode'

export type ConsultProfile = {
  name: string
  email: string
  phone: string | null
  avatar_url: string | null
  invite_hashcode: string
  firmName: string | null
}

function ContactRow ({ icon, value }: { icon: ReactNode; value: string }) {
  return (
    <Box sx={{ display: 'flex', alignItems: 'center', gap: 1.25, minWidth: 0 }}>
      <Box sx={{ color: 'primary.main', display: 'flex', flexShrink: 0 }}>{icon}</Box>
      <Typography variant="body2" sx={{ wordBreak: 'break-word' }}>
        {value}
      </Typography>
    </Box>
  )
}

export function ConsultPublicProfile ({ profile }: { profile: ConsultProfile | null }) {
  return (
    <Box
      sx={(theme) => ({
        minHeight: '100vh',
        display: 'flex',
        alignItems: 'center',
        justifyContent: 'center',
        px: 2,
        py: 6,
        background: `radial-gradient(ellipse at top, ${alpha(theme.palette.primary.main, 0.18)}, ${theme.palette.background.default} 55%)`,
      })}
    >
      {!profile ? (
        <Typography variant="h6">ไม่พบโปรไฟล์ที่ปรึกษา</Typography>
      ) : (
        <Paper
          elevation={0}
          sx={{
            width: '100%',
            maxWidth: 420,
            overflow: 'hidden',
            borderRadius: 4,
            border: '1px solid',
            borderColor: 'divider',
            boxShadow: '0 18px 50px rgba(15, 23, 42, 0.12)',
          }}
        >
          <Box sx={{ height: 112, bgcolor: 'primary.main' }} />
          <Box sx={{ px: 3, pb: 3, textAlign: 'center' }}>
            <Avatar
              src={profile.avatar_url || undefined}
              alt={profile.name}
              sx={{
                width: 144,
                height: 144,
                mt: '-72px',
                mx: 'auto',
                fontSize: '3rem',
                fontWeight: 700,
                bgcolor: 'primary.dark',
                border: '4px solid',
                borderColor: 'background.paper',
                boxShadow: '0 8px 24px rgba(15, 23, 42, 0.16)',
              }}
            >
              {profile.name?.charAt(0)?.toUpperCase() || 'C'}
            </Avatar>
            <Typography variant="h5" sx={{ mt: 2, fontWeight: 700 }}>
              {profile.name}
            </Typography>
            <Typography variant="body2" color="text.secondary" sx={{ mt: 0.5 }}>
              {ROLE_LABELS.Consult}
            </Typography>
            {profile.firmName && (
              <Typography variant="body1" sx={{ mt: 0.5, fontWeight: 600 }}>
                {profile.firmName}
              </Typography>
            )}
            <Box
              sx={{
                mt: 3,
                display: 'flex',
                flexDirection: 'column',
                gap: 1.25,
                textAlign: 'left',
              }}
            >
              <ContactRow icon={<EmailIcon fontSize="small" />} value={profile.email} />
              {profile.phone ? (
                <ContactRow icon={<PhoneIcon fontSize="small" />} value={profile.phone} />
              ) : null}
            </Box>
            <Box sx={{ mt: 3, pt: 2.5, borderTop: '1px solid', borderColor: 'divider' }}>
              <CopyInviteCode code={profile.invite_hashcode} />
            </Box>
          </Box>
        </Paper>
      )}
    </Box>
  )
}
