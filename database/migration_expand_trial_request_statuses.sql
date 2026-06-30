-- Expand organization_trial_requests status workflow

ALTER TABLE organization_trial_requests
  DROP CONSTRAINT IF EXISTS organization_trial_requests_status_check;

ALTER TABLE organization_trial_requests
  ADD CONSTRAINT organization_trial_requests_status_check
  CHECK (status IN ('pending', 'processing', 'approved', 'cancelled'));

DROP INDEX IF EXISTS idx_org_trial_requests_pending_email;

CREATE UNIQUE INDEX idx_org_trial_requests_active_email
  ON organization_trial_requests(contact_email)
  WHERE status IN ('pending', 'processing');
