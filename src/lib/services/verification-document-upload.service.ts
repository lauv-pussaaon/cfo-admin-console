import { getServiceSupabase } from '@/lib/supabase-service'
import { supabase } from '@/lib/supabase'
import { storageBuckets } from '@/lib/config'
import { MAX_VERIFICATION_DOCUMENT_BYTES } from '@/lib/register/verification-documents'

export {
  MAX_VERIFICATION_DOCUMENTS,
  MAX_VERIFICATION_DOCUMENT_BYTES,
} from '@/lib/register/verification-documents'

const ALLOWED_FILE_TYPES = [
  'image/jpeg',
  'image/jpg',
  'image/png',
  'image/gif',
  'image/webp',
  'application/pdf',
  'application/vnd.ms-excel',
  'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
  'application/vnd.ms-word',
  'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
]

const ALLOWED_EXTENSIONS = [
  '.jpg',
  '.jpeg',
  '.png',
  '.gif',
  '.webp',
  '.pdf',
  '.xls',
  '.xlsx',
  '.doc',
  '.docx',
]

/** Prefer dedicated bucket; fall back to an existing public bucket if it is missing. */
const BUCKET_CANDIDATES = [
  storageBuckets.registrationVerificationDocuments,
  storageBuckets.userAvatars,
] as const

export type VerificationDocumentUploadResult = {
  success: boolean
  fileUrl?: string
  fileName?: string
  filePath?: string
  error?: string
}

export function validateVerificationDocument (file: File): {
  isValid: boolean
  error?: string
} {
  if (file.size > MAX_VERIFICATION_DOCUMENT_BYTES) {
    return {
      isValid: false,
      error: `ไฟล์เกิน 5MB (ขนาดปัจจุบัน ${(file.size / 1024 / 1024).toFixed(2)}MB)`,
    }
  }

  const ext = '.' + (file.name.split('.').pop()?.toLowerCase() || '')
  const typeOk = !file.type || ALLOWED_FILE_TYPES.includes(file.type)
  const extOk = ALLOWED_EXTENSIONS.includes(ext)

  if (!typeOk && !extOk) {
    return {
      isValid: false,
      error: 'ชนิดไฟล์ไม่รองรับ (อนุญาต: รูปภาพ, PDF, Word, Excel)',
    }
  }
  if (!extOk) {
    return {
      isValid: false,
      error: `นามสกุลไฟล์ไม่รองรับ (${ALLOWED_EXTENSIONS.join(', ')})`,
    }
  }

  return { isValid: true }
}

function generateFilePath (fileName: string): string {
  const uuid = crypto.randomUUID()
  const safeName = fileName.replace(/[^a-zA-Z0-9._-]/g, '_')
  return `registration-verification/${Date.now()}_${uuid}_${safeName}`
}

async function ensureBucket (bucket: string): Promise<boolean> {
  const service = getServiceSupabase()
  if (!service) return false

  const { data: buckets } = await service.storage.listBuckets()
  if ((buckets ?? []).some((b) => b.name === bucket)) return true

  const { error } = await service.storage.createBucket(bucket, {
    public: true,
    fileSizeLimit: MAX_VERIFICATION_DOCUMENT_BYTES,
  })
  if (error && !/already exists/i.test(error.message)) {
    console.error('[verification-docs] createBucket failed:', error.message)
    return false
  }
  return true
}

async function uploadToBucket (
  bucket: string,
  filePath: string,
  file: File
): Promise<{ ok: boolean; error?: string }> {
  const client = getServiceSupabase() ?? supabase
  const { error } = await client.storage.from(bucket).upload(filePath, file, {
    cacheControl: '3600',
    upsert: false,
    contentType: file.type || undefined,
  })
  if (!error) return { ok: true }
  return { ok: false, error: error.message }
}

export async function uploadVerificationDocument (
  file: File
): Promise<VerificationDocumentUploadResult> {
  const validation = validateVerificationDocument(file)
  if (!validation.isValid) {
    return { success: false, error: validation.error }
  }

  const filePath = generateFilePath(file.name)
  let lastError = 'อัปโหลดไม่สำเร็จ'

  for (const bucket of BUCKET_CANDIDATES) {
    await ensureBucket(bucket)

    let result = await uploadToBucket(bucket, filePath, file)
    if (!result.ok && /bucket not found/i.test(result.error || '')) {
      const created = await ensureBucket(bucket)
      if (created) {
        result = await uploadToBucket(bucket, filePath, file)
      }
    }

    if (result.ok) {
      const client = getServiceSupabase() ?? supabase
      const { data: urlData } = client.storage.from(bucket).getPublicUrl(filePath)
      return {
        success: true,
        fileUrl: urlData.publicUrl,
        fileName: file.name,
        filePath,
      }
    }

    lastError = result.error || lastError
    if (!/bucket not found/i.test(result.error || '')) {
      break
    }
  }

  return { success: false, error: `อัปโหลดไม่สำเร็จ: ${lastError}` }
}
