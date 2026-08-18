import { NextRequest } from 'next/server'
import { handlePublicOrgSignup } from '@/lib/api/public-org-signup'

export async function POST (request: NextRequest) {
  return handlePublicOrgSignup(request, 'annual_membership')
}
