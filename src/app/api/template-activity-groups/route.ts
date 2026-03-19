import { NextRequest, NextResponse } from 'next/server'
import { createTemplateActivityGroup, getTemplateActivityGroups } from '@/lib/api/emission-templates'

export async function GET(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url)
    const template_id = searchParams.get('template_id') ?? undefined
    const search = searchParams.get('search') ?? undefined
    const include_deleted = searchParams.get('include_deleted') === 'true'

    const data = await getTemplateActivityGroups({
      template_id,
      search,
      include_deleted,
    })
    return NextResponse.json({ data })
  } catch (error) {
    console.error('GET /api/template-activity-groups error:', error)
    return NextResponse.json({ error: 'Failed to fetch activity groups' }, { status: 500 })
  }
}

export async function POST(request: NextRequest) {
  try {
    const body = await request.json()
    if (!body.template_id || !body.name_th || !body.name_en) {
      return NextResponse.json({ error: 'template_id, name_th, and name_en are required' }, { status: 400 })
    }

    const record = await createTemplateActivityGroup(body)
    return NextResponse.json(record, { status: 201 })
  } catch (error) {
    console.error('POST /api/template-activity-groups error:', error)
    return NextResponse.json({ error: 'Failed to create activity group' }, { status: 500 })
  }
}
