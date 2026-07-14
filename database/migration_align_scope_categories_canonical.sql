-- Align scope_categories to canonical UUIDs (client scope_categories.manifest.json).
-- Remaps FKs on fuel_resources and template_activity_groups, then removes orphan categories.
-- Run after migration_add_ef_catalog_versioning.sql.

DO $$
DECLARE
  rec RECORD;
  old_id UUID;
  cat_alias TEXT;
BEGIN
  -- Category 5 legacy spelling alias (same as client manifest).
  FOR rec IN
    SELECT * FROM (VALUES
      ('a1000001-0001-4001-8001-000000000001'::uuid, 1, '1) การเผาไหม้อยู่กับที่ (Stationary combustion)', '1) Stationary combustion', 1),
      ('a1000001-0001-4001-8001-000000000002'::uuid, 1, '2.1) การเผาไหม้ที่มีการเคลื่อนที่ (Mobile combustion) (Off road)', '2.1) Mobile combustion (Off road)', 2),
      ('a1000001-0001-4001-8001-000000000003'::uuid, 1, '2.2) การเผาไหม้ที่มีการเคลื่อนที่ (Mobile combustion) (On road)', '2.2) Mobile combustion (On road)', 3),
      ('a1000001-0001-4001-8001-000000000004'::uuid, 1, '3) กระบวนการผลิต (Process emissions)', '3) Process emissions', 4),
      ('a1000001-0001-4001-8001-000000000005'::uuid, 1, '4) การรั่วไหล และอื่น ๆ (Fugitive emissions)', '4) Fugitive emissions', 5),
      ('a1000002-0002-4002-8002-000000000006'::uuid, 2, 'การใช้พลังงานไฟฟ้า', 'Purchased Electricity', 6),
      ('a1000003-0003-4003-8003-000000000007'::uuid, 3, 'Category 1 การซื้อวัตถุดิบ และบริการ', 'Category 1 Purchased goods and services', 7),
      ('a1000003-0003-4003-8003-000000000008'::uuid, 3, 'Category 2 สินค้าประเภททุน', 'Category 2 Capital goods', 8),
      ('a1000003-0003-4003-8003-000000000009'::uuid, 3, 'Category 3 กิจกรรมที่เกี่ยวข้องกับเชื้อเพลิงและพลังงาน', 'Category 3 Fuel and energy related activities', 9),
      ('a1000003-0003-4003-8003-00000000000a'::uuid, 3, 'Category 4 การขนส่งและกระจายสินค้าต้นน้ำ', 'Category 4 Upstream transportation and distribution', 10),
      ('a1000003-0003-4003-8003-00000000000b'::uuid, 3, 'Category 5 การจัดการของเสียที่เกิดจากการดำเนินกิจกรรมขององค์กร', 'Category 5 Waste generated in operations', 11),
      ('a1000003-0003-4003-8003-00000000000c'::uuid, 3, 'Category 6 การเดินทางเพื่อธุรกิจ', 'Category 6 Business travel', 12),
      ('a1000003-0003-4003-8003-00000000000d'::uuid, 3, 'Category 7 การเดินทางของพนักงาน', 'Category 7 Employee commuting', 13),
      ('a1000003-0003-4003-8003-00000000000e'::uuid, 3, 'Category 8 การใช้สินทรัพย์ที่เช่า', 'Category 8 Upstream leased assets', 14),
      ('a1000003-0003-4003-8003-00000000000f'::uuid, 3, 'Category 9 การขนส่งและกระจายสินค้า', 'Category 9 Downstream transportation and distribution', 15),
      ('a1000003-0003-4003-8003-000000000010'::uuid, 3, 'Category 10 การแปรรูปสินค้าที่องค์กรจำหน่าย', 'Category 10 Processing of sold products', 16),
      ('a1000003-0003-4003-8003-000000000011'::uuid, 3, 'Category 11 การใช้งานของผลิตภัณฑ์ที่องค์กรจำหน่าย', 'Category 11 Use of sold products', 17),
      ('a1000003-0003-4003-8003-000000000012'::uuid, 3, 'Category 12 การจัดการซากผลิตภัณฑ์ที่องค์กรจำหน่าย', 'Category 12 End-of-life treatment of sold products', 18),
      ('a1000003-0003-4003-8003-000000000013'::uuid, 3, 'Category 13 การปล่อยเช่าสินทรัพย์ขององค์กร', 'Category 13 Downstream leased assets', 19),
      ('a1000004-0004-4004-8004-000000000014'::uuid, 4, 'แยกรายงานการใช้พลังงาน', 'Energy Usage Reporting', 20)
    ) AS t(id, scope, name_th, name_en, display_order)
  LOOP
    INSERT INTO scope_categories (id, scope, name_th, name_en, display_order, created_at, updated_at)
    VALUES (rec.id, rec.scope, rec.name_th, rec.name_en, rec.display_order, NOW(), NOW())
    ON CONFLICT (id) DO UPDATE SET
      scope = EXCLUDED.scope,
      name_th = EXCLUDED.name_th,
      name_en = EXCLUDED.name_en,
      display_order = EXCLUDED.display_order,
      deleted_at = NULL,
      updated_at = NOW();

    cat_alias := NULL;
    IF rec.name_th = 'Category 5 การจัดการของเสียที่เกิดจากการดำเนินกิจกรรมขององค์กร' THEN
      cat_alias := 'Category 5 การจัดการของเสียที่เกิดจากการด าเนินกิจกรรมขององค์กร';
    END IF;

    FOR old_id IN
      SELECT id FROM scope_categories
      WHERE id <> rec.id
        AND deleted_at IS NULL
        AND (
          name_th = rec.name_th
          OR (cat_alias IS NOT NULL AND name_th = cat_alias)
        )
    LOOP
      UPDATE fuel_resources SET scope_category_id = rec.id WHERE scope_category_id = old_id;
      IF EXISTS (
        SELECT 1 FROM information_schema.tables
        WHERE table_schema = 'public' AND table_name = 'template_activity_groups'
      ) THEN
        EXECUTE 'UPDATE template_activity_groups SET scope_category_id = $1 WHERE scope_category_id = $2'
          USING rec.id, old_id;
      END IF;
      UPDATE scope_categories
      SET deleted_at = NOW(), updated_at = NOW()
      WHERE id = old_id;
    END LOOP;
  END LOOP;
END $$;
