import crypto from 'node:crypto'
import fs from 'node:fs'
import path from 'node:path'
import { fileURLToPath } from 'node:url'
import XLSX from 'xlsx'

const HERE = path.dirname(fileURLToPath(import.meta.url))
const ADMIN = path.resolve(HERE, '../..')
const OCTOBER_XLSX = path.join(ADMIN, 'dataprep/fuel_resources_Updateเพิ่มเติม.xlsx')
const AUGUST_XLSX = path.join(ADMIN, 'dataprep/tgo-ef/out/fuel_resources_tgo_import.xlsx')
const MANIFEST = path.join(ADMIN, 'dataprep/ef-catalog/scope_categories.manifest.json')
const OUT_XLSX = path.join(HERE, 'fuel_resources_iso_categories.xlsx')

const SOURCE_VERSION = 'TGO 1 กรกฎาคม 2569'
const ISO_VERSION = 'ISO · TGO 1 กรกฎาคม 2569'
const UUID_NS = 'b1406401-2018-4000-8000-000000000001'

const FUEL_HEADERS = [
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
  'description',
  'meta',
]

const SCOPE4_ID = 'a1000004-0004-4004-8004-000000000014'
const FRANCHISE_ID = '4d14a746-2b97-4b31-8cc5-ca8a30dd2b4e'
const CAT6_ID = 'a1000003-0003-4003-8003-00000000000c'

