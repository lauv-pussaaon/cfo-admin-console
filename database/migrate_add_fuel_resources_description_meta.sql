-- =============================================================================
-- migrate_add_fuel_resources_description_meta.sql
-- One-time migration for EXISTING admin-console databases.
--
-- Purpose:
--   Add TGO description + extensible meta JSONB on fuel_resources to match
--   current 01_schema.sql.
--
--   description: TGO JSON description text (empty → NULL)
--   meta: Cat 4 transport may include { "maxLoadTon": 16 }; others {}
--
-- After applying: rebuild TGO SQL (pnpm tgo-ef:build-import) and upsert
-- generated 03a/03b/03c_fuel_resources_tgo_api.sql, then Re-publish.
--
-- Safe to re-run: uses ADD COLUMN IF NOT EXISTS.
-- =============================================================================

BEGIN;

ALTER TABLE fuel_resources
  ADD COLUMN IF NOT EXISTS description TEXT,
  ADD COLUMN IF NOT EXISTS meta JSONB NOT NULL DEFAULT '{}'::jsonb;

COMMIT;
