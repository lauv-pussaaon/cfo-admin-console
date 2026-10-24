import { Box, Typography } from '@mui/material'
import RichTextView from './RichTextView'
import type { BannerKind } from '@/lib/platform-updates/banner'
import type { RichTextDoc } from '@/lib/platform-updates/document'

type UpdatePreviewProps = {
  title: string
  dateLabel: string
  bannerKind: BannerKind | null
  bannerUrl: string | null
  body: RichTextDoc
}

export default function UpdatePreview ({
  title,
  dateLabel,
  bannerKind,
  bannerUrl,
  body,
}: UpdatePreviewProps) {
  return (
    <Box sx={{ border: '1px solid', borderColor: 'divider', borderRadius: 2, p: 2, bgcolor: 'background.paper' }}>
      <Typography variant="caption" color="text.secondary">ตัวอย่าง</Typography>
      <Typography variant="h6" sx={{ fontWeight: 600, mt: 1 }}>มีอะไรใหม่</Typography>
      {dateLabel && (
        <Typography variant="caption" color="text.secondary" sx={{ display: 'block', mt: 1 }}>{dateLabel}</Typography>
      )}
      <Typography variant="subtitle1" sx={{ fontWeight: 600, mt: 0.5 }}>{title || 'ชื่อประกาศ'}</Typography>
      <Banner kind={bannerKind} url={bannerUrl} title={title} />
      <Box sx={{ mt: 1.5 }}>
        <RichTextView doc={body} />
      </Box>
    </Box>
  )
}

function Banner ({ kind, url, title }: { kind: BannerKind | null; url: string | null; title: string }) {
  if (!url || !kind) {
    return <Box sx={{ mt: 1.5, aspectRatio: '16 / 9', border: '1px dashed', borderColor: 'divider', borderRadius: 1 }} />
  }
  if (kind === 'video') {
    return (
      <Box
        component="video"
        src={url}
        controls
        playsInline
        preload="metadata"
        sx={{ mt: 1.5, width: '100%', aspectRatio: '16 / 9', bgcolor: 'action.hover', borderRadius: 1 }}
      />
    )
  }
  return (
    <Box
      component="img"
      src={url}
      alt={title || 'แบนเนอร์'}
      sx={{ mt: 1.5, width: '100%', aspectRatio: '16 / 9', objectFit: 'cover', borderRadius: 1, display: 'block' }}
    />
  )
}
