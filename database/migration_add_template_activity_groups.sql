-- Migration: Add template_activity_groups for Emissions Template Management
-- Each activity group belongs to one industry template.
-- Mapping columns are future-ready for fuel_resources linkage.

CREATE TABLE IF NOT EXISTS template_activity_groups (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  template_id UUID NOT NULL REFERENCES emission_templates(id) ON DELETE CASCADE,
  legacy_activity_group_id INTEGER,
  name_th TEXT NOT NULL,
  name_en TEXT NOT NULL,
  scope INTEGER CHECK (scope IN (1, 2, 3, 4)),
  category_label TEXT,
  subcategory_label TEXT,
  scope_category_id UUID REFERENCES scope_categories(id) ON DELETE SET NULL,
  scope_sub_category TEXT,
  is_common BOOLEAN NOT NULL DEFAULT FALSE,
  sort_order INTEGER NOT NULL DEFAULT 0,
  status TEXT NOT NULL DEFAULT 'active' CHECK (status IN ('active', 'inactive')),
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  deleted_at TIMESTAMPTZ
);

-- Use a non-partial unique index so ON CONFLICT (template_id, legacy_activity_group_id)
-- in seed SQL can always infer the conflict target.
DROP INDEX IF EXISTS idx_template_activity_groups_template_legacy;
CREATE UNIQUE INDEX IF NOT EXISTS idx_template_activity_groups_template_legacy
  ON template_activity_groups(template_id, legacy_activity_group_id);

CREATE INDEX IF NOT EXISTS idx_template_activity_groups_template_sort
  ON template_activity_groups(template_id, sort_order);

CREATE INDEX IF NOT EXISTS idx_template_activity_groups_scope_category
  ON template_activity_groups(scope, scope_category_id);

CREATE INDEX IF NOT EXISTS idx_template_activity_groups_deleted_at
  ON template_activity_groups(deleted_at) WHERE deleted_at IS NULL;
