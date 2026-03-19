-- =============================================================================
-- 04_seed_emission_templates_and_activity_groups.sql
-- Run after:
--   01_schema.sql
--   migration_add_scope_categories.sql
--   migration_add_fuel_resources.sql
--   migration_add_emission_templates.sql
--   migration_add_template_activity_groups.sql
--   migration_drop_template_activity_group_labels.sql
--   02_seed_master_data.sql
--   03_seed_scope_categories_and_fuel_resources.sql
-- Source: dataprep/Emission Templates 13 Industries.xlsx
-- =============================================================================

-- ─── EMISSION TEMPLATES ───────────────────────────────────────────────────────
INSERT INTO emission_templates (legacy_industry_id, industry_code, name_th, name_en, examples, is_active, feature_image_url, display_order)
VALUES
  (1, 'power-generation', 'การผลิตพลังงานและการจัดการพลังงานไฟฟ้า', 'Power Generation', '• Energy production and conversion of electrical energy
• Electric power transactions', TRUE, 'https://images.unsplash.com/photo-1473341304170-971dccb5ac1e?q=80&w=800&auto=format&fit=crop', 1),
  (2, 'general-manufacturing', 'อุตสาหกรรมการผลิตทั่วไป', 'General Manufacturing', '• Physical or chemical transformation of materials into new products
• Manufacturing not covered in specific sectors below', TRUE, 'https://images.unsplash.com/photo-1581094288338-2314dddb7ece?q=80&w=800&auto=format&fit=crop', 2),
  (3, 'oil-and-gas', 'การสำรวจ การผลิต การกลั่นน้ำมันปิโตรเลียมและก๊าซและการจัดส่งทางท่อ รวมถึงอุตสาหกรรมปิโตรเคมี', 'Oil and Gas', '• Exploration, extraction, production, refining and pipeline distribution of oil and gas', TRUE, 'https://images.unsplash.com/photo-1513828583688-c52646db42da?q=80&w=800&auto=format&fit=crop', 3),
  (4, 'metals-production', 'อุตสาหกรรมการผลิตโลหะ', 'Metals Production', '• Processing of non-ferrous metals, including production of alloys
• Production of coke
• Metal ore roasting or sintering, including pelletisation
• Production of pig iron or steel including continuous casting', TRUE, 'https://images.unsplash.com/photo-1532634993-15f421e42ec0?q=80&w=800&auto=format&fit=crop', 4),
  (5, 'aluminum-production', 'อุตสาหกรรมการผลิตอะลูมิเนียม', 'Aluminum Production', '• Primary aluminium production', TRUE, 'https://images.unsplash.com/photo-1565035010268-a3816f98589a?q=80&w=800&auto=format&fit=crop', 5),
  (6, 'mining-and-mineral-production', 'การทำเหมืองและการผลิตแร่', 'Mining and Mineral Production', '• Production of cement clinker and production of lime or calcinations of dolomite or magnetite
• Glass and ceramic, mineral wool', TRUE, 'https://images.unsplash.com/photo-1504309092620-4d0ec726efa4?q=80&w=800&auto=format&fit=crop', 6),
  (7, 'pulp-paper-and-print', 'อุตสาหกรรมการผลิตเยื่อกระดาษ กระดาษ และการพิมพ์', 'Pulp, Paper and Print', '• Production of pulp from timber or other fibrous materials
• Production of paper and cardboard
• Printing and publishing', TRUE, 'https://images.unsplash.com/photo-1453738773917-9c3eff1db985?q=80&w=800&auto=format&fit=crop', 7),
  (8, 'chemical-production', 'อุตสาหกรรมการผลิตสารเคมี', 'Chemical Production', '• Production of carbon black, ammonia, soda ash, and sodium bicarbonate
• Production of bulk organic chemicals by cracking, reforming, etc.
• Production of hydrogen and synthesis gas
• Production of nitric, adipic, glyoxal and glyoxylic acid', TRUE, 'https://images.unsplash.com/photo-1581092921461-eab62e97a780?q=80&w=800&auto=format&fit=crop', 8),
  (9, 'carbon-capture-storage', 'การดักจับและเก็บก๊าซเรือนกระจก', 'Carbon Capture Storage', '• Capture and transport of GHG by pipelines for geological storage
• Geological storage of GHG in a storage site', TRUE, 'https://images.unsplash.com/photo-1497436072909-60f360e1d4b1?q=80&w=800&auto=format&fit=crop', 9),
  (10, 'transport', 'การขนส่ง', 'Transport', '• Aviation
• Road transport, rail, and other transportation services', TRUE, 'https://images.unsplash.com/photo-1503376780353-7e6692767b70?q=80&w=800&auto=format&fit=crop', 10),
  (11, 'waste-handling-and-disposal', 'การจัดการและกำจัดของเสีย', 'Waste Handling & Disposal', '• Water and waste water treatment
• Landfill and Composting Facilities', TRUE, 'https://images.unsplash.com/photo-1532996122724-e3c354a0b15b?q=80&w=800&auto=format&fit=crop', 11),
  (12, 'agriculture-forestry-and-other-land-use-afolu', 'การเกษตร ป่าไม้ และการใช้ที่ดิน', 'Agriculture, Forestry & Other Land Use (AFOLU)', '• Farming, forestry, and land use activities (emissions from biological processes)', TRUE, 'https://images.unsplash.com/photo-1464226184884-fa280b87c399?q=80&w=800&auto=format&fit=crop', 12),
  (13, 'general-services', 'กิจกรรมการบริการทั่วไป', 'General Services', '• Building Services / facilities management
• Education, Hospitals
• Others (Office-based activities, IT, retail, etc.)', TRUE, 'https://images.unsplash.com/photo-1521791136064-7986c2920216?q=80&w=800&auto=format&fit=crop', 13)
ON CONFLICT (industry_code) DO UPDATE SET
  legacy_industry_id = EXCLUDED.legacy_industry_id,
  name_th = EXCLUDED.name_th,
  name_en = EXCLUDED.name_en,
  examples = EXCLUDED.examples,
  is_active = EXCLUDED.is_active,
  feature_image_url = EXCLUDED.feature_image_url,
  display_order = EXCLUDED.display_order,
  updated_at = NOW();

-- ─── TEMPLATE ACTIVITY GROUPS ────────────────────────────────────────────────
INSERT INTO template_activity_groups (
  template_id,
  legacy_activity_group_id,
  name_th,
  name_en,
  scope,
  scope_category_id,
  scope_sub_category,
  is_common,
  sort_order,
  status
)
SELECT
  et.id,
  v.legacy_activity_group_id,
  v.name_th,
  v.name_en,
  v.scope,
  sc.id,
  v.scope_sub_category,
  v.is_common,
  v.sort_order,
  v.status
FROM (
VALUES
  (2, 1, 'การเผาไหม้จากหม้อไอน้ำและเครื่องกำเนิดไฟฟ้า', 'Boiler & Generator Combustion', 1, '1) การเผาไหม้อยู่กับที่ (Stationary combustion)', NULL, FALSE, 10, 'active'),
  (2, 2, 'การเผาไหม้จากยานพาหนะขององค์กร', 'Company Vehicle Combustion', 1, '2.2) การเผาไหม้ที่มีการเคลื่อนที่ (Mobile combustion) (On road)', NULL, TRUE, 20, 'active'),
  (2, 3, 'การใช้สารทำความเย็น', 'Refrigerant', 1, '4) การรั่วไหล และอื่น ๆ (Fugitive emissions)', NULL, FALSE, 30, 'active'),
  (2, 4, 'กระบวนการผลิต (Process Emissions)', 'Industrial Process Emissions', 1, '3) กระบวนการผลิต (Process emissions)', NULL, FALSE, 40, 'active'),
  (2, 5, 'การใช้ไฟฟ้าจากระบบสายส่ง', 'Purchased Electricity', 2, 'การใช้พลังงานไฟฟ้า', NULL, TRUE, 50, 'active'),
  (2, 6, 'การใช้ไอน้ำ/ความร้อนจากภายนอก', 'Purchased Steam & Heat', 2, 'Category 3 กิจกรรมที่เกี่ยวข้องกับเชื้อเพลิงและพลังงาน', NULL, FALSE, 60, 'active'),
  (2, 7, 'การเดินทางเพื่อธุรกิจ', 'Business Travel', 3, 'Category 6 การเดินทางเพื่อธุรกิจ', NULL, TRUE, 70, 'active'),
  (2, 8, 'การเดินทางของพนักงาน (Commute)', 'Employee Commuting', 3, 'Category 7 การเดินทางของพนักงาน', NULL, TRUE, 80, 'active'),
  (2, 9, 'การจัดการของเสีย', 'Waste Generation', 3, 'Category 5 การจัดการของเสียที่เกิดจากการด าเนินกิจกรรมขององค์กร', NULL, FALSE, 90, 'active'),
  (2, 10, 'การใช้น้ำประปา/น้ำดิบ', 'Water Consumption', 3, 'Category 1 การซื้อวัตถุดิบ และบริการ', NULL, TRUE, 100, 'active'),
  (2, 11, 'การซื้อสินค้าและวัตถุดิบ (upstream)', 'Purchased Raw Materials & Goods', 3, 'Category 1 การซื้อวัตถุดิบ และบริการ', NULL, FALSE, 110, 'active'),
  (2, 12, 'การขนส่งและกระจายสินค้า (upstream)', 'Upstream Transport & Distribution', 3, 'Category 4 การขนส่งและกระจายสินค้าต้นน้ำ', NULL, FALSE, 120, 'active'),
  (1, 13, 'การเผาไหม้เชื้อเพลิงเพื่อผลิตไฟฟ้า', 'Fuel Combustion for Power Generation', 1, '1) การเผาไหม้อยู่กับที่ (Stationary combustion)', NULL, FALSE, 10, 'active'),
  (1, 14, 'การปล่อยก๊าซจากกระบวนการผลิตไฟฟ้า', 'Process Emissions (Power Generation)', 1, '3) กระบวนการผลิต (Process emissions)', NULL, FALSE, 20, 'active'),
  (1, 15, 'การใช้ไฟฟ้าภายใน (Auxiliary load)', 'Auxiliary Power Consumption', 2, 'การใช้พลังงานไฟฟ้า', NULL, FALSE, 30, 'active'),
  (3, 16, 'การเผาไหม้จากการสำรวจและผลิต', 'Upstream Combustion', 1, '1) การเผาไหม้อยู่กับที่ (Stationary combustion)', NULL, FALSE, 10, 'active'),
  (3, 17, 'การปล่อย Fugitive จากท่อและวาล์ว', 'Fugitive Emissions – Pipelines', 1, '4) การรั่วไหล และอื่น ๆ (Fugitive emissions)', NULL, FALSE, 20, 'active'),
  (3, 18, 'การเผาทิ้ง (Flaring)', 'Flaring', 1, '1) การเผาไหม้อยู่กับที่ (Stationary combustion)', 'Flaring', FALSE, 30, 'active'),
  (4, 19, 'เตาหลอมโลหะ (Furnace Combustion)', 'Furnace Combustion', 1, '3) กระบวนการผลิต (Process emissions)', NULL, FALSE, 10, 'active'),
  (4, 20, 'กระบวนการผลิตโลหะ (Direct Process)', 'Metal Process Emissions', 1, '3) กระบวนการผลิต (Process emissions)', NULL, FALSE, 20, 'active'),
  (4, 21, 'การใช้ไฟฟ้า (Electric Arc Furnace)', 'Electric Arc Furnace Power Use', 2, 'การใช้พลังงานไฟฟ้า', NULL, FALSE, 30, 'active'),
  (5, 22, 'กระบวนการ Electrolysis', 'Electrolysis Process Emissions', 1, '3) กระบวนการผลิต (Process emissions)', 'PFC', FALSE, 10, 'active'),
  (5, 23, 'การเผาไหม้สำหรับ Anode baking', 'Anode Baking Combustion', 1, '1) การเผาไหม้อยู่กับที่ (Stationary combustion)', NULL, FALSE, 20, 'active'),
  (5, 24, 'การใช้ไฟฟ้า (Smelting)', 'Smelting Electricity Use', 2, 'การใช้พลังงานไฟฟ้า', NULL, FALSE, 30, 'active'),
  (6, 25, 'การเผาไหม้จากเครื่องจักรเหมือง', 'Mining Equipment Combustion', 1, '2.2) การเผาไหม้ที่มีการเคลื่อนที่ (Mobile combustion) (On road)', NULL, FALSE, 10, 'active'),
  (6, 26, 'กระบวนการผลิตซีเมนต์/ปูนขาว', 'Cement/Lime Process Emissions', 1, '3) กระบวนการผลิต (Process emissions)', NULL, FALSE, 20, 'active'),
  (6, 27, 'การใช้ไฟฟ้า', 'Electricity Use', 2, 'การใช้พลังงานไฟฟ้า', NULL, FALSE, 30, 'active'),
  (7, 28, 'การเผาไหม้ Biomass', 'Biomass Combustion', 1, '1) การเผาไหม้อยู่กับที่ (Stationary combustion)', 'Biogenic', FALSE, 10, 'active'),
  (7, 29, 'กระบวนการ Kraft pulping', 'Chemical Pulping Process', 1, '3) กระบวนการผลิต (Process emissions)', NULL, FALSE, 20, 'active'),
  (7, 30, 'การใช้ไฟฟ้า', 'Electricity Use', 2, 'การใช้พลังงานไฟฟ้า', NULL, FALSE, 30, 'active'),
  (8, 31, 'กระบวนการผลิตสารเคมี', 'Chemical Process Emissions', 1, '3) กระบวนการผลิต (Process emissions)', NULL, FALSE, 10, 'active'),
  (8, 32, 'การเผาไหม้เชื้อเพลิงในโรงงาน', 'Process Fuel Combustion', 1, '1) การเผาไหม้อยู่กับที่ (Stationary combustion)', NULL, FALSE, 20, 'active'),
  (8, 33, 'การใช้ไฟฟ้า', 'Electricity Use', 2, 'การใช้พลังงานไฟฟ้า', NULL, FALSE, 30, 'active'),
  (9, 34, 'การปล่อยก๊าซจากการดักจับ CO₂', 'CO₂ Capture & Compression', 1, '3) กระบวนการผลิต (Process emissions)', NULL, FALSE, 10, 'active'),
  (9, 35, 'การใช้ไฟฟ้าในกระบวนการดักจับ', 'CCS Auxiliary Electricity Use', 2, 'การใช้พลังงานไฟฟ้า', NULL, FALSE, 20, 'active'),
  (9, 36, 'การเดินทาง / ยานพาหนะ', 'Company Vehicle Use', 1, '2.2) การเผาไหม้ที่มีการเคลื่อนที่ (Mobile combustion) (On road)', NULL, FALSE, 30, 'active'),
  (10, 37, 'การเผาไหม้เชื้อเพลิงในยานพาหนะ', 'Vehicle Fuel Combustion', 1, '2.2) การเผาไหม้ที่มีการเคลื่อนที่ (Mobile combustion) (On road)', NULL, FALSE, 10, 'active'),
  (10, 38, 'การเผาไหม้เชื้อเพลิง Aviation', 'Aviation Combustion', 1, '2.2) การเผาไหม้ที่มีการเคลื่อนที่ (Mobile combustion) (On road)', 'Aviation', FALSE, 20, 'active'),
  (10, 39, 'การใช้ไฟฟ้า (สถานี/อาคาร)', 'Station & Building Electricity', 2, 'การใช้พลังงานไฟฟ้า', NULL, FALSE, 30, 'active'),
  (11, 40, 'การปล่อยก๊าซจาก Landfill', 'Landfill Gas Emissions', 1, '4) การรั่วไหล และอื่น ๆ (Fugitive emissions)', NULL, FALSE, 10, 'active'),
  (11, 41, 'กระบวนการบำบัดน้ำเสีย', 'Wastewater Treatment Process', 1, '3) กระบวนการผลิต (Process emissions)', NULL, FALSE, 20, 'active'),
  (11, 42, 'การใช้ไฟฟ้าในกระบวนการ', 'Process Electricity Use', 2, 'การใช้พลังงานไฟฟ้า', NULL, FALSE, 30, 'active'),
  (12, 43, 'การเผาไหม้ในการเกษตร (Field burning)', 'Agricultural Field Burning', 1, '1) การเผาไหม้อยู่กับที่ (Stationary combustion)', 'Biogenic', FALSE, 10, 'active'),
  (12, 44, 'การหมักย่อย Enteric fermentation', 'Enteric Fermentation (Livestock)', 1, '3) กระบวนการผลิต (Process emissions)', 'Biological', FALSE, 20, 'active'),
  (12, 45, 'การใช้ปุ๋ย / N₂O จากดิน', 'Soil N₂O Emissions', 1, '3) กระบวนการผลิต (Process emissions)', 'N2O', FALSE, 30, 'active'),
  (13, 46, 'การใช้ไฟฟ้าในอาคาร', 'Building Electricity Use', 2, 'การใช้พลังงานไฟฟ้า', NULL, FALSE, 10, 'active'),
  (13, 47, 'การเดินทางของพนักงาน', 'Employee Commuting', 3, 'Category 7 การเดินทางของพนักงาน', NULL, FALSE, 20, 'active'),
  (13, 48, 'การจัดการของเสีย', 'Waste Generation', 3, 'Category 5 การจัดการของเสียที่เกิดจากการด าเนินกิจกรรมขององค์กร', NULL, FALSE, 30, 'active')
) AS v(
  legacy_industry_id,
  legacy_activity_group_id,
  name_th,
  name_en,
  scope,
  target_scope_name_th,
  scope_sub_category,
  is_common,
  sort_order,
  status
)
JOIN emission_templates et ON et.legacy_industry_id = v.legacy_industry_id
LEFT JOIN scope_categories sc ON sc.name_th = v.target_scope_name_th
ON CONFLICT (template_id, legacy_activity_group_id) WHERE legacy_activity_group_id IS NOT NULL DO UPDATE SET
  name_th = EXCLUDED.name_th,
  name_en = EXCLUDED.name_en,
  scope = EXCLUDED.scope,
  scope_category_id = EXCLUDED.scope_category_id,
  scope_sub_category = EXCLUDED.scope_sub_category,
  is_common = EXCLUDED.is_common,
  sort_order = EXCLUDED.sort_order,
  status = EXCLUDED.status,
  updated_at = NOW();

-- =============================================================================
