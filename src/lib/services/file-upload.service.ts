import { supabase } from '../supabase'
import { storageBuckets } from '../config'

export interface FileUploadResult {
  success: boolean
  filePath?: string
  fileName?: string
  fileSize?: number
  fileType?: string
  error?: string
}

export interface FileValidationResult {
  isValid: boolean
  error?: string
}

export class FileUploadService {
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
    'application/vnd.ms-powerpoint',
    'application/vnd.openxmlformats-officedocument.presentationml.presentation' // .pptx
  ]

  private readonly ALLOWED_EXTENSIONS = [
    // Images
    '.jpg', '.jpeg', '.png', '.gif', '.webp',
    // Documents
    '.pdf',
    '.xls', '.xlsx',
    '.doc', '.docx',
    '.ppt', '.pptx'
  ]

  /**
   * Validate file type and size
   */
  validateFile (file: File): FileValidationResult {
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
        error: `File type not supported. Allowed types: Images (JPG, PNG, GIF, WebP), PDF, Excel (XLS, XLSX), Word (DOC, DOCX), PowerPoint (PPT, PPTX)`
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
   * Generate unique file path
   */
  private generateFilePath (fileName: string, conversationId: string): string {
    const timestamp = Date.now()
    const randomId = Math.random().toString(36).substring(2, 15)
    const sanitizedFileName = fileName.replace(/[^a-zA-Z0-9.-]/g, '_')
    return `chat-documents/${conversationId}/${timestamp}_${randomId}_${sanitizedFileName}`
  }

  /**
   * Upload file to Supabase Storage
   */
  async uploadFile (
    file: File,
    conversationId: string
  ): Promise<FileUploadResult> {
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
      const filePath = this.generateFilePath(file.name, conversationId)

      // Upload to Supabase Storage
      const { data, error } = await supabase.storage
        .from(storageBuckets.chatDocuments)
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

      // // Get public URL
      // const { data: urlData } = supabase.storage
      //   .from(storageBuckets.chatDocuments)
      //   .getPublicUrl(filePath)

      return {
        success: true,
        filePath: data.path,
        fileName: file.name,
        fileSize: file.size,
        fileType: file.type
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
  getFileUrl (filePath: string): string {
    const { data } = supabase.storage
      .from(storageBuckets.chatDocuments)
      .getPublicUrl(filePath)
    return data.publicUrl
  }

  /**
   * Delete file from storage
   */
  async deleteFile (filePath: string): Promise<{ success: boolean; error?: string }> {
    try {
      const { error } = await supabase.storage
        .from(storageBuckets.chatDocuments)
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
   * Get file type icon
   */
  getFileTypeIcon (fileType: string): string {
    if (fileType.startsWith('image/')) return '🖼️'
    if (fileType === 'application/pdf') return '📄'
    if (fileType.includes('excel') || fileType.includes('spreadsheet')) return '📊'
    if (fileType.includes('word') || fileType.includes('document')) return '📝'
    if (fileType.includes('powerpoint') || fileType.includes('presentation')) return '📽️'
    return '📎'
  }

  /**
   * Format file size for display
   */
  formatFileSize (bytes: number): string {
    if (bytes === 0) return '0 Bytes'
    const k = 1024
    const sizes = ['Bytes', 'KB', 'MB', 'GB']
    const i = Math.floor(Math.log(bytes) / Math.log(k))
    return parseFloat((bytes / Math.pow(k, i)).toFixed(2)) + ' ' + sizes[i]
  }
}

// Create a default instance for backward compatibility
export const fileUploadService = new FileUploadService()

// Export the class for dependency injection
export default FileUploadService
