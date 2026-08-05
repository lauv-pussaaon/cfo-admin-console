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

  if (!ALLOWED_FILE_TYPES.includes(file.type)) {
    return {
      isValid: false,
      error: 'ชนิดไฟล์ไม่รองรับ (อนุญาต: รูปภาพ, PDF, Word, Excel)',
    }
  }

  const ext = '.' + (file.name.split('.').pop()?.toLowerCase() || '')
  if (!ALLOWED_EXTENSIONS.includes(ext)) {
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

export async function uploadVerificationDocument (
  file: File
): Promise<VerificationDocumentUploadResult> {
  const validation = validateVerificationDocument(file)
  if (!validation.isValid) {
    return { success: false, error: validation.error }
  }

  const bucket = storageBuckets.efCertificates
  const filePath = generateFilePath(file.name)
  const client = getServiceSupabase() ?? supabase

  const { error } = await client.storage.from(bucket).upload(filePath, file, {
    cacheControl: '3600',
    upsert: false,
  })

  if (error) {
    return { success: false, error: `อัปโหลดไม่สำเร็จ: ${error.message}` }
  }

  const { data: urlData } = client.storage.from(bucket).getPublicUrl(filePath)

  return {
    success: true,
    fileUrl: urlData.publicUrl,
    fileName: file.name,
    filePath,
  }
}
