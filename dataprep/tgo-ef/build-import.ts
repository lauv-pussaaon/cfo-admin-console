/**
 * Build Emission Resources import Excel (+ optional seed SQL) from fetched TGO JSON.
 *
 * Usage (from cfo-admin-console):
 *   pnpm tgo-ef:build-import -- --version "TGO พฤษภาคม 2569"
 *   TGO_EF_VERSION="TGO July 2569" pnpm tgo-ef:build-import
 *
 * Inputs:
 *   dataprep/tgo-ef/raw/tgo-ef-cfo.json
 *   dataprep/tgo-ef/raw/tgo-ef-cfp.json
 *   dataprep/ef-catalog/scope_categories.manifest.json
 *
 * Outputs:
 *   dataprep/tgo-ef/out/fuel_resources_tgo_import.xlsx
 *   dataprep/ef-catalog/generated/03_fuel_resources_tgo_api.sql
 */

import fs from 'node:fs'
import path from 'node:path'
import * as XLSX from 'xlsx'
import {
  applyCat4TransportLabels,
  assertUniqueRefKeys,
  buildCfoFuelRows,
  buildCfpFuelRows,
  toImportExcelRow,
  type FuelResourceImportRow,
} from './lib/fuel-rows'
import {
  CAT4_ZERO_LOADING_MARKER,
  SCOPE_CAT4_UPSTREAM_TRANSPORT_ID,
  parseScopeCategoriesFromManifest,
} from './lib/review-utils'

const ROOT = process.cwd()
const RAW_DIR = path.join(ROOT, 'dataprep/tgo-ef/raw')
const OUT_DIR = path.join(ROOT, 'dataprep/tgo-ef/out')
const MANIFEST = path.join(ROOT, 'dataprep/ef-catalog/scope_categories.manifest.json')
const SQL_OUT = path.join(ROOT, 'dataprep/ef-catalog/generated/03_fuel_resources_tgo_api.sql')

type EfPayload = {
  resData?: Record<string, string | number>[]
}

function sqlStr (value: string | number | null | undefined): string {
  if (value === null || value === undefined) return 'NULL'
  return `'${String(value).replace(/'/g, "''")}'`
}

function sqlNum (value: number | null | undefined): string {
  if (value === null || value === undefined) return 'NULL'
  return Number.isFinite(value) ? String(value) : 'NULL'
}

function loadJsonResData (filePath: string): Record<string, string | number>[] {
  if (!fs.existsSync(filePath)) {
    throw new Error(`Missing ${filePath}. Run pnpm tgo-ef:fetch first.`)
  }
  const payload = JSON.parse(fs.readFileSync(filePath, 'utf8')) as EfPayload
  return payload.resData ?? []
}

function resolveVersionLabel (argv: string[]): string {
  const flagIndex = argv.findIndex((arg) => arg === '--version' || arg === '-v')
  if (flagIndex >= 0) {
    const value = argv[flagIndex + 1]?.trim()
    if (value && !value.startsWith('-')) return value
  }
  const eqFlag = argv.find((arg) => arg.startsWith('--version='))
  if (eqFlag) {
    const value = eqFlag.slice('--version='.length).trim()
    if (value) return value
  }
  const fromEnv = process.env.TGO_EF_VERSION?.trim()
  if (fromEnv) return fromEnv
  throw new Error(
    'Version label required. Pass --version "TGO พฤษภาคม 2569" or set TGO_EF_VERSION.',
  )
}

function writeSeedSql (rows: FuelResourceImportRow[], version: string): void {
  fs.mkdirSync(path.dirname(SQL_OUT), { recursive: true })
  const lines = [
    `-- Generated TGO fuels for admin SoT (version=${version}; from pnpm tgo-ef:build-import)`,
    `-- Cat4 duo: value1=ระยะทาง/km for all; value2=น้ำหนักที่ขน/ton except resource containing "${CAT4_ZERO_LOADING_MARKER}"`,
    'BEGIN;',
    '',
  ]

  for (const row of rows) {
    const cols = [
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
      'ref_source',
      'version',
      'ref_code',
      'sort_index',
      'multiplier',
      'created_at',
      'updated_at',
    ]
    const vals = [
      sqlStr(row.id),
      sqlStr(row.scope_category_id),
      sqlStr(row.resource),
      sqlStr(row.sub_category),
      sqlStr(row.unit),
      sqlNum(row.ef_value),
      sqlStr(row.value1_label),
      sqlStr(row.value1_unit),
      sqlStr(row.value2_label),
      sqlStr(row.value2_unit),
      sqlStr(row.ref_info),
      sqlNum(row.ref_co2),
      sqlNum(row.ref_fossil_ch4),
      sqlNum(row.ref_ch4),
      sqlNum(row.ref_n2o),
      sqlStr(row.ref_source),
      sqlStr(row.version),
      sqlStr(row.ref_code),
      sqlNum(row.sort_index),
      sqlNum(row.multiplier),
      'NOW()',
      'NOW()',
    ]
    lines.push(
      `INSERT INTO fuel_resources (${cols.join(', ')})
VALUES (${vals.join(', ')})
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();`,
    )
    lines.push('')
  }

  lines.push('COMMIT;')
  fs.writeFileSync(SQL_OUT, lines.join('\n'), 'utf8')
  console.log(`Wrote ${SQL_OUT} (${rows.length} rows)`)
}

function main () {
  const version = resolveVersionLabel(process.argv.slice(2))
  const categories = parseScopeCategoriesFromManifest(fs.readFileSync(MANIFEST, 'utf8'))
  const cfoData = loadJsonResData(path.join(RAW_DIR, 'tgo-ef-cfo.json'))
  const cfpData = loadJsonResData(path.join(RAW_DIR, 'tgo-ef-cfp.json'))

  const cfoRows = buildCfoFuelRows(cfoData, categories, version)
  const cfpRows = buildCfpFuelRows(cfpData, categories, version)
  // Re-number sort_index globally after merge
  let sortIndex = 0
  const merged = [...cfoRows, ...cfpRows].map((row) => {
    sortIndex += 1
    return { ...row, sort_index: sortIndex }
  })

  const rows = applyCat4TransportLabels(merged)
  assertUniqueRefKeys(rows)

  const cat4 = rows.filter((r) => r.scope_category_id === SCOPE_CAT4_UPSTREAM_TRANSPORT_ID)
  const zeroLoading = cat4.filter((r) => r.resource.includes(CAT4_ZERO_LOADING_MARKER))
  const withValue2 = cat4.filter((r) => r.value2_label != null)
  console.log(
    `Mapped ${rows.length} fuels (version=${version}; CFO ${cfoRows.length} + CFP ${cfpRows.length}); ` +
      `Cat4 ${cat4.length} (zero-loading ${zeroLoading.length}, with value2 ${withValue2.length})`,
  )

  fs.mkdirSync(OUT_DIR, { recursive: true })
  const excelRows = rows.map(toImportExcelRow)
  const workbook = XLSX.utils.book_new()
  const sheet = XLSX.utils.json_to_sheet(excelRows)
  XLSX.utils.book_append_sheet(workbook, sheet, 'fuel_resources')
  const xlsxPath = path.join(OUT_DIR, 'fuel_resources_tgo_import.xlsx')
  XLSX.writeFile(workbook, xlsxPath)
  console.log(`Wrote ${xlsxPath}`)

  writeSeedSql(rows, version)
}

main()
