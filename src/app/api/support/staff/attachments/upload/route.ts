import { NextRequest, NextResponse } from 'next/server'
import { getStaffUserFromRequest } from '@/lib/support-chat/auth'
import {
  createMessageAttachment,
  ensureOrganizationExists,
  getMessageById,
} from '@/lib/api/support-chat'
import { supportAttachmentUploadService } from '@/lib/services'

export async function POST (request: NextRequest) {
  try {
    const user = await getStaffUserFromRequest(request)
    if (!user) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const formData = await request.formData()
    const organizationId = String(formData.get('organization_id') || '')
    const messageId = String(formData.get('message_id') || '')
    const file = formData.get('file')

    if (!organizationId || !messageId || !(file instanceof File)) {
      return NextResponse.json({ error: 'organization_id, message_id and file are required' }, { status: 400 })
    }

    await ensureOrganizationExists(organizationId)
    const message = await getMessageById(messageId)
    if (!message || message.organization_id !== organizationId) {
      return NextResponse.json({ error: 'Message not found for organization' }, { status: 404 })
    }
    if (message.sender_type !== 'staff' || message.staff_user_id !== user.id) {
      return NextResponse.json({ error: 'Attachments can only be added to your staff messages' }, { status: 403 })
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
      uploadedByType: 'staff',
      uploadedByUserId: user.id,
      bucket: upload.bucket,
      filePath: upload.filePath,
      fileName: upload.fileName,
      fileSize: upload.fileSize,
      fileType: upload.fileType,
    })

    return NextResponse.json(attachment, { status: 201 })
  } catch (error) {
    console.error('POST /api/support/staff/attachments/upload error:', error)
    return NextResponse.json({ error: 'Failed to upload attachment' }, { status: 500 })
  }
}

