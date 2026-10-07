-- =============================================================================
-- one_time_delete_ideaday_organizations.sql
-- One-time cleanup for EXISTING admin-console databases.
--
-- Purpose:
--   Remove event organizations whose code starts with ideaday-.
--   Internal demos (code starts with idea-) stay.
--
-- Cascades assignments, invitations, and support chat rows.
-- Trial requests for those codes are deleted first (consent rows cascade).
--
-- Run once in the admin Supabase SQL editor. Not part of deploy.sh.
-- Safe to re-run after the rows are already gone.
-- =============================================================================

BEGIN;

DELETE FROM organization_trial_requests
WHERE company_code LIKE 'ideaday-%'
   OR organization_id IN (
     SELECT id FROM organizations WHERE code LIKE 'ideaday-%'
   );

DELETE FROM organizations
WHERE code LIKE 'ideaday-%';

COMMIT;