const ISO_CATEGORIES = [
  { code: '1.1', category: 1, name_th: '1.1 การปล่อยก๊าซเรือนกระจกทางตรงจากการเผาไหม้อยู่กับที่', name_en: '1.1 Direct GHG emissions from stationary combustion', group_th: '1. การปล่อยก๊าซเรือนกระจกทางตรงจากแหล่งที่องค์กรควบคุม', group_en: '1. Direct GHG emissions from sources controlled by the organization' },
  { code: '1.2', category: 1, name_th: '1.2 การปล่อยก๊าซเรือนกระจกทางตรงจากการเผาไหม้แบบเคลื่อนที่', name_en: '1.2 Direct GHG emissions from mobile combustion', group_th: '1. การปล่อยก๊าซเรือนกระจกทางตรงจากแหล่งที่องค์กรควบคุม', group_en: '1. Direct GHG emissions from sources controlled by the organization' },
  { code: '1.3', category: 1, name_th: '1.3 การปล่อยและดูดกลับก๊าซเรือนกระจกทางตรงจากกระบวนการผลิตอุตสาหกรรม', name_en: '1.3 Direct process emissions and removals', group_th: '1. การปล่อยก๊าซเรือนกระจกทางตรงจากแหล่งที่องค์กรควบคุม', group_en: '1. Direct GHG emissions from sources controlled by the organization' },
  { code: '1.4', category: 1, name_th: '1.4 การปล่อยก๊าซเรือนกระจกทางตรงจากการรั่วไหลในระบบที่ดำเนินงานโดยมนุษย์', name_en: '1.4 Direct fugitive emissions', group_th: '1. การปล่อยก๊าซเรือนกระจกทางตรงจากแหล่งที่องค์กรควบคุม', group_en: '1. Direct GHG emissions from sources controlled by the organization' },
  { code: '1.5', category: 1, name_th: '1.5 การปล่อยและดูดกลับก๊าซเรือนกระจกทางตรงจากการใช้ที่ดิน การเปลี่ยนแปลงการใช้ที่ดิน และการป่าไม้ (LULUCF)', name_en: '1.5 Direct emissions and removals from LULUCF', group_th: '1. การปล่อยก๊าซเรือนกระจกทางตรงจากแหล่งที่องค์กรควบคุม', group_en: '1. Direct GHG emissions from sources controlled by the organization' },
  { code: '2.1', category: 2, name_th: '2.1 การปล่อยก๊าซเรือนกระจกทางอ้อมจากการนำเข้าไฟฟ้า', name_en: '2.1 Indirect GHG emissions from imported electricity', group_th: '2. การปล่อยก๊าซเรือนกระจกทางอ้อมจากการนำเข้าพลังงาน', group_en: '2. Indirect GHG emissions from imported energy' },
  { code: '2.2', category: 2, name_th: '2.2 การปล่อยก๊าซเรือนกระจกทางอ้อมจากการนำเข้าพลังงานอื่นที่ไม่ใช่ไฟฟ้า', name_en: '2.2 Indirect GHG emissions from imported energy other than electricity', group_th: '2. การปล่อยก๊าซเรือนกระจกทางอ้อมจากการนำเข้าพลังงาน', group_en: '2. Indirect GHG emissions from imported energy' },
  { code: '3.1', category: 3, name_th: '3.1 การปล่อยก๊าซเรือนกระจกทางอ้อมจากการขนส่งและกระจายสินค้าต้นน้ำ', name_en: '3.1 Upstream transport and distribution', group_th: '3. การปล่อยก๊าซเรือนกระจกทางอ้อมจากกิจกรรมการขนส่งและการเดินทาง', group_en: '3. Indirect GHG emissions from transportation' },
  { code: '3.2', category: 3, name_th: '3.2 การปล่อยก๊าซเรือนกระจกทางอ้อมจากการขนส่งและกระจายสินค้าปลายน้ำ', name_en: '3.2 Downstream transport and distribution', group_th: '3. การปล่อยก๊าซเรือนกระจกทางอ้อมจากกิจกรรมการขนส่งและการเดินทาง', group_en: '3. Indirect GHG emissions from transportation' },
  { code: '3.3', category: 3, name_th: '3.3 การปล่อยก๊าซเรือนกระจกทางอ้อมจากการเดินทางของพนักงาน', name_en: '3.3 Employee commuting', group_th: '3. การปล่อยก๊าซเรือนกระจกทางอ้อมจากกิจกรรมการขนส่งและการเดินทาง', group_en: '3. Indirect GHG emissions from transportation' },
  { code: '3.4', category: 3, name_th: '3.4 การปล่อยก๊าซเรือนกระจกทางอ้อมจากการเดินทางของลูกค้าและผู้มาติดต่อ', name_en: '3.4 Customer and visitor travel', group_th: '3. การปล่อยก๊าซเรือนกระจกทางอ้อมจากกิจกรรมการขนส่งและการเดินทาง', group_en: '3. Indirect GHG emissions from transportation' },
  { code: '3.5', category: 3, name_th: '3.5 การปล่อยก๊าซเรือนกระจกทางอ้อมจากการเดินทางเพื่อธุรกิจ', name_en: '3.5 Business travel', group_th: '3. การปล่อยก๊าซเรือนกระจกทางอ้อมจากกิจกรรมการขนส่งและการเดินทาง', group_en: '3. Indirect GHG emissions from transportation' },
  { code: '4.1', category: 4, name_th: '4.1 การปล่อยก๊าซเรือนกระจกทางอ้อมจากสินค้าที่ซื้อ', name_en: '4.1 Purchased goods', group_th: '4. การปล่อยก๊าซเรือนกระจกทางอ้อมจากกิจกรรมต้นน้ำที่เกี่ยวข้องกับองค์กร', group_en: '4. Indirect GHG emissions from products used by the organization' },
  { code: '4.2', category: 4, name_th: '4.2 การปล่อยก๊าซเรือนกระจกทางอ้อมจากสินค้าทุน', name_en: '4.2 Capital goods', group_th: '4. การปล่อยก๊าซเรือนกระจกทางอ้อมจากกิจกรรมต้นน้ำที่เกี่ยวข้องกับองค์กร', group_en: '4. Indirect GHG emissions from products used by the organization' },
  { code: '4.3', category: 4, name_th: '4.3 การปล่อยก๊าซเรือนกระจกทางอ้อมจากการกำจัดของเสียที่เป็นของแข็งและของเหลว', name_en: '4.3 Disposal of solid and liquid waste', group_th: '4. การปล่อยก๊าซเรือนกระจกทางอ้อมจากกิจกรรมต้นน้ำที่เกี่ยวข้องกับองค์กร', group_en: '4. Indirect GHG emissions from products used by the organization' },
  { code: '4.4', category: 4, name_th: '4.4 การปล่อยก๊าซเรือนกระจกทางอ้อมจากการใช้สินทรัพย์เช่าต้นน้ำ', name_en: '4.4 Upstream leased assets', group_th: '4. การปล่อยก๊าซเรือนกระจกทางอ้อมจากกิจกรรมต้นน้ำที่เกี่ยวข้องกับองค์กร', group_en: '4. Indirect GHG emissions from products used by the organization' },
  { code: '4.5', category: 4, name_th: '4.5 การปล่อยก๊าซเรือนกระจกทางอ้อมจากการใช้บริการอื่น ๆ', name_en: '4.5 Use of other services', group_th: '4. การปล่อยก๊าซเรือนกระจกทางอ้อมจากกิจกรรมต้นน้ำที่เกี่ยวข้องกับองค์กร', group_en: '4. Indirect GHG emissions from products used by the organization' },
  { code: '5.1', category: 5, name_th: '5.1 การปล่อยหรือดูดกลับก๊าซเรือนกระจกทางอ้อมจากช่วงการใช้งานของผลิตภัณฑ์', name_en: '5.1 Use of sold products', group_th: '5. การปล่อยก๊าซเรือนกระจกทางอ้อมจากกิจกรรมปลายน้ำขององค์กร', group_en: '5. Indirect GHG emissions from use of the organization\'s products' },
  { code: '5.2', category: 5, name_th: '5.2 การปล่อยก๊าซเรือนกระจกทางอ้อมจากการปล่อยเช่าสินทรัพย์ปลายน้ำ', name_en: '5.2 Downstream leased assets', group_th: '5. การปล่อยก๊าซเรือนกระจกทางอ้อมจากกิจกรรมปลายน้ำขององค์กร', group_en: '5. Indirect GHG emissions from use of the organization\'s products' },
  { code: '5.3', category: 5, name_th: '5.3 การปล่อยก๊าซเรือนกระจกทางอ้อมจากการกำจัดซากผลิตภัณฑ์ที่องค์กรจำหน่าย', name_en: '5.3 End-of-life treatment of sold products', group_th: '5. การปล่อยก๊าซเรือนกระจกทางอ้อมจากกิจกรรมปลายน้ำขององค์กร', group_en: '5. Indirect GHG emissions from use of the organization\'s products' },
  { code: '5.4', category: 5, name_th: '5.4 การปล่อยก๊าซเรือนกระจกทางอ้อมจากการลงทุน', name_en: '5.4 Investments', group_th: '5. การปล่อยก๊าซเรือนกระจกทางอ้อมจากกิจกรรมปลายน้ำขององค์กร', group_en: '5. Indirect GHG emissions from use of the organization\'s products' },
  { code: '6', category: 6, name_th: '6. การปล่อยก๊าซเรือนกระจกทางอ้อมจากแหล่งอื่น ๆ', name_en: '6. Indirect GHG emissions from other sources', group_th: '6. การปล่อยก๊าซเรือนกระจกทางอ้อมจากแหล่งอื่น ๆ', group_en: '6. Indirect GHG emissions from other sources' },
]

