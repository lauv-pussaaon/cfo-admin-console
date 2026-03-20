import { NextRequest, NextResponse } from 'next/server'
import {
  deleteAttachmentById,
  getAttachmentById,
} from '@/lib/api/support-chat'
import { isBridgeRequestAuthorized } from '@/lib/support-chat/auth'
import { supportAttachmentUploadService } from '@/lib/services'

export async function DELETE (request: NextRequest) {
  try {
    if (!isBridgeRequestAuthorized(request)) {
      return NextResponse.json({ error: 'Unauthorized bridge request' }, { status: 401 })
    }

    const body = await request.json()
    const organizationId = String(body.organization_id || '')
    const attachmentId = String(body.attachment_id || '')
    const clientUserId = String(body.client_user_id || '')

    if (!organizationId || !attachmentId || !clientUserId) {
      return NextResponse.json({ error: 'organization_id, attachment_id, client_user_id are required' }, { status: 400 })
    }

    const attachment = await getAttachmentById(attachmentId)
    if (!attachment || attachment.organization_id !== organizationId) {
      return NextResponse.json({ error: 'Attachment not found' }, { status: 404 })
    }
    if (attachment.uploaded_by_type !== 'client') {
      return NextResponse.json({ error: 'Cannot delete non-client attachment from external route' }, { status: 403 })
    }
    if ((attachment.uploaded_by_user_id || '') !== clientUserId) {
      return NextResponse.json({ error: 'Cannot delete another user attachment' }, { status: 403 })
    }

    const storageDelete = await supportAttachmentUploadService.deleteAttachment(attachment.file_path)
    if (!storageDelete.success) {
      return NextResponse.json({ error: storageDelete.error || 'Failed to delete attachment file' }, { status: 500 })
    }

    await deleteAttachmentById(attachmentId)
    return NextResponse.json({ success: true })
  } catch (error) {
    console.error('DELETE /api/external/support/attachments error:', error)
    return NextResponse.json({ error: 'Failed to delete attachment' }, { status: 500 })
  }
}

