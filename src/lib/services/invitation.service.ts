import type { OrganizationInvitation } from '@/types/database'
import {
  createInvitation as createInvitationAPI,
  getInvitationByToken as getInvitationByTokenAPI,
  getInvitationsByOrganization as getInvitationsByOrganizationAPI,
  updateInvitationStatus as updateInvitationStatusAPI,
} from '../api/invitations'

export class InvitationService {
  // Create invitation
  async createInvitation(
    organizationId: string,
    email: string,
    createdBy: string | null
  ): Promise<OrganizationInvitation> {
    return createInvitationAPI(organizationId, email, createdBy)
  }

  // Get invitation by token
  async getInvitationByToken(token: string): Promise<OrganizationInvitation | null> {
    return getInvitationByTokenAPI(token)
  }

  // Get invitations by organization
  async getInvitationsByOrganization(organizationId: string): Promise<OrganizationInvitation[]> {
    return getInvitationsByOrganizationAPI(organizationId)
  }

  // Update invitation status (used by API route)
  async updateInvitationStatus(
    token: string,
    status: 'accepted' | 'expired',
    acceptedAt?: string
  ): Promise<OrganizationInvitation> {
    return updateInvitationStatusAPI(token, status, acceptedAt)
  }
}

// Export singleton instance
export const invitationService = new InvitationService()

