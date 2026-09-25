-- =============================================================================
-- migrate_add_verification_documents_deleted_at.sql
-- One-time migration for EXISTING admin-console databases.
--
-- Purpose:
--   Keep verification_documents rows after the stored file is removed.
--   NULL deleted_at means the file is still in storage.
-- =============================================================================

BEGIN;

ALTER TABLE verification_documents
  ADD COLUMN IF NOT EXISTS deleted_at TIMESTAMPTZ;

COMMIT;
