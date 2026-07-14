import { NextRequest, NextResponse } from 'next/server'
import * as XLSX from 'xlsx'
import { listFuelResourcesForExport } from '@/lib/api/fuel-resources'
import { listFuelResourceLinkings } from '@/lib/api/fuel-resources-linking'
import { getEfCatalogRelease } from '@/lib/api/ef-catalog-releases'

function toCsv (headers: string[], rows: Array<Array<string | number | null | undefined>>): string {
  const escape = (value: string | number | null | undefined) => {
    const s = value == null ? '' : String(value)
    if (/[",\n\r]/.test(s)) return `"${s.replace(/"/g, '""')}"`
    return s
  }
  return [headers.join(','), ...rows.map((r) => r.map(escape).join(','))].join('\n')
}

export async function GET (request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url)
    const version = searchParams.get('version')?.trim()
    const artifact = searchParams.get('artifact')?.trim() || 'fuel_resources'
    const allowDraft = searchParams.get('allow_draft') === 'true'

    if (!version) {
      return NextResponse.json({ error: 'version is required' }, { status: 400 })
    }

    const release = await getEfCatalogRelease(version)
    if (release && release.status !== 'published' && !allowDraft) {
      return NextResponse.json(
        {
          error: 'Release is not published. Pass allow_draft=true to export draft for QA.',
          status: release.status,
        },
        { status: 409 }
      )
    }

    if (artifact === 'fuel_resources') {
      const fuels = await listFuelResourcesForExport(version)
      const rows = fuels.map((f) => ({
        id: f.id,
        scope_category_id: f.scope_category_id,
        resource: f.resource,
        sub_category: f.sub_category,
        unit: f.unit,
        ef_value: f.ef_value,
        value1_label: f.value1_label,
        value1_unit: f.value1_unit,
        value2_label: f.value2_label,
        value2_unit: f.value2_unit,
        ref_info: f.ref_info,
        ref_co2: f.ref_co2,
        ref_fossil_ch4: f.ref_fossil_ch4,
        ref_ch4: f.ref_ch4,
        ref_n2o: f.ref_n2o,
        ref_sf6: f.ref_sf6,
        ref_nf3: f.ref_nf3,
        ref_hfcs: f.ref_hfcs,
        ref_pfcs: f.ref_pfcs,
        gwp100_hfcs: f.gwp100_hfcs,
        gwp100_pfcs: f.gwp100_pfcs,
        extraghg_ef: f.extraghg_ef,
        extraghg_gwp100: f.extraghg_gwp100,
        ref_source: f.ref_source,
        version: f.version,
        ref_code: f.ref_code,
        sort_index: f.sort_index,
        multiplier: f.multiplier,
      }))

      const workbook = XLSX.utils.book_new()
      const sheet = XLSX.utils.json_to_sheet(rows)
      XLSX.utils.book_append_sheet(workbook, sheet, 'fuel_resources')
      const buffer = XLSX.write(workbook, { type: 'buffer', bookType: 'xlsx' }) as Buffer

      return new NextResponse(new Uint8Array(buffer), {
        headers: {
          'Content-Type': 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
          'Content-Disposition': `attachment; filename="fuel_resources_${encodeURIComponent(version)}.xlsx"`,
        },
      })
    }

    if (artifact === 'fuel_resources_linking') {
      const links = await listFuelResourceLinkings(version)
      const csv = toCsv(
        [
          'source_fuel_id',
          'dest_fuel_id',
          'unit_conversion_factor',
          'version',
          'source_resource',
          'dest_resource',
        ],
        links.map((l) => [
          l.source_fuel_id,
          l.dest_fuel_id,
          l.unit_conversion_factor,
          l.version,
          l.source_fuel?.resource ?? '',
          l.dest_fuel?.resource ?? '',
        ])
      )
      return new NextResponse(csv, {
        headers: {
          'Content-Type': 'text/csv; charset=utf-8',
          'Content-Disposition': `attachment; filename="fuel_resources_linking_${encodeURIComponent(version)}.csv"`,
        },
      })
    }

    return NextResponse.json(
      { error: 'artifact must be fuel_resources or fuel_resources_linking' },
      { status: 400 }
    )
  } catch (error) {
    console.error('GET /api/ef-catalog/export error:', error)
    return NextResponse.json({ error: 'Failed to export catalog' }, { status: 500 })
  }
}
