-- Canonical display order for Emission Resources version tabs / client pickers.
-- Gaps of 10 leave room for future inserts between known catalogs.

ALTER TABLE ef_catalog_releases
  ADD COLUMN IF NOT EXISTS order_index INT NOT NULL DEFAULT 0;

UPDATE ef_catalog_releases SET order_index = 10 WHERE version = 'กุมภาพันธ์ 2569';
UPDATE ef_catalog_releases SET order_index = 20 WHERE version = 'พฤษภาคม 2569';
UPDATE ef_catalog_releases SET order_index = 30
WHERE version IN ('TGO พฤษภาคม 2569', 'TGO API', 'TGO May 2569');
UPDATE ef_catalog_releases SET order_index = 40 WHERE version = 'TGO 1 กรกฎาคม 2569';

-- Remaining versions (order_index still 0): assign after current max, by version name.
WITH unknowns AS (
  SELECT version,
         ROW_NUMBER() OVER (ORDER BY version) AS rn
  FROM ef_catalog_releases
  WHERE order_index = 0
),
bounds AS (
  SELECT COALESCE(MAX(order_index), 0) AS max_idx FROM ef_catalog_releases
)
UPDATE ef_catalog_releases r
SET order_index = b.max_idx + (u.rn * 10)
FROM unknowns u, bounds b
WHERE r.version = u.version;
