/**
 * Legacy duplicate of organization helpers — use @/lib/api/organizations or @/lib/server/organizations.
 */
export {
  getOrganizations,
  getOrganizationsWithStats,
  getOrganizationsForDealer,
  getOrganizationsForConsultAudit,
  getOrganizationById,
  createOrganization,
  updateOrganization,
  deleteOrganization,
  getUserOrganizations,
  getUsersByOrganization,
  addUserToOrganization,
  removeUserFromOrganization,
} from '@/lib/server/organizations'
