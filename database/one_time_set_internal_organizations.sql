-- =============================================================================
-- one_time_set_internal_organizations.sql
-- One-time update for EXISTING admin-console databases.
--
-- Purpose:
--   internal is the dev and QA account type.
--   These codes become internal. Package dates are not rewritten.
--
-- Run once in the admin Supabase SQL editor. Not part of deploy.sh.
-- Safe to re-run after the rows are already internal.
-- =============================================================================

BEGIN;

ALTER TABLE organizations DROP CONSTRAINT IF EXISTS organizations_account_type_check;

UPDATE organizations
SET account_type = 'internal'
WHERE code IN (
  'delta',
  'lauv',
  'pond',
  'jirawat',
  'icqa',
  'idealauv',
  'lauvsiden'
);

ALTER TABLE organizations
  ADD CONSTRAINT organizations_account_type_check
  CHECK (account_type IN ('annual_member', 'trial', 'demo', 'internal', 'employee', 'project'));

COMMIT;
