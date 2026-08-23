'use client'

import { type ReactNode } from 'react'
import { Box, Button, Chip, Typography } from '@mui/material'
import {
  DeleteOutline as DeleteOutlineIcon,
  EditOutlined as EditOutlinedIcon,
} from '@mui/icons-material'
import SlideInPanel from '@/components/admin/SlideInPanel'
import type { FuelResourceWithCategory } from '@/types/emission-resources'
import { serializeFuelResourceMeta } from '@/types/emission-resources'

const SCOPE_COLORS: Record<number, string> = {
  1: '#ef4444',
  2: '#f59e0b',
  3: '#3b82f6',
  4: '#8b5cf6',
}

function InfoRow ({ label, value }: { label: string; value: ReactNode }) {
  return (
    <Box sx={{ display: 'flex', flexDirection: 'column', gap: 0.25 }}>
      <Typography variant="caption" color="text.secondary">
        {label}
      </Typography>
      <Typography variant="body2" component="div" sx={{ wordBreak: 'break-word' }}>
        {value ?? '—'}
      </Typography>
    </Box>
  )
}

function textOrDash (value: string | number | null | undefined): ReactNode {
  if (value == null || value === '') return '—'
  return value
}

interface Props {
  open: boolean
  resource: FuelResourceWithCategory | null
  onClose: () => void
  onEdit: (resource: FuelResourceWithCategory) => void
  onDelete: (resource: FuelResourceWithCategory) => void
}

export default function FuelResourceDetailPanel ({
  open,
  resource,
  onClose,
  onEdit,
  onDelete,
}: Props) {
  const cat = resource?.scope_category
  const metaSerialized = serializeFuelResourceMeta(resource?.meta)

  return (
    <SlideInPanel
      open={open}
      onClose={onClose}
      title={resource?.resource ?? 'Resource'}
      subtitle={
        resource ? (
          <Box sx={{ display: 'flex', alignItems: 'center', gap: 0.75, flexWrap: 'wrap' }}>
            {cat && (
              <Chip
                label={`S${cat.scope}`}
                size="small"
                sx={{
                  bgcolor: SCOPE_COLORS[cat.scope] ?? '#64748b',
                  color: 'white',
                  fontWeight: 700,
                  fontSize: '0.7rem',
                  height: 22,
                }}
              />
            )}
            <Typography variant="body2" color="text.secondary">
              {cat?.name_en ?? '—'}
            </Typography>
          </Box>
        ) : undefined
      }
      footer={
        resource ? (
          <Box sx={{ display: 'flex', gap: 1 }}>
            <Button
              variant="outlined"
              startIcon={<EditOutlinedIcon />}
              onClick={() => onEdit(resource)}
              sx={{ flex: 1, textTransform: 'none' }}
            >
              Edit
            </Button>
            <Button
              variant="contained"
              color="error"
              startIcon={<DeleteOutlineIcon />}
              onClick={() => onDelete(resource)}
              sx={{ flex: 1, textTransform: 'none' }}
            >
              Delete
            </Button>
          </Box>
        ) : null
      }
    >
      {resource && (
        <Box sx={{ display: 'flex', flexDirection: 'column', gap: 1.5 }}>
          <InfoRow label="Category (EN)" value={textOrDash(cat?.name_en)} />
          <InfoRow label="Category (TH)" value={textOrDash(cat?.name_th)} />
          <InfoRow label="Sub-category" value={textOrDash(resource.sub_category)} />
          <InfoRow
            label="Unit"
            value={
              resource.unit ? (
                <Chip label={resource.unit} size="small" variant="outlined" sx={{ fontSize: '0.7rem', height: 22 }} />
              ) : '—'
            }
          />
          <InfoRow
            label="EF value"
            value={
              resource.ef_value != null ? (
                <Typography variant="body2" fontFamily="monospace">
                  {Number(resource.ef_value).toPrecision(6)}
                </Typography>
              ) : '—'
            }
          />
          <InfoRow label="Value 1 label" value={textOrDash(resource.value1_label)} />
          <InfoRow label="Value 1 unit" value={textOrDash(resource.value1_unit)} />
          <InfoRow label="Value 2 label" value={textOrDash(resource.value2_label)} />
          <InfoRow label="Value 2 unit" value={textOrDash(resource.value2_unit)} />
          <InfoRow label="Ref." value={textOrDash(resource.ref_info)} />
          <InfoRow label="Description" value={textOrDash(resource.description)} />
          <InfoRow
            label="Meta"
            value={
              metaSerialized === '{}' ? (
                '—'
              ) : (
                <Typography variant="body2" fontFamily="monospace" sx={{ wordBreak: 'break-word' }}>
                  {metaSerialized}
                </Typography>
              )
            }
          />
          <InfoRow label="Version" value={textOrDash(resource.version)} />
          <InfoRow label="Ref source" value={textOrDash(resource.ref_source)} />
          <InfoRow label="Ref code" value={textOrDash(resource.ref_code)} />
        </Box>
      )}
    </SlideInPanel>
  )
}
