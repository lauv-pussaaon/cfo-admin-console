import { supabase } from '@/lib/supabase'
import { ValidationError } from '@/lib/utils/errors'

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

interface SupportUserBrief {
  name: string
  avatar_url: string | null
  email: string
}

interface SupportMessageRowWithStaffUser extends SupportMessageRow {
  staff_user?: SupportUserBrief | null
}

/** PostgREST may return embedded `users` as object or single-element array */
function normalizeStaffUserEmbed (raw: unknown): SupportUserBrief | null {
  if (raw == null) return null
  if (Array.isArray(raw)) {
    const first = raw[0] as SupportUserBrief | undefined
    return first ?? null
  }
  return raw as SupportUserBrief
}

interface CreateClientMessageInput {
  organizationId: string
  body: string
  clientUserId?: string | null
  clientDisplayName?: string | null
  clientAvatarUrl?: string | null
}

async function listAttachmentsByMessageIds (messageIds: string[]): Promise<Record<string, SupportMessageAttachment[]>> {
  if (messageIds.length === 0) return {}

  const { data, error } = await supabase
    .from('support_message_attachments')
    .select('*')
    .in('message_id', messageIds)
    .order('created_at', { ascending: true })

  if (error) throw error

  const grouped: Record<string, SupportMessageAttachment[]> = {}
  for (const row of (data ?? []) as SupportMessageAttachment[]) {
    const { data: urlData } = supabase.storage
      .from(row.bucket)
      .getPublicUrl(row.file_path)
    row.public_url = urlData.publicUrl
    if (!grouped[row.message_id]) grouped[row.message_id] = []
    grouped[row.message_id].push(row)
  }
  return grouped
}

function normalizeBody (body: string): string {
  return body.trim()
}

export async function ensureOrganizationExists (organizationId: string): Promise<void> {
  const { data, error } = await supabase
    .from('organizations')
    .select('id')
    .eq('id', organizationId)
    .maybeSingle()

  if (error) throw error
  if (!data) {
    throw new ValidationError('Organization not found')
  }
}

export async function getOrCreateConversation (organizationId: string): Promise<SupportConversationRow> {
  const { data: existing, error: existingError } = await supabase
    .from('support_conversations')
    .select('*')
    .eq('organization_id', organizationId)
    .maybeSingle()

  if (existingError) throw existingError
  if (existing) return existing as SupportConversationRow

  const now = new Date().toISOString()
  const { data: created, error: createError } = await supabase
    .from('support_conversations')
    .insert({
      organization_id: organizationId,
      created_at: now,
      updated_at: now,
    })
    .select('*')
    .single()

  if (createError) throw createError
  return created as SupportConversationRow
}

export async function listMessagesByOrganization (organizationId: string): Promise<SupportMessageWithSender[]> {
  const conversation = await getOrCreateConversation(organizationId)
  const { data, error } = await supabase
    .from('support_messages')
    .select(`
      id,
      conversation_id,
      organization_id,
      body,
      sender_type,
      staff_user_id,
      client_user_id,
      client_display_name,
      client_avatar_url,
      created_at,
      staff_user:users!support_messages_staff_user_id_fkey(name, avatar_url, email)
    `)
    .eq('conversation_id', conversation.id)
    .order('created_at', { ascending: true })

  if (error) throw error

  const messages = (data ?? []) as unknown as SupportMessageRowWithStaffUser[]
  const attachmentsByMessage = await listAttachmentsByMessageIds(messages.map(m => m.id))

  return messages.map((row) => {
    const staff = normalizeStaffUserEmbed(row.staff_user)
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
      staff_name: staff?.name ?? null,
      staff_avatar_url: staff?.avatar_url ?? null,
      staff_email: staff?.email ?? null,
      attachments: attachmentsByMessage[row.id] ?? [],
    }
  })
}

export async function createClientMessage (input: CreateClientMessageInput): Promise<SupportMessageWithSender> {
  const body = normalizeBody(input.body)
  if (!body) {
    throw new ValidationError('Message body is required')
  }

  await ensureOrganizationExists(input.organizationId)
  const conversation = await getOrCreateConversation(input.organizationId)
  const now = new Date().toISOString()

  const { data, error } = await supabase
    .from('support_messages')
    .insert({
      conversation_id: conversation.id,
      organization_id: input.organizationId,
      body,
      sender_type: 'client',
      client_user_id: input.clientUserId ?? null,
      client_display_name: input.clientDisplayName ?? null,
      client_avatar_url: input.clientAvatarUrl ?? null,
      created_at: now,
    })
    .select('*')
    .single()

  if (error) throw error

  const { error: updateError } = await supabase
    .from('support_conversations')
    .update({ updated_at: now })
    .eq('id', conversation.id)
  if (updateError) throw updateError

  return {
    ...(data as SupportMessageRow),
    staff_name: null,
    staff_avatar_url: null,
    staff_email: null,
    attachments: [],
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

  const { data, error } = await supabase
    .from('support_messages')
    .insert({
      conversation_id: conversation.id,
      organization_id: organizationId,
      body: normalized,
      sender_type: 'staff',
      staff_user_id: staffUserId,
      created_at: now,
    })
    .select(`
      id,
      conversation_id,
      organization_id,
      body,
      sender_type,
      staff_user_id,
      client_user_id,
      client_display_name,
      client_avatar_url,
      created_at,
      staff_user:users!support_messages_staff_user_id_fkey(name, avatar_url, email)
    `)
    .single()

  if (error) throw error

  const { error: updateError } = await supabase
    .from('support_conversations')
    .update({ updated_at: now })
    .eq('id', conversation.id)
  if (updateError) throw updateError

  const row = data as unknown as SupportMessageRowWithStaffUser
  const staff = normalizeStaffUserEmbed(row.staff_user)
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
    staff_name: staff?.name ?? null,
    staff_avatar_url: staff?.avatar_url ?? null,
    staff_email: staff?.email ?? null,
    attachments: [],
  }
}

