import { supabase } from '../supabase'
import { storageBuckets } from '../config'

export interface AvatarUploadResult {
  success: boolean
  fileUrl?: string
  filePath?: string
  error?: string
}

export interface AvatarValidationResult {
  isValid: boolean
  error?: string
}

export class AvatarUploadService {
  private readonly MAX_FILE_SIZE = 2 * 1024 * 1024 // 2MB in bytes (smaller for avatars)
  private readonly ALLOWED_FILE_TYPES = [
    'image/jpeg',
    'image/jpg',
    'image/png',
    'image/gif',
    'image/webp'
  ]

  private readonly ALLOWED_EXTENSIONS = ['.jpg', '.jpeg', '.png', '.gif', '.webp']

  /**
   * Validate avatar file type and size
   */
  validateFile(file: File): AvatarValidationResult {
    // Check file size
    if (file.size > this.MAX_FILE_SIZE) {
      return {
        isValid: false,
        error: `File size exceeds 2MB limit. Current size: ${(file.size / 1024 / 1024).toFixed(2)}MB`
      }
    }

    // Check file type by MIME type
    if (!this.ALLOWED_FILE_TYPES.includes(file.type)) {
      return {
        isValid: false,
        error: 'File type not supported. Allowed types: JPG, PNG, GIF, WebP'
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
   * Generate unique file path for avatar
   */
  private generateFilePath(fileName: string, userId: string): string {
    const uuid = crypto.randomUUID()
    const sanitizedFileName = fileName.replace(/[^a-zA-Z0-9.-]/g, '_')
    return `avatars/${userId}/${uuid}_${sanitizedFileName}`
  }

  /**
   * Upload avatar to Supabase Storage
   */
  async uploadAvatar(file: File, userId: string): Promise<AvatarUploadResult> {
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
      const filePath = this.generateFilePath(file.name, userId)

      // Upload to Supabase Storage
      const { error: uploadError } = await supabase.storage
        .from(storageBuckets.userAvatars)
        .upload(filePath, file, {
          cacheControl: '3600',
          upsert: false
        })

      if (uploadError) {
        return {
          success: false,
          error: `Upload failed: ${uploadError.message}`
        }
      }

      // Get public URL
      const { data: urlData } = supabase.storage
        .from(storageBuckets.userAvatars)
        .getPublicUrl(filePath)

      return {
        success: true,
        fileUrl: urlData.publicUrl,
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
   * Delete avatar from storage
   */
  async deleteAvatar(filePath: string): Promise<{ success: boolean; error?: string }> {
    try {
      const { error } = await supabase.storage
        .from(storageBuckets.userAvatars)
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
   * Extract file path from avatar URL (for deletion)
   */
  extractFilePathFromUrl(url: string): string | null {
    try {
      // Extract path from Supabase storage URL
      // Format: https://[project].supabase.co/storage/v1/object/public/[bucket]/[path]
      const match = url.match(/\/storage\/v1\/object\/public\/[^/]+\/(.+)$/)
      return match ? match[1] : null
    } catch {
      return null
    }
  }
}

// Create a default instance
export const avatarUploadService = new AvatarUploadService()

// Export the class for dependency injection
export default AvatarUploadService

