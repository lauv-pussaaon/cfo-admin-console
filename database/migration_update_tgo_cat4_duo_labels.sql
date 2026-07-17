-- TGO API Scope 3 Category 4: set duo distance/weight labels.
-- Expected counts (from seed 03_fuel_resources_tgo_api.sql): 188 total, 140 with "0% Loading", 48 with value2.
-- Do not use LIKE '%0% Loading%' — % is a wildcard and also matches 50%/75%/100% Loading.

BEGIN;

-- 1) all Cat4 TGO: value1 + clear value2
UPDATE fuel_resources
SET
  value1_label = 'ระยะทาง',
  value1_unit = 'km',
  value2_label = NULL,
  value2_unit = NULL,
  updated_at = NOW()
WHERE version = 'TGO API'
  AND scope_category_id = 'a1000003-0003-4003-8003-00000000000a'::uuid
  AND deleted_at IS NULL;

-- 2) non-0% Loading: set value2
UPDATE fuel_resources
SET
  value2_label = 'น้ำหนักที่ขน',
  value2_unit = 'ton',
  updated_at = NOW()
WHERE version = 'TGO API'
  AND scope_category_id = 'a1000003-0003-4003-8003-00000000000a'::uuid
  AND deleted_at IS NULL
  AND strpos(resource, '0% Loading') = 0;

COMMIT;

-- Verification (optional):
-- SELECT count(*) FROM fuel_resources
--   WHERE version = 'TGO API' AND scope_category_id = 'a1000003-0003-4003-8003-00000000000a'::uuid AND deleted_at IS NULL;
-- -- expect 188
-- SELECT count(*) FROM fuel_resources
--   WHERE version = 'TGO API' AND scope_category_id = 'a1000003-0003-4003-8003-00000000000a'::uuid
--     AND deleted_at IS NULL AND strpos(resource, '0% Loading') > 0
--     AND value2_label IS NULL;
-- -- expect 140
-- SELECT count(*) FROM fuel_resources
--   WHERE version = 'TGO API' AND scope_category_id = 'a1000003-0003-4003-8003-00000000000a'::uuid
--     AND deleted_at IS NULL AND strpos(resource, '0% Loading') = 0
--     AND value2_label = 'น้ำหนักที่ขน' AND value2_unit = 'ton';
-- -- expect 48
