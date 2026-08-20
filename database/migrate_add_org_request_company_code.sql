-- =============================================================================
-- migrate_add_org_request_company_code.sql
-- One-time migration for EXISTING admin-console databases.
--
-- Purpose:
--   Store requested company/subdomain code on org signup requests
--   to match current 01_schema.sql:
--     company_code TEXT (nullable for legacy rows)
--
-- Safe to re-run: guarded by column / index existence checks.
-- =============================================================================

BEGIN;

ALTER TABLE organization_trial_requests
  ADD COLUMN IF NOT EXISTS company_code TEXT;

CREATE UNIQUE INDEX IF NOT EXISTS idx_org_trial_requests_active_company_code
  ON organization_trial_requests(company_code)
  WHERE status IN ('pending', 'processing') AND company_code IS NOT NULL;

COMMIT;
