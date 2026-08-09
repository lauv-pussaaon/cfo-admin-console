import { getServiceSupabase } from '@/lib/supabase-service'
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

const BUCKET = storageBuckets.verification

export type VerificationUploadRole = 'Consult' | 'Audit'

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

function roleFolder (role: VerificationUploadRole): 'consult' | 'audit' {
  return role === 'Audit' ? 'audit' : 'consult'
}

function generateFilePath (
  role: VerificationUploadRole,
  userId: string,
  fileName: string
): string {
  const uuid = crypto.randomUUID()
  const safeName = fileName.replace(/[^a-zA-Z0-9._-]/g, '_')
  return `${roleFolder(role)}/${userId}/${Date.now()}_${uuid}_${safeName}`
}

async function ensureBucket (): Promise<{ ok: boolean; error?: string }> {
  const service = getServiceSupabase()
  if (!service) {
    return {
      ok: false,
      error:
        'ตั้งค่า SUPABASE_SERVICE_ROLE_KEY ใน .env.local เพื่ออัปโหลดเอกสาร (ต้องใช้ service role เพื่อข้าม Storage RLS)',
    }
  }

  const { data: buckets } = await service.storage.listBuckets()
  if ((buckets ?? []).some((b) => b.name === BUCKET)) return { ok: true }

  const { error } = await service.storage.createBucket(BUCKET, {
    public: true,
    fileSizeLimit: MAX_VERIFICATION_DOCUMENT_BYTES,
  })
  if (error && !/already exists/i.test(error.message)) {
    console.error('[verification-docs] createBucket failed:', error.message)
    return { ok: false, error: `สร้าง bucket ไม่สำเร็จ: ${error.message}` }
  }
  return { ok: true }
}

export async function uploadVerificationDocument (
  file: File,
  params: { role: VerificationUploadRole; userId: string }
): Promise<VerificationDocumentUploadResult> {
  const validation = validateVerificationDocument(file)
  if (!validation.isValid) {
    return { success: false, error: validation.error }
  }

  if (!params.userId.trim()) {
    return { success: false, error: 'ไม่พบรหัสผู้ใช้สำหรับอัปโหลด' }
  }
  if (params.role !== 'Consult' && params.role !== 'Audit') {
    return { success: false, error: 'บทบาทไม่ถูกต้องสำหรับอัปโหลดเอกสารยืนยัน' }
  }

  const service = getServiceSupabase()
  if (!service) {
    return {
      success: false,
      error:
        'ตั้งค่า SUPABASE_SERVICE_ROLE_KEY ใน .env.local เพื่ออัปโหลดเอกสาร (ต้องใช้ service role เพื่อข้าม Storage RLS)',
    }
  }

  const bucketReady = await ensureBucket()
  if (!bucketReady.ok) {
    return { success: false, error: bucketReady.error }
  }

  const filePath = generateFilePath(params.role, params.userId.trim(), file.name)
  const { error } = await service.storage.from(BUCKET).upload(filePath, file, {
    cacheControl: '3600',
    upsert: false,
    contentType: file.type || undefined,
  })

  if (error) {
    return { success: false, error: `อัปโหลดไม่สำเร็จ: ${error.message}` }
  }

  const { data: urlData } = service.storage.from(BUCKET).getPublicUrl(filePath)
  return {
    success: true,
    fileUrl: urlData.publicUrl,
    fileName: file.name,
    filePath,
  }
}
