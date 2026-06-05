'use client'

import {
  Box,
  Link,
  Table,
  TableBody,
  TableCell,
  TableContainer,
  TableHead,
  TableRow,
  Typography,
} from '@mui/material'
import type { PolicyBlock } from './types'

interface PolicyBlockRendererProps {
  blocks: PolicyBlock[]
}

export default function PolicyBlockRenderer({ blocks }: PolicyBlockRendererProps) {
  return (
    <>
      {blocks.map((block, index) => {
        switch (block.type) {
          case 'paragraph':
            return (
              <Typography
                key={index}
                variant="body1"
                color="text.primary"
                sx={{ mb: 1.5, lineHeight: 1.75, whiteSpace: 'pre-line' }}
              >
                {block.children}
              </Typography>
            )

          case 'bullets':
            return (
              <Box
                key={index}
                component="ul"
                sx={{
                  m: 0,
                  mb: 1.5,
                  pl: 2.5,
                  listStyleType: 'disc',
                  '& li': { mb: 0.5, lineHeight: 1.7 },
                }}
              >
                {block.items.map((item, itemIndex) => (
                  <Box component="li" key={itemIndex}>
                    <Typography variant="body1" component="span">
                      {item}
                    </Typography>
                  </Box>
                ))}
              </Box>
            )

          case 'subsection':
            return (
              <Box key={index} sx={{ mb: 1.5 }}>
                <Typography variant="subtitle2" fontWeight={700} sx={{ mb: 1 }}>
                  {block.title}
                </Typography>
                <PolicyBlockRenderer blocks={block.blocks} />
              </Box>
            )

          case 'table':
            return (
              <TableContainer
                key={index}
                sx={{
                  mb: 2,
                  border: '1px solid',
                  borderColor: 'divider',
                  borderRadius: 1,
                }}
              >
                <Table size="small">
                  <TableHead>
                    <TableRow sx={{ bgcolor: 'grey.50' }}>
                      {block.headers.map((header) => (
                        <TableCell key={header} sx={{ fontWeight: 700 }}>
                          {header}
                        </TableCell>
                      ))}
                    </TableRow>
                  </TableHead>
                  <TableBody>
                    {block.rows.map((row, rowIndex) => (
                      <TableRow key={rowIndex}>
                        {row.map((cell, cellIndex) => (
                          <TableCell key={cellIndex}>{cell}</TableCell>
                        ))}
                      </TableRow>
                    ))}
                  </TableBody>
                </Table>
              </TableContainer>
            )

          case 'contact':
            return (
              <Box
                key={index}
                sx={{
                  mb: 2,
                  p: 2,
                  borderRadius: 1,
                  border: '1px solid',
                  borderColor: 'divider',
                  bgcolor: 'grey.50',
                }}
              >
                {block.lines.map((line, lineIndex) => (
                  <Typography key={lineIndex} variant="body2" sx={{ mb: 0.5, lineHeight: 1.7 }}>
                    {line.label ? `${line.label} ` : null}
                    {line.href ? (
                      <Link href={line.href} target="_blank" rel="noopener noreferrer">
                        {line.value}
                      </Link>
                    ) : (
                      line.value
                    )}
                  </Typography>
                ))}
              </Box>
            )

          case 'signature':
            return (
              <Box
                key={index}
                sx={{
                  mt: 2,
                  p: 2,
                  borderRadius: 1,
                  border: '1px dashed',
                  borderColor: 'divider',
                }}
              >
                {block.title && (
                  <Typography variant="subtitle1" fontWeight={700} gutterBottom>
                    {block.title}
                  </Typography>
                )}
                {block.checkboxLabel && (
                  <Typography variant="body2" sx={{ mb: 2 }}>
                    □ {block.checkboxLabel}
                  </Typography>
                )}
                {block.fields.map((field) => (
                  <Typography key={field} variant="body2" sx={{ mb: 1.5, lineHeight: 2 }}>
                    {field}
                    <Box
                      component="span"
                      sx={{
                        display: 'inline-block',
                        minWidth: 280,
                        borderBottom: '1px dotted',
                        borderColor: 'text.disabled',
                        ml: 0.5,
                      }}
                    />
                  </Typography>
                ))}
              </Box>
            )

          default:
            return null
        }
      })}
    </>
  )
}
