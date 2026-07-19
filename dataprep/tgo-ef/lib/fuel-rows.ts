import {
  SCOPE_CAT4_UPSTREAM_TRANSPORT_ID,
  TGO_REF_SOURCE,
  TGO_VERSION,
  buildCandidateUuid,
  buildCfpRefCode,
  isCat4ZeroLoadingResource,
  mapCfoRow,
  mapCfpRow,
  parseNumeric,
  type ScopeCategory,
} from './review-utils'

export type FuelResourceImportRow = {
  reqLabel: 'CFO' | 'CFP'
  id: string
  scope_category_id: string
  resource: string
  sub_category: string | null
  unit: string
  ef_value: number | null
  value1_label: string | null
  value1_unit: string | null
  value2_label: string | null
  value2_unit: string | null
  ref_info: string | null
  ref_co2: number | null
  ref_fossil_ch4: number | null
  ref_ch4: number | null
  ref_n2o: number | null
  ref_sf6: number | null
  ref_nf3: number | null
  ref_hfcs: number | null
  ref_pfcs: number | null
  gwp100_hfcs: number | null
  gwp100_pfcs: number | null
  extraghg_ef: number | null
  extraghg_gwp100: number | null
  ref_source: string
  version: string
  ref_code: string
  sort_index: number
  multiplier: number
  mappingReason: string
}

function normalizeRefInfo (value: string): string | null {
  const trimmed = value.trim()
  return trimmed.length > 0 ? trimmed : null
}

function buildMappedRow (input: {
  reqLabel: 'CFO' | 'CFP'
  scopeCategory: ScopeCategory
  resource: string
  subCategory: string | null
  unit: string
  efValue: number | null
  refInfo: string | null
  refCo2: number | null
  refFossilCh4: number | null
  refCh4: number | null
  refN2o: number | null
  refCode: string
  mappingReason: string
  sortIndex: number
}): FuelResourceImportRow {
  return {
    reqLabel: input.reqLabel,
    id: buildCandidateUuid({
      reqLabel: input.reqLabel,
      scopeIndex: input.scopeCategory.display_order,
      name: input.resource,
      unit: input.unit,
      efValue: input.efValue,
      refCode: input.refCode,
    }),
    scope_category_id: input.scopeCategory.id,
    resource: input.resource,
    sub_category: input.subCategory,
    unit: input.unit,
    ef_value: input.efValue,
    value1_label: null,
    value1_unit: null,
    value2_label: null,
    value2_unit: null,
    ref_info: input.refInfo,
    ref_co2: input.refCo2,
    ref_fossil_ch4: input.refFossilCh4,
    ref_ch4: input.refCh4,
    ref_n2o: input.refN2o,
    ref_sf6: null,
    ref_nf3: null,
    ref_hfcs: null,
    ref_pfcs: null,
    gwp100_hfcs: null,
    gwp100_pfcs: null,
    extraghg_ef: null,
    extraghg_gwp100: null,
    ref_source: TGO_REF_SOURCE,
    version: TGO_VERSION,
    ref_code: input.refCode,
    sort_index: input.sortIndex,
    multiplier: 1,
    mappingReason: input.mappingReason,
  }
}

/**
 * Apply Scope 3 Cat 4 duo labels (mirrors migration_update_tgo_cat4_duo_labels.sql
 * with improved zero-loading match: leading-space " 0% Loading").
 */
export function applyCat4TransportLabels (rows: FuelResourceImportRow[]): FuelResourceImportRow[] {
  return rows.map((row) => {
    if (row.scope_category_id !== SCOPE_CAT4_UPSTREAM_TRANSPORT_ID) {
      return row
    }

    const next: FuelResourceImportRow = {
      ...row,
      value1_label: 'ระยะทาง',
      value1_unit: 'km',
      value2_label: null,
      value2_unit: null,
    }

    if (!isCat4ZeroLoadingResource(row.resource)) {
      next.value2_label = 'น้ำหนักที่ขน'
      next.value2_unit = 'ton'
    }

    return next
  })
}

