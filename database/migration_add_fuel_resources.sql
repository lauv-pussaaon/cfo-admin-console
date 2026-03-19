-- Migration: Add fuel_resources table for Emission Resources Management
-- Aligned with ideacarb-client-app/database/01_setup.sql
-- Adds deleted_at for soft-delete support
-- Requires scope_categories table (run migration_add_scope_categories.sql first)

CREATE TABLE IF NOT EXISTS fuel_resources (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  scope_category_id UUID NOT NULL REFERENCES scope_categories(id) ON DELETE CASCADE,
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
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  deleted_at TIMESTAMPTZ
);

CREATE INDEX IF NOT EXISTS idx_fuel_resources_category ON fuel_resources(scope_category_id);
CREATE INDEX IF NOT EXISTS idx_fuel_resources_resource ON fuel_resources(resource);
CREATE INDEX IF NOT EXISTS idx_fuel_resources_category_resource ON fuel_resources(scope_category_id, resource);
CREATE INDEX IF NOT EXISTS idx_fuel_resources_ref_source ON fuel_resources(ref_source);
CREATE INDEX IF NOT EXISTS idx_fuel_resources_deleted_at ON fuel_resources(deleted_at) WHERE deleted_at IS NULL;
