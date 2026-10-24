import { Box, Link, Typography } from '@mui/material'
import type { Inline, RichTextDoc } from '@/lib/platform-updates/document'

export default function RichTextView ({ doc }: { doc: RichTextDoc }) {
  return (
    <Box sx={{ display: 'flex', flexDirection: 'column', gap: 1 }}>
      {doc.content.map((block, index) => {
        if (block.type === 'heading') {
          return (
            <Typography key={index} variant={block.level === 2 ? 'subtitle1' : 'body1'} sx={{ fontWeight: 600 }}>
              <InlineRuns inlines={block.inlines} />
            </Typography>
          )
        }
        if (block.type === 'paragraph') {
          return (
            <Typography key={index} variant="body2" sx={{ whiteSpace: 'pre-wrap' }}>
              <InlineRuns inlines={block.inlines} />
            </Typography>
          )
        }
        const ListTag = block.type === 'orderedList' ? 'ol' : 'ul'
        return (
          <Box key={index} component={ListTag} sx={{ m: 0, pl: 3 }}>
            {block.items.map((item, itemIndex) => (
              <Typography key={itemIndex} component="li" variant="body2" sx={{ whiteSpace: 'pre-wrap' }}>
                <InlineRuns inlines={item} />
              </Typography>
            ))}
          </Box>
        )
      })}
    </Box>
  )
}

function InlineRuns ({ inlines }: { inlines: Inline[] }) {
  return (
    <>
      {inlines.map((inline, index) => {
        if (inline.type === 'link') {
          return (
            <Link key={index} href={inline.href} target="_blank" rel="noopener noreferrer">
              {inline.text}
            </Link>
          )
        }
        return (
          <Box
            key={index}
            component="span"
            sx={{
              fontWeight: inline.bold ? 700 : undefined,
              fontStyle: inline.italic ? 'italic' : undefined,
            }}
          >
            {inline.text}
          </Box>
        )
      })}
    </>
  )
}
