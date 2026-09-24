-- =============================================================================
-- migrate_add_consulting_firms.sql
-- One-time migration for EXISTING admin-console databases.
--
-- Purpose:
--   Add consulting_firms and link Consult users to a firm. The contact person
--   is users.is_firm_contact_person. Safe to re-run.
-- =============================================================================

BEGIN;

CREATE TABLE IF NOT EXISTS consulting_firms (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  name TEXT NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

ALTER TABLE users
  ADD COLUMN IF NOT EXISTS consulting_firm_id UUID REFERENCES consulting_firms(id) ON DELETE SET NULL,
  ADD COLUMN IF NOT EXISTS is_firm_contact_person BOOLEAN NOT NULL DEFAULT FALSE;

CREATE INDEX IF NOT EXISTS idx_users_consulting_firm_id ON users(consulting_firm_id);

COMMIT;
