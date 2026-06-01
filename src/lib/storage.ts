/**
 * Local filesystem storage for admin console file uploads.
 * Used instead of Supabase Storage.
 *
 * Files are stored under public/uploads/admin/ for direct URL access.
 * Set UPLOAD_DIR to override (e.g. /var/cfo-admin-uploads for production).
 */

import { mkdir, writeFile, unlink, access } from 'fs/promises'
import path from 'path'

const DEFAULT_UPLOAD_DIR = path.join(process.cwd(), 'public', 'uploads')
const STORAGE_PREFIX = 'admin'

/** Bucket name -> subdir under uploads/admin */
export const BUCKET_TO_SUBDIR: Record<string, string> = {
  'cfo-emission-template-images': 'template-images',
  'cfo-support-chat-attachments': 'support-attachments',
  'cfo-user-avatar': 'avatars',
  'cfo-report-chat-documents': 'chat-documents',
  'cfo-ef-certificates': 'ef-certificates',
}

function getBaseDir (): string {
  const dir = process.env.UPLOAD_DIR || DEFAULT_UPLOAD_DIR
  return process.env.UPLOAD_DIR ? path.resolve(dir) : dir
}

function getBucketDir (bucket: string): string {
  const subdir = BUCKET_TO_SUBDIR[bucket] || bucket
  return path.join(getBaseDir(), STORAGE_PREFIX, subdir)
}

function getFullPath (bucket: string, filePath: string): string {
  return path.join(getBucketDir(bucket), filePath)
}

async function ensureDir (dir: string): Promise<void> {
  await mkdir(dir, { recursive: true })
}

/**
 * Upload a file to local storage.
 * @returns Public URL path (e.g. /uploads/template-images/...)
 */
export async function upload (
  bucket: string,
  filePath: string,
  buffer: Buffer
): Promise<string> {
  const fullPath = getFullPath(bucket, filePath)
  await ensureDir(path.dirname(fullPath))
  await writeFile(fullPath, buffer)
  const subdir = BUCKET_TO_SUBDIR[bucket] || bucket
  const cleanPath = filePath.startsWith('/') ? filePath.slice(1) : filePath
  if (useApiStreaming()) {
    return `/api/files/${subdir}/${cleanPath}`
  }
  return `/uploads/${subdir}/${cleanPath}`
}

/** True when UPLOAD_DIR is set (files outside project, serve via API) */
export function useApiStreaming (): boolean {
  return !!process.env.UPLOAD_DIR
}

/** Resolve full filesystem path for a relative path (subdir/filePath). Used by file-serving API. */
export function resolveFullPath (relativePath: string): string {
  return path.join(getBaseDir(), STORAGE_PREFIX, relativePath)
}

/** Reject path traversal, absolute paths, empty. */
export function validatePath (p: string): boolean {
  if (!p || typeof p !== 'string') return false
  const normalized = path.normalize(p)
  if (normalized.startsWith('..') || path.isAbsolute(normalized)) return false
  if (normalized.includes('..')) return false
  return true
}

export async function remove (bucket: string, filePath: string): Promise<void> {
  const fullPath = getFullPath(bucket, filePath)
  try {
    await unlink(fullPath)
  } catch (err) {
    const nodeErr = err as NodeJS.ErrnoException
    if (nodeErr?.code !== 'ENOENT') {
      throw err
    }
  }
}

export function getPublicUrl (bucket: string, filePath: string): string {
  const subdir = BUCKET_TO_SUBDIR[bucket] || bucket
  const cleanPath = filePath.startsWith('/') ? filePath.slice(1) : filePath
  if (useApiStreaming()) {
    return `/api/files/${subdir}/${cleanPath}`
  }
  return `/uploads/${subdir}/${cleanPath}`
}

export async function exists (bucket: string, filePath: string): Promise<boolean> {
  const fullPath = getFullPath(bucket, filePath)
  try {
    await access(fullPath)
    return true
  } catch {
    return false
  }
}
