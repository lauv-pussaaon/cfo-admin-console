import fs from 'node:fs'
import path from 'node:path'
import {
  TGO_REF_SOURCE,
  SCOPE_S1_CAT4_FUGITIVE_ID,
  uuidV5,
} from './review-utils'
import type { FuelResourceImportRow } from './fuel-rows'

export const EXPECTED_MAY_FUGITIVE_COUNT = 55

export const TGO_FUGITIVE_OVERLAY_VERSIONS = [
  'TGO พฤษภาคม 2569',
  'TGO 1 กรกฎาคม 2569',
] as const

export const TGO_FUGITIVE_SOFT_DELETE_VERSIONS = [
  ...TGO_FUGITIVE_OVERLAY_VERSIONS,
  'TGO API',
  'TGO May 2569',
] as const

const MAY_FUGITIVE_SQL_REL = 'dataprep/ef-catalog/generated/02a_fuel_resources_may2569.sql'

const MAY_TUPLE_COLS = [
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
  'multiplier',
  'version',
] as const

export type MayFugitiveSourceRow = {
  mayId: string
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
  multiplier: number
}

function defaultMayFugitiveSqlPath (): string {
  return path.join(process.cwd(), MAY_FUGITIVE_SQL_REL)
}

function parseSqlLiteral (raw: string): string | number | null {
  const trimmed = raw.trim().replace(/::uuid$/i, '').trim()
  if (trimmed === 'NULL' || trimmed === 'null') return null
  if (trimmed.startsWith("'") && trimmed.endsWith("'")) {
    return trimmed.slice(1, -1).replace(/''/g, "'")
  }
  const n = Number(trimmed)
  if (!Number.isFinite(n)) {
    throw new Error(`Unparseable SQL literal: ${raw}`)
  }
  return n
}

function splitSqlArgs (inner: string): string[] {
  const parts: string[] = []
  let cur = ''
  let inQuote = false
  for (let i = 0; i < inner.length; i++) {
    const ch = inner[i]
    if (ch === "'" && inner[i + 1] === "'") {
      cur += "''"
      i++
      continue
    }
    if (ch === "'") {
      inQuote = !inQuote
      cur += ch
      continue
    }
    if (ch === ',' && !inQuote) {
      parts.push(cur.trim())
      cur = ''
      continue
    }
    cur += ch
  }
  if (cur.trim()) parts.push(cur.trim())
  return parts
}

function extractValueTuples (sql: string): string[] {
  const tuples: string[] = []
  const valuesRe = /INSERT INTO fuel_resources[\s\S]*?VALUES\s*/gi
  let header: RegExpExecArray | null
  while ((header = valuesRe.exec(sql))) {
    let i = header.index + header[0].length
    while (i < sql.length) {
      while (i < sql.length && /\s/.test(sql[i])) i++
      if (sql[i] !== '(') break
      const start = i
      let depth = 0
      let inQuote = false
      for (; i < sql.length; i++) {
        const ch = sql[i]
        if (ch === "'" && sql[i + 1] === "'") {
          i++
          continue
        }
        if (ch === "'") {
          inQuote = !inQuote
          continue
        }
        if (inQuote) continue
        if (ch === '(') depth++
        else if (ch === ')') {
          depth--
          if (depth === 0) {
            tuples.push(sql.slice(start + 1, i))
            i++
            break
          }
        }
      }
      while (i < sql.length && /\s/.test(sql[i])) i++
      if (sql[i] === ',') {
        i++
        continue
      }
      break
    }
  }
  return tuples
}

