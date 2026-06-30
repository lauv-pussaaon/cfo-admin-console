import {
  createNotificationRecipient as createNotificationRecipientAPI,
  deleteNotificationRecipient as deleteNotificationRecipientAPI,
  listNotificationRecipients as listNotificationRecipientsAPI,
  updateNotificationRecipient as updateNotificationRecipientAPI,
  type CreateNotificationRecipientInput,
  type UpdateNotificationRecipientInput,
} from '../api/notification-recipients'
import type { NotificationEventType, NotificationRecipient } from '@/types/database'

export class NotificationRecipientService {
  async listTrialRequestRecipients (): Promise<NotificationRecipient[]> {
    return listNotificationRecipientsAPI('trial_request')
  }

  async createRecipient (
    input: CreateNotificationRecipientInput
  ): Promise<NotificationRecipient> {
    return createNotificationRecipientAPI(input)
  }

  async updateRecipient (
    id: string,
    input: UpdateNotificationRecipientInput
  ): Promise<NotificationRecipient> {
    return updateNotificationRecipientAPI(id, input)
  }

  async deleteRecipient (id: string): Promise<void> {
    return deleteNotificationRecipientAPI(id)
  }

  async setRecipientEnabled (
    id: string,
    isEnabled: boolean
  ): Promise<NotificationRecipient> {
    return updateNotificationRecipientAPI(id, { isEnabled })
  }
}

export const notificationRecipientService = new NotificationRecipientService()

export type { NotificationEventType, NotificationRecipient }
