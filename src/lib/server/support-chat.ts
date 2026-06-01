import { query, queryOne } from '@/lib/db'
import { getPublicUrl } from '@/lib/storage-server'
import { ValidationError, handleSupabaseError } from '@/lib/utils/errors'

export type SupportSenderType = 'client' | 'staff'

export interface SupportMessageRow {
  id: string
  conversation_id: string
  organization_id: string
  body: string
  sender_type: SupportSenderType
  staff_user_id: string | null
  client_user_id: string | null
  client_display_name: string | null
  client_avatar_url: string | null
  created_at: string
}

export interface SupportConversationRow {
  id: string
  organization_id: string
  client_last_read_at: string | null
  staff_last_read_at: string | null
  created_at: string
  updated_at: string
}

export interface SupportMessageWithSender extends SupportMessageRow {
  staff_name: string | null
  staff_avatar_url: string | null
  staff_email: string | null
  attachments: SupportMessageAttachment[]
}

export interface SupportMessageAttachment {
  id: string
  message_id: string
  organization_id: string
  uploaded_by_type: 'client' | 'staff'
  uploaded_by_user_id: string | null
  bucket: string
  file_path: string
  file_name: string
  file_size: number
  file_type: string
  created_at: string
  public_url?: string
}

interface CreateClientMessageInput {
  organizationId: string
  body: string
  clientUserId?: string | null
  clientDisplayName?: string | null
  clientAvatarUrl?: string | null
}

function withAttachmentPublicUrl (attachment: SupportMessageAttachment): SupportMessageAttachment {
  return {
    ...attachment,
    public_url: getPublicUrl(attachment.bucket, attachment.file_path),
  }
}

async function listAttachmentsByMessageIds (
  messageIds: string[]
): Promise<Record<string, SupportMessageAttachment[]>> {
  if (messageIds.length === 0) return {}

  const { rows } = await query<SupportMessageAttachment>(
    `SELECT *
     FROM support_message_attachments
     WHERE message_id = ANY($1::uuid[])
     ORDER BY created_at ASC`,
    [messageIds]
  )

  const grouped: Record<string, SupportMessageAttachment[]> = {}
  for (const row of rows) {
    const attachment = withAttachmentPublicUrl(row)
    if (!grouped[attachment.message_id]) grouped[attachment.message_id] = []
    grouped[attachment.message_id].push(attachment)
  }
  return grouped
}

function normalizeBody (body: string): string {
  return body.trim()
}

export async function ensureOrganizationExists (organizationId: string): Promise<void> {
  const org = await queryOne<{ id: string }>(
    `SELECT id FROM organizations WHERE id = $1`,
    [organizationId]
  )
  if (!org) {
    throw new ValidationError('Organization not found')
  }
}

export async function getOrCreateConversation (organizationId: string): Promise<SupportConversationRow> {
  const existing = await queryOne<SupportConversationRow>(
    `SELECT * FROM support_conversations WHERE organization_id = $1`,
    [organizationId]
  )
  if (existing) return existing

  const now = new Date().toISOString()
  try {
    const created = await queryOne<SupportConversationRow>(
      `INSERT INTO support_conversations (organization_id, created_at, updated_at)
       VALUES ($1, $2, $2)
       RETURNING *`,
      [organizationId, now]
    )
    if (!created) throw new ValidationError('Failed to create conversation')
    return created
  } catch (error) {
    handleSupabaseError(error)
  }
}

export async function listMessagesByOrganization (organizationId: string): Promise<SupportMessageWithSender[]> {
  const conversation = await getOrCreateConversation(organizationId)

  const { rows } = await query<SupportMessageRow & {
    staff_name: string | null
    staff_avatar_url: string | null
    staff_email: string | null
  }>(
    `SELECT
       sm.id,
       sm.conversation_id,
       sm.organization_id,
       sm.body,
       sm.sender_type,
       sm.staff_user_id,
       sm.client_user_id,
       sm.client_display_name,
       sm.client_avatar_url,
       sm.created_at,
       u.name AS staff_name,
       u.avatar_url AS staff_avatar_url,
       u.email AS staff_email
     FROM support_messages sm
     LEFT JOIN users u ON u.id = sm.staff_user_id
     WHERE sm.conversation_id = $1
     ORDER BY sm.created_at ASC`,
    [conversation.id]
  )

  const attachmentsByMessage = await listAttachmentsByMessageIds(rows.map((m) => m.id))

  return rows.map((row) => ({
    id: row.id,
    conversation_id: row.conversation_id,
    organization_id: row.organization_id,
    body: row.body,
    sender_type: row.sender_type,
    staff_user_id: row.staff_user_id,
    client_user_id: row.client_user_id,
    client_display_name: row.client_display_name,
    client_avatar_url: row.client_avatar_url,
    created_at: row.created_at,
    staff_name: row.staff_name,
    staff_avatar_url: row.staff_avatar_url,
    staff_email: row.staff_email,
    attachments: attachmentsByMessage[row.id] ?? [],
  }))
}

