'use client'

import { Suspense } from 'react'
import { useParams, useRouter } from 'next/navigation'
import { Button, Card, CardContent, Typography } from '@mui/material'
import { ArrowBack as ArrowBackIcon } from '@mui/icons-material'
import { getPolicyContent, PolicyDocumentBody } from '@/components/register/policy-content'
import { isPolicySlug } from '@/lib/register/policy-slugs'

function PolicyViewerContent() {
  const router = useRouter()
  const params = useParams<{ slug: string }>()
  const slug = params.slug

  if (!isPolicySlug(slug)) {
    return (
      <Card sx={{ borderRadius: 3, boxShadow: '0 16px 40px rgba(15, 23, 42, 0.10)' }}>
        <CardContent sx={{ p: { xs: 3, md: 4 }, textAlign: 'center' }}>
          <Typography variant="h5" fontWeight={700} gutterBottom>
            ไม่พบเอกสาร
          </Typography>
          <Button onClick={() => router.back()} sx={{ mt: 2, textTransform: 'none' }}>
            กลับ
          </Button>
        </CardContent>
      </Card>
    )
  }

  const content = getPolicyContent(slug)

  return (
    <>
      <Card sx={{ borderRadius: 3, boxShadow: '0 16px 40px rgba(15, 23, 42, 0.10)' }}>
        <CardContent sx={{ p: { xs: 2, md: 4 } }}>
          <PolicyDocumentBody content={content} />
        </CardContent>
      </Card>
    </>
  )
}

export default function PolicyViewerPage() {
  return (
    <Suspense fallback={null}>
      <PolicyViewerContent />
    </Suspense>
  )
}
