import type { PolicySlug } from '@/lib/register/policy-slugs'
import { collectAndShareDataConsentContent } from './collect-and-share-data-consent.content'
import { cookiePolicyContent } from './cookie-policy.content'
import { privacyPolicyContent } from './privacy-policy.content'
import { termsAndConditionsContent } from './terms-and-conditions.content'
import type { PolicyContent } from './types'

const POLICY_CONTENT_MAP: Record<PolicySlug, PolicyContent> = {
  'terms-and-conditions': termsAndConditionsContent,
  'privacy-policy': privacyPolicyContent,
  'collect-and-share-data-consent': collectAndShareDataConsentContent,
  'cookie-policy': cookiePolicyContent,
}

export function getPolicyContent (slug: PolicySlug): PolicyContent {
  return POLICY_CONTENT_MAP[slug]
}

export { default as PolicyDocumentBody } from './PolicyDocumentBody'
export type { PolicyContent, PolicySection, PolicyBlock } from './types'
