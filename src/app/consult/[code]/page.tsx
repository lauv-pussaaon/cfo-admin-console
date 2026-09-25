import { supabase } from '@/lib/supabase'
import { ConsultPublicProfile, type ConsultProfile } from './ConsultPublicProfile'

async function loadConsultProfile (code: string): Promise<ConsultProfile | null> {
  const { data, error } = await supabase
    .from('users')
    .select('name, email, phone, avatar_url, invite_hashcode, consulting_firm_id, role, status')
    .eq('invite_hashcode', code)
    .eq('role', 'Consult')
    .eq('status', 'active')
    .maybeSingle()

  if (error || !data?.invite_hashcode) return null

  let firmName: string | null = null
  if (data.consulting_firm_id) {
    const { data: firm } = await supabase
      .from('consulting_firms')
      .select('name')
      .eq('id', data.consulting_firm_id)
      .maybeSingle()
    firmName = firm?.name ?? null
  }

  return {
    name: data.name,
    email: data.email,
    phone: data.phone,
    avatar_url: data.avatar_url,
    invite_hashcode: data.invite_hashcode,
    firmName,
  }
}

export default async function ConsultPublicProfilePage ({
  params,
}: {
  params: Promise<{ code: string }>
}) {
  const { code } = await params
  const profile = await loadConsultProfile(decodeURIComponent(code))
  return <ConsultPublicProfile profile={profile} />
}
