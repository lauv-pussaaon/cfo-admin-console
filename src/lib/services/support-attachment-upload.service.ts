import { supabase } from '@/lib/supabase'
import { storageBuckets } from '@/lib/config'

export interface SupportAttachmentUploadResult {
  success: boolean
  bucket?: string
  filePath?: string
  fileName?: string
  fileSize?: number
  fileType?: string
  error?: string
}

export interface SupportAttachmentValidationResult {
  isValid: boolean
  error?: string
}

export class SupportAttachmentUploadService {
  private readonly MAX_FILE_SIZE = 5 * 1024 * 1024 // 5MB
  private readonly ALLOWED_FILE_TYPES = [
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
    'application/vnd.ms-powerpoint',
    'application/vnd.openxmlformats-officedocument.presentationml.presentation',
  ]
  private readonly ALLOWED_EXTENSIONS = [
    '.jpg', '.jpeg', '.png', '.gif', '.webp',
    '.pdf',
    '.xls', '.xlsx',
    '.doc', '.docx',
    '.ppt', '.pptx',
  ]

  validateFile (file: File): SupportAttachmentValidationResult {
    if (file.size > this.MAX_FILE_SIZE) {
      return {
        isValid: false,
        error: `File size exceeds 5MB limit. Current size: ${(file.size / 1024 / 1024).toFixed(2)}MB`,
      }
    }

    if (!this.ALLOWED_FILE_TYPES.includes(file.type)) {
      return {
        isValid: false,
        error: 'File type not supported. Allowed: images, PDF, Excel, Word, PowerPoint.',
      }
    }

    const ext = '.' + file.name.split('.').pop()?.toLowerCase()
    if (!this.ALLOWED_EXTENSIONS.includes(ext)) {
      return {
        isValid: false,
        error: `File extension not supported. Allowed extensions: ${this.ALLOWED_EXTENSIONS.join(', ')}`,
      }
    }

    return { isValid: true }
  }

  private generateFilePath (fileName: string, organizationId: string, messageId: string): string {
    const uuid = crypto.randomUUID()
    const safeName = fileName.replace(/[^a-zA-Z0-9._-]/g, '_')
    return `support-chat/${organizationId}/${messageId}/${uuid}_${safeName}`
  }

  async uploadAttachment (
    file: File,
    organizationId: string,
    messageId: string
  ): Promise<SupportAttachmentUploadResult> {
    const validation = this.validateFile(file)
    if (!validation.isValid) {
      return { success: false, error: validation.error }
    }

    try {
      const bucket = storageBuckets.supportChatAttachments
      const filePath = this.generateFilePath(file.name, organizationId, messageId)

      const { error } = await supabase.storage
        .from(bucket)
        .upload(filePath, file, { cacheControl: '3600', upsert: false })

      if (error) {
        return { success: false, error: `Upload failed: ${error.message}` }
      }

      return {
        success: true,
        bucket,
        filePath,
        fileName: file.name,
        fileSize: file.size,
        fileType: file.type,
      }
    } catch (error) {
      return {
        success: false,
        error: `Upload error: ${error instanceof Error ? error.message : 'Unknown error'}`,
      }
    }
  }

  async deleteAttachment (filePath: string): Promise<{ success: boolean; error?: string }> {
    try {
      const { error } = await supabase.storage
        .from(storageBuckets.supportChatAttachments)
        .remove([filePath])

      if (error) {
        return { success: false, error: `Delete failed: ${error.message}` }
      }
      return { success: true }
    } catch (error) {
      return {
        success: false,
        error: `Delete error: ${error instanceof Error ? error.message : 'Unknown error'}`,
      }
    }
  }

  getPublicUrl (filePath: string): string {
    const { data } = supabase.storage
      .from(storageBuckets.supportChatAttachments)
      .getPublicUrl(filePath)
    return data.publicUrl
  }
}

export const supportAttachmentUploadService = new SupportAttachmentUploadService()

