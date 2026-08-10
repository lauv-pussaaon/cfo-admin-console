'use client'

import { usePathname } from 'next/navigation'
import { Box, Container } from '@mui/material'

export default function RegisterLayout({ children }: { children: React.ReactNode }) {
  const pathname = usePathname()
  const isPolicyPage = pathname?.startsWith('/register/policy')
  const isVerifyPage = pathname?.includes('/register/consult/verify/')
  const isTrialPage = pathname === '/register/trial'

  const wideContainer = isVerifyPage || isTrialPage

  return (
    <Box
      sx={{
        minHeight: '100vh',
        background: 'linear-gradient(180deg, #f8fafc 0%, #f1f5f9 100%)',
        py: { xs: 4, md: 8 },
      }}
    >
      <Container
        maxWidth={wideContainer ? false : isPolicyPage ? 'md' : 'sm'}
        sx={wideContainer ? { maxWidth: isTrialPage ? 720 : 800 } : undefined}
      >
        {children}
      </Container>
    </Box>
  )
}
