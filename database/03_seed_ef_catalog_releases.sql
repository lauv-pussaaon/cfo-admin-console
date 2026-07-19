-- Seed known EF catalog release rows (draft) with canonical tab order.
-- Run after 01_schema.sql. Fuel rows come from dataprep/ef-catalog/generated/*
-- or Emission Resources UI import; then publish from the admin UI.

INSERT INTO ef_catalog_releases (version, status, is_default, fuel_count, link_count, order_index, updated_at)
VALUES
  ('กุมภาพันธ์ 2569', 'draft', false, 0, 0, 10, NOW()),
  ('พฤษภาคม 2569', 'draft', false, 0, 0, 20, NOW()),
  ('TGO พฤษภาคม 2569', 'draft', false, 0, 0, 30, NOW()),
  ('TGO 1 กรกฎาคม 2569', 'draft', false, 0, 0, 40, NOW())
ON CONFLICT (version) DO UPDATE SET
  order_index = EXCLUDED.order_index,
  updated_at = NOW();
