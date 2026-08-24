import { normalizeOrganizationCode } from '@/lib/organization-code'

const DEFAULT_CLIENT_APEX_DOMAIN = 'ideacarb.com'

export function getClientApexDomain (): string {
  const fromEnv = process.env.NEXT_PUBLIC_CLIENT_APEX_DOMAIN?.trim()
  return fromEnv || DEFAULT_CLIENT_APEX_DOMAIN
}

export function getClientAppOriginOverride (): string | null {
  const raw = process.env.NEXT_PUBLIC_CLIENT_APP_ORIGIN?.trim()
  return raw ? raw.replace(/\/+$/, '') : null
}

export function buildClientAppOrigin (organizationCode: string): string {
  const override = getClientAppOriginOverride()
  if (override) return override
  const code = normalizeOrganizationCode(organizationCode)
  return `https://${code}.${getClientApexDomain()}`
}

export function buildClientLoginApiUrl (organizationCode: string): string {
  return `${buildClientAppOrigin(organizationCode)}/api/auth/login`
}
