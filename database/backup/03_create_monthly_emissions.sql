-- Create monthly_emissions table to store month-by-month activity data
-- Run after 01_schema.sql and 02_seed_master_data.sql

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS monthly_emissions (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  annual_report_id UUID NOT NULL REFERENCES annual_reports(id) ON DELETE CASCADE,
  activity_id UUID NOT NULL REFERENCES emission_activities(id),
  emission_factor_id UUID NOT NULL REFERENCES emission_factors(id),
  unit TEXT,

  january_quantity NUMERIC DEFAULT 0 NOT NULL,
  february_quantity NUMERIC DEFAULT 0 NOT NULL,
  march_quantity NUMERIC DEFAULT 0 NOT NULL,
  april_quantity NUMERIC DEFAULT 0 NOT NULL,
  may_quantity NUMERIC DEFAULT 0 NOT NULL,
  june_quantity NUMERIC DEFAULT 0 NOT NULL,
  july_quantity NUMERIC DEFAULT 0 NOT NULL,
  august_quantity NUMERIC DEFAULT 0 NOT NULL,
  september_quantity NUMERIC DEFAULT 0 NOT NULL,
  october_quantity NUMERIC DEFAULT 0 NOT NULL,
  november_quantity NUMERIC DEFAULT 0 NOT NULL,
  december_quantity NUMERIC DEFAULT 0 NOT NULL,

  created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_monthly_emissions_report ON monthly_emissions(annual_report_id);
CREATE INDEX IF NOT EXISTS idx_monthly_emissions_activity ON monthly_emissions(activity_id);
CREATE INDEX IF NOT EXISTS idx_monthly_emissions_ef ON monthly_emissions(emission_factor_id);







