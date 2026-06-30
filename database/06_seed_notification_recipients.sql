-- Default notification recipients for fresh installs

INSERT INTO notification_recipients (event_type, email, label, is_enabled)
VALUES ('trial_request', 'pussaaon@gmail.com', 'Default admin notification', TRUE)
ON CONFLICT (event_type, email) DO NOTHING;
