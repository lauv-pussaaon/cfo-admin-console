import { supabase } from '../supabase'
import { ConflictError, throwIfError, ValidationError } from '@/lib/utils/errors'
import type { NotificationEventType, NotificationRecipient } from '@/types/database'

export interface CreateNotificationRecipientInput {
  eventType: NotificationEventType
  email: string
  label?: string | null
}

export interface UpdateNotificationRecipientInput {
  email?: string
  label?: string | null
  isEnabled?: boolean
}

export async function listNotificationRecipients (
  eventType: NotificationEventType = 'trial_request'
): Promise<NotificationRecipient[]> {
  const result = await supabase
    .from('notification_recipients')
    .select('*')
    .eq('event_type', eventType)
    .order('created_at', { ascending: true })

  return throwIfError(result) ?? []
}

export async function createNotificationRecipient (
  input: CreateNotificationRecipientInput
): Promise<NotificationRecipient> {
  const email = input.email.trim().toLowerCase()
  if (!email || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
    throw new ValidationError('กรุณากรอกอีเมลให้ถูกต้อง')
  }

  const result = await supabase
    .from('notification_recipients')
    .insert({
      event_type: input.eventType,
      email,
      label: input.label?.trim() || null,
      is_enabled: true,
    })
    .select()
    .single()

  try {
    return throwIfError(result)
  } catch (error) {
    if (error instanceof ConflictError) {
      throw new ValidationError('อีเมลนี้มีในรายการแล้ว')
    }
    throw error
  }
}

export async function updateNotificationRecipient (
  id: string,
  input: UpdateNotificationRecipientInput
): Promise<NotificationRecipient> {
  const payload: Record<string, unknown> = {
    updated_at: new Date().toISOString(),
  }

  if (input.email !== undefined) {
    const email = input.email.trim().toLowerCase()
    if (!email || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
      throw new ValidationError('กรุณากรอกอีเมลให้ถูกต้อง')
    }
    payload.email = email
  }

  if (input.label !== undefined) {
    payload.label = input.label?.trim() || null
  }

  if (input.isEnabled !== undefined) {
    payload.is_enabled = input.isEnabled
  }

  const result = await supabase
    .from('notification_recipients')
    .update(payload)
    .eq('id', id)
    .select()
    .single()

  try {
    return throwIfError(result)
  } catch (error) {
    if (error instanceof ConflictError) {
      throw new ValidationError('อีเมลนี้มีในรายการแล้ว')
    }
    throw error
  }
}

export async function deleteNotificationRecipient (id: string): Promise<void> {
  const result = await supabase
    .from('notification_recipients')
    .delete()
    .eq('id', id)

  throwIfError(result)
}
