#!/usr/bin/env node
/**
 * Generate admin EF catalog import SQL from client-app seeds.
 *
 * Usage (from cfo-admin-console):
 *   npm run ef-catalog:generate-import
 *   # or: node dataprep/ef-catalog/generate-import-sql.cjs
 *
 * Writes:
 *   dataprep/ef-catalog/generated/01_scope_categories.sql
 *   dataprep/ef-catalog/generated/02a_fuel_resources_may2569.sql
 *   dataprep/ef-catalog/generated/02b_fuel_resources_may2569.sql
 *   dataprep/ef-catalog/generated/02c_fuel_resources_may2569.sql
 *   dataprep/ef-catalog/generated/03_fuel_resources_tgo_api.sql  (from pnpm tgo-ef:build-import; not overwritten here)
 *   dataprep/ef-catalog/generated/04_fuel_resources_feb2569.sql
 *
 * TGO fuels: run `pnpm tgo-ef:fetch` then `pnpm tgo-ef:build-import` (writes Excel + 03_ SQL).
 * This script no longer reads ideacarb-client-app TGO seeds.
 *
 * Prerequisites: run migration_add_ef_catalog_versioning.sql and
 * migration_align_scope_categories_canonical.sql first (or apply 01_ first).
 */

const fs = require('fs')
const path = require('path')
const crypto = require('crypto')

const ROOT = path.resolve(__dirname, '../..')
const CLIENT = path.resolve(ROOT, '../ideacarb-client-app')
const OUT = path.join(__dirname, 'generated')
const MANIFEST = path.join(__dirname, 'scope_categories.manifest.json')

const FUEL_NAMESPACE = '6ba7b810-9dad-11d1-80b4-00c04fd430c8'
const VERSION_FEB = 'กุมภาพันธ์ 2569'
const VERSION_MAY = 'พฤษภาคม 2569'
const VERSION_TGO = 'TGO API'

function parseUuidBytes (uuid) {
  return Buffer.from(uuid.replace(/-/g, ''), 'hex')
}

function formatUuidBytes (bytes) {
  const hex = bytes.toString('hex')
  return [
    hex.slice(0, 8),
    hex.slice(8, 12),
    hex.slice(12, 16),
    hex.slice(16, 20),
    hex.slice(20, 32),
  ].join('-')
}

function uuidV5 (name, namespace) {
  const hash = crypto
    .createHash('sha1')
    .update(Buffer.concat([parseUuidBytes(namespace), Buffer.from(name, 'utf8')]))
    .digest()
  hash[6] = (hash[6] & 0x0f) | 0x50
  hash[8] = (hash[8] & 0x3f) | 0x80
  return formatUuidBytes(hash.subarray(0, 16))
}

function sqlStr (value) {
  if (value === null || value === undefined) return 'NULL'
  return `'${String(value).replace(/'/g, "''")}'`
}

function sqlNum (value) {
  if (value === null || value === undefined || value === '') return 'NULL'
  const n = Number(value)
  return Number.isFinite(n) ? String(n) : 'NULL'
}

function ensureOut () {
  fs.mkdirSync(OUT, { recursive: true })
}

function writeCategories () {
  const manifest = JSON.parse(fs.readFileSync(MANIFEST, 'utf8'))
  const lines = [
    '-- Canonical scope_categories (from client scope_categories.manifest.json)',
    'BEGIN;',
    '',
  ]
  for (const c of manifest.categories) {
    lines.push(
      `INSERT INTO scope_categories (id, scope, name_th, name_en, display_order, created_at, updated_at)
VALUES (${sqlStr(c.id)}, ${c.scope}, ${sqlStr(c.name_th)}, ${sqlStr(c.name_en)}, ${c.display_order}, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope = EXCLUDED.scope,
  name_th = EXCLUDED.name_th,
  name_en = EXCLUDED.name_en,
  display_order = EXCLUDED.display_order,
  deleted_at = NULL,
  updated_at = NOW();`
    )
    lines.push('')
  }
  lines.push('COMMIT;')
  fs.writeFileSync(path.join(OUT, '01_scope_categories.sql'), lines.join('\n'))
  console.log(`Wrote 01_scope_categories.sql (${manifest.categories.length} rows)`)
}

