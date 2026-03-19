#!/usr/bin/env node
/**
 * Generate seed SQL for emission_templates and template_activity_groups
 * from "Emission Templates 13 Industries.xlsx".
 */

const fs = require('fs')
const path = require('path')
const XLSX = require('xlsx')

const EXCEL_PATH = path.join(__dirname, 'Emission Templates 13 Industries.xlsx')
const OUTPUT_PATH = path.join(__dirname, '..', 'database', '04_seed_emission_templates_and_activity_groups.sql')

const FEATURE_IMAGE_BY_INDUSTRY_ID = {
  1: 'https://images.unsplash.com/photo-1473341304170-971dccb5ac1e?q=80&w=800&auto=format&fit=crop',
  2: 'https://images.unsplash.com/photo-1581094288338-2314dddb7ece?q=80&w=800&auto=format&fit=crop',
  3: 'https://images.unsplash.com/photo-1513828583688-c52646db42da?q=80&w=800&auto=format&fit=crop',
  4: 'https://images.unsplash.com/photo-1532634993-15f421e42ec0?q=80&w=800&auto=format&fit=crop',
  5: 'https://images.unsplash.com/photo-1565035010268-a3816f98589a?q=80&w=800&auto=format&fit=crop',
  6: 'https://images.unsplash.com/photo-1504309092620-4d0ec726efa4?q=80&w=800&auto=format&fit=crop',
  7: 'https://images.unsplash.com/photo-1453738773917-9c3eff1db985?q=80&w=800&auto=format&fit=crop',
  8: 'https://images.unsplash.com/photo-1581092921461-eab62e97a780?q=80&w=800&auto=format&fit=crop',
  9: 'https://images.unsplash.com/photo-1497436072909-60f360e1d4b1?q=80&w=800&auto=format&fit=crop',
  10: 'https://images.unsplash.com/photo-1503376780353-7e6692767b70?q=80&w=800&auto=format&fit=crop',
  11: 'https://images.unsplash.com/photo-1532996122724-e3c354a0b15b?q=80&w=800&auto=format&fit=crop',
  12: 'https://images.unsplash.com/photo-1464226184884-fa280b87c399?q=80&w=800&auto=format&fit=crop',
  13: 'https://images.unsplash.com/photo-1521791136064-7986c2920216?q=80&w=800&auto=format&fit=crop',
}

const CATEGORY_TO_SCOPE_NAME_TH = {
  'Stationary Combustion': '1) การเผาไหม้อยู่กับที่ (Stationary combustion)',
  'Mobile Combustion': '2.2) การเผาไหม้ที่มีการเคลื่อนที่ (Mobile combustion) (On road)',
  'Fugitive Emissions': '4) การรั่วไหล และอื่น ๆ (Fugitive emissions)',
  'Process Emissions': '3) กระบวนการผลิต (Process emissions)',
  'Purchased Electricity': 'การใช้พลังงานไฟฟ้า',
  'Purchased Energy': 'Category 3 กิจกรรมที่เกี่ยวข้องกับเชื้อเพลิงและพลังงาน',
  'Cat 1: Purchased Goods & Services': 'Category 1 การซื้อวัตถุดิบ และบริการ',
  'Cat 4: Upstream T&D': 'Category 4 การขนส่งและกระจายสินค้าต้นน้ำ',
  'Cat 5: Waste Generated in Operations': 'Category 5 การจัดการของเสียที่เกิดจากการด าเนินกิจกรรมขององค์กร',
  'Cat 6: Business Travel': 'Category 6 การเดินทางเพื่อธุรกิจ',
  'Cat 7: Employee Commuting': 'Category 7 การเดินทางของพนักงาน',
}

function slugify(text) {
  return String(text)
    .toLowerCase()
    .replace(/&/g, ' and ')
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-+|-+$/g, '')
}

