-- =============================================================================
-- migrate_add_org_request_deploy_log.sql
-- One-time migration for EXISTING admin-console databases.
--
-- Purpose:
--   Store deploy failure issue + log excerpt + server log path on
--   organization_trial_requests. Full log stays on the deploy host
--   under ideacarb-deployment/logs/deploy/.
--
-- Safe to re-run: ADD COLUMN IF NOT EXISTS.
-- =============================================================================

BEGIN;

ALTER TABLE organization_trial_requests
  ADD COLUMN IF NOT EXISTS deploy_error TEXT,
  ADD COLUMN IF NOT EXISTS deploy_log TEXT,
  ADD COLUMN IF NOT EXISTS deploy_log_path TEXT;

COMMIT;
