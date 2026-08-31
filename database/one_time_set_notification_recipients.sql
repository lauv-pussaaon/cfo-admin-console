-- One-shot: set admin notification list to ideacarb.team + pussaaon.
-- Apply on the existing admin (Supabase) DB. Fresh installs use 06_seed_notification_recipients.sql.

INSERT INTO notification_recipients (event_type, email, label, is_enabled)
VALUES
  ('trial_request', 'ideacarb.team@gmail.com', 'IdeaCarb team', TRUE),
  ('trial_request', 'pussaaon@gmail.com', 'Default admin notification', TRUE)
ON CONFLICT (event_type, email) DO UPDATE
SET
  is_enabled = TRUE,
  label = EXCLUDED.label,
  updated_at = NOW();

UPDATE notification_recipients
SET is_enabled = FALSE, updated_at = NOW()
WHERE event_type = 'trial_request'
  AND email NOT IN ('ideacarb.team@gmail.com', 'pussaaon@gmail.com')
  AND is_enabled = TRUE;
