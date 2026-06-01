import { authenticatedFetch } from '@/lib/api/fetch-client'

export interface TemplateImageUploadResult {
  success: boolean
  fileUrl?: string
  filePath?: string
  error?: string
}

export interface TemplateImageValidationResult {
  isValid: boolean
  error?: string
}

export class TemplateImageUploadService {
  private readonly MAX_FILE_SIZE = 2 * 1024 * 1024
  private readonly ALLOWED_FILE_TYPES = [
    'image/jpeg',
    'image/jpg',
    'image/png',
    'image/gif',
    'image/webp',
  ]

  private readonly ALLOWED_EXTENSIONS = ['.jpg', '.jpeg', '.png', '.gif', '.webp']

  validateFile (file: File): TemplateImageValidationResult {
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

  async uploadImage (file: File): Promise<TemplateImageUploadResult> {
    try {
      const validation = this.validateFile(file)
      if (!validation.isValid) {
        return { success: false, error: validation.error }
      }

      const formData = new FormData()
      formData.append('file', file)

      const response = await authenticatedFetch('/api/uploads/template-image', {
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

  extractFilePathFromUrl (url: string): string | null {
    try {
      const apiMatch = url.match(/\/api\/files\/template-images\/(.+)$/)
      if (apiMatch) return apiMatch[1]

      const uploadsMatch = url.match(/\/uploads\/template-images\/(.+)$/)
      if (uploadsMatch) return `templates/${uploadsMatch[1].replace(/^templates\//, '')}`

      const legacyMatch = url.match(/\/storage\/v1\/object\/public\/[^/]+\/(.+)$/)
      return legacyMatch ? legacyMatch[1] : null
    } catch {
      return null
    }
  }
}

export const templateImageUploadService = new TemplateImageUploadService()

export default TemplateImageUploadService
