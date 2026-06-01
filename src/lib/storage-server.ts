/**
 * Server-side storage abstraction.
 * Uses local filesystem when DATABASE_URL is set.
 */

import * as localStorage from './storage'
import { storageBuckets } from './config'

const useLocalStorage = !!process.env.DATABASE_URL

/**
 * Upload file to storage. Returns public URL.
 */
export async function uploadFile (
  bucket: string,
  filePath: string,
  buffer: Buffer
): Promise<string> {
  if (!useLocalStorage) {
    throw new Error('DATABASE_URL is required. Storage uses local filesystem.')
  }
  return localStorage.upload(bucket, filePath, buffer)
}

/**
 * Remove file from storage.
 */
export async function removeFile (bucket: string, filePath: string): Promise<void> {
  if (!useLocalStorage) {
    throw new Error('DATABASE_URL is required. Storage uses local filesystem.')
  }
  await localStorage.remove(bucket, filePath)
}

/**
 * Get public URL for a stored file.
 */
export function getPublicUrl (bucket: string, filePath: string): string {
  if (!useLocalStorage) {
    throw new Error('DATABASE_URL is required. Storage uses local filesystem.')
  }
  return localStorage.getPublicUrl(bucket, filePath)
}

export { storageBuckets }
export { resolveFullPath, validatePath, useApiStreaming } from './storage'
