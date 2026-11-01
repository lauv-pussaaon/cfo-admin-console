-- Existing admin Supabase only. Fresh installs get this table from 01_schema.sql.
-- One ISO destination per TGO category. A null destination is ไม่มีที่อยู่.

CREATE TABLE IF NOT EXISTS tgo_iso_category_map (
  tgo_scope_category_id UUID PRIMARY KEY REFERENCES scope_categories(id) ON DELETE CASCADE,
  iso_scope_category_id UUID REFERENCES scope_categories(id) ON DELETE SET NULL,
  updated_at TIMESTAMPTZ DEFAULT NOW()
);