const TGO_TO_ISO = {
  'a1000001-0001-4001-8001-000000000001': { code: '1.1', reason: 'Scope 1 stationary combustion is ISO 1.1.' },
  'a1000001-0001-4001-8001-000000000002': { code: '1.2', reason: 'Scope 1 mobile combustion (off road) is ISO 1.2.' },
  'a1000001-0001-4001-8001-000000000003': { code: '1.2', reason: 'Scope 1 mobile combustion (on road) is ISO 1.2.' },
  'a1000001-0001-4001-8001-000000000004': { code: '1.3', reason: 'Scope 1 process emissions are ISO 1.3. This TGO version has no rows.' },
  'a1000001-0001-4001-8001-000000000005': { code: '1.4', reason: 'Scope 1 fugitive emissions are ISO 1.4.' },
  'a1000002-0002-4002-8002-000000000006': { code: '2.1', reason: 'Purchased electricity is ISO 2.1.' },
  'a1000003-0003-4003-8003-000000000007': { code: '4.1', reason: 'GHG Category 1 purchased goods are ISO 4.1.' },
  'a1000003-0003-4003-8003-000000000008': { code: '4.2', reason: 'GHG Category 2 capital goods are ISO 4.2. This TGO version has no rows.' },
  'a1000003-0003-4003-8003-000000000009': { code: '4.5', reason: 'GHG Category 3 fuel-and-energy activities sit in ISO category 4, as ISO 4.5, not in ISO 1.' },
  'a1000003-0003-4003-8003-00000000000a': { code: '3.1', reason: 'GHG Category 4 upstream transport is ISO 3.1, not ISO category 4.' },
  [CAT6_ID]: { code: '3.4 / 3.5', reason: 'The guide splits GHG Category 6: customer and visitor travel is ISO 3.4, employee business travel is ISO 3.5. This TGO version has no rows, so neither subcategory is filled.' },
  'a1000003-0003-4003-8003-00000000000d': { code: '3.3', reason: 'GHG Category 7 employee commuting is ISO 3.3. This TGO version has no rows.' },
  'a1000003-0003-4003-8003-00000000000e': { code: '4.4', reason: 'GHG Category 8 upstream leased assets are ISO 4.4. This TGO version has no rows.' },
  'a1000003-0003-4003-8003-00000000000f': { code: '3.2', reason: 'GHG Category 9 downstream transport is ISO 3.2. This TGO version has no rows.' },
  'a1000003-0003-4003-8003-000000000010': { code: '5.1', reason: 'GHG Category 10 processing of sold products is ISO 5.1. This TGO version has no rows.' },
  'a1000003-0003-4003-8003-000000000011': { code: '5.1', reason: 'GHG Category 11 use of sold products is ISO 5.1. This TGO version has no rows.' },
  'a1000003-0003-4003-8003-000000000012': { code: '5.3', reason: 'GHG Category 12 end-of-life of sold products is ISO 5.3. This TGO version has no rows.' },
  'a1000003-0003-4003-8003-000000000013': { code: '5.2', reason: 'GHG Category 13 downstream leased assets are ISO 5.2. This TGO version has no rows.' },
  [FRANCHISE_ID]: { code: '', reason: 'Not placed in ISO 1–6. The guide note says ISO/TS 14064-4:2025 counts franchise inside the organizational boundary. This TGO version has no rows.' },
  '4768f17a-ecf3-4a2d-8019-14cab64e162c': { code: '5.4', reason: 'GHG Category 15 investments are ISO 5.4. This TGO version has no rows.' },
  'a1000003-0003-4003-8003-00000000000b': { code: '4.3', reason: 'GHG Category 5 waste is ISO 4.3.' },
  [SCOPE4_ID]: { code: '', reason: 'Separate reporting (including R-22) is not ISO category 4. Rows are left out.' },
}