function writeMayFromClientSeed () {
  const src = path.join(CLIENT, 'database/seeds/seed_fuel_resources_may2569.sql')
  const text = fs.readFileSync(src, 'utf8')
  const catalogStart = text.indexOf('BEGIN;')
  const catalogEnd = text.indexOf('COMMIT;', catalogStart)
  if (catalogStart < 0 || catalogEnd < 0) {
    throw new Error('May seed catalog transaction not found')
  }

  const catalog = text.slice(catalogStart + 'BEGIN;'.length, catalogEnd)
  const statements = catalog.match(
    /INSERT INTO fuel_resources[\s\S]*?ON CONFLICT \(id\) DO NOTHING;/g
  )
  if (!statements?.length) {
    throw new Error('May seed fuel insert statements not found')
  }

  const rewritten = statements.map((statement) =>
    statement.replace(/ON CONFLICT \(id\) DO NOTHING/gi, `ON CONFLICT (id) DO UPDATE SET
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
  ref_sf6 = EXCLUDED.ref_sf6,
  ref_nf3 = EXCLUDED.ref_nf3,
  ref_hfcs = EXCLUDED.ref_hfcs,
  ref_pfcs = EXCLUDED.ref_pfcs,
  gwp100_hfcs = EXCLUDED.gwp100_hfcs,
  gwp100_pfcs = EXCLUDED.gwp100_pfcs,
  extraghg_ef = EXCLUDED.extraghg_ef,
  extraghg_gwp100 = EXCLUDED.extraghg_gwp100,
  multiplier = EXCLUDED.multiplier,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW()`)
  )

  const totalBytes = rewritten.reduce((sum, statement) => sum + Buffer.byteLength(statement), 0)
  const targetBytes = totalBytes / 3
  const parts = [[], [], []]
  let partIndex = 0
  let partBytes = 0

  for (const statement of rewritten) {
    if (partIndex < 2 && partBytes >= targetBytes) {
      partIndex++
      partBytes = 0
    }
    parts[partIndex].push(statement)
    partBytes += Buffer.byteLength(statement)
  }

  const oldOutput = path.join(OUT, '02_fuel_resources_may2569.sql')
  if (fs.existsSync(oldOutput)) fs.unlinkSync(oldOutput)

  parts.forEach((part, index) => {
    const suffix = String.fromCharCode(97 + index)
    const filename = `02${suffix}_fuel_resources_may2569.sql`
    const header = [
      '-- Generated for admin SoT from client seed_fuel_resources_may2569.sql',
      `-- version = ${VERSION_MAY}`,
      `-- part ${index + 1} of 3; run 02a, 02b, then 02c`,
      '-- Idempotent: stable IDs are upserted and restored if soft-deleted.',
      '',
      'BEGIN;',
      '',
    ].join('\n')
    const output = `${header}${part.join('\n\n')}\n\nCOMMIT;\n`
    fs.writeFileSync(path.join(OUT, filename), output)
    console.log(`Wrote ${filename} (${part.length} insert batches)`)
  })
}

