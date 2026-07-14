import type { NextRequest } from 'next/server'

function getBearerToken (request: NextRequest): string | null {
  const authorization = request.headers.get('authorization') ?? ''
  if (!authorization.toLowerCase().startsWith('bearer ')) {
    return null
  }
  return authorization.slice(7).trim()
}

export function isEfCatalogSyncAuthorized (request: NextRequest): boolean {
  const secret = process.env.EF_CATALOG_SYNC_SECRET
  if (!secret) return false
  const bearer = getBearerToken(request)
  const headerSecret = request.headers.get('x-ef-catalog-sync-secret')
  return bearer === secret || headerSecret === secret
}
