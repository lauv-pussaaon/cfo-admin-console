import {
  createNotificationEmail as createNotificationEmailAPI,
  deleteNotificationEmail as deleteNotificationEmailAPI,
  listNotificationEmails as listNotificationEmailsAPI,
  updateNotificationEmail as updateNotificationEmailAPI,
  type CreateNotificationEmailInput,
  type UpdateNotificationEmailInput,
} from '../api/notification-recipients'
import type { NotificationEmail } from '@/types/database'

export class NotificationEmailService {
  async listNotificationEmails (): Promise<NotificationEmail[]> {
    return listNotificationEmailsAPI()
  }

  async create (input: CreateNotificationEmailInput): Promise<NotificationEmail> {
    return createNotificationEmailAPI(input)
  }

  async update (
    id: string,
    input: UpdateNotificationEmailInput
  ): Promise<NotificationEmail> {
    return updateNotificationEmailAPI(id, input)
  }

  async delete (id: string): Promise<void> {
    return deleteNotificationEmailAPI(id)
  }

  async setEnabled (id: string, isEnabled: boolean): Promise<NotificationEmail> {
    return updateNotificationEmailAPI(id, { isEnabled })
  }
}

export const notificationEmailService = new NotificationEmailService()

export type { NotificationEmail }
