/**
 * Legacy upload service — not used in admin UI.
 * Retained for reference; uploads use local storage via API routes.
 */
import { storageBuckets } from '../config'

export interface FileUploadResult {
  success: boolean
  fileUrl?: string
  filePath?: string
  error?: string
}

export class FileUploadService {
  async uploadFile (): Promise<FileUploadResult> {
    return {
      success: false,
      error: 'Use /api/uploads routes with local storage (DATABASE_URL required)',
    }
  }

  getBucketName (): string {
    return storageBuckets.chatDocuments
  }
}

export const fileUploadService = new FileUploadService()
export default FileUploadService
