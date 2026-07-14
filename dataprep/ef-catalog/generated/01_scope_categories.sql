-- Canonical scope_categories (from client scope_categories.manifest.json)
BEGIN;

INSERT INTO scope_categories (id, scope, name_th, name_en, display_order, created_at, updated_at)
VALUES ('a1000001-0001-4001-8001-000000000001', 1, '1) การเผาไหม้อยู่กับที่ (Stationary combustion)', '1) Stationary combustion', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope = EXCLUDED.scope,
  name_th = EXCLUDED.name_th,
  name_en = EXCLUDED.name_en,
  display_order = EXCLUDED.display_order,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO scope_categories (id, scope, name_th, name_en, display_order, created_at, updated_at)
VALUES ('a1000001-0001-4001-8001-000000000002', 1, '2.1) การเผาไหม้ที่มีการเคลื่อนที่ (Mobile combustion) (Off road)', '2.1) Mobile combustion (Off road)', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope = EXCLUDED.scope,
  name_th = EXCLUDED.name_th,
  name_en = EXCLUDED.name_en,
  display_order = EXCLUDED.display_order,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO scope_categories (id, scope, name_th, name_en, display_order, created_at, updated_at)
VALUES ('a1000001-0001-4001-8001-000000000003', 1, '2.2) การเผาไหม้ที่มีการเคลื่อนที่ (Mobile combustion) (On road)', '2.2) Mobile combustion (On road)', 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope = EXCLUDED.scope,
  name_th = EXCLUDED.name_th,
  name_en = EXCLUDED.name_en,
  display_order = EXCLUDED.display_order,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO scope_categories (id, scope, name_th, name_en, display_order, created_at, updated_at)
VALUES ('a1000001-0001-4001-8001-000000000004', 1, '3) กระบวนการผลิต (Process emissions)', '3) Process emissions', 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope = EXCLUDED.scope,
  name_th = EXCLUDED.name_th,
  name_en = EXCLUDED.name_en,
  display_order = EXCLUDED.display_order,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO scope_categories (id, scope, name_th, name_en, display_order, created_at, updated_at)
VALUES ('a1000001-0001-4001-8001-000000000005', 1, '4) การรั่วไหล และอื่น ๆ (Fugitive emissions)', '4) Fugitive emissions', 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope = EXCLUDED.scope,
  name_th = EXCLUDED.name_th,
  name_en = EXCLUDED.name_en,
  display_order = EXCLUDED.display_order,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO scope_categories (id, scope, name_th, name_en, display_order, created_at, updated_at)
VALUES ('a1000002-0002-4002-8002-000000000006', 2, 'การใช้พลังงานไฟฟ้า', 'Purchased Electricity', 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope = EXCLUDED.scope,
  name_th = EXCLUDED.name_th,
  name_en = EXCLUDED.name_en,
  display_order = EXCLUDED.display_order,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO scope_categories (id, scope, name_th, name_en, display_order, created_at, updated_at)
VALUES ('a1000003-0003-4003-8003-000000000007', 3, 'Category 1 การซื้อวัตถุดิบ และบริการ', 'Category 1 Purchased goods and services', 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope = EXCLUDED.scope,
  name_th = EXCLUDED.name_th,
  name_en = EXCLUDED.name_en,
  display_order = EXCLUDED.display_order,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO scope_categories (id, scope, name_th, name_en, display_order, created_at, updated_at)
VALUES ('a1000003-0003-4003-8003-000000000008', 3, 'Category 2 สินค้าประเภททุน', 'Category 2 Capital goods', 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope = EXCLUDED.scope,
  name_th = EXCLUDED.name_th,
  name_en = EXCLUDED.name_en,
  display_order = EXCLUDED.display_order,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO scope_categories (id, scope, name_th, name_en, display_order, created_at, updated_at)
VALUES ('a1000003-0003-4003-8003-000000000009', 3, 'Category 3 กิจกรรมที่เกี่ยวข้องกับเชื้อเพลิงและพลังงาน', 'Category 3 Fuel and energy related activities', 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope = EXCLUDED.scope,
  name_th = EXCLUDED.name_th,
  name_en = EXCLUDED.name_en,
  display_order = EXCLUDED.display_order,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO scope_categories (id, scope, name_th, name_en, display_order, created_at, updated_at)
VALUES ('a1000003-0003-4003-8003-00000000000a', 3, 'Category 4 การขนส่งและกระจายสินค้าต้นน้ำ', 'Category 4 Upstream transportation and distribution', 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope = EXCLUDED.scope,
  name_th = EXCLUDED.name_th,
  name_en = EXCLUDED.name_en,
  display_order = EXCLUDED.display_order,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO scope_categories (id, scope, name_th, name_en, display_order, created_at, updated_at)
VALUES ('a1000003-0003-4003-8003-00000000000b', 3, 'Category 5 การจัดการของเสียที่เกิดจากการดำเนินกิจกรรมขององค์กร', 'Category 5 Waste generated in operations', 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope = EXCLUDED.scope,
  name_th = EXCLUDED.name_th,
  name_en = EXCLUDED.name_en,
  display_order = EXCLUDED.display_order,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO scope_categories (id, scope, name_th, name_en, display_order, created_at, updated_at)
VALUES ('a1000003-0003-4003-8003-00000000000c', 3, 'Category 6 การเดินทางเพื่อธุรกิจ', 'Category 6 Business travel', 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope = EXCLUDED.scope,
  name_th = EXCLUDED.name_th,
  name_en = EXCLUDED.name_en,
  display_order = EXCLUDED.display_order,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO scope_categories (id, scope, name_th, name_en, display_order, created_at, updated_at)
VALUES ('a1000003-0003-4003-8003-00000000000d', 3, 'Category 7 การเดินทางของพนักงาน', 'Category 7 Employee commuting', 13, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope = EXCLUDED.scope,
  name_th = EXCLUDED.name_th,
  name_en = EXCLUDED.name_en,
  display_order = EXCLUDED.display_order,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO scope_categories (id, scope, name_th, name_en, display_order, created_at, updated_at)
VALUES ('a1000003-0003-4003-8003-00000000000e', 3, 'Category 8 การใช้สินทรัพย์ที่เช่า', 'Category 8 Upstream leased assets', 14, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope = EXCLUDED.scope,
  name_th = EXCLUDED.name_th,
  name_en = EXCLUDED.name_en,
  display_order = EXCLUDED.display_order,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO scope_categories (id, scope, name_th, name_en, display_order, created_at, updated_at)
VALUES ('a1000003-0003-4003-8003-00000000000f', 3, 'Category 9 การขนส่งและกระจายสินค้า', 'Category 9 Downstream transportation and distribution', 15, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope = EXCLUDED.scope,
  name_th = EXCLUDED.name_th,
  name_en = EXCLUDED.name_en,
  display_order = EXCLUDED.display_order,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO scope_categories (id, scope, name_th, name_en, display_order, created_at, updated_at)
VALUES ('a1000003-0003-4003-8003-000000000010', 3, 'Category 10 การแปรรูปสินค้าที่องค์กรจำหน่าย', 'Category 10 Processing of sold products', 16, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope = EXCLUDED.scope,
  name_th = EXCLUDED.name_th,
  name_en = EXCLUDED.name_en,
  display_order = EXCLUDED.display_order,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO scope_categories (id, scope, name_th, name_en, display_order, created_at, updated_at)
VALUES ('a1000003-0003-4003-8003-000000000011', 3, 'Category 11 การใช้งานของผลิตภัณฑ์ที่องค์กรจำหน่าย', 'Category 11 Use of sold products', 17, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope = EXCLUDED.scope,
  name_th = EXCLUDED.name_th,
  name_en = EXCLUDED.name_en,
  display_order = EXCLUDED.display_order,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO scope_categories (id, scope, name_th, name_en, display_order, created_at, updated_at)
VALUES ('a1000003-0003-4003-8003-000000000012', 3, 'Category 12 การจัดการซากผลิตภัณฑ์ที่องค์กรจำหน่าย', 'Category 12 End-of-life treatment of sold products', 18, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope = EXCLUDED.scope,
  name_th = EXCLUDED.name_th,
  name_en = EXCLUDED.name_en,
  display_order = EXCLUDED.display_order,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO scope_categories (id, scope, name_th, name_en, display_order, created_at, updated_at)
VALUES ('a1000003-0003-4003-8003-000000000013', 3, 'Category 13 การปล่อยเช่าสินทรัพย์ขององค์กร', 'Category 13 Downstream leased assets', 19, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope = EXCLUDED.scope,
  name_th = EXCLUDED.name_th,
  name_en = EXCLUDED.name_en,
  display_order = EXCLUDED.display_order,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO scope_categories (id, scope, name_th, name_en, display_order, created_at, updated_at)
VALUES ('a1000004-0004-4004-8004-000000000014', 4, 'แยกรายงานการใช้พลังงาน', 'Energy Usage Reporting', 20, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope = EXCLUDED.scope,
  name_th = EXCLUDED.name_th,
  name_en = EXCLUDED.name_en,
  display_order = EXCLUDED.display_order,
  deleted_at = NULL,
  updated_at = NOW();

COMMIT;