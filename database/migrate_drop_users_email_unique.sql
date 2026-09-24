-- =============================================================================
-- migrate_drop_users_email_unique.sql
-- One-time migration for EXISTING admin-console databases.
--
-- Purpose:
--   users.email may repeat. users.username stays the only unique login key.
--   Safe to re-run.
-- =============================================================================

BEGIN;

ALTER TABLE users DROP CONSTRAINT IF EXISTS users_email_key;
DROP INDEX IF EXISTS users_email_key;

CREATE INDEX IF NOT EXISTS idx_users_email ON users(email);

COMMIT;
