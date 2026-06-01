-- Migration: Add emission_templates table for Emissions Template Management
-- Supports URL-first feature images now and upload-path later.

CREATE TABLE IF NOT EXISTS emission_templates (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  legacy_industry_id INTEGER UNIQUE,
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

CREATE INDEX IF NOT EXISTS idx_emission_templates_active ON emission_templates(is_active);
CREATE INDEX IF NOT EXISTS idx_emission_templates_display_order ON emission_templates(display_order);
CREATE INDEX IF NOT EXISTS idx_emission_templates_deleted_at ON emission_templates(deleted_at) WHERE deleted_at IS NULL;
