-- =============================================================================
-- migrate_users_status.sql
-- One-time migration for EXISTING admin-console databases.
--
-- Purpose:
--   Replace users.is_approved BOOLEAN with status lifecycle + rejection_reason
--   to match current 01_schema.sql:
--     status: requested | active | rejected | inactive
--
-- Backfill:
--   is_approved = TRUE  → status = 'active'
--   is_approved = FALSE → status = 'requested'
--
-- Safe to re-run: guarded by column existence checks.
-- =============================================================================

BEGIN;

ALTER TABLE users
  ADD COLUMN IF NOT EXISTS status TEXT,
  ADD COLUMN IF NOT EXISTS rejection_reason TEXT;

DO $$
BEGIN
  IF EXISTS (
    SELECT 1
    FROM information_schema.columns
    WHERE table_schema = 'public'
      AND table_name = 'users'
      AND column_name = 'is_approved'
  ) THEN
    EXECUTE $sql$
      UPDATE users
      SET status = CASE
        WHEN is_approved IS TRUE THEN 'active'
        ELSE 'requested'
      END
      WHERE status IS NULL
    $sql$;
  END IF;
END $$;

UPDATE users
SET status = 'requested'
WHERE status IS NULL;

ALTER TABLE users
  ALTER COLUMN status SET DEFAULT 'requested';

ALTER TABLE users
  ALTER COLUMN status SET NOT NULL;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
    FROM pg_constraint
    WHERE conname = 'users_status_check'
      AND conrelid = 'users'::regclass
  ) THEN
    ALTER TABLE users
      ADD CONSTRAINT users_status_check
      CHECK (status IN ('requested', 'active', 'rejected', 'inactive'));
  END IF;
END $$;

DROP INDEX IF EXISTS idx_users_is_approved;

ALTER TABLE users
  DROP COLUMN IF EXISTS is_approved;

CREATE INDEX IF NOT EXISTS idx_users_status ON users(status);

COMMIT;
