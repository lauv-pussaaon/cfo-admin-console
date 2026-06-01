/**
 * Legacy EF certificate upload — not used in admin UI.
 * Retained for reference; uploads use local storage via API routes.
 */
import { storageBuckets } from '../config'

export interface EfCertificateUploadResult {
  success: boolean
  fileUrl?: string
  filePath?: string
  error?: string
}

export class EfCertificateUploadService {
  async uploadCertificate (): Promise<EfCertificateUploadResult> {
    return {
      success: false,
      error: 'Use local storage upload API (DATABASE_URL required)',
    }
  }

  getBucketName (): string {
    return storageBuckets.efCertificates
  }
}

export const efCertificateUploadService = new EfCertificateUploadService()
export default EfCertificateUploadService
