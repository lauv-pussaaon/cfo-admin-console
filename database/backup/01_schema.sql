-- CFO Beta App - Minimal Clean Schema
-- Run this after manually dropping old tables

-- Enable UUID extension
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Enum for emission factor source
DO $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'ef_source') THEN
    CREATE TYPE ef_source AS ENUM ('IPCC', 'TGO', 'Supplier', 'Factory');
  END IF;
END $$;

-- Organizations
CREATE TABLE IF NOT EXISTS organizations (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  name TEXT NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Annual reports (with aggregated totals)
CREATE TABLE IF NOT EXISTS annual_reports (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  organization_id UUID REFERENCES organizations(id) ON DELETE CASCADE,
  year INTEGER NOT NULL,
  base_year INTEGER,
  status TEXT DEFAULT 'draft',
  total_scope1 NUMERIC DEFAULT 0 NOT NULL,
  total_scope2 NUMERIC DEFAULT 0 NOT NULL,
  total_scope3 NUMERIC DEFAULT 0 NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Emission factors (master data)
CREATE TABLE IF NOT EXISTS emission_factors (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  activity_name_th TEXT NOT NULL,
  activity_name_en TEXT NOT NULL,
  scope INTEGER NOT NULL CHECK (scope IN (1,2,3)),
  category_code TEXT NOT NULL,
  unit TEXT NOT NULL,
  co2_factor NUMERIC DEFAULT 0 NOT NULL,
  ch4_factor NUMERIC DEFAULT 0 NOT NULL,
  n2o_factor NUMERIC DEFAULT 0 NOT NULL,
  co2e_factor NUMERIC DEFAULT 0 NOT NULL,
  source ef_source NOT NULL,
  source_version TEXT,
  reference_year INTEGER,
  applicable_region TEXT DEFAULT 'Thailand',
  is_active BOOLEAN DEFAULT TRUE,
  is_manual_input BOOLEAN DEFAULT FALSE,
  certificate_file_path TEXT,
  custom_unit TEXT,
  custom_co2e_factor NUMERIC,
  created_by TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Emission activities (catalog users select first)
CREATE TABLE IF NOT EXISTS emission_activities (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  scope INTEGER NOT NULL CHECK (scope IN (1,2,3)),
  code TEXT NOT NULL,
  name_th TEXT NOT NULL,
  name_en TEXT NOT NULL,
  default_unit TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE (code)
);

-- Mapping: an activity can have many emission factors
CREATE TABLE IF NOT EXISTS emission_activity_factors (
  activity_id UUID REFERENCES emission_activities(id) ON DELETE CASCADE,
  emission_factor_id UUID REFERENCES emission_factors(id) ON DELETE CASCADE,
  is_default BOOLEAN DEFAULT FALSE,
  valid_from DATE,
  valid_to DATE,
  PRIMARY KEY (activity_id, emission_factor_id)
);

-- Annual emissions (fact records)
CREATE TABLE IF NOT EXISTS annual_emissions (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  annual_report_id UUID NOT NULL REFERENCES annual_reports(id) ON DELETE CASCADE,
  activity_id UUID NOT NULL REFERENCES emission_activities(id),
  emission_factor_id UUID NOT NULL REFERENCES emission_factors(id),
  quantity NUMERIC NOT NULL,
  co2_equivalent NUMERIC NOT NULL,
  evidence_source TEXT,
  responsible_person TEXT,
  submission_status TEXT DEFAULT 'pending',
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Indexes
CREATE INDEX IF NOT EXISTS idx_annual_reports_org_year ON annual_reports(organization_id, year);
CREATE INDEX IF NOT EXISTS idx_annual_emissions_report ON annual_emissions(annual_report_id);
CREATE INDEX IF NOT EXISTS idx_annual_emissions_ef ON annual_emissions(emission_factor_id);
CREATE INDEX IF NOT EXISTS idx_annual_emissions_activity ON annual_emissions(activity_id);
CREATE INDEX IF NOT EXISTS idx_emission_factors_scope ON emission_factors(scope);
CREATE INDEX IF NOT EXISTS idx_emission_factors_active ON emission_factors(is_active);


