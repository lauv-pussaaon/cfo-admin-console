-- EF catalog versioning: fuel_resources version fields + release metadata + linking.
-- Run after migration_add_fuel_resources.sql (and template migrations if remapping categories).

-- ─── 1a. Extend fuel_resources ───────────────────────────────────────────────

ALTER TABLE fuel_resources
  ADD COLUMN IF NOT EXISTS version TEXT,
  ADD COLUMN IF NOT EXISTS ref_code TEXT,
  ADD COLUMN IF NOT EXISTS sort_index INT,
  ADD COLUMN IF NOT EXISTS multiplier NUMERIC NOT NULL DEFAULT 1;

-- Backfill legacy admin rows (pre-versioning flat catalog) as Feb release.
UPDATE fuel_resources
SET version = 'กุมภาพันธ์ 2569'
WHERE version IS NULL OR version = '';

CREATE INDEX IF NOT EXISTS idx_fuel_resources_version ON fuel_resources(version);
CREATE INDEX IF NOT EXISTS idx_fuel_resources_ref_code ON fuel_resources(ref_code);

CREATE UNIQUE INDEX IF NOT EXISTS uq_fuel_resources_ref_source_version_ref_code
  ON fuel_resources (ref_source, version, ref_code)
  WHERE ref_code IS NOT NULL AND deleted_at IS NULL;

-- ─── 1c. ef_catalog_releases ─────────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS ef_catalog_releases (
  version TEXT PRIMARY KEY,
  status TEXT NOT NULL DEFAULT 'draft'
    CHECK (status IN ('draft', 'published')),
  is_default BOOLEAN NOT NULL DEFAULT false,
  content_hash TEXT,
  fuel_count INT NOT NULL DEFAULT 0,
  link_count INT NOT NULL DEFAULT 0,
  published_at TIMESTAMPTZ,
  published_by UUID,
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- At most one published default release.
CREATE UNIQUE INDEX IF NOT EXISTS uq_ef_catalog_releases_one_default
  ON ef_catalog_releases (is_default)
  WHERE is_default = true AND status = 'published';

INSERT INTO ef_catalog_releases (version, status, is_default, updated_at) VALUES
  ('กุมภาพันธ์ 2569', 'draft', false, NOW()),
  ('พฤษภาคม 2569', 'draft', false, NOW()),
  ('TGO API', 'draft', false, NOW())
ON CONFLICT (version) DO NOTHING;

-- ─── 1d. fuel_resources_linking ──────────────────────────────────────────────

CREATE TABLE IF NOT EXISTS fuel_resources_linking (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  source_fuel_id UUID NOT NULL REFERENCES fuel_resources(id) ON DELETE CASCADE,
  dest_fuel_id UUID NOT NULL REFERENCES fuel_resources(id) ON DELETE CASCADE,
  unit_conversion_factor NUMERIC NOT NULL DEFAULT 1,
  version TEXT NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE (source_fuel_id, dest_fuel_id)
);

CREATE INDEX IF NOT EXISTS idx_frl_version ON fuel_resources_linking(version);
CREATE INDEX IF NOT EXISTS idx_frl_source ON fuel_resources_linking(source_fuel_id);
CREATE INDEX IF NOT EXISTS idx_frl_dest ON fuel_resources_linking(dest_fuel_id);
