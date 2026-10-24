'use client'

import { useEffect, useRef, useState } from 'react'
import { useParams, useRouter } from 'next/navigation'
import {
  Alert,
  Box,
  Button,
  CircularProgress,
  FormControlLabel,
  Radio,
  RadioGroup,
  Stack,
  TextField,
  ToggleButton,
  ToggleButtonGroup,
  Typography,
} from '@mui/material'
import { useAuth } from '@/contexts/AuthContext'
import { authenticatedAdminFetch } from '@/lib/api/admin-fetch'
import { isAdmin } from '@/lib/permissions'
import { adminBackButtonSx, adminPageShellSx, adminPageTitleSx, adminPrimaryButtonSx } from '@/lib/admin-ui-styles'
import { EMPTY_DOC, type RichTextDoc } from '@/lib/platform-updates/document'
import type { BannerKind } from '@/lib/platform-updates/banner'
import type { PlatformUpdateRecord, PlatformUpdateStatus } from '@/lib/platform-updates/types'
import RichTextEditor, { type RichTextEditorHandle } from '@/components/admin/platform-updates/RichTextEditor'
import UpdatePreview from '@/components/admin/platform-updates/UpdatePreview'

type Lang = 'th' | 'en'

export default function PlatformUpdateEditorPage () {
  const params = useParams<{ id: string }>()
  const id = params.id
  const { user, isLoading: authLoading } = useAuth()
  const router = useRouter()
  const [loading, setLoading] = useState(true)
  const [saving, setSaving] = useState(false)
  const [uploading, setUploading] = useState(false)
  const [error, setError] = useState<string | null>(null)
  const [confirmDelete, setConfirmDelete] = useState(false)
  const [lang, setLang] = useState<Lang>('th')
  const [status, setStatus] = useState<PlatformUpdateStatus>('inactive')
  const [publishedOn, setPublishedOn] = useState('')
  const [titleTh, setTitleTh] = useState('')
  const [titleEn, setTitleEn] = useState('')
  const [bodyTh, setBodyTh] = useState<RichTextDoc>(EMPTY_DOC)
  const [bodyEn, setBodyEn] = useState<RichTextDoc>(EMPTY_DOC)
  const [bannerKind, setBannerKind] = useState<BannerKind>('image')
  const [storedKind, setStoredKind] = useState<BannerKind | null>(null)
  const [bannerUrl, setBannerUrl] = useState<string | null>(null)
  const editorRef = useRef<RichTextEditorHandle>(null)

  useEffect(() => {
    if (!authLoading && user && !isAdmin(user)) router.replace('/admin-console')
  }, [authLoading, router, user])

  useEffect(() => {
    if (authLoading || !user || !isAdmin(user) || !id) return
    let cancelled = false
    setLoading(true)
    authenticatedAdminFetch(`/api/admin-console/platform-updates/${id}`)
      .then(async (response) => {
        const body = await response.json()
        if (!response.ok) throw new Error(body.error ?? 'โหลดประกาศไม่สำเร็จ')
        if (cancelled) return
        applyUpdate(body.update as PlatformUpdateRecord)
      })
      .catch((err: unknown) => {
        if (!cancelled) setError(err instanceof Error ? err.message : 'โหลดประกาศไม่สำเร็จ')
      })
      .finally(() => {
        if (!cancelled) setLoading(false)
      })
    return () => { cancelled = true }
  }, [authLoading, id, user])

  const applyUpdate = (update: PlatformUpdateRecord) => {
    setStatus(update.status)
    setPublishedOn(update.publishedOn ?? '')
    setTitleTh(update.titleTh)
    setTitleEn(update.titleEn)
    setBodyTh(update.bodyTh)
    setBodyEn(update.bodyEn)
    setStoredKind(update.bannerKind)
    setBannerKind(update.bannerKind ?? 'image')
    setBannerUrl(update.bannerUrl)
  }

  const bodies = () => {
    const flushed = editorRef.current?.flush()
    return {
      bodyTh: lang === 'th' && flushed ? flushed : bodyTh,
      bodyEn: lang === 'en' && flushed ? flushed : bodyEn,
    }
  }

  const save = async () => {
    setSaving(true)
    setError(null)
    const nextBodies = bodies()
    try {
      const response = await authenticatedAdminFetch(`/api/admin-console/platform-updates/${id}`, {
        method: 'PATCH',
        headers: { 'content-type': 'application/json' },
        body: JSON.stringify({
          status,
          publishedOn: publishedOn || null,
          titleTh,
          titleEn,
          ...nextBodies,
        }),
      })
      const body = await response.json()
      if (!response.ok) throw new Error(body.error ?? 'บันทึกไม่สำเร็จ')
      applyUpdate(body.update as PlatformUpdateRecord)
    } catch (err: unknown) {
      setError(err instanceof Error ? err.message : 'บันทึกไม่สำเร็จ')
    } finally {
      setSaving(false)
    }
  }

  const upload = async (file: File) => {
    setUploading(true)
    setError(null)
    try {
      const form = new FormData()
      form.set('file', file)
      const response = await authenticatedAdminFetch(`/api/admin-console/platform-updates/${id}/banner`, {
        method: 'POST',
        body: form,
      })
      const body = await response.json()
      if (!response.ok) throw new Error(body.error ?? 'อัปโหลดแบนเนอร์ไม่สำเร็จ')
      applyUpdate(body.update as PlatformUpdateRecord)
    } catch (err: unknown) {
      setError(err instanceof Error ? err.message : 'อัปโหลดแบนเนอร์ไม่สำเร็จ')
    } finally {
      setUploading(false)
    }
  }

  const remove = async () => {
    setSaving(true)
    setError(null)
    try {
      const response = await authenticatedAdminFetch(`/api/admin-console/platform-updates/${id}`, { method: 'DELETE' })
      const body = await response.json().catch(() => ({}))
      if (!response.ok) throw new Error(body.error ?? 'ลบประกาศไม่สำเร็จ')
      router.push('/admin-console/platform-updates')
    } catch (err: unknown) {
      setError(err instanceof Error ? err.message : 'ลบประกาศไม่สำเร็จ')
      setSaving(false)
    }
  }

  const title = lang === 'th' ? titleTh : titleEn
  const body = lang === 'th' ? bodyTh : bodyEn
  const accept = bannerKind === 'video' ? 'video/mp4,video/webm' : 'image/jpeg,image/png,image/webp'
  const dateLabel = formatPreviewDate(publishedOn, lang)

  if (authLoading || loading) {
    return <Box sx={{ py: 6 }}><CircularProgress size={28} /></Box>
  }

  return (
    <Box sx={adminPageShellSx}>
      <Button sx={adminBackButtonSx} onClick={() => router.push('/admin-console/platform-updates')}>กลับไปรายการ</Button>
      <Typography variant="h4" sx={{ ...adminPageTitleSx, mb: 3 }}>แก้ไขประกาศ</Typography>
      {error && <Alert severity="error" sx={{ mb: 2 }}>{error}</Alert>}
      <Box sx={{ display: 'grid', gridTemplateColumns: { xs: '1fr', lg: 'minmax(0, 1.2fr) minmax(280px, 0.8fr)' }, gap: 3 }}>
        <Stack spacing={2}>
          <Typography variant="subtitle2">สถานะ</Typography>
          <RadioGroup row value={status} onChange={(event) => setStatus(event.target.value as PlatformUpdateStatus)}>
            <FormControlLabel value="inactive" control={<Radio />} label="ปิด" />
            <FormControlLabel value="active" control={<Radio />} label="ใช้งาน" />
          </RadioGroup>
          <Typography variant="body2" color="text.secondary">ใส่ชื่อไทย ชื่ออังกฤษ แบนเนอร์ วันที่ และคำอธิบายทั้งสองภาษา ก่อนเปิดใช้</Typography>
          <TextField
            label="วันที่เผยแพร่"
            type="date"
            value={publishedOn}
            onChange={(event) => setPublishedOn(event.target.value)}
            InputLabelProps={{ shrink: true }}
            sx={{ maxWidth: 280 }}
          />
          <Typography variant="subtitle2">ภาษา</Typography>
          <ToggleButtonGroup
            exclusive
            value={lang}
            onChange={(_event, next: Lang | null) => {
              if (!next || next === lang) return
              const flushed = editorRef.current?.flush()
              if (flushed) {
                if (lang === 'th') setBodyTh(flushed)
                else setBodyEn(flushed)
              }
              setLang(next)
            }}
            size="small"
          >
            <ToggleButton value="th">ไทย</ToggleButton>
            <ToggleButton value="en">English</ToggleButton>
          </ToggleButtonGroup>
          <TextField
            label="ชื่อ"
            value={title}
            onChange={(event) => {
              if (lang === 'th') setTitleTh(event.target.value)
              else setTitleEn(event.target.value)
            }}
            inputProps={{ maxLength: 200 }}
          />
          <Typography variant="subtitle2">แบนเนอร์</Typography>
          <RadioGroup row value={bannerKind} onChange={(event) => setBannerKind(event.target.value as BannerKind)}>
            <FormControlLabel value="image" control={<Radio />} label="รูป" />
            <FormControlLabel value="video" control={<Radio />} label="วิดีโอ" />
          </RadioGroup>
          <Box
            component="label"
            onDragOver={(event) => event.preventDefault()}
            onDrop={(event) => {
              event.preventDefault()
              const file = event.dataTransfer.files?.[0]
              if (file) void upload(file)
            }}
            sx={{
              display: 'grid',
              placeItems: 'center',
              minHeight: 88,
              border: '1px dashed',
              borderColor: 'divider',
              borderRadius: 2,
              cursor: 'pointer',
              color: 'text.secondary',
            }}
          >
            {uploading ? 'กำลังอัปโหลด' : bannerKind === 'video' ? 'วางวิดีโอ หรือเลือกไฟล์' : 'วางรูป หรือเลือกไฟล์'}
            <input
              hidden
              type="file"
              accept={accept}
              onChange={(event) => {
                const file = event.target.files?.[0]
                event.target.value = ''
                if (file) void upload(file)
              }}
            />
          </Box>
          <Typography variant="subtitle2">คำอธิบาย</Typography>
          <RichTextEditor
            ref={editorRef}
            key={lang}
            seed={lang}
            value={body}
            onChange={(doc) => {
              if (lang === 'th') setBodyTh(doc)
              else setBodyEn(doc)
            }}
          />
          <Stack direction="row" spacing={2} sx={{ alignItems: 'center', pt: 1 }}>
            {confirmDelete ? (
              <>
                <Typography>ลบประกาศนี้?</Typography>
                <Button color="error" disabled={saving} onClick={() => { void remove() }}>ลบ</Button>
                <Button disabled={saving} onClick={() => setConfirmDelete(false)}>ยกเลิก</Button>
              </>
            ) : (
              <>
                <Button variant="contained" sx={adminPrimaryButtonSx} disabled={saving} onClick={() => { void save() }}>
                  {saving ? 'กำลังบันทึก' : 'บันทึก'}
                </Button>
                <Button color="inherit" disabled={saving} onClick={() => setConfirmDelete(true)}>ลบประกาศ</Button>
              </>
            )}
          </Stack>
        </Stack>
        <UpdatePreview
          title={title}
          dateLabel={dateLabel}
          bannerKind={storedKind}
          bannerUrl={bannerUrl}
          body={body}
        />
      </Box>
    </Box>
  )
}

function formatPreviewDate (isoDate: string, lang: Lang): string {
  const match = /^(\d{4})-(\d{2})-(\d{2})$/.exec(isoDate)
  if (!match) return ''
  const date = new Date(Date.UTC(Number(match[1]), Number(match[2]) - 1, Number(match[3]), 12))
  return new Intl.DateTimeFormat(lang === 'th' ? 'th-TH' : 'en-GB', {
    timeZone: 'Asia/Bangkok',
    day: 'numeric',
    month: 'long',
    year: 'numeric',
  }).format(date)
}
