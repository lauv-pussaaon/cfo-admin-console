import type { SupabaseClient } from '@supabase/supabase-js'
import {
  IMAGE_MIME_TYPES,
  MAX_VIDEO_BYTES,
  PLATFORM_UPDATES_BUCKET,
  VIDEO_MIME_TYPES,
} from './banner'

export async function ensurePlatformUpdatesBucket (client: SupabaseClient): Promise<string | null> {
  const { data: buckets, error: listError } = await client.storage.listBuckets()
  if (listError) return listError.message
  if ((buckets ?? []).some((bucket) => bucket.name === PLATFORM_UPDATES_BUCKET)) return null

  const { error } = await client.storage.createBucket(PLATFORM_UPDATES_BUCKET, {
    public: true,
    fileSizeLimit: MAX_VIDEO_BYTES,
    allowedMimeTypes: [...IMAGE_MIME_TYPES, ...VIDEO_MIME_TYPES],
  })
  if (error && !/already exists/i.test(error.message)) return error.message
  return null
}