export function loadMayFugitiveSourceRows (sqlPath: string = defaultMayFugitiveSqlPath()): MayFugitiveSourceRow[] {
  if (!fs.existsSync(sqlPath)) {
    throw new Error(`Missing May fugitive source SQL: ${sqlPath}`)
  }
  const sql = fs.readFileSync(sqlPath, 'utf8')
  const rows: MayFugitiveSourceRow[] = []

  for (const inner of extractValueTuples(sql)) {
    const args = splitSqlArgs(inner)
    if (args.length !== MAY_TUPLE_COLS.length) continue
    const parsed = Object.fromEntries(
      MAY_TUPLE_COLS.map((col, idx) => [col, parseSqlLiteral(args[idx])]),
    ) as Record<(typeof MAY_TUPLE_COLS)[number], string | number | null>

    if (parsed.scope_category_id !== SCOPE_S1_CAT4_FUGITIVE_ID) continue
    if (typeof parsed.id !== 'string' || typeof parsed.resource !== 'string' || typeof parsed.unit !== 'string') {
      throw new Error('May fugitive row missing id/resource/unit')
    }

    rows.push({
      mayId: parsed.id,
      resource: parsed.resource,
      sub_category: typeof parsed.sub_category === 'string' ? parsed.sub_category : null,
      unit: parsed.unit,
      ef_value: typeof parsed.ef_value === 'number' ? parsed.ef_value : null,
      value1_label: typeof parsed.value1_label === 'string' ? parsed.value1_label : null,
      value1_unit: typeof parsed.value1_unit === 'string' ? parsed.value1_unit : null,
      value2_label: typeof parsed.value2_label === 'string' ? parsed.value2_label : null,
      value2_unit: typeof parsed.value2_unit === 'string' ? parsed.value2_unit : null,
      ref_info: typeof parsed.ref_info === 'string' ? parsed.ref_info : null,
      ref_co2: typeof parsed.ref_co2 === 'number' ? parsed.ref_co2 : null,
      ref_fossil_ch4: typeof parsed.ref_fossil_ch4 === 'number' ? parsed.ref_fossil_ch4 : null,
      ref_ch4: typeof parsed.ref_ch4 === 'number' ? parsed.ref_ch4 : null,
      ref_n2o: typeof parsed.ref_n2o === 'number' ? parsed.ref_n2o : null,
      ref_sf6: typeof parsed.ref_sf6 === 'number' ? parsed.ref_sf6 : null,
      ref_nf3: typeof parsed.ref_nf3 === 'number' ? parsed.ref_nf3 : null,
      ref_hfcs: typeof parsed.ref_hfcs === 'number' ? parsed.ref_hfcs : null,
      ref_pfcs: typeof parsed.ref_pfcs === 'number' ? parsed.ref_pfcs : null,
      gwp100_hfcs: typeof parsed.gwp100_hfcs === 'number' ? parsed.gwp100_hfcs : null,
      gwp100_pfcs: typeof parsed.gwp100_pfcs === 'number' ? parsed.gwp100_pfcs : null,
      extraghg_ef: typeof parsed.extraghg_ef === 'number' ? parsed.extraghg_ef : null,
      extraghg_gwp100: typeof parsed.extraghg_gwp100 === 'number' ? parsed.extraghg_gwp100 : null,
      multiplier: typeof parsed.multiplier === 'number' ? parsed.multiplier : 1,
    })
  }

  if (rows.length !== EXPECTED_MAY_FUGITIVE_COUNT) {
    throw new Error(
      `Expected ${EXPECTED_MAY_FUGITIVE_COUNT} May Scope 1 Cat 4 fugitive rows in ${sqlPath}, got ${rows.length}`,
    )
  }
  return rows
}

export function overlayFuelId (mayId: string, version: string): string {
  return uuidV5(`${mayId}|${version}`)
}

export function overlayRefCode (mayId: string): string {
  return `MAY-FUG-${mayId.slice(0, 8)}`
}

export function buildMayFugitiveOverlayRows (
  version: string,
  sourceRows: MayFugitiveSourceRow[] = loadMayFugitiveSourceRows(),
  sortIndexOffset = 0,
): FuelResourceImportRow[] {
  return sourceRows.map((src, index) => ({
    reqLabel: 'CFO',
    id: overlayFuelId(src.mayId, version),
    scope_category_id: SCOPE_S1_CAT4_FUGITIVE_ID,
    resource: src.resource,
    sub_category: src.sub_category,
    unit: src.unit,
    ef_value: src.ef_value,
    value1_label: src.value1_label,
    value1_unit: src.value1_unit,
    value2_label: src.value2_label,
    value2_unit: src.value2_unit,
    ref_info: src.ref_info,
    ref_co2: src.ref_co2,
    ref_fossil_ch4: src.ref_fossil_ch4,
    ref_ch4: src.ref_ch4,
    ref_n2o: src.ref_n2o,
    ref_sf6: src.ref_sf6,
    ref_nf3: src.ref_nf3,
    ref_hfcs: src.ref_hfcs,
    ref_pfcs: src.ref_pfcs,
    gwp100_hfcs: src.gwp100_hfcs,
    gwp100_pfcs: src.gwp100_pfcs,
    extraghg_ef: src.extraghg_ef,
    extraghg_gwp100: src.extraghg_gwp100,
    ref_source: TGO_REF_SOURCE,
    version,
    ref_code: overlayRefCode(src.mayId),
    sort_index: sortIndexOffset + index + 1,
    multiplier: src.multiplier,
    description: src.ref_info,
    meta: {},
    mappingReason: 'May 2569 Scope 1 Cat 4 fugitive overlay',
  }))
}

export function applyMayFugitiveOverlay (
  rows: FuelResourceImportRow[],
  version: string,
  sourceRows?: MayFugitiveSourceRow[],
): FuelResourceImportRow[] {
  const kept = rows.filter((row) => row.scope_category_id !== SCOPE_S1_CAT4_FUGITIVE_ID)
  const overlay = buildMayFugitiveOverlayRows(version, sourceRows ?? loadMayFugitiveSourceRows())
  return [...kept, ...overlay].map((row, index) => ({ ...row, sort_index: index + 1 }))
}
