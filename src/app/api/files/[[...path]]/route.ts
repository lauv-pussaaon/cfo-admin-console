import { NextRequest, NextResponse } from 'next/server'
import { createReadStream } from 'fs'
import { Readable } from 'stream'
import { access } from 'fs/promises'
import path from 'path'
import { errorResponse, withErrorHandling } from '@/lib/api/api-utils'
import { requireAuth } from '@/lib/api/auth-helper'
import { resolveFullPath, validatePath } from '@/lib/storage-server'

const EXT_TO_MIME: Record<string, string> = {
  '.jpg': 'image/jpeg',
  '.jpeg': 'image/jpeg',
  '.png': 'image/png',
  '.gif': 'image/gif',
  '.webp': 'image/webp',
  '.svg': 'image/svg+xml',
  '.pdf': 'application/pdf',
  '.xls': 'application/vnd.ms-excel',
  '.xlsx': 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
  '.doc': 'application/msword',
  '.docx': 'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  '.ppt': 'application/vnd.ms-powerpoint',
  '.pptx': 'application/vnd.openxmlformats-officedocument.presentationml.presentation',
}

function getContentType (filePath: string): string {
  const ext = path.extname(filePath).toLowerCase()
  return EXT_TO_MIME[ext] || 'application/octet-stream'
}

/**
 * GET /api/files/[...path]
 * Stream file. template-images/ is public for template previews.
 */
export const GET = withErrorHandling(async (
  request: NextRequest,
  { params }: { params: Promise<{ path?: string[] }> }
) => {
  const { path: pathSegments } = await params
  if (!pathSegments || pathSegments.length === 0) {
    return errorResponse('File path is required', 400)
  }

  const isPublicTemplateImage = pathSegments[0] === 'template-images'
  if (!isPublicTemplateImage) {
    await requireAuth(request)
  }

  const relativePath = pathSegments.join('/')
  if (!validatePath(relativePath)) {
    return errorResponse('Invalid file path', 400)
  }

  const fullPath = resolveFullPath(relativePath)

  try {
    await access(fullPath)
  } catch {
    return errorResponse('File not found', 404)
  }

  const nodeStream = createReadStream(fullPath)
  const webStream = Readable.toWeb(nodeStream) as ReadableStream<Uint8Array>
  const contentType = getContentType(relativePath)

  return new NextResponse(webStream, {
    headers: {
      'Content-Type': contentType,
      'Content-Disposition': 'inline',
    },
  })
})
