import { NextRequest } from 'next/server'
import { randomUUID } from 'crypto'
import { jsonResponse, errorResponse, withErrorHandling } from '@/lib/api/api-utils'
import { requireAuth } from '@/lib/api/auth-helper'
import { storageBuckets, uploadFile } from '@/lib/storage-server'

const MAX_FILE_SIZE = 2 * 1024 * 1024
const ALLOWED_TYPES = ['image/jpeg', 'image/jpg', 'image/png', 'image/gif', 'image/webp']

export const POST = withErrorHandling(async (request: NextRequest) => {
  const user = await requireAuth(request)

  const formData = await request.formData()
  const file = formData.get('file')
  const userId = (formData.get('userId') as string) || user.id

  if (!file || !(file instanceof File)) {
    return errorResponse('file is required', 400)
  }

  if (file.size > MAX_FILE_SIZE) {
    return errorResponse('File size exceeds 2MB limit', 400)
  }

  if (!ALLOWED_TYPES.includes(file.type)) {
    return errorResponse('File type not supported', 400)
  }

  const uuid = randomUUID()
  const sanitized = file.name.replace(/[^a-zA-Z0-9.-]/g, '_')
  const filePath = `${userId}/${uuid}_${sanitized}`
  const buffer = Buffer.from(await file.arrayBuffer())
  const fileUrl = await uploadFile(storageBuckets.userAvatars, filePath, buffer)

  return jsonResponse({
    success: true,
    fileUrl,
    filePath,
  })
})
