import { supabase } from '../supabase'
import { throwIfError } from '@/lib/utils/errors'
import type { UserConsent } from '@/types/database'

export interface CreateUserConsentInput {
  termsAccepted: boolean
  privacyAcknowledged: boolean
  collectShareDataConsent: boolean
  marketingConsent: boolean
  termsDocumentUrl: string
  privacyDocumentUrl: string
  collectShareDataConsentUrl: string
}

export const createUserConsent = async (
  userId: string,
  input: CreateUserConsentInput
): Promise<UserConsent> => {
  const result = await supabase
    .from('user_consents')
    .insert({
      user_id: userId,
      terms_accepted: input.termsAccepted,
      privacy_acknowledged: input.privacyAcknowledged,
      collect_share_data_consent: input.collectShareDataConsent ?? false,
      marketing_consent: input.marketingConsent,
      terms_document_url: input.termsDocumentUrl,
      privacy_document_url: input.privacyDocumentUrl,
      collect_share_data_consent_url: input.collectShareDataConsentUrl,
    })
    .select()
    .single()

  return throwIfError(result)
}
