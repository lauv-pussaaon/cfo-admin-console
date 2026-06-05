-- PDPA consent records linked to user registrations
CREATE TABLE IF NOT EXISTS user_consents (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id UUID NOT NULL UNIQUE REFERENCES users(id) ON DELETE CASCADE,
  terms_accepted BOOLEAN NOT NULL,
  privacy_acknowledged BOOLEAN NOT NULL,
  marketing_consent BOOLEAN NOT NULL DEFAULT FALSE,
  terms_document_url TEXT NOT NULL,
  privacy_document_url TEXT NOT NULL,
  cookie_policy_url TEXT NOT NULL,
  consented_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_user_consents_user_id ON user_consents(user_id);
