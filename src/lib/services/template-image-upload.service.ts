import { supabase } from '../supabase'
import { storageBuckets } from '../config'

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
  private readonly MAX_FILE_SIZE = 2 * 1024 * 1024 // 2MB
  private readonly ALLOWED_FILE_TYPES = [
    'image/jpeg',
    'image/jpg',
    'image/png',
    'image/gif',
    'image/webp',
  ]

  private readonly ALLOWED_EXTENSIONS = ['.jpg', '.jpeg', '.png', '.gif', '.webp']

  validateFile(file: File): TemplateImageValidationResult {
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

  private generateFilePath(fileName: string): string {
    const uuid = crypto.randomUUID()
    const sanitizedFileName = fileName.replace(/[^a-zA-Z0-9.-]/g, '_')
    return `templates/${uuid}_${sanitizedFileName}`
  }

  async uploadImage(file: File): Promise<TemplateImageUploadResult> {
    try {
      const validation = this.validateFile(file)
      if (!validation.isValid) {
        return {
          success: false,
          error: validation.error,
        }
      }

      const filePath = this.generateFilePath(file.name)

      const { error: uploadError } = await supabase.storage
        .from(storageBuckets.emissionTemplateImages)
        .upload(filePath, file, {
          cacheControl: '3600',
          upsert: false,
        })

      if (uploadError) {
        return {
          success: false,
          error: `Upload failed: ${uploadError.message}`,
        }
      }

      const { data: urlData } = supabase.storage
        .from(storageBuckets.emissionTemplateImages)
        .getPublicUrl(filePath)

      return {
        success: true,
        fileUrl: urlData.publicUrl,
        filePath,
      }
    } catch (error) {
      return {
        success: false,
        error: `Upload error: ${error instanceof Error ? error.message : 'Unknown error'}`,
      }
    }
  }

  async deleteImage(filePath: string): Promise<{ success: boolean; error?: string }> {
    try {
      const { error } = await supabase.storage
        .from(storageBuckets.emissionTemplateImages)
        .remove([filePath])

      if (error) {
        return {
          success: false,
          error: `Delete failed: ${error.message}`,
        }
      }

      return { success: true }
    } catch (error) {
      return {
        success: false,
        error: `Delete error: ${error instanceof Error ? error.message : 'Unknown error'}`,
      }
    }
  }

  extractFilePathFromUrl(url: string): string | null {
    try {
      const match = url.match(/\/storage\/v1\/object\/public\/[^/]+\/(.+)$/)
      return match ? match[1] : null
    } catch {
      return null
    }
  }
}

export const templateImageUploadService = new TemplateImageUploadService()

export default TemplateImageUploadService