function esc(value) {
  if (value == null || value === '') return null
  return String(value).replace(/'/g, "''")
}

function sqlText(value) {
  const escaped = esc(value)
  return escaped == null ? 'NULL' : `'${escaped}'`
}

function sqlInt(value) {
  if (value == null || value === '') return 'NULL'
  const n = Number(value)
  return Number.isFinite(n) ? String(Math.trunc(n)) : 'NULL'
}

function sqlBool(value) {
  if (value === true || value === 'true' || value === 'TRUE' || value === 1 || value === '1') return 'TRUE'
  if (value === false || value === 'false' || value === 'FALSE' || value === 0 || value === '0') return 'FALSE'
  return 'FALSE'
}

function buildTemplateInsert(industryRows) {
  const values = industryRows.map((row) => {
    const legacyId = Number(row['industry_id [PK]'])
    const nameEn = row.name_en || ''
    const industryCode = slugify(nameEn)
    const imageUrl = FEATURE_IMAGE_BY_INDUSTRY_ID[legacyId] || null

    return `  (${sqlInt(legacyId)}, ${sqlText(industryCode)}, ${sqlText(row.name_th)}, ${sqlText(nameEn)}, ${sqlText(row.examples)}, ${sqlBool(row.is_active)}, ${sqlText(imageUrl)}, ${sqlInt(legacyId)})`
  })

  return `INSERT INTO emission_templates (legacy_industry_id, industry_code, name_th, name_en, examples, is_active, feature_image_url, display_order)\nVALUES\n${values.join(',\n')}\nON CONFLICT (industry_code) DO UPDATE SET\n  legacy_industry_id = EXCLUDED.legacy_industry_id,\n  name_th = EXCLUDED.name_th,\n  name_en = EXCLUDED.name_en,\n  examples = EXCLUDED.examples,\n  is_active = EXCLUDED.is_active,\n  feature_image_url = EXCLUDED.feature_image_url,\n  display_order = EXCLUDED.display_order,\n  updated_at = NOW();`
}

function buildActivityGroupInsert(activityRows) {
  const values = activityRows.map((row) => {
    const categoryLabel = (row.category || '').trim()
    const targetScopeNameTh = CATEGORY_TO_SCOPE_NAME_TH[categoryLabel] || null

    return `  (${sqlInt(row['industry_id [FK]'])}, ${sqlInt(row['activity_group_id [PK]'])}, ${sqlText(row.name_th)}, ${sqlText(row.name_en)}, ${sqlInt(row.scope)}, ${sqlText(categoryLabel)}, ${sqlText((row.subcategory || '').trim())}, ${sqlText(targetScopeNameTh)}, ${sqlText((row.subcategory || '').trim())}, ${sqlBool(row.is_common)}, ${sqlInt(row.sort_order)}, ${sqlText((row.status || 'active').toLowerCase())})`
  })

  return `INSERT INTO template_activity_groups (\n  template_id,\n  legacy_activity_group_id,\n  name_th,\n  name_en,\n  scope,\n  category_label,\n  subcategory_label,\n  scope_category_id,\n  scope_sub_category,\n  is_common,\n  sort_order,\n  status\n)\nSELECT\n  et.id,\n  v.legacy_activity_group_id,\n  v.name_th,\n  v.name_en,\n  v.scope,\n  v.category_label,\n  v.subcategory_label,\n  sc.id,\n  v.scope_sub_category,\n  v.is_common,\n  v.sort_order,\n  v.status\nFROM (\nVALUES\n${values.join(',\n')}\n) AS v(\n  legacy_industry_id,\n  legacy_activity_group_id,\n  name_th,\n  name_en,\n  scope,\n  category_label,\n  subcategory_label,\n  target_scope_name_th,\n  scope_sub_category,\n  is_common,\n  sort_order,\n  status\n)\nJOIN emission_templates et ON et.legacy_industry_id = v.legacy_industry_id\nLEFT JOIN scope_categories sc ON sc.name_th = v.target_scope_name_th\nON CONFLICT (template_id, legacy_activity_group_id) WHERE legacy_activity_group_id IS NOT NULL DO UPDATE SET\n  name_th = EXCLUDED.name_th,\n  name_en = EXCLUDED.name_en,\n  scope = EXCLUDED.scope,\n  category_label = EXCLUDED.category_label,\n  subcategory_label = EXCLUDED.subcategory_label,\n  scope_category_id = EXCLUDED.scope_category_id,\n  scope_sub_category = EXCLUDED.scope_sub_category,\n  is_common = EXCLUDED.is_common,\n  sort_order = EXCLUDED.sort_order,\n  status = EXCLUDED.status,\n  updated_at = NOW();`
}

function main() {
  const wb = XLSX.readFile(EXCEL_PATH)
  const industryRows = XLSX.utils.sheet_to_json(wb.Sheets.Industry, { defval: '' })
  const activityRowsRaw = XLSX.utils.sheet_to_json(wb.Sheets.ActivityGroup, { defval: '' })
  const activityRows = activityRowsRaw.filter((r) => /^[0-9]+$/.test(String(r['activity_group_id [PK]']).trim()))

  const sql = `-- =============================================================================
-- 04_seed_emission_templates_and_activity_groups.sql
-- Run after:
--   01_schema.sql
--   migration_add_scope_categories.sql
--   migration_add_fuel_resources.sql
--   migration_add_emission_templates.sql
--   migration_add_template_activity_groups.sql
--   02_seed_master_data.sql
--   03_seed_scope_categories_and_fuel_resources.sql
-- Source: dataprep/Emission Templates 13 Industries.xlsx
-- =============================================================================

-- ─── EMISSION TEMPLATES ───────────────────────────────────────────────────────
${buildTemplateInsert(industryRows)}

-- ─── TEMPLATE ACTIVITY GROUPS ────────────────────────────────────────────────
${buildActivityGroupInsert(activityRows)}

-- =============================================================================
`

  fs.writeFileSync(OUTPUT_PATH, sql, 'utf8')
  console.log(`Generated ${OUTPUT_PATH} with ${industryRows.length} templates and ${activityRows.length} activity groups`)
}

main()
