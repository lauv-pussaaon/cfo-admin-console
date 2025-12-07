import { supabase } from '../supabase'
import type { OrganizationInvitation } from '@/types/database'
import { handleSupabaseError, ValidationError, throwIfError } from '@/lib/utils/errors'

// Generate unique token for invitation
function generateInvitationToken(): string {
  return crypto.randomUUID()
}

// Create invitation
export const createInvitation = async (
  organizationId: string,
  email: string,
  createdBy: string | null
): Promise<OrganizationInvitation> => {
  // Remove any existing pending invitations for this email and organization
  // This allows replacing old invitations with new ones
  await supabase
    .from('organization_invitations')
    .delete()
    .eq('organization_id', organizationId)
    .eq('email', email)
    .eq('status', 'pending')

  // Generate token and set expiration (7 days from now)
  const token = generateInvitationToken()
  const expiresAt = new Date()
  expiresAt.setDate(expiresAt.getDate() + 7)

  const result = await supabase
    .from('organization_invitations')
    .insert({
      organization_id: organizationId,
      email,
      token,
      status: 'pending',
      role: 'Factory Admin',
      created_by: createdBy,
      expires_at: expiresAt.toISOString(),
    })
    .select(`
      *,
      organization:organizations(*)
    `)
    .single()

  return throwIfError(result)
}

// Get invitation by token
export const getInvitationByToken = async (token: string): Promise<OrganizationInvitation | null> => {
  const { data, error } = await supabase
    .from('organization_invitations')
    .select(`
      *,
      organization:organizations(*)
    `)
    .eq('token', token)
    .single()

  if (error && error.code === 'PGRST116') {
    return null
  }

  if (error) {
    handleSupabaseError(error)
  }

  // Check if invitation is expired
  if (data && new Date(data.expires_at) < new Date()) {
    // Update status to expired if not already expired
    if (data.status === 'pending') {
      await supabase
        .from('organization_invitations')
        .update({ status: 'expired' })
        .eq('id', data.id)
    }
    return {
      ...data,
      status: 'expired' as const,
    }
  }

  return data
}

// Get invitations by organization
export const getInvitationsByOrganization = async (
  organizationId: string
): Promise<OrganizationInvitation[]> => {
  const { data, error } = await supabase
    .from('organization_invitations')
    .select(`
      *,
      organization:organizations(*)
    `)
    .eq('organization_id', organizationId)
    .order('created_at', { ascending: false })

  if (error) {
    handleSupabaseError(error)
  }

  return data || []
}

// Update invitation status
export const updateInvitationStatus = async (
  token: string,
  status: 'accepted' | 'expired',
  acceptedAt?: string
): Promise<OrganizationInvitation> => {
  const updateData: {
    status: 'accepted' | 'expired'
    accepted_at?: string | null
  } = {
    status,
  }

  if (status === 'accepted') {
    updateData.accepted_at = acceptedAt || new Date().toISOString()
  }

  const result = await supabase
    .from('organization_invitations')
    .update(updateData)
    .eq('token', token)
    .select(`
      *,
      organization:organizations(*)
    `)
    .single()

  if (result.error) {
    handleSupabaseError(result.error)
  }

  if (!result.data) {
    throw new ValidationError('ไม่พบคำเชิญ')
  }

  return result.data
}

