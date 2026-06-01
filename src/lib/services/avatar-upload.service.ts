import { authenticatedFetch } from '@/lib/api/fetch-client'

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
  private readonly MAX_FILE_SIZE = 2 * 1024 * 1024
  private readonly ALLOWED_FILE_TYPES = [
    'image/jpeg',
    'image/jpg',
    'image/png',
    'image/gif',
    'image/webp',
  ]

  private readonly ALLOWED_EXTENSIONS = ['.jpg', '.jpeg', '.png', '.gif', '.webp']

  validateFile (file: File): AvatarValidationResult {
    if (file.size > this.MAX_FILE_SIZE) {
      return {
        isValid: false,
        error: `File size exceeds 2MB limit. Current size: ${(file.size / 1024 / 1024).toFixed(2)}MB`,
      }
    }

    if (!this.ALLOWED_FILE_TYPES.includes(file.type)) {
      return {
        isValid: false,
        error: 'File type not supported. Allowed types: JPG, PNG, GIF, WebP',
      }
    }

    const fileExtension = '.' + file.name.split('.').pop()?.toLowerCase()
    if (!this.ALLOWED_EXTENSIONS.includes(fileExtension)) {
      return {
        isValid: false,
        error: `File extension not supported. Allowed extensions: ${this.ALLOWED_EXTENSIONS.join(', ')}`,
      }
    }

    return { isValid: true }
  }

  async uploadAvatar (file: File, userId: string): Promise<AvatarUploadResult> {
    try {
      const validation = this.validateFile(file)
      if (!validation.isValid) {
        return { success: false, error: validation.error }
      }

      const formData = new FormData()
      formData.append('file', file)
      formData.append('userId', userId)

      const response = await authenticatedFetch('/api/uploads/avatar', {
        method: 'POST',
        body: formData,
      })

      const data = await response.json() as { fileUrl?: string; filePath?: string; error?: string }
      if (!data.fileUrl || !data.filePath) {
        return { success: false, error: data.error || 'Upload failed' }
      }

      return {
        success: true,
        fileUrl: data.fileUrl,
        filePath: data.filePath,
      }
    } catch (error) {
      return {
        success: false,
        error: `Upload error: ${error instanceof Error ? error.message : 'Unknown error'}`,
      }
    }
  }

  async deleteAvatar (_filePath: string): Promise<{ success: boolean; error?: string }> {
    return { success: true }
  }

  extractFilePathFromUrl (url: string): string | null {
    try {
      const apiMatch = url.match(/\/api\/files\/avatars\/(.+)$/)
      if (apiMatch) return apiMatch[1]

      const uploadsMatch = url.match(/\/uploads\/avatars\/(.+)$/)
      if (uploadsMatch) return uploadsMatch[1]

      const legacyMatch = url.match(/\/storage\/v1\/object\/public\/[^/]+\/(.+)$/)
      return legacyMatch ? legacyMatch[1] : null
    } catch {
      return null
    }
  }
}

export const avatarUploadService = new AvatarUploadService()

export default AvatarUploadService
