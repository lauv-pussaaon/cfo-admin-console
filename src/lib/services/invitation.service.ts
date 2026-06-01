import type { OrganizationInvitation } from '@/types/database'
import {
  createInvitation as createInvitationAPI,
  getInvitationsByOrganization as getInvitationsByOrganizationAPI,
} from '../api/invitations'

/** Client-safe invitation helpers (fetch-based). */
export class InvitationService {
  async createInvitation (
    organizationId: string,
    email: string,
    createdBy: string | null
  ): Promise<OrganizationInvitation> {
    return createInvitationAPI(organizationId, email, createdBy)
  }

  async getInvitationsByOrganization (organizationId: string): Promise<OrganizationInvitation[]> {
    return getInvitationsByOrganizationAPI(organizationId)
  }
}

export const invitationService = new InvitationService()
