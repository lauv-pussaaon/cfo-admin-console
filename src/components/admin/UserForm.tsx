'use client'

import { TextField, FormControl, InputLabel, Select, MenuItem, FormHelperText, Box } from '@mui/material'
import { UseFormReturn } from 'react-hook-form'
import { ROLE_OPTIONS, type UserRole, type RoleOption } from '@/types/roles'
import type { UserFormData } from './UserModal'

interface UserFormProps {
  methods: UseFormReturn<UserFormData>
  mode: 'create' | 'edit'
  isSubmitting: boolean
  availableRoles?: RoleOption[] // Optional filtered role options
  isLocked?: boolean // If true, disable all fields (for locked admin user)
}

export default function UserForm({ methods, mode, isSubmitting, availableRoles, isLocked = false }: UserFormProps) {
  const { formState: { errors }, watch, setValue } = methods
  const formData = watch()
  
  // Use provided availableRoles or default to all roles
  const roleOptions = availableRoles || ROLE_OPTIONS

  return (
    <Box sx={{ display: 'flex', flexDirection: 'column', gap: 3 }}>
      <TextField
        fullWidth
        label="ชื่อผู้ใช้ (Username) *"
        value={formData.username || ''}
        onChange={(e) => setValue('username', e.target.value, { shouldValidate: true })}
        error={!!errors.username}
        helperText={errors.username?.message || 'ชื่อผู้ใช้สำหรับเข้าสู่ระบบ (ตัวอักษร ตัวเลข หรือ _ เท่านั้น)'}
        required
        disabled={isSubmitting || mode === 'edit' || isLocked}
        InputProps={{ readOnly: mode === 'edit' || isLocked }}
      />

      <TextField
        fullWidth
        label="อีเมล *"
        type="email"
        value={formData.email || ''}
        onChange={(e) => setValue('email', e.target.value, { shouldValidate: true })}
        error={!!errors.email}
        helperText={errors.email?.message || 'กรุณากรอกอีเมลที่ถูกต้อง'}
        required
        disabled={isSubmitting || mode === 'edit' || isLocked}
        InputProps={{ readOnly: mode === 'edit' || isLocked }}
      />

      <TextField
        fullWidth
        label={mode === 'edit' ? 'รหัสผ่าน (เว้นว่างไว้หากไม่ต้องการเปลี่ยน)' : 'รหัสผ่าน *'}
        type="password"
        value={formData.password || ''}
        onChange={(e) => setValue('password', e.target.value, { shouldValidate: true })}
        error={!!errors.password}
        helperText={errors.password?.message || (mode === 'edit' ? 'เว้นว่างไว้หากไม่ต้องการเปลี่ยนรหัสผ่าน' : 'รหัสผ่านต้องมีอย่างน้อย 6 ตัวอักษร')}
        required={mode === 'create'}
        disabled={isSubmitting || isLocked}
      />

      <TextField
        fullWidth
        label="ชื่อ-นามสกุล *"
        value={formData.name || ''}
        onChange={(e) => setValue('name', e.target.value, { shouldValidate: true })}
        error={!!errors.name}
        helperText={errors.name?.message || 'กรุณากรอกชื่อ-นามสกุล'}
        required
        disabled={isSubmitting || isLocked}
      />

      <FormControl fullWidth required error={!!errors.role}>
        <InputLabel>บทบาท *</InputLabel>
        <Select
          value={formData.role || ''}
          label="บทบาท *"
          onChange={(e) => {
            setValue('role', e.target.value as UserRole, { shouldValidate: true })
          }}
          disabled={isSubmitting || isLocked}
        >
          {roleOptions.map((option) => (
            <MenuItem key={option.value} value={option.value}>
              {option.label} ({option.value})
            </MenuItem>
          ))}
        </Select>
        {errors.role && <FormHelperText>{errors.role.message}</FormHelperText>}
      </FormControl>
    </Box>
  )
}