function uuidV5 (name) {
  const ns = Buffer.from(UUID_NS.replace(/-/g, ''), 'hex')
  const hash = crypto.createHash('sha1').update(ns).update(name, 'utf8').digest()
  const bytes = Buffer.from(hash.subarray(0, 16))
  bytes[6] = (bytes[6] & 0x0f) | 0x50
  bytes[8] = (bytes[8] & 0x3f) | 0x80
  const hex = bytes.toString('hex')
  return `${hex.slice(0, 8)}-${hex.slice(8, 12)}-${hex.slice(12, 16)}-${hex.slice(16, 20)}-${hex.slice(20)}`
}

function sheetRows (file, sheetName) {
  const workbook = XLSX.readFile(file)
  const name = sheetName || workbook.SheetNames[0]
  const sheet = workbook.Sheets[name]
  if (!sheet) throw new Error(`Missing sheet ${name} in ${file}`)
  return XLSX.utils.sheet_to_json(sheet, { defval: null })
}

function isoIdForCode (code) {
  return uuidV5(`category:${code}`)
}

function isoIdCell (code) {
  if (!code) return ''
  return code.split(' / ').map(isoIdForCode).join(' / ')
}

const isoByCode = new Map(ISO_CATEGORIES.map((row) => [row.code, { ...row, id: isoIdForCode(row.code) }]))

const manifest = JSON.parse(fs.readFileSync(MANIFEST, 'utf8'))
if (manifest.categories.length !== 22) {
  throw new Error(`Expected 22 TGO categories, found ${manifest.categories.length}`)
}
for (const category of manifest.categories) {
  if (!TGO_TO_ISO[category.id]) throw new Error(`No ISO map for ${category.id} ${category.name_en}`)
}

const october = sheetRows(OCTOBER_XLSX, 'Fuel Resources ล่าสุด')
if (october.length !== 730) throw new Error(`Expected 730 October rows, found ${october.length}`)
const wrongVersion = october.filter((row) => row.version !== SOURCE_VERSION)
if (wrongVersion.length) throw new Error(`${wrongVersion.length} rows are not ${SOURCE_VERSION}`)

const augustById = new Map(sheetRows(AUGUST_XLSX).map((row) => [row.id, row]))
const sourceCounts = new Map()
for (const row of october) {
  sourceCounts.set(row.scope_category_id, (sourceCounts.get(row.scope_category_id) || 0) + 1)
}

