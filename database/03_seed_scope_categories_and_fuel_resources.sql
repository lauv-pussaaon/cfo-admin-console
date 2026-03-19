-- =============================================================================
-- 03_seed_scope_categories_and_fuel_resources.sql
-- Run after 01_schema.sql, migration_add_scope_categories.sql,
--           migration_add_fuel_resources.sql, and 02_seed_master_data.sql
-- Source: derived from ideacarb-client-app/database/01_setup.sql
-- Strategy C: scope_categories inserted first; fuel_resources reference them
--             via SELECT subquery on name_th.
-- =============================================================================

-- ─── SCOPE CATEGORIES ─────────────────────────────────────────────────────────

INSERT INTO scope_categories (scope, name_th, name_en, display_order) VALUES
  -- Scope 1
  (1, '1) การเผาไหม้อยู่กับที่ (Stationary combustion)',                    '1) Stationary combustion',                                        1),
  (1, '2.1) การเผาไหม้ที่มีการเคลื่อนที่ (Mobile combustion) (Off road)',   '2.1) Mobile combustion (Off road)',                               2),
  (1, '2.2) การเผาไหม้ที่มีการเคลื่อนที่ (Mobile combustion) (On road)',    '2.2) Mobile combustion (On road)',                                3),
  (1, '3) กระบวนการผลิต (Process emissions)',                                '3) Process emissions',                                            4),
  (1, '4) การรั่วไหล และอื่น ๆ (Fugitive emissions)',                        '4) Fugitive emissions',                                           5),
  -- Scope 2
  (2, 'การใช้พลังงานไฟฟ้า',                                                  'Purchased Electricity',                                           6),
  -- Scope 3
  (3, 'Category 1 การซื้อวัตถุดิบ และบริการ',                               'Category 1 Purchased goods and services',                          7),
  (3, 'Category 2 สินค้าประเภททุน',                                          'Category 2 Capital goods',                                        8),
  (3, 'Category 3 กิจกรรมที่เกี่ยวข้องกับเชื้อเพลิงและพลังงาน',             'Category 3 Fuel and energy related activities',                    9),
  (3, 'Category 4 การขนส่งและกระจายสินค้าต้นน้ำ',                           'Category 4 Upstream transportation and distribution',             10),
  (3, 'Category 5 การจัดการของเสียที่เกิดจากการด าเนินกิจกรรมขององค์กร',    'Category 5 Waste generated in operations',                        11),
  (3, 'Category 6 การเดินทางเพื่อธุรกิจ',                                   'Category 6 Business travel',                                      12),
  (3, 'Category 7 การเดินทางของพนักงาน',                                    'Category 7 Employee commuting',                                   13),
  (3, 'Category 8 การใช้สินทรัพย์ที่เช่า',                                  'Category 8 Upstream leased assets',                               14),
  (3, 'Category 9 การขนส่งและกระจายสินค้า',                                 'Category 9 Downstream transportation and distribution',           15),
  (3, 'Category 10 การแปรรูปสินค้าที่องค์กรจำหน่าย',                        'Category 10 Processing of sold products',                         16),
  (3, 'Category 11 การใช้งานของผลิตภัณฑ์ที่องค์กรจำหน่าย',                  'Category 11 Use of sold products',                                17),
  (3, 'Category 12 การจัดการซากผลิตภัณฑ์ที่องค์กรจำหน่าย',                  'Category 12 End-of-life treatment of sold products',              18),
  (3, 'Category 13 การปล่อยเช่าสินทรัพย์ขององค์กร',                         'Category 13 Downstream leased assets',                            19),
  -- Scope 4
  (4, 'แยกรายงานการใช้พลังงาน',                                              'Energy Usage Reporting',                                          20)
ON CONFLICT DO NOTHING;

-- ─── FUEL RESOURCES ───────────────────────────────────────────────────────────
-- Seeded using SELECT subquery pattern (scope_categories must be inserted above)
-- Source: ideacarb-client-app/database/01_setup.sql lines 733-5760
-- Only a representative sample is included here for initial setup.
-- For full dataset, run the complete 01_setup.sql on the ideacarb-client-app DB
-- or import via the admin console CSV import feature.

-- Scope 1 – Stationary combustion (sample rows)
INSERT INTO fuel_resources (scope_category_id, resource, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o)
SELECT sc.id, 'Natural Gas (NCV): SCF', 'SCF', 0.05727759,
  'IPCC defaults (2006), volume 2, chapter 2, table 2.3',
  0.057222, 0.0, 1.02e-06, 1.02e-07
