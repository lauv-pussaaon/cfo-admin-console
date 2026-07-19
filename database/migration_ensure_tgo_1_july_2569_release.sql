-- Register EF catalog release for fuels seeded as TGO 1 กรกฎาคม 2569
-- (e.g. tmp_tgo_api_1_july_2569_split part SQL). Draft only — publish + set_default in UI.

BEGIN;

INSERT INTO ef_catalog_releases (version, status, is_default, fuel_count, link_count, order_index, updated_at)
VALUES ('TGO 1 กรกฎาคม 2569', 'draft', false, 0, 0, 40, NOW())
ON CONFLICT (version) DO UPDATE SET
  order_index = EXCLUDED.order_index,
  updated_at = NOW();

UPDATE ef_catalog_releases r
SET
  fuel_count = (
    SELECT COUNT(*)::int
    FROM fuel_resources fr
    WHERE fr.version = 'TGO 1 กรกฎาคม 2569'
      AND fr.deleted_at IS NULL
  ),
  link_count = 0,
  order_index = 40,
  updated_at = NOW()
WHERE r.version = 'TGO 1 กรกฎาคม 2569';

COMMIT;