function parseSqlValueTuple (tuple) {
  // Split by commas not inside quotes
  const parts = []
  let cur = ''
  let inQuote = false
  for (let i = 0; i < tuple.length; i++) {
    const ch = tuple[i]
    if (ch === "'" && tuple[i + 1] === "'") {
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

function unquote (sqlLit) {
  if (sqlLit === 'NULL' || sqlLit === 'null') return null
  if (sqlLit.startsWith("'") && sqlLit.endsWith("'")) {
    return sqlLit.slice(1, -1).replace(/''/g, "'")
  }
  return sqlLit
}

function noteTgoSeedFromBuildImport () {
  const tgoSql = path.join(OUT, '03_fuel_resources_tgo_api.sql')
  if (fs.existsSync(tgoSql)) {
    console.log(
      `Keeping existing 03_fuel_resources_tgo_api.sql (regenerate with: pnpm tgo-ef:build-import)`,
    )
    return
  }
  console.warn(
    `Missing 03_fuel_resources_tgo_api.sql — run: pnpm tgo-ef:fetch && pnpm tgo-ef:build-import`,
  )
}

function writeFebFromClientSeed () {
  const src = path.join(CLIENT, 'database/seeds/seed_fuel_resources_feb2569.sql')
  const text = fs.readFileSync(src, 'utf8')
  const manifest = JSON.parse(fs.readFileSync(MANIFEST, 'utf8'))
  const nameToId = new Map(manifest.categories.map((c) => [c.name_th, c.id]))
  // Alias for Category 5 legacy spelling in older seeds
  nameToId.set(
    'Category 5 การจัดการของเสียที่เกิดจากการด าเนินกิจกรรมขององค์กร',
    nameToId.get('Category 5 การจัดการของเสียที่เกิดจากการดำเนินกิจกรรมขององค์กร')
  )

  const out = [
    `-- Generated Feb 2569 fuels for admin SoT (deterministic UUID v5)`,
    `-- version = ${VERSION_FEB}`,
    'BEGIN;',
    '',
  ]

  // Pattern:
  // INSERT INTO fuel_resources (scope_category_id, resource, unit, ef_value, ... )
  // SELECT sc.id, 'Natural Gas...', 'SCF', 0.057..., ...
  // FROM scope_categories sc WHERE sc.name_th = '...';
  const blockRe =
    /INSERT INTO fuel_resources\s*\(([^)]+)\)\s*SELECT\s+sc\.id\s*,([\s\S]*?)\s*FROM scope_categories sc\s*WHERE sc\.name_th\s*=\s*'((?:[^']|'')*)'\s*;/gi

  let count = 0
  let m
  while ((m = blockRe.exec(text)) !== null) {
    const colList = m[1].split(',').map((c) => c.trim())
    const selectTail = m[2]
    const nameTh = m[3].replace(/''/g, "'")
    const categoryId = nameToId.get(nameTh)
    if (!categoryId) {
      console.warn(`Unknown category name_th: ${nameTh}`)
      continue
    }

    // selectTail is: 'resource', unit?, ef, ...
    const selectParts = parseSqlValueTuple(selectTail)
    // First select col after sc.id is resource
    const resource = unquote(selectParts[0])
    const unitIdx = colList.indexOf('unit')
    const efIdx = colList.indexOf('ef_value')
    const refIdx = colList.indexOf('ref_info')
    // selectParts indices are offset by -1 vs colList because scope_category_id is sc.id
    const getByCol = (col) => {
      const i = colList.indexOf(col)
      if (i <= 0) return null
      return unquote(selectParts[i - 1])
    }
    const unit = getByCol('unit')
    const efValue = getByCol('ef_value')
    const refInfo = getByCol('ref_info')
    const subCategory = getByCol('sub_category')
    const id = uuidV5(
      [categoryId, resource || '', subCategory || '', unit || '', efValue ?? '', refInfo || '', 'single'].join('|'),
      FUEL_NAMESPACE
    )

    const colMap = { scope_category_id: sqlStr(categoryId), version: sqlStr(VERSION_FEB), id: sqlStr(id) }
    for (let i = 1; i < colList.length; i++) {
      colMap[colList[i]] = selectParts[i - 1]
    }

    const insertCols = ['id', ...colList.filter((c) => c !== 'scope_category_id'), 'scope_category_id', 'version', 'multiplier', 'created_at', 'updated_at']
    // Avoid duplicate version if already in colList
    const uniqueCols = []
    for (const c of insertCols) {
      if (!uniqueCols.includes(c)) uniqueCols.push(c)
    }
    const vals = uniqueCols.map((c) => {
      if (c === 'id') return sqlStr(id)
      if (c === 'scope_category_id') return sqlStr(categoryId)
      if (c === 'version') return sqlStr(VERSION_FEB)
      if (c === 'multiplier') return colMap.multiplier ?? '1.0'
      if (c === 'created_at' || c === 'updated_at') return 'NOW()'
      return colMap[c] ?? 'NULL'
    })

    out.push(
      `INSERT INTO fuel_resources (${uniqueCols.join(', ')})
VALUES (${vals.join(', ')})
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();`
    )
    out.push('')
    count++
  }

  out.push('COMMIT;')
  fs.writeFileSync(path.join(OUT, '04_fuel_resources_feb2569.sql'), out.join('\n'))
  console.log(`Wrote 04_fuel_resources_feb2569.sql (${count} rows)`)
}

function main () {
  ensureOut()
  writeCategories()
  writeMayFromClientSeed()
  noteTgoSeedFromBuildImport()
  writeFebFromClientSeed()
  console.log(`\nDone. Apply generated SQL under ${OUT} after migrations.`)
}

main()