const fuels = []
const copiedCounts = new Map()
for (const row of october) {
  const mapping = TGO_TO_ISO[row.scope_category_id]
  if (!mapping) throw new Error(`Unmapped fuel category ${row.scope_category_id} on ${row.ref_code}`)
  if (!mapping.code || mapping.code.includes(' / ')) continue
  const august = augustById.get(row.id)
  if (!august) throw new Error(`October fuel ${row.id} is missing from the August import`)
  if (august.sort_index == null || august.multiplier == null || august.meta == null) {
    throw new Error(`August fuel ${row.id} is missing sort_index, multiplier, or meta`)
  }
  if (row.ref_source !== 'TGO') throw new Error(`ref_source is ${row.ref_source} on ${row.ref_code}`)
  const iso = isoByCode.get(mapping.code)
  const id = uuidV5(`fuel:${row.id}`)
  if (id === row.id) throw new Error(`ISO id collided with TGO id ${row.id}`)
  fuels.push({
    id,
    scope_category_id: iso.id,
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
    ref_source: 'TGO',
    version: ISO_VERSION,
    ref_code: row.ref_code,
    sort_index: august.sort_index,
    multiplier: august.multiplier,
    description: row.description,
    meta: august.meta,
    _code: mapping.code,
  })
  copiedCounts.set(mapping.code, (copiedCounts.get(mapping.code) || 0) + 1)
}

if (fuels.length !== 699) throw new Error(`Expected 699 ISO fuel rows, found ${fuels.length}`)
const ids = new Set(fuels.map((row) => row.id))
if (ids.size !== fuels.length) throw new Error('ISO fuel ids are not unique')
const tgoIds = new Set(october.map((row) => row.id))
for (const id of ids) {
  if (tgoIds.has(id)) throw new Error(`Reused TGO fuel id ${id}`)
}

fuels.sort((a, b) => a._code.localeCompare(b._code, 'en') || a.sort_index - b.sort_index || String(a.ref_code).localeCompare(String(b.ref_code)))

const fuelSheetRows = fuels.map((row) => {
  const out = {}
  for (const header of FUEL_HEADERS) out[header] = row[header]
  return out
})

const categorySheetRows = ISO_CATEGORIES.map((row) => ({
  id: isoIdForCode(row.code),
  iso_code: row.code,
  iso_category: row.category,
  name_th: row.name_th,
  name_en: row.name_en,
  group_name_th: row.group_th,
  group_name_en: row.group_en,
}))

const mapSheetRows = manifest.categories
  .slice()
  .sort((a, b) => a.display_order - b.display_order)
  .map((category) => {
    const mapping = TGO_TO_ISO[category.id]
    const copied = mapping.code && !mapping.code.includes(' / ')
      ? (sourceCounts.get(category.id) || 0)
      : 0
    return {
      tgo_scope_category_id: category.id,
      tgo_scope: category.scope,
      tgo_name_th: category.name_th,
      tgo_name_en: category.name_en,
      iso_code: mapping.code,
      iso_scope_category_id: isoIdCell(mapping.code),
      rows_in_latest_tgo: sourceCounts.get(category.id) || 0,
      rows_copied: copied,
      reason: mapping.reason,
    }
  })

const scope4 = mapSheetRows.find((row) => row.tgo_scope_category_id === SCOPE4_ID)
const franchise = mapSheetRows.find((row) => row.tgo_scope_category_id === FRANCHISE_ID)
if (scope4.rows_in_latest_tgo !== 31 || scope4.rows_copied !== 0) {
  throw new Error(`Scope 4 exclusion mismatch: in ${scope4.rows_in_latest_tgo}, copied ${scope4.rows_copied}`)
}
if (franchise.rows_copied !== 0) throw new Error('Franchise rows were copied')
if (mapSheetRows.length !== 22) throw new Error(`Expected 22 map rows, found ${mapSheetRows.length}`)

const copiedSum = mapSheetRows.reduce((sum, row) => sum + row.rows_copied, 0)
if (copiedSum !== 699) throw new Error(`Map copied counts sum to ${copiedSum}`)

const workbook = XLSX.utils.book_new()
XLSX.utils.book_append_sheet(workbook, XLSX.utils.json_to_sheet(fuelSheetRows, { header: FUEL_HEADERS }), 'fuel_resources')
XLSX.utils.book_append_sheet(workbook, XLSX.utils.json_to_sheet(categorySheetRows), 'iso_categories')
XLSX.utils.book_append_sheet(workbook, XLSX.utils.json_to_sheet(mapSheetRows), 'tgo_to_iso_map')
XLSX.writeFile(workbook, OUT_XLSX)

const byCode = Object.fromEntries([...copiedCounts.entries()].sort(([a], [b]) => a.localeCompare(b, 'en')))
console.log(`Wrote ${OUT_XLSX}`)
console.log(`fuels ${fuels.length} categories ${categorySheetRows.length} map ${mapSheetRows.length}`)
console.log(byCode)
