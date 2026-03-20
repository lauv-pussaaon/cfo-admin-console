import { NextRequest, NextResponse } from 'next/server'
import { isBridgeRequestAuthorized } from '@/lib/support-chat/auth'
import {
  createMessageAttachment,
  ensureOrganizationExists,
  getMessageById,
} from '@/lib/api/support-chat'
import { supportAttachmentUploadService } from '@/lib/services'

export async function POST (request: NextRequest) {
  try {
    if (!isBridgeRequestAuthorized(request)) {
      return NextResponse.json({ error: 'Unauthorized bridge request' }, { status: 401 })
    }

    const formData = await request.formData()
    const organizationId = String(formData.get('organization_id') || '')
    const messageId = String(formData.get('message_id') || '')
    const clientUserId = String(formData.get('client_user_id') || '')
    const file = formData.get('file')

    if (!organizationId || !messageId || !clientUserId || !(file instanceof File)) {
      return NextResponse.json({ error: 'organization_id, message_id, client_user_id and file are required' }, { status: 400 })
    }

    await ensureOrganizationExists(organizationId)
    const message = await getMessageById(messageId)
    if (!message || message.organization_id !== organizationId) {
      return NextResponse.json({ error: 'Message not found for organization' }, { status: 404 })
    }
    if (message.sender_type !== 'client') {
      return NextResponse.json({ error: 'Attachments can only be added to client messages' }, { status: 403 })
    }
    if (message.client_user_id && message.client_user_id !== clientUserId) {
      return NextResponse.json({ error: 'Cannot attach file to another user message' }, { status: 403 })
    }

    const upload = await supportAttachmentUploadService.uploadAttachment(file, organizationId, messageId)
    if (
      !upload.success
      || !upload.filePath
      || !upload.fileName
      || !upload.fileType
      || upload.fileSize == null
      || !upload.bucket
    ) {
      return NextResponse.json({ error: upload.error || 'Upload failed' }, { status: 400 })
    }

    const attachment = await createMessageAttachment({
      messageId,
      organizationId,
      uploadedByType: 'client',
      uploadedByUserId: clientUserId,
      bucket: upload.bucket,
      filePath: upload.filePath,
      fileName: upload.fileName,
      fileSize: upload.fileSize,
      fileType: upload.fileType,
    })

    return NextResponse.json(attachment, { status: 201 })
  } catch (error) {
    console.error('POST /api/external/support/attachments/upload error:', error)
    return NextResponse.json({ error: 'Failed to upload attachment' }, { status: 500 })
  }
}

