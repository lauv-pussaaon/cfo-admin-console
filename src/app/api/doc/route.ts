import { NextResponse } from 'next/server'
import { swaggerDocHtml } from '@/lib/api/ops-openapi'

export async function GET () {
  return new NextResponse(swaggerDocHtml('IdeaCarb Admin Console ops APIs'), {
    headers: {
      'content-type': 'text/html; charset=utf-8',
      'cache-control': 'no-store',
    },
  })
}
