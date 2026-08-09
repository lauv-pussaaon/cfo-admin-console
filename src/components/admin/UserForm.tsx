'use client'

import { useEffect, useState } from 'react'
import {
  TextField,
  FormControl,
  InputLabel,
  Select,
  MenuItem,
  FormHelperText,
  Box,
  Typography,
  Checkbox,
  ListItemText,
  OutlinedInput,
} from '@mui/material'
import { UseFormReturn } from 'react-hook-form'
import { ROLE_OPTIONS, type UserRole, type RoleOption } from '@/types/roles'
import type { UserFormData } from './UserModal'

interface UserFormProps {
  methods: UseFormReturn<UserFormData>
  mode: 'create' | 'edit'
  isSubmitting: boolean
  availableRoles?: RoleOption[]
  isLocked?: boolean
}

type IndustryOption = {
  industry_code: string
  name_th: string
}

function isProfileRole (role: string): boolean {
  return role === 'Consult' || role === 'Audit'
}

export default function UserForm({ methods, mode, isSubmitting, availableRoles, isLocked = false }: UserFormProps) {
  const { formState: { errors }, watch, setValue } = methods
  const formData = watch()
  const roleOptions = availableRoles || ROLE_OPTIONS
  const showProfile = isProfileRole(formData.role || '')
  const [industryOptions, setIndustryOptions] = useState<IndustryOption[]>([])
  const [industriesLoading, setIndustriesLoading] = useState(false)

  useEffect(() => {
    if (!showProfile) return

    let cancelled = false
    ;(async () => {
      try {
        setIndustriesLoading(true)
        const response = await fetch('/api/public/industries')
        const result = await response.json()
        if (!response.ok) {
          throw new Error(result.error || 'โหลดอุตสาหกรรมไม่สำเร็จ')
        }
        if (!cancelled) {
          setIndustryOptions(result.industries ?? [])
        }
      } catch {
        if (!cancelled) setIndustryOptions([])
      } finally {
        if (!cancelled) setIndustriesLoading(false)
      }
    })()

    return () => {
      cancelled = true
    }
  }, [showProfile])

  return (
    <Box sx={{ display: 'flex', flexDirection: 'column', gap: 4 }}>
      <Box sx={{ display: 'flex', flexDirection: 'column', gap: 3 }}>
        <FormControl fullWidth required error={!!errors.role}>
          <InputLabel>บทบาทในระบบ *</InputLabel>
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

        <Typography variant="subtitle1" fontWeight={600}>
          ข้อมูลส่วนตัว
        </Typography>

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

        {showProfile && (
          <TextField
            fullWidth
            label="เบอร์โทร *"
            value={formData.phone || ''}
            onChange={(e) => setValue('phone', e.target.value, { shouldValidate: true })}
            error={!!errors.phone}
            helperText={errors.phone?.message}
            required
            disabled={isSubmitting || isLocked}
          />
        )}
      </Box>

      {showProfile && (
        <Box sx={{ display: 'flex', flexDirection: 'column', gap: 3 }}>
          <Typography variant="subtitle1" fontWeight={600}>
            ข้อมูลวิชาชีพ
          </Typography>

          <TextField
            fullWidth
            label="ชื่อองค์กร *"
            value={formData.organizationName || ''}
            onChange={(e) =>
              setValue('organizationName', e.target.value, { shouldValidate: true })
            }
            error={!!errors.organizationName}
            helperText={errors.organizationName?.message}
            required
            disabled={isSubmitting || isLocked}
          />

          <TextField
            fullWidth
            label="ปีประสบการณ์ *"
            type="number"
            value={formData.yearExperiences ?? 0}
            onChange={(e) => {
              const value = e.target.value === '' ? NaN : Number(e.target.value)
              setValue('yearExperiences', value, { shouldValidate: true })
            }}
            error={!!errors.yearExperiences}
            helperText={errors.yearExperiences?.message}
            required
            disabled={isSubmitting || isLocked}
            inputProps={{ min: 0, max: 80, step: 1 }}
          />

          <FormControl fullWidth required error={!!errors.industries}>
            <InputLabel id="admin-user-industries-label">อุตสาหกรรม *</InputLabel>
            <Select
              labelId="admin-user-industries-label"
              multiple
              value={formData.industries || []}
              onChange={(event) => {
                const value = event.target.value
                setValue(
                  'industries',
                  typeof value === 'string' ? value.split(',') : value,
                  { shouldValidate: true }
                )
              }}
              input={<OutlinedInput label="อุตสาหกรรม *" />}
              renderValue={(selected) =>
                selected
                  .map(
                    (code) =>
                      industryOptions.find((o) => o.industry_code === code)?.name_th ||
                      code
                  )
                  .join(', ')
              }
              disabled={isSubmitting || isLocked || industriesLoading}
            >
              {industryOptions.map((option) => (
                <MenuItem key={option.industry_code} value={option.industry_code}>
                  <Checkbox
                    checked={(formData.industries || []).includes(option.industry_code)}
                  />
                  <ListItemText primary={option.name_th} />
                </MenuItem>
              ))}
            </Select>
            <FormHelperText>
              {errors.industries?.message ||
                (industriesLoading
                  ? 'กำลังโหลดรายการอุตสาหกรรม...'
                  : 'เลือกได้อย่างน้อย 1 รายการ')}
            </FormHelperText>
          </FormControl>
        </Box>
      )}
    </Box>
  )
}
