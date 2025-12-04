'use client'

import { FormControl, InputLabel, Select, MenuItem, FormHelperText, CircularProgress } from '@mui/material'
import type { Organization } from '@/types/database'

interface OrganizationSelectorProps {
  value: string | undefined
  onChange: (value: string) => void
  organizations: Organization[]
  loading: boolean
  error: string | undefined
  disabled: boolean
}

export default function OrganizationSelector({
  value,
  onChange,
  organizations,
  loading,
  error,
  disabled,
}: OrganizationSelectorProps) {
  return (
    <FormControl fullWidth required error={!!error}>
      <InputLabel>องค์กร *</InputLabel>
      <Select
        value={value || ''}
        label="องค์กร *"
        onChange={(e) => onChange(e.target.value)}
        disabled={disabled || loading}
      >
        {loading ? (
          <MenuItem disabled>
            <CircularProgress size={16} sx={{ mr: 1 }} />
            กำลังโหลด...
          </MenuItem>
        ) : organizations.length === 0 ? (
          <MenuItem disabled>ไม่มีองค์กร</MenuItem>
        ) : (
          organizations.map((org) => (
            <MenuItem key={org.id} value={org.id}>
              {org.name}
            </MenuItem>
          ))
        )}
      </Select>
      {error && <FormHelperText>{error}</FormHelperText>}
      {!error && <FormHelperText>กรุณาเลือกองค์กรที่จะกำหนดให้ผู้ใช้</FormHelperText>}
    </FormControl>
  )
}

