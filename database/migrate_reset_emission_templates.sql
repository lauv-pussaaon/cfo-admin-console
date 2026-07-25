-- =============================================================================
-- migrate_reset_emission_templates.sql
-- One-time DESTRUCTIVE reset for EXISTING admin-console databases.
--
-- Purpose:
--   Drop and recreate emission template tables to match current 01_schema.sql
--   (no legacy_* columns; activity groups versioned per EF catalog release).
--
-- Tables reset:
--   template_activity_group_fuel_resources
--   template_activity_groups
--   emission_templates
--
-- SAFETY:
--   - Wipes all template industries, activity groups, and fuel mappings.
--   - Does NOT touch fuel_resources, scope_categories, or ef_catalog_releases.
--   - After COMMIT, reseed with:
--       database/04_seed_emission_templates_and_activity_groups.sql
-- =============================================================================

BEGIN;

DROP TABLE IF EXISTS template_activity_group_fuel_resources CASCADE;
DROP TABLE IF EXISTS template_activity_groups CASCADE;
DROP TABLE IF EXISTS emission_templates CASCADE;

-- Emission templates (industry templates)
CREATE TABLE emission_templates (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  industry_code TEXT UNIQUE NOT NULL,
  name_th TEXT NOT NULL,
  name_en TEXT NOT NULL,
  examples TEXT,
  is_active BOOLEAN NOT NULL DEFAULT TRUE,
  feature_image_url TEXT,
  feature_image_path TEXT,
  display_order INTEGER NOT NULL DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  deleted_at TIMESTAMPTZ
);

-- Template activity groups
-- version: soft-linked to ef_catalog_releases.version (free text, no FK — same convention
-- as fuel_resources.version). Each EF catalog version has its own activity-group list per
-- industry template.
CREATE TABLE template_activity_groups (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  template_id UUID NOT NULL REFERENCES emission_templates(id) ON DELETE CASCADE,
  name_th TEXT NOT NULL,
  name_en TEXT NOT NULL,
  scope INTEGER CHECK (scope IN (1, 2, 3, 4)),
  scope_category_id UUID REFERENCES scope_categories(id) ON DELETE SET NULL,
  scope_sub_category TEXT,
  is_common BOOLEAN NOT NULL DEFAULT FALSE,
  sort_order INTEGER NOT NULL DEFAULT 0,
  status TEXT NOT NULL DEFAULT 'active' CHECK (status IN ('active', 'inactive')),
  version TEXT NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  deleted_at TIMESTAMPTZ
);

-- Activity group <-> fuel resource mappings
CREATE TABLE template_activity_group_fuel_resources (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  template_activity_group_id UUID NOT NULL REFERENCES template_activity_groups(id) ON DELETE CASCADE,
  fuel_resource_id UUID NOT NULL REFERENCES fuel_resources(id) ON DELETE CASCADE,
  note TEXT,
  sort_order INTEGER NOT NULL DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE(template_activity_group_id, fuel_resource_id)
);

-- Emission templates indexes
CREATE INDEX idx_emission_templates_active ON emission_templates(is_active);
CREATE INDEX idx_emission_templates_display_order ON emission_templates(display_order);
CREATE INDEX idx_emission_templates_deleted_at ON emission_templates(deleted_at) WHERE deleted_at IS NULL;

-- Template activity groups indexes
CREATE UNIQUE INDEX idx_template_activity_groups_template_name_version
  ON template_activity_groups(template_id, name_en, version);
CREATE INDEX idx_template_activity_groups_template_sort
  ON template_activity_groups(template_id, sort_order);
CREATE INDEX idx_template_activity_groups_scope_category
  ON template_activity_groups(scope, scope_category_id);
CREATE INDEX idx_template_activity_groups_deleted_at
  ON template_activity_groups(deleted_at) WHERE deleted_at IS NULL;
CREATE INDEX idx_template_activity_groups_version
  ON template_activity_groups(version);

-- Template activity group fuel mappings indexes
CREATE INDEX idx_tagfr_activity_group ON template_activity_group_fuel_resources(template_activity_group_id);
CREATE INDEX idx_tagfr_fuel_resource ON template_activity_group_fuel_resources(fuel_resource_id);

COMMIT;

-- =============================================================================
-- Next step (run after COMMIT)
-- =============================================================================
-- psql ... -f database/04_seed_emission_templates_and_activity_groups.sql
--
-- Verification:
-- SELECT count(*) FROM emission_templates;           -- expect 13 after seed
-- SELECT version, count(*) FROM template_activity_groups GROUP BY version;
-- -- expect TGO 1 กรกฎาคม 2569
--
-- SELECT column_name FROM information_schema.columns
-- WHERE table_name IN ('emission_templates', 'template_activity_groups')
--   AND column_name LIKE 'legacy_%';
-- -- expect 0 rows
