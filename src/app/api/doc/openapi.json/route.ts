import { NextResponse } from 'next/server'
import { ADMIN_OPS_OPENAPI } from '@/lib/api/ops-openapi'

export async function GET () {
  return NextResponse.json(ADMIN_OPS_OPENAPI)
}
