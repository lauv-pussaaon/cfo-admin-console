import { supabase } from '../supabase'
import { ConflictError, throwIfError, ValidationError } from '@/lib/utils/errors'
import type { NotificationEmail } from '@/types/database'

const STORED_EVENT_TYPE = 'trial_request'

export interface CreateNotificationEmailInput {
  email: string
  label?: string | null
}

export interface UpdateNotificationEmailInput {
  email?: string
  label?: string | null
  isEnabled?: boolean
}

export async function listNotificationEmails (): Promise<NotificationEmail[]> {
  const result = await supabase
    .from('notification_recipients')
    .select('*')
    .eq('event_type', STORED_EVENT_TYPE)
    .order('created_at', { ascending: true })

  return throwIfError(result) ?? []
}

export async function createNotificationEmail (
  input: CreateNotificationEmailInput
): Promise<NotificationEmail> {
  const email = input.email.trim().toLowerCase()
  if (!email || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
    throw new ValidationError('กรุณากรอกอีเมลให้ถูกต้อง')
  }

  const result = await supabase
    .from('notification_recipients')
    .insert({
      event_type: STORED_EVENT_TYPE,
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

export async function updateNotificationEmail (
  id: string,
  input: UpdateNotificationEmailInput
): Promise<NotificationEmail> {
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

export async function deleteNotificationEmail (id: string): Promise<void> {
  const result = await supabase
    .from('notification_recipients')
    .delete()
    .eq('id', id)

  throwIfError(result)
}