export async function createClientMessage (input: CreateClientMessageInput): Promise<SupportMessageWithSender> {
  const body = normalizeBody(input.body)
  if (!body) {
    throw new ValidationError('Message body is required')
  }

  await ensureOrganizationExists(input.organizationId)
  const conversation = await getOrCreateConversation(input.organizationId)
  const now = new Date().toISOString()

  try {
    const data = await queryOne<SupportMessageRow>(
      `INSERT INTO support_messages
         (conversation_id, organization_id, body, sender_type, client_user_id, client_display_name, client_avatar_url, created_at)
       VALUES ($1, $2, $3, 'client', $4, $5, $6, $7)
       RETURNING *`,
      [
        conversation.id,
        input.organizationId,
        body,
        input.clientUserId ?? null,
        input.clientDisplayName ?? null,
        input.clientAvatarUrl ?? null,
        now,
      ]
    )

    if (!data) throw new ValidationError('Failed to create message')

    await query(
      `UPDATE support_conversations SET updated_at = $1 WHERE id = $2`,
      [now, conversation.id]
    )

    return {
      ...data,
      staff_name: null,
      staff_avatar_url: null,
      staff_email: null,
      attachments: [],
    }
  } catch (error) {
    if (error instanceof ValidationError) throw error
    handleSupabaseError(error)
  }
}

export async function createStaffMessage (
  organizationId: string,
  body: string,
  staffUserId: string
): Promise<SupportMessageWithSender> {
  const normalized = normalizeBody(body)
  if (!normalized) {
    throw new ValidationError('Message body is required')
  }

  await ensureOrganizationExists(organizationId)
  const conversation = await getOrCreateConversation(organizationId)
  const now = new Date().toISOString()

  try {
    const row = await queryOne<SupportMessageRow & {
      staff_name: string | null
      staff_avatar_url: string | null
      staff_email: string | null
    }>(
      `WITH inserted AS (
         INSERT INTO support_messages
           (conversation_id, organization_id, body, sender_type, staff_user_id, created_at)
         VALUES ($1, $2, $3, 'staff', $4, $5)
         RETURNING *
       )
       SELECT
         i.id,
         i.conversation_id,
         i.organization_id,
         i.body,
         i.sender_type,
         i.staff_user_id,
         i.client_user_id,
         i.client_display_name,
         i.client_avatar_url,
         i.created_at,
         u.name AS staff_name,
         u.avatar_url AS staff_avatar_url,
         u.email AS staff_email
       FROM inserted i
       LEFT JOIN users u ON u.id = i.staff_user_id`,
      [conversation.id, organizationId, normalized, staffUserId, now]
    )

    if (!row) throw new ValidationError('Failed to create message')

    await query(
      `UPDATE support_conversations SET updated_at = $1 WHERE id = $2`,
      [now, conversation.id]
    )

    return {
      id: row.id,
      conversation_id: row.conversation_id,
      organization_id: row.organization_id,
      body: row.body,
      sender_type: row.sender_type,
      staff_user_id: row.staff_user_id,
      client_user_id: row.client_user_id,
      client_display_name: row.client_display_name,
      client_avatar_url: row.client_avatar_url,
      created_at: row.created_at,
      staff_name: row.staff_name,
      staff_avatar_url: row.staff_avatar_url,
      staff_email: row.staff_email,
      attachments: [],
    }
  } catch (error) {
    if (error instanceof ValidationError) throw error
    handleSupabaseError(error)
  }
}

export async function getMessageById (messageId: string): Promise<SupportMessageRow | null> {
  const row = await queryOne<SupportMessageRow>(
    `SELECT * FROM support_messages WHERE id = $1`,
    [messageId]
  )
  return row
}

