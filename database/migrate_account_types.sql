-- =============================================================================
-- migrate_account_types.sql
-- One-time migration for EXISTING admin-console databases.
--
-- Purpose:
--   annual_member replaces general customers.
--   trial is the customer demo type.
--   demo stays demo only when organizations.code starts with idea-.
--   employee and project are unchanged. Package dates are not rewritten.
--
-- Run once in the admin Supabase SQL editor. Not part of deploy.sh.
-- Safe to re-run after the new values are already stored.
-- =============================================================================

BEGIN;

ALTER TABLE organizations DROP CONSTRAINT IF EXISTS organizations_account_type_check;

ALTER TABLE organizations ALTER COLUMN account_type SET DEFAULT 'annual_member';

UPDATE organizations
SET account_type = 'annual_member'
WHERE account_type = 'general customers';

UPDATE organizations
SET account_type = 'trial'
WHERE account_type = 'demo'
  AND code NOT LIKE 'idea-%';

ALTER TABLE organizations
  ADD CONSTRAINT organizations_account_type_check
  CHECK (account_type IN ('annual_member', 'trial', 'demo', 'internal', 'employee', 'project'));

UPDATE organization_trial_requests
SET approved_account_type = 'annual_member'
WHERE approved_account_type = 'general customers';

UPDATE organization_trial_requests AS request
SET approved_account_type = 'trial'
WHERE request.approved_account_type = 'demo'
  AND NOT EXISTS (
    SELECT 1
    FROM organizations AS organization
    WHERE organization.id = request.organization_id
      AND organization.code LIKE 'idea-%'
  );

COMMIT;