export function buildCfoFuelRows (
  rows: Record<string, string | number>[],
  categories: ScopeCategory[],
): FuelResourceImportRow[] {
  const result: FuelResourceImportRow[] = []
  let sortIndex = 0

  for (const row of rows) {
    const mapping = mapCfoRow(categories, row)
    if (mapping.status !== 'mapped' || !mapping.scopeCategory) continue

    sortIndex += 1
    result.push(
      buildMappedRow({
        reqLabel: 'CFO',
        scopeCategory: mapping.scopeCategory,
        resource: String(row.name),
        subCategory: null,
        unit: String(row.units),
        efValue: parseNumeric(row.volumn_total),
        refInfo: normalizeRefInfo(String(row.description)),
        refCo2: parseNumeric(row.volumn_co2),
        refFossilCh4: parseNumeric(row.volumn_fossil_ch4),
        refCh4: parseNumeric(row.volumn_ch4),
        refN2o: parseNumeric(row.volumn_n2o),
        refCode: String(row.code),
        mappingReason: mapping.reason,
        sortIndex,
      }),
    )
  }

  return result
}

export function buildCfpFuelRows (
  rows: Record<string, string | number>[],
  categories: ScopeCategory[],
): FuelResourceImportRow[] {
  const result: FuelResourceImportRow[] = []
  let sortIndex = 0

  for (const row of rows) {
    const mapping = mapCfpRow(categories, row)
    if (mapping.status !== 'mapped' || !mapping.scopeCategory) continue

    const name = String(row.name)
    const unit = String(row.units)
    const volumn = String(row.volumn)
    sortIndex += 1

    result.push(
      buildMappedRow({
        reqLabel: 'CFP',
        scopeCategory: mapping.scopeCategory,
        resource: name,
        subCategory: String(row.category),
        unit,
        efValue: parseNumeric(volumn),
        refInfo: normalizeRefInfo(String(row.source)),
        refCo2: null,
        refFossilCh4: null,
        refCh4: null,
        refN2o: null,
        refCode: buildCfpRefCode(name, unit, volumn),
        mappingReason: mapping.reason,
        sortIndex,
      }),
    )
  }

  return result
}

export function assertUniqueRefKeys (rows: FuelResourceImportRow[]): void {
  const seen = new Set<string>()
  for (const row of rows) {
    const key = `${row.ref_source}|${row.version}|${row.ref_code}`
    if (seen.has(key)) {
      throw new Error(`Duplicate ref key: ${key}`)
    }
    seen.add(key)
  }
}

/** Excel / import column order (matches admin export). */
export const IMPORT_EXCEL_HEADERS = [
  'id',
  'scope_category_id',
  'resource',
  'sub_category',
  'unit',
  'ef_value',
  'value1_label',
  'value1_unit',
  'value2_label',
  'value2_unit',
  'ref_info',
  'ref_co2',
  'ref_fossil_ch4',
  'ref_ch4',
  'ref_n2o',
  'ref_sf6',
  'ref_nf3',
  'ref_hfcs',
  'ref_pfcs',
  'gwp100_hfcs',
  'gwp100_pfcs',
  'extraghg_ef',
  'extraghg_gwp100',
  'ref_source',
  'version',
  'ref_code',
  'sort_index',
  'multiplier',
] as const

export function toImportExcelRow (row: FuelResourceImportRow): Record<string, string | number | null> {
  return {
    id: row.id,
    scope_category_id: row.scope_category_id,
    resource: row.resource,
    sub_category: row.sub_category,
    unit: row.unit,
    ef_value: row.ef_value,
    value1_label: row.value1_label,
    value1_unit: row.value1_unit,
    value2_label: row.value2_label,
    value2_unit: row.value2_unit,
    ref_info: row.ref_info,
    ref_co2: row.ref_co2,
    ref_fossil_ch4: row.ref_fossil_ch4,
    ref_ch4: row.ref_ch4,
    ref_n2o: row.ref_n2o,
    ref_sf6: row.ref_sf6,
    ref_nf3: row.ref_nf3,
    ref_hfcs: row.ref_hfcs,
    ref_pfcs: row.ref_pfcs,
    gwp100_hfcs: row.gwp100_hfcs,
    gwp100_pfcs: row.gwp100_pfcs,
    extraghg_ef: row.extraghg_ef,
    extraghg_gwp100: row.extraghg_gwp100,
    ref_source: row.ref_source,
    version: row.version,
    ref_code: row.ref_code,
    sort_index: row.sort_index,
    multiplier: row.multiplier,
  }
}
