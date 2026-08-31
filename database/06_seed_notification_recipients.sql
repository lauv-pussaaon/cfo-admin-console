-- Default notification recipients for fresh installs
-- Used for trial/membership admin notices, Consult/Audit register notices, and instance-ready notices.

INSERT INTO notification_recipients (event_type, email, label, is_enabled)
VALUES
  ('trial_request', 'ideacarb.team@gmail.com', 'IdeaCarb team', TRUE),
  ('trial_request', 'pussaaon@gmail.com', 'Default admin notification', TRUE)
ON CONFLICT (event_type, email) DO UPDATE
SET
  is_enabled = TRUE,
  label = EXCLUDED.label,
  updated_at = NOW();
