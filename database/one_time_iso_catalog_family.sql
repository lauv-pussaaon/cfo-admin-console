-- Existing admin Supabase only. Fresh installs get this from 01_schema.sql + 08_seed_iso_scope_categories.sql.
-- Run this file, then database/08_seed_iso_scope_categories.sql.

ALTER TABLE scope_categories
  ADD COLUMN IF NOT EXISTS family TEXT NOT NULL DEFAULT 'tgo';

ALTER TABLE scope_categories DROP CONSTRAINT IF EXISTS scope_categories_scope_check;
ALTER TABLE scope_categories DROP CONSTRAINT IF EXISTS scope_categories_family_check;
ALTER TABLE scope_categories DROP CONSTRAINT IF EXISTS scope_categories_scope_family_check;

ALTER TABLE scope_categories
  ADD CONSTRAINT scope_categories_family_check CHECK (family IN ('tgo', 'iso'));

ALTER TABLE scope_categories
  ADD CONSTRAINT scope_categories_scope_family_check CHECK (
    (family = 'tgo' AND scope IN (1, 2, 3, 4))
    OR (family = 'iso' AND scope IN (1, 2, 3, 4, 5, 6))
  );

ALTER TABLE ef_catalog_releases
  ADD COLUMN IF NOT EXISTS family TEXT NOT NULL DEFAULT 'tgo';

ALTER TABLE ef_catalog_releases DROP CONSTRAINT IF EXISTS ef_catalog_releases_status_check;
ALTER TABLE ef_catalog_releases DROP CONSTRAINT IF EXISTS ef_catalog_releases_family_check;

ALTER TABLE ef_catalog_releases
  ADD CONSTRAINT ef_catalog_releases_family_check CHECK (family IN ('tgo', 'iso'));

ALTER TABLE ef_catalog_releases
  ADD CONSTRAINT ef_catalog_releases_status_check
  CHECK (status IN ('draft', 'published', 'archived'));

DROP INDEX IF EXISTS uq_ef_catalog_releases_one_default;
CREATE UNIQUE INDEX uq_ef_catalog_releases_one_default
  ON ef_catalog_releases (family)
  WHERE is_default = true AND status = 'published';