export async function getMessageById (messageId: string): Promise<SupportMessageRow | null> {
  const { data, error } = await supabase
    .from('support_messages')
    .select('*')
    .eq('id', messageId)
    .maybeSingle()

  if (error) throw error
  return (data as SupportMessageRow | null) ?? null
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
  const { data, error } = await supabase
    .from('support_message_attachments')
    .insert({
      message_id: input.messageId,
      organization_id: input.organizationId,
      uploaded_by_type: input.uploadedByType,
      uploaded_by_user_id: input.uploadedByUserId ?? null,
      bucket: input.bucket,
      file_path: input.filePath,
      file_name: input.fileName,
      file_size: input.fileSize,
      file_type: input.fileType,
      created_at: new Date().toISOString(),
    })
    .select('*')
    .single()

  if (error) throw error
  const attachment = data as SupportMessageAttachment
  const { data: urlData } = supabase.storage
    .from(attachment.bucket)
    .getPublicUrl(attachment.file_path)
  return {
    ...attachment,
    public_url: urlData.publicUrl,
  }
}

export async function getAttachmentById (attachmentId: string): Promise<SupportMessageAttachment | null> {
  const { data, error } = await supabase
    .from('support_message_attachments')
    .select('*')
    .eq('id', attachmentId)
    .maybeSingle()
  if (error) throw error
  if (!data) return null
  const attachment = data as SupportMessageAttachment
  const { data: urlData } = supabase.storage
    .from(attachment.bucket)
    .getPublicUrl(attachment.file_path)
  return {
    ...attachment,
    public_url: urlData.publicUrl,
  }
}

export async function deleteAttachmentById (attachmentId: string): Promise<void> {
  const { error } = await supabase
    .from('support_message_attachments')
    .delete()
    .eq('id', attachmentId)
  if (error) throw error
}

export async function markClientRead (organizationId: string): Promise<void> {
  const conversation = await getOrCreateConversation(organizationId)
  const { error } = await supabase
    .from('support_conversations')
    .update({
      client_last_read_at: new Date().toISOString(),
    })
    .eq('id', conversation.id)
  if (error) throw error
}

export async function markStaffRead (organizationId: string): Promise<void> {
  const conversation = await getOrCreateConversation(organizationId)
  const { error } = await supabase
    .from('support_conversations')
    .update({
      staff_last_read_at: new Date().toISOString(),
    })
    .eq('id', conversation.id)
  if (error) throw error
}

export async function getConversationUnreadFlags (organizationId: string): Promise<{
  hasUnreadFromStaff: boolean
  hasUnreadFromClient: boolean
}> {
  const conversation = await getOrCreateConversation(organizationId)

  const staffCursor = conversation.client_last_read_at ?? '1970-01-01T00:00:00.000Z'
  const clientCursor = conversation.staff_last_read_at ?? '1970-01-01T00:00:00.000Z'

  const [staffQuery, clientQuery] = await Promise.all([
    supabase
      .from('support_messages')
      .select('*', { count: 'exact', head: true })
      .eq('conversation_id', conversation.id)
      .eq('sender_type', 'staff')
      .gt('created_at', staffCursor),
    supabase
      .from('support_messages')
      .select('*', { count: 'exact', head: true })
      .eq('conversation_id', conversation.id)
      .eq('sender_type', 'client')
      .gt('created_at', clientCursor),
  ])

  if (staffQuery.error) throw staffQuery.error
  if (clientQuery.error) throw clientQuery.error

  const unreadFromStaff = staffQuery.count ?? 0
  const unreadFromClient = clientQuery.count ?? 0

  return {
    hasUnreadFromStaff: unreadFromStaff > 0,
    hasUnreadFromClient: unreadFromClient > 0,
  }
}

export async function getUnreadFromClientMap (organizationIds: string[]): Promise<Record<string, boolean>> {
  if (organizationIds.length === 0) return {}

  const conversationsResponse = await supabase
    .from('support_conversations')
    .select('id, organization_id, staff_last_read_at')
    .in('organization_id', organizationIds)

  if (conversationsResponse.error) throw conversationsResponse.error

  const conversations = (conversationsResponse.data ?? []) as Array<{
    id: string
    organization_id: string
    staff_last_read_at: string | null
  }>

  const result: Record<string, boolean> = {}
  organizationIds.forEach((id) => { result[id] = false })

  await Promise.all(
    conversations.map(async (conversation) => {
      const cursor = conversation.staff_last_read_at ?? '1970-01-01T00:00:00.000Z'
      const { count, error } = await supabase
        .from('support_messages')
        .select('*', { count: 'exact', head: true })
        .eq('conversation_id', conversation.id)
        .eq('sender_type', 'client')
        .gt('created_at', cursor)

      if (error) throw error
      result[conversation.organization_id] = (count ?? 0) > 0
    })
  )

  return result
}

