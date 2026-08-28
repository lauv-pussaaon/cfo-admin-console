-- =============================================================================
-- migrate_add_org_onboard_sent_at.sql
-- One-time migration for EXISTING admin-console databases.
--
-- Purpose:
--   Stamp successful onboard / instance-ready emails so complete-instance
--   does not re-send. Matches 01_schema.sql:
--     onboard_email_sent_at TIMESTAMPTZ
--     instance_ready_notice_sent_at TIMESTAMPTZ
--
-- Safe to re-run: guarded by column existence checks.
-- =============================================================================

BEGIN;

ALTER TABLE organizations
  ADD COLUMN IF NOT EXISTS onboard_email_sent_at TIMESTAMPTZ;

ALTER TABLE organizations
  ADD COLUMN IF NOT EXISTS instance_ready_notice_sent_at TIMESTAMPTZ;

COMMIT;
