import { NextRequest, NextResponse } from 'next/server'
import { getStaffUserFromRequest } from '@/lib/support-chat/auth'
import {
  deleteAttachmentById,
  getAttachmentById,
} from '@/lib/api/support-chat'
import { supportAttachmentUploadService } from '@/lib/services'

export async function DELETE (request: NextRequest) {
  try {
    const user = await getStaffUserFromRequest(request)
    if (!user) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
    }

    const body = await request.json()
    const organizationId = String(body.organization_id || '')
    const attachmentId = String(body.attachment_id || '')
    if (!organizationId || !attachmentId) {
      return NextResponse.json({ error: 'organization_id and attachment_id are required' }, { status: 400 })
    }

    const attachment = await getAttachmentById(attachmentId)
    if (!attachment || attachment.organization_id !== organizationId) {
      return NextResponse.json({ error: 'Attachment not found' }, { status: 404 })
    }
    if (attachment.uploaded_by_type !== 'staff') {
      return NextResponse.json({ error: 'Cannot delete client attachment from staff route' }, { status: 403 })
    }
    if ((attachment.uploaded_by_user_id || '') !== user.id) {
      return NextResponse.json({ error: 'Cannot delete attachment uploaded by another staff member' }, { status: 403 })
    }

    const storageDelete = await supportAttachmentUploadService.deleteAttachment(attachment.file_path)
    if (!storageDelete.success) {
      return NextResponse.json({ error: storageDelete.error || 'Failed to delete attachment file' }, { status: 500 })
    }

    await deleteAttachmentById(attachmentId)
    return NextResponse.json({ success: true })
  } catch (error) {
    console.error('DELETE /api/support/staff/attachments error:', error)
    return NextResponse.json({ error: 'Failed to delete attachment' }, { status: 500 })
  }
}

