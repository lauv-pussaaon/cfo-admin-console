export const POLICY_SLUGS = {
  terms: 'terms-and-conditions',
  privacy: 'privacy-policy',
  cookie: 'cookie-policy',
} as const

export type PolicySlug = (typeof POLICY_SLUGS)[keyof typeof POLICY_SLUGS]

const POLICY_SLUG_SET = new Set<string>(Object.values(POLICY_SLUGS))

export function isPolicySlug(slug: string): slug is PolicySlug {
  return POLICY_SLUG_SET.has(slug)
}

export function getPolicyRoutePath(slug: PolicySlug): string {
  return `/register/policy/${slug}`
}

export function getPolicyDocumentUrl(slug: PolicySlug): string {
  return getPolicyRoutePath(slug)
}
