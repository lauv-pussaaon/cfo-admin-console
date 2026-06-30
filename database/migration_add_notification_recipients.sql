-- Notification recipient emails for admin alerts

CREATE TABLE IF NOT EXISTS notification_recipients (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  event_type TEXT NOT NULL CHECK (event_type IN ('trial_request')),
  email TEXT NOT NULL,
  label TEXT,
  is_enabled BOOLEAN NOT NULL DEFAULT TRUE,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE (event_type, email)
);

CREATE INDEX IF NOT EXISTS idx_notification_recipients_event_enabled
  ON notification_recipients(event_type, is_enabled);

INSERT INTO notification_recipients (event_type, email, label, is_enabled)
VALUES ('trial_request', 'pussaaon@gmail.com', 'Default admin notification', TRUE)
ON CONFLICT (event_type, email) DO NOTHING;
