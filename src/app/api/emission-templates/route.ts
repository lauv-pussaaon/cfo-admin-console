import { NextRequest, NextResponse } from 'next/server'
import { createEmissionTemplate, getEmissionTemplates } from '@/lib/api/emission-templates'

export async function GET(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url)
    const search = searchParams.get('search') ?? undefined
    const page = parseInt(searchParams.get('page') ?? '1', 10)
    const per_page = parseInt(searchParams.get('per_page') ?? '24', 10)
    const include_deleted = searchParams.get('include_deleted') === 'true'
    const isActiveParam = searchParams.get('is_active')
    const is_active = isActiveParam == null ? undefined : isActiveParam === 'true'

    const result = await getEmissionTemplates({
      search,
      page,
      per_page,
      include_deleted,
      is_active,
    })
    return NextResponse.json(result)
  } catch (error) {
    console.error('GET /api/emission-templates error:', error)
    return NextResponse.json({ error: 'Failed to fetch emission templates' }, { status: 500 })
  }
}

function slugify(text: string): string {
  return text
    .toLowerCase()
    .replace(/&/g, ' and ')
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-+|-+$/g, '')
}

export async function POST(request: NextRequest) {
  try {
    const body = await request.json()
    if (!body.name_th || !body.name_en) {
      return NextResponse.json({ error: 'name_th and name_en are required' }, { status: 400 })
    }

    const industry_code = body.industry_code ?? slugify(body.name_en)
    const payload = {
      ...body,
      industry_code,
      display_order: body.display_order ?? 0,
    }

    const record = await createEmissionTemplate(payload)
    return NextResponse.json(record, { status: 201 })
  } catch (error) {
    console.error('POST /api/emission-templates error:', error)
    return NextResponse.json({ error: 'Failed to create emission template' }, { status: 500 })
  }
}
