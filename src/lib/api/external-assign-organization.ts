import { supabase } from '@/lib/supabase'
import { ValidationError } from '@/lib/utils/errors'

export async function ensureConsultAuditAssignedToOrganization (
  userId: string,
  organizationId: string
): Promise<{ assigned: boolean; alreadyExists: boolean }> {
  const { data: user, error: userError } = await supabase
    .from('users')
    .select('id, role')
    .eq('id', userId)
    .single()

  if (userError || !user) {
    throw new ValidationError('User not found')
  }
  if (user.role !== 'Consult' && user.role !== 'Audit') {
    throw new ValidationError('User must be Consult or Audit')
  }

  const { data: org, error: orgError } = await supabase
    .from('organizations')
    .select('id')
    .eq('id', organizationId)
    .single()

  if (orgError || !org) {
    throw new ValidationError('Organization not found')
  }

  const { data: existing } = await supabase
    .from('user_organizations')
    .select('id')
    .eq('user_id', userId)
    .eq('organization_id', organizationId)
    .maybeSingle()

  if (existing) {
    return { assigned: true, alreadyExists: true }
  }

  const { error: insertError } = await supabase
    .from('user_organizations')
    .insert({
      user_id: userId,
      organization_id: organizationId,
      assigned_by: null,
    })

  if (insertError) {
    if (insertError.code === '23505') {
      return { assigned: true, alreadyExists: true }
    }
    throw insertError
  }

  return { assigned: true, alreadyExists: false }
}

export async function removeConsultAuditFromOrganization (
  userId: string,
  organizationId: string
): Promise<{ removed: boolean }> {
  const { error } = await supabase
    .from('user_organizations')
    .delete()
    .eq('user_id', userId)
    .eq('organization_id', organizationId)

  if (error) {
    throw error
  }

  return { removed: true }
}