export async function createMessageAttachment (input: {
  messageId: string
  organizationId: string
  uploadedByType: 'client' | 'staff'
  uploadedByUserId?: string | null
  bucket: string
  filePath: string
  fileName: string
  fileSize: number
  fileType: string
}): Promise<SupportMessageAttachment> {
  try {
    const attachment = await queryOne<SupportMessageAttachment>(
      `INSERT INTO support_message_attachments
         (message_id, organization_id, uploaded_by_type, uploaded_by_user_id,
          bucket, file_path, file_name, file_size, file_type, created_at)
       VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10)
       RETURNING *`,
      [
        input.messageId,
        input.organizationId,
        input.uploadedByType,
        input.uploadedByUserId ?? null,
        input.bucket,
        input.filePath,
        input.fileName,
        input.fileSize,
        input.fileType,
        new Date().toISOString(),
      ]
    )

    if (!attachment) throw new ValidationError('Failed to create attachment')
    return withAttachmentPublicUrl(attachment)
  } catch (error) {
    handleSupabaseError(error)
  }
}

export async function getAttachmentById (attachmentId: string): Promise<SupportMessageAttachment | null> {
  const attachment = await queryOne<SupportMessageAttachment>(
    `SELECT * FROM support_message_attachments WHERE id = $1`,
    [attachmentId]
  )
  if (!attachment) return null
  return withAttachmentPublicUrl(attachment)
}

export async function deleteAttachmentById (attachmentId: string): Promise<void> {
  try {
    await query(`DELETE FROM support_message_attachments WHERE id = $1`, [attachmentId])
  } catch (error) {
    handleSupabaseError(error)
  }
}

export async function markClientRead (organizationId: string): Promise<void> {
  const conversation = await getOrCreateConversation(organizationId)
  try {
    await query(
      `UPDATE support_conversations SET client_last_read_at = $1 WHERE id = $2`,
      [new Date().toISOString(), conversation.id]
    )
  } catch (error) {
    handleSupabaseError(error)
  }
}

export async function markStaffRead (organizationId: string): Promise<void> {
  const conversation = await getOrCreateConversation(organizationId)
  try {
    await query(
      `UPDATE support_conversations SET staff_last_read_at = $1 WHERE id = $2`,
      [new Date().toISOString(), conversation.id]
    )
  } catch (error) {
    handleSupabaseError(error)
  }
}

export async function getConversationUnreadFlags (organizationId: string): Promise<{
  hasUnreadFromStaff: boolean
  hasUnreadFromClient: boolean
}> {
  const conversation = await getOrCreateConversation(organizationId)

  const staffCursor = conversation.client_last_read_at ?? '1970-01-01T00:00:00.000Z'
  const clientCursor = conversation.staff_last_read_at ?? '1970-01-01T00:00:00.000Z'

  const [staffResult, clientResult] = await Promise.all([
    query<{ count: string }>(
      `SELECT COUNT(*)::text AS count
       FROM support_messages
       WHERE conversation_id = $1 AND sender_type = 'staff' AND created_at > $2`,
      [conversation.id, staffCursor]
    ),
    query<{ count: string }>(
      `SELECT COUNT(*)::text AS count
       FROM support_messages
       WHERE conversation_id = $1 AND sender_type = 'client' AND created_at > $2`,
      [conversation.id, clientCursor]
    ),
  ])

  return {
    hasUnreadFromStaff: parseInt(staffResult.rows[0]?.count ?? '0', 10) > 0,
    hasUnreadFromClient: parseInt(clientResult.rows[0]?.count ?? '0', 10) > 0,
  }
}

export async function getUnreadFromClientMap (organizationIds: string[]): Promise<Record<string, boolean>> {
  if (organizationIds.length === 0) return {}

  const { rows: conversations } = await query<{
    id: string
    organization_id: string
    staff_last_read_at: string | null
  }>(
    `SELECT id, organization_id, staff_last_read_at
     FROM support_conversations
     WHERE organization_id = ANY($1::uuid[])`,
    [organizationIds]
  )

  const result: Record<string, boolean> = {}
  organizationIds.forEach((id) => { result[id] = false })

  await Promise.all(
    conversations.map(async (conversation) => {
      const cursor = conversation.staff_last_read_at ?? '1970-01-01T00:00:00.000Z'
      const { rows } = await query<{ count: string }>(
        `SELECT COUNT(*)::text AS count
         FROM support_messages
         WHERE conversation_id = $1 AND sender_type = 'client' AND created_at > $2`,
        [conversation.id, cursor]
      )
      result[conversation.organization_id] = parseInt(rows[0]?.count ?? '0', 10) > 0
    })
  )

  return result
}
