import { storageBuckets } from '@/lib/config'

export const IMAGE_MIME_TYPES = ['image/jpeg', 'image/png', 'image/webp'] as const
export const VIDEO_MIME_TYPES = ['video/mp4', 'video/webm'] as const
export const MAX_IMAGE_BYTES = 8 * 1024 * 1024
export const MAX_VIDEO_BYTES = 30 * 1024 * 1024

const EXT_BY_MIME: Record<string, string> = {
  'image/jpeg': '.jpg',
  'image/png': '.png',
  'image/webp': '.webp',
  'video/mp4': '.mp4',
  'video/webm': '.webm',
}

export type BannerKind = 'image' | 'video'

export function bannerKindForMime (mime: string): BannerKind | null {
  if ((IMAGE_MIME_TYPES as readonly string[]).includes(mime)) return 'image'
  if ((VIDEO_MIME_TYPES as readonly string[]).includes(mime)) return 'video'
  return null
}

export function bannerExtension (mime: string): string | null {
  return EXT_BY_MIME[mime] ?? null
}

export function bannerObjectPath (id: string, mime: string): string | null {
  const ext = bannerExtension(mime)
  if (!ext) return null
  return `${id}/banner${ext}`
}

export function bannerLimitBytes (kind: BannerKind): number {
  return kind === 'video' ? MAX_VIDEO_BYTES : MAX_IMAGE_BYTES
}

export const PLATFORM_UPDATES_BUCKET = storageBuckets.platformUpdates
