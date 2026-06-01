-- Migration: Add scope_categories table for Emission Resources Management
-- Aligned with ideacarb-client-app/database/01_setup.sql
-- Adds deleted_at for soft-delete support

CREATE TABLE IF NOT EXISTS scope_categories (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  scope INTEGER NOT NULL CHECK (scope IN (1, 2, 3, 4)),
  name_th TEXT NOT NULL,
  name_en TEXT NOT NULL,
  display_order INTEGER NOT NULL DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  deleted_at TIMESTAMPTZ
);

CREATE INDEX IF NOT EXISTS idx_scope_categories_scope ON scope_categories(scope);
CREATE INDEX IF NOT EXISTS idx_scope_categories_display_order ON scope_categories(scope, display_order);
CREATE INDEX IF NOT EXISTS idx_scope_categories_deleted_at ON scope_categories(deleted_at) WHERE deleted_at IS NULL;
