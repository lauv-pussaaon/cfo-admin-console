-- Rename catalog version label TGO API / TGO May 2569 → TGO พฤษภาคม 2569.
-- Run before importing a newer TGO cut so existing fuel UUIDs stay stable.
-- If the release is still draft after rename, set is_default via UI/set_default after publish.

BEGIN;

UPDATE fuel_resources
SET version = 'TGO พฤษภาคม 2569', updated_at = NOW()
WHERE version IN ('TGO API', 'TGO May 2569') AND deleted_at IS NULL;

UPDATE ef_catalog_releases
SET version = 'TGO พฤษภาคม 2569', updated_at = NOW()
WHERE version IN ('TGO API', 'TGO May 2569');

UPDATE ef_catalog_releases SET is_default = false WHERE is_default = true;

UPDATE ef_catalog_releases
SET is_default = true, updated_at = NOW()
WHERE version = 'TGO พฤษภาคม 2569' AND status = 'published';

COMMIT;
