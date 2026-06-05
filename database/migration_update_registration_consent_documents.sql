-- Replace cookie policy URL with collect-and-share data consent document in registration consent tables

ALTER TABLE user_consents
  RENAME COLUMN cookie_policy_url TO collect_share_data_consent_url;

ALTER TABLE user_consents
  ADD COLUMN IF NOT EXISTS collect_share_data_consent BOOLEAN NOT NULL DEFAULT FALSE;

ALTER TABLE organization_trial_request_consents
  RENAME COLUMN cookie_policy_url TO collect_share_data_consent_url;

ALTER TABLE organization_trial_request_consents
  ADD COLUMN IF NOT EXISTS collect_share_data_consent BOOLEAN NOT NULL DEFAULT FALSE;
