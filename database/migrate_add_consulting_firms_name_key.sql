-- =============================================================================
-- migrate_add_consulting_firms_name_key.sql
-- One-time migration for EXISTING admin-console databases.
--
-- Purpose:
--   One consulting firm per trimmed, lowercased name. Safe to re-run.
--   Fails if two firms already share that normalized name; merge those rows
--   first. The app still reuses the oldest match without this index.
-- =============================================================================

BEGIN;

CREATE UNIQUE INDEX IF NOT EXISTS idx_consulting_firms_name_key
  ON consulting_firms (lower(btrim(name)));

COMMIT;
