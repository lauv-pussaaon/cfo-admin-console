-- Migration: Add template_activity_group_fuel_resources junction table
-- Many-to-many: activity groups <-> fuel resources
-- Run after: migration_add_template_activity_groups.sql, migration_add_fuel_resources.sql

CREATE TABLE IF NOT EXISTS template_activity_group_fuel_resources (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  template_activity_group_id UUID NOT NULL REFERENCES template_activity_groups(id) ON DELETE CASCADE,
  fuel_resource_id UUID NOT NULL REFERENCES fuel_resources(id) ON DELETE CASCADE,
  note TEXT,
  sort_order INTEGER NOT NULL DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE(template_activity_group_id, fuel_resource_id)
);

CREATE INDEX IF NOT EXISTS idx_tagfr_activity_group ON template_activity_group_fuel_resources(template_activity_group_id);
CREATE INDEX IF NOT EXISTS idx_tagfr_fuel_resource ON template_activity_group_fuel_resources(fuel_resource_id);
