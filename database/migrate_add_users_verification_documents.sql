-- =============================================================================
-- migrate_add_users_verification_documents.sql
-- One-time migration for EXISTING admin-console databases.
--
-- Purpose:
--   Store public URLs for Consult/Audit verification proof documents
--   (max 5) when has_verification is true.
--
-- Safe to re-run: uses ADD COLUMN IF NOT EXISTS.
-- =============================================================================

BEGIN;

ALTER TABLE users
  ADD COLUMN IF NOT EXISTS verification_documents TEXT[] NOT NULL DEFAULT '{}';

COMMIT;
