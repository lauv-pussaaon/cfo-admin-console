import type { OrganizationInvitation } from '@/types/database'
import { fetchJson } from './fetch-client'

export {
  getInvitationByToken,
  updateInvitationStatus,
} from '@/lib/server/invitations'

export const createInvitation = async (
  organizationId: string,
  email: string,
  createdBy: string | null
): Promise<OrganizationInvitation> => {
  return fetchJson<OrganizationInvitation>('/api/invitations/manage', {
    method: 'POST',
    body: JSON.stringify({ organizationId, email, createdBy }),
  })
}

export const getInvitationsByOrganization = async (
  organizationId: string
): Promise<OrganizationInvitation[]> => {
  return fetchJson<OrganizationInvitation[]>(
    `/api/invitations/manage?organizationId=${encodeURIComponent(organizationId)}`
  )
}
