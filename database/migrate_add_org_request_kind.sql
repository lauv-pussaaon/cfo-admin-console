-- =============================================================================
-- migrate_add_org_request_kind.sql
-- One-time migration for EXISTING admin-console databases.
--
-- Purpose:
--   Distinguish 30-day trial vs annual membership org signup requests
--   to match current 01_schema.sql:
--     request_kind: trial | annual_membership
--
-- Backfill:
--   Existing rows default to 'trial'
--
-- Safe to re-run: guarded by column / constraint existence checks.
-- =============================================================================

BEGIN;

ALTER TABLE organization_trial_requests
  ADD COLUMN IF NOT EXISTS request_kind TEXT NOT NULL DEFAULT 'trial';

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
    FROM pg_constraint
    WHERE conname = 'organization_trial_requests_request_kind_check'
  ) THEN
    ALTER TABLE organization_trial_requests
      ADD CONSTRAINT organization_trial_requests_request_kind_check
      CHECK (request_kind IN ('trial', 'annual_membership'));
  END IF;
END $$;

COMMIT;
