-- TGO Scope 3 Category 4: set duo distance/weight labels.
-- Prefer new imports via `pnpm tgo-ef:build-import` (labels baked into Excel/SQL).
-- This migration repairs existing `TGO พฤษภาคม 2569` rows in the admin DB
-- (formerly `TGO API` / `TGO May 2569`; run rename migration first).
--
-- Zero-loading marker is literal ' 0% Loading' (leading space) so '100% Loading'
-- is not treated as zero-loading. Do not use LIKE '%0% Loading%'.

BEGIN;

-- 1) all Cat4 TGO: value1 + clear value2
UPDATE fuel_resources
SET
  value1_label = 'ระยะทาง',
  value1_unit = 'km',
  value2_label = NULL,
  value2_unit = NULL,
  updated_at = NOW()
WHERE version = 'TGO พฤษภาคม 2569'
  AND scope_category_id = 'a1000003-0003-4003-8003-00000000000a'::uuid
  AND deleted_at IS NULL;

-- 2) non-zero-loading: set value2
UPDATE fuel_resources
SET
  value2_label = 'น้ำหนักที่ขน',
  value2_unit = 'ton',
  updated_at = NOW()
WHERE version = 'TGO พฤษภาคม 2569'
  AND scope_category_id = 'a1000003-0003-4003-8003-00000000000a'::uuid
  AND deleted_at IS NULL
  AND strpos(resource, ' 0% Loading') = 0;

COMMIT;

-- Verification (optional):
-- SELECT count(*) FROM fuel_resources
--   WHERE version = 'TGO พฤษภาคม 2569' AND scope_category_id = 'a1000003-0003-4003-8003-00000000000a'::uuid AND deleted_at IS NULL;
-- SELECT count(*) FROM fuel_resources
--   WHERE version = 'TGO พฤษภาคม 2569' AND scope_category_id = 'a1000003-0003-4003-8003-00000000000a'::uuid
--     AND deleted_at IS NULL AND strpos(resource, ' 0% Loading') > 0
--     AND value2_label IS NULL;
-- SELECT count(*) FROM fuel_resources
--   WHERE version = 'TGO พฤษภาคม 2569' AND scope_category_id = 'a1000003-0003-4003-8003-00000000000a'::uuid
--     AND deleted_at IS NULL AND strpos(resource, ' 0% Loading') = 0
--     AND value2_label = 'น้ำหนักที่ขน' AND value2_unit = 'ton';
