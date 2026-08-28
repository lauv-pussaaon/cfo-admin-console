-- =============================================================================
-- migrate_org_request_deploy_status.sql
-- One-time migration for EXISTING admin-console databases.
--
-- Purpose:
--   Replace pending/processing/approved with
--   open → started → deploying → deployed | deployment_failed.
--   Unique active email/code indexes cover open/started/deploying.
--
-- Safe to re-run: constraint/index drops are IF EXISTS; remaps only old values.
-- =============================================================================

BEGIN;

ALTER TABLE organization_trial_requests
  DROP CONSTRAINT IF EXISTS organization_trial_requests_status_check;

DO $$
DECLARE
  constraint_name text;
BEGIN
  FOR constraint_name IN
    SELECT c.conname
    FROM pg_constraint c
    JOIN pg_class t ON t.oid = c.conrelid
    JOIN pg_namespace n ON n.oid = t.relnamespace
    WHERE n.nspname = current_schema()
      AND t.relname = 'organization_trial_requests'
      AND c.contype = 'c'
      AND pg_get_constraintdef(c.oid) ILIKE '%status%'
      AND pg_get_constraintdef(c.oid) ILIKE '%pending%'
  LOOP
    EXECUTE format(
      'ALTER TABLE organization_trial_requests DROP CONSTRAINT IF EXISTS %I',
      constraint_name
    );
  END LOOP;
END $$;

UPDATE organization_trial_requests
SET status = CASE status
  WHEN 'pending' THEN 'open'
  WHEN 'processing' THEN 'started'
  WHEN 'approved' THEN 'deployed'
  ELSE status
END
WHERE status IN ('pending', 'processing', 'approved');

ALTER TABLE organization_trial_requests
  ALTER COLUMN status SET DEFAULT 'open';

ALTER TABLE organization_trial_requests
  ADD CONSTRAINT organization_trial_requests_status_check
  CHECK (status IN ('open', 'started', 'deploying', 'deployed', 'deployment_failed', 'cancelled'));

DROP INDEX IF EXISTS idx_org_trial_requests_active_email;
DROP INDEX IF EXISTS idx_org_trial_requests_active_company_code;

CREATE UNIQUE INDEX idx_org_trial_requests_active_email
  ON organization_trial_requests(contact_email)
  WHERE status IN ('open', 'started', 'deploying');

CREATE UNIQUE INDEX idx_org_trial_requests_active_company_code
  ON organization_trial_requests(company_code)
  WHERE status IN ('open', 'started', 'deploying') AND company_code IS NOT NULL;

COMMIT;
