#!/usr/bin/env node
/**
 * Generate fuel_resources seed SQL from Source-FuelResources.xlsx.
 * Uses Source- Fuel Resources-V2.csv for category_th mapping (row-aligned).
 * Output: fuel_resources section for 03_seed_scope_categories_and_fuel_resources.sql
 */

const fs = require('fs');
const path = require('path');
const XLSX = require('xlsx');

const EXCEL_PATH = path.join(__dirname, 'Source-FuelResources.xlsx');
const CSV_PATH = path.join(__dirname, 'Source- Fuel Resources-V2.csv');
const OUTPUT_PATH = path.join(__dirname, '..', 'database', '03_seed_scope_categories_and_fuel_resources.sql');

function escapeSql(s) {
  if (s == null || s === '') return null;
  return String(s).replace(/'/g, "''");
}

function sqlValue(val, isNumeric = false) {
  if (val === '' || val == null || (typeof val === 'number' && isNaN(val))) {
    return isNumeric ? 'NULL::numeric' : 'NULL';
  }
  if (isNumeric) {
    const n = typeof val === 'number' ? val : parseFloat(val);
    return isNaN(n) ? 'NULL::numeric' : String(n);
  }
  return `'${escapeSql(val)}'`;
}

function parseCsvLine(line) {
  const vals = [];
  let cur = '';
  let inQuotes = false;
  for (let j = 0; j < line.length; j++) {
    const c = line[j];
    if (c === '"') {
      inQuotes = !inQuotes;
    } else if (c === ',' && !inQuotes) {
      vals.push(cur.replace(/^"|"$/g, ''));
      cur = '';
    } else {
      cur += c;
    }
  }
  vals.push(cur.replace(/^"|"$/g, ''));
  return vals;
}

function parseCsv(content) {
  const lines = content.trim().split(/\r?\n/);
  const headers = lines[0].split(',').map((h) => h.trim());
  const rows = [];
  for (let i = 1; i < lines.length; i++) {
    const vals = parseCsvLine(lines[i]);
    const row = {};
    headers.forEach((h, idx) => (row[h] = vals[idx] ?? ''));
    rows.push(row);
  }
  return rows;
}

function main() {
  const wb = XLSX.readFile(EXCEL_PATH);
  const excel = XLSX.utils.sheet_to_json(wb.Sheets[wb.SheetNames[0]], { defval: '' });

  const csvRaw = fs.readFileSync(CSV_PATH, 'utf8');
  const csv = parseCsv(csvRaw);

  if (excel.length !== csv.length) {
    throw new Error(`Row count mismatch: Excel ${excel.length}, CSV ${csv.length}`);
  }

  const merged = excel.map((e, i) => ({
    ...e,
    category_th: csv[i].category_th,
  }));

  const byCategory = {};
  for (const row of merged) {
    const cat = row.category_th;
    if (!byCategory[cat]) byCategory[cat] = [];
    byCategory[cat].push(row);
  }

  const numericOptional = [
    'ref_sf6',
    'ref_nf3',
    'ref_hfcs',
    'ref_pfcs',
    'gwp100_hfcs',
    'gwp100_pfcs',
    'extraghg_ef',
    'extraghg_gwp100',
  ];
  const numericRequired = ['ref_co2', 'ref_fossil_ch4', 'ref_ch4', 'ref_n2o'];

  const valueCols = [
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
  ];

  const inserts = [];

  for (const [categoryTh, rows] of Object.entries(byCategory)) {
    const valuesLines = rows.map((r) => {
      const parts = [];
      for (const col of valueCols) {
        const v = r[col];
        const isNum =
          col === 'ef_value' ||
          numericRequired.includes(col) ||
          numericOptional.includes(col);
        if (isNum) {
          parts.push(sqlValue(v, true));
        } else {
          parts.push(sqlValue(v));
        }
      }
      return `    (${parts.join(', ')})`;
    });

    const escapedCat = `'${escapeSql(categoryTh)}'`;
    inserts.push(`-- ${categoryTh} (${rows.length} rows)
INSERT INTO fuel_resources (scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, ref_source)
SELECT sc.id, v.resource, v.sub_category, v.unit, v.ef_value, v.value1_label, v.value1_unit, v.value2_label, v.value2_unit, v.ref_info, v.ref_co2, v.ref_fossil_ch4, v.ref_ch4, v.ref_n2o, v.ref_sf6, v.ref_nf3, v.ref_hfcs, v.ref_pfcs, v.gwp100_hfcs, v.gwp100_pfcs, v.extraghg_ef, v.extraghg_gwp100, v.ref_source
FROM scope_categories sc,
(VALUES
${valuesLines.join(',\n')}
) AS v(resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, ref_source)
WHERE sc.name_th = ${escapedCat};`);
  }

  const fuelSection = `-- ─── FUEL RESOURCES ───────────────────────────────────────────────────────────
-- Generated from dataprep/Source-FuelResources.xlsx
-- Run: node dataprep/generate_fuel_resources_sql.js

${inserts.join('\n\n')}
`;

  const scopeSection = fs.readFileSync(OUTPUT_PATH, 'utf8').split('-- ─── FUEL RESOURCES ───')[0];
  const newContent =
    scopeSection.trimEnd() +
    '\n\n' +
    fuelSection +
    '-- =============================================================================\n';

  fs.writeFileSync(OUTPUT_PATH, newContent, 'utf8');
  console.log(`Generated ${OUTPUT_PATH} with ${excel.length} fuel_resources rows across ${Object.keys(byCategory).length} categories`);
}

main();