FROM scope_categories sc
WHERE sc.name_th = '1) การเผาไหม้อยู่กับที่ (Stationary combustion)'
ON CONFLICT DO NOTHING;

INSERT INTO fuel_resources (scope_category_id, resource, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o)
SELECT sc.id, 'Natural Gas (NCV): MJ', 'MJ', 0.0561545,
  'IPCC defaults (2006), volume 2, chapter 2, table 2.3',
  0.0561, 0.0, 1e-06, 1e-07
FROM scope_categories sc
WHERE sc.name_th = '1) การเผาไหม้อยู่กับที่ (Stationary combustion)'
ON CONFLICT DO NOTHING;

INSERT INTO fuel_resources (scope_category_id, resource, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o)
SELECT sc.id, 'LPG: litre', 'Liter', 1.68117279,
  'IPCC defaults (2006), volume 2, chapter 2, table 2.3',
  1.679722, 0.0, 2.662e-05, 2.662e-06
FROM scope_categories sc
WHERE sc.name_th = '1) การเผาไหม้อยู่กับที่ (Stationary combustion)'
ON CONFLICT DO NOTHING;

INSERT INTO fuel_resources (scope_category_id, resource, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o)
SELECT sc.id, 'LPG: kg', 'kg', 3.113282944,
  'IPCC defaults (2006), volume 2, chapter 2, table 2.3',
  3.110596296, 0.0, 4.92962963e-05, 4.92962963e-06
FROM scope_categories sc
WHERE sc.name_th = '1) การเผาไหม้อยู่กับที่ (Stationary combustion)'
ON CONFLICT DO NOTHING;

INSERT INTO fuel_resources (scope_category_id, resource, unit, ef_value, ref_info, ref_co2, ref_ch4, ref_n2o)
SELECT sc.id, 'Diesel: L', 'Liter', 2.707193707,
  'IPCC defaults (2006), volume 2, chapter 2, table 2.3',
  2.699644, 8.54922e-05, 2.84974e-05
FROM scope_categories sc
WHERE sc.name_th = '1) การเผาไหม้อยู่กับที่ (Stationary combustion)'
ON CONFLICT DO NOTHING;

INSERT INTO fuel_resources (scope_category_id, resource, unit, ef_value, ref_info, ref_co2, ref_ch4, ref_n2o)
SELECT sc.id, 'Gasoline: L', 'Liter', 2.311942505,
  'IPCC defaults (2006), volume 2, chapter 2, table 2.3',
  2.296396, 1.01754e-04, 3.39179e-05
FROM scope_categories sc
WHERE sc.name_th = '1) การเผาไหม้อยู่กับที่ (Stationary combustion)'
ON CONFLICT DO NOTHING;

-- Scope 2 – Purchased Electricity (Thailand grid)
INSERT INTO fuel_resources (scope_category_id, resource, unit, ef_value, ref_info)
SELECT sc.id, 'Electricity (Thailand Grid): kWh', 'kWh', 0.4999,
  'TGO Thailand Grid Emission Factor 2022'
FROM scope_categories sc
WHERE sc.name_th = 'การใช้พลังงานไฟฟ้า'
ON CONFLICT DO NOTHING;

-- Scope 3 – Business travel
INSERT INTO fuel_resources (scope_category_id, resource, unit, ef_value, ref_info)
SELECT sc.id, 'Domestic Flight: passenger-km', 'passenger-km', 0.255,
  'DEFRA 2022 – Domestic flight economy class'
FROM scope_categories sc
WHERE sc.name_th = 'Category 6 การเดินทางเพื่อธุรกิจ'
ON CONFLICT DO NOTHING;

INSERT INTO fuel_resources (scope_category_id, resource, unit, ef_value, ref_info)
SELECT sc.id, 'International Flight (short-haul): passenger-km', 'passenger-km', 0.156,
  'DEFRA 2022 – Short-haul international flight economy class'
FROM scope_categories sc
WHERE sc.name_th = 'Category 6 การเดินทางเพื่อธุรกิจ'
ON CONFLICT DO NOTHING;

-- ─── NOTE ─────────────────────────────────────────────────────────────────────
-- The full fuel_resources dataset (~989 rows) is best loaded via:
--   1. Admin Console → Emission Resources → Import CSV
--   2. Or by running the full 01_setup.sql from ideacarb-client-app/database/
-- =============================================================================
