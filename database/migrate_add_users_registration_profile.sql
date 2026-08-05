-- =============================================================================
-- migrate_add_users_registration_profile.sql
-- One-time migration for EXISTING admin-console databases.
--
-- Purpose:
--   Add Consult/Audit public registration profile columns on users to match
--   current 01_schema.sql (organization, phone, verification/cert dates,
--   year experiences, industries).
--
-- Safe to re-run: uses ADD COLUMN IF NOT EXISTS.
-- =============================================================================

BEGIN;

ALTER TABLE users
  ADD COLUMN IF NOT EXISTS organization_name TEXT,
  ADD COLUMN IF NOT EXISTS phone TEXT,
  ADD COLUMN IF NOT EXISTS has_verification BOOLEAN NOT NULL DEFAULT FALSE,
  ADD COLUMN IF NOT EXISTS certified_date DATE,
  ADD COLUMN IF NOT EXISTS certification_expiry DATE,
  ADD COLUMN IF NOT EXISTS year_experiences INTEGER,
  ADD COLUMN IF NOT EXISTS industries TEXT[] NOT NULL DEFAULT '{}';

COMMIT;
