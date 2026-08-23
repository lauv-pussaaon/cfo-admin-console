-- =============================================================================
-- migrate_add_ef_catalog_version_backups.sql
-- One-time migration for EXISTING admin-console databases.
--
-- Purpose:
--   Snapshot tables for Emission Resources version backups (same fuel UUIDs).
--   Matches current 01_schema.sql.
--
-- Safe to re-run: CREATE TABLE IF NOT EXISTS + CREATE INDEX IF NOT EXISTS.
-- =============================================================================

BEGIN;

CREATE TABLE IF NOT EXISTS ef_catalog_version_backups (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  source_version TEXT NOT NULL,
  fuel_count INT NOT NULL DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  created_by UUID REFERENCES users(id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS ef_catalog_version_backup_fuels (
  backup_id UUID NOT NULL REFERENCES ef_catalog_version_backups(id) ON DELETE CASCADE,
  id UUID NOT NULL,
  scope_category_id UUID NOT NULL REFERENCES scope_categories(id) ON DELETE RESTRICT,
  resource TEXT NOT NULL,
  sub_category TEXT,
  unit TEXT,
  ef_value NUMERIC,
  value1_label TEXT,
  value1_unit TEXT,
  value2_label TEXT,
  value2_unit TEXT,
  ref_info TEXT,
  ref_co2 NUMERIC,
  ref_fossil_ch4 NUMERIC,
  ref_ch4 NUMERIC,
  ref_n2o NUMERIC,
  ref_sf6 NUMERIC,
  ref_nf3 NUMERIC,
  ref_hfcs NUMERIC,
  ref_pfcs NUMERIC,
  gwp100_hfcs NUMERIC,
  gwp100_pfcs NUMERIC,
  extraghg_ef NUMERIC,
  extraghg_gwp100 NUMERIC,
  ref_source TEXT CHECK (ref_source IN ('SELF_COLLECT', 'SUPPLIER', 'TH_LCI', 'TGO', 'THAI_RES', 'INTERNATIONAL', 'OTHER', 'SUBSITUTE')),
  version TEXT,
  ref_code TEXT,
  sort_index INT,
  multiplier NUMERIC NOT NULL DEFAULT 1,
  description TEXT,
  meta JSONB NOT NULL DEFAULT '{}'::jsonb,
  created_at TIMESTAMPTZ,
  updated_at TIMESTAMPTZ,
  PRIMARY KEY (backup_id, id)
);

CREATE INDEX IF NOT EXISTS idx_ef_catalog_version_backups_source_version
  ON ef_catalog_version_backups (source_version);
CREATE INDEX IF NOT EXISTS idx_ef_catalog_version_backups_created_at
  ON ef_catalog_version_backups (created_at DESC);

COMMIT;
