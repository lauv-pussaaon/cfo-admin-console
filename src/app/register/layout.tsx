'use client'

import { usePathname } from 'next/navigation'
import { Box, Container } from '@mui/material'

export default function RegisterLayout({ children }: { children: React.ReactNode }) {
  const pathname = usePathname()
  const isPolicyPage = pathname?.startsWith('/register/policy')

  return (
    <Box
      sx={{
        minHeight: '100vh',
        background: 'linear-gradient(180deg, #f8fafc 0%, #f1f5f9 100%)',
        py: { xs: 4, md: 8 },
      }}
    >
      <Container maxWidth={isPolicyPage ? 'md' : 'sm'}>{children}</Container>
    </Box>
  )
}
