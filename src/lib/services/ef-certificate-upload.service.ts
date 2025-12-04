import { supabase } from '../supabase'
import { storageBuckets } from '../config'

export interface EFCertificateUploadResult {
  success: boolean
  fileUrl?: string
  fileName?: string
  fileSize?: number
  fileType?: string
  filePath?: string
  error?: string
}

export interface EFCertificateValidationResult {
  isValid: boolean
  error?: string
}

export class EFCertificateUploadService {
  private readonly MAX_FILE_SIZE = 5 * 1024 * 1024 // 5MB in bytes
  private readonly ALLOWED_FILE_TYPES = [
    // Images
    'image/jpeg',
    'image/jpg',
    'image/png',
    'image/gif',
    'image/webp',
    // Documents
    'application/pdf',
    'application/vnd.ms-excel',
    'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', // .xlsx
    'application/vnd.ms-word',
    'application/vnd.openxmlformats-officedocument.wordprocessingml.document', // .docx
  ]

  private readonly ALLOWED_EXTENSIONS = [
    // Images
    '.jpg', '.jpeg', '.png', '.gif', '.webp',
    // Documents
    '.pdf',
    '.xls', '.xlsx',
    '.doc', '.docx',
  ]

  /**
   * Validate file type and size
   */
  validateFile(file: File): EFCertificateValidationResult {
    // Check file size
    if (file.size > this.MAX_FILE_SIZE) {
      return {
        isValid: false,
        error: `File size exceeds 5MB limit. Current size: ${(file.size / 1024 / 1024).toFixed(2)}MB`
      }
    }

    // Check file type by MIME type
    if (!this.ALLOWED_FILE_TYPES.includes(file.type)) {
      return {
        isValid: false,
        error: `File type not supported. Allowed types: Images (JPG, PNG, GIF, WebP), PDF, Excel (XLS, XLSX), Word (DOC, DOCX)`
      }
    }

    // Check file extension as backup
    const fileExtension = '.' + file.name.split('.').pop()?.toLowerCase()
    if (!this.ALLOWED_EXTENSIONS.includes(fileExtension)) {
      return {
        isValid: false,
        error: `File extension not supported. Allowed extensions: ${this.ALLOWED_EXTENSIONS.join(', ')}`
      }
    }

    return { isValid: true }
  }

  /**
   * Generate unique file path for EF certificate using UUID
   */
  private generateFilePath(fileName: string): string {
    // Generate UUID v4 for unique filename
    const uuid = crypto.randomUUID()
    const sanitizedFileName = fileName.replace(/[^a-zA-Z0-9.-]/g, '_')
    const timestamp = Date.now()
    return `ef-certificates/${timestamp}_${uuid}_${sanitizedFileName}`
  }

  /**
   * Upload file to Supabase Storage
   */
  async uploadFile(file: File): Promise<EFCertificateUploadResult> {
    try {
      // Validate file first
      const validation = this.validateFile(file)
      if (!validation.isValid) {
        return {
          success: false,
          error: validation.error
        }
      }

      // Generate unique file path
      const filePath = this.generateFilePath(file.name)

      // Upload to Supabase Storage
      const { error } = await supabase.storage
        .from(storageBuckets.efCertificates)
        .upload(filePath, file, {
          cacheControl: '3600',
          upsert: false
        })

      if (error) {
        return {
          success: false,
          error: `Upload failed: ${error.message}`
        }
      }

      // Get public URL
      const { data: urlData } = supabase.storage
        .from(storageBuckets.efCertificates)
        .getPublicUrl(filePath)

      return {
        success: true,
        fileUrl: urlData.publicUrl,
        fileName: file.name,
        fileSize: file.size,
        fileType: file.type,
        filePath: filePath
      }

    } catch (error) {
      return {
        success: false,
        error: `Upload error: ${error instanceof Error ? error.message : 'Unknown error'}`
      }
    }
  }

  /**
   * Get public URL for a file
   */
  getFileUrl(filePath: string): string {
    const { data } = supabase.storage
      .from(storageBuckets.efCertificates)
      .getPublicUrl(filePath)
    return data.publicUrl
  }

  /**
   * Delete file from storage
   */
  async deleteFile(filePath: string): Promise<{ success: boolean; error?: string }> {
    try {
      const { error } = await supabase.storage
        .from(storageBuckets.efCertificates)
        .remove([filePath])

      if (error) {
        return {
          success: false,
          error: `Delete failed: ${error.message}`
        }
      }

      return { success: true }
    } catch (error) {
      return {
        success: false,
        error: `Delete error: ${error instanceof Error ? error.message : 'Unknown error'}`
      }
    }
  }

  /**
   * Format file size for display
   */
  formatFileSize(bytes: number): string {
    if (bytes === 0) return '0 Bytes'
    const k = 1024
    const sizes = ['Bytes', 'KB', 'MB', 'GB']
    const i = Math.floor(Math.log(bytes) / Math.log(k))
    return parseFloat((bytes / Math.pow(k, i)).toFixed(2)) + ' ' + sizes[i]
  }
}

// Create a default instance
export const efCertificateUploadService = new EFCertificateUploadService()

// Export the class for dependency injection
export default EFCertificateUploadService

