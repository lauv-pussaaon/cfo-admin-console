-- Organization trial registration staging + contact fields on organizations

ALTER TABLE organizations
  ADD COLUMN IF NOT EXISTS contact_first_name TEXT,
  ADD COLUMN IF NOT EXISTS contact_last_name TEXT,
  ADD COLUMN IF NOT EXISTS contact_phone TEXT;

CREATE TABLE IF NOT EXISTS organization_trial_requests (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  organization_name TEXT NOT NULL,
  contact_first_name TEXT NOT NULL,
  contact_last_name TEXT NOT NULL,
  contact_email TEXT NOT NULL,
  contact_phone TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'approved')),
  organization_id UUID REFERENCES organizations(id) ON DELETE SET NULL,
  approved_account_type TEXT,
  reviewed_by UUID REFERENCES users(id) ON DELETE SET NULL,
  reviewed_at TIMESTAMPTZ,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS organization_trial_request_consents (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  trial_request_id UUID NOT NULL UNIQUE REFERENCES organization_trial_requests(id) ON DELETE CASCADE,
  terms_accepted BOOLEAN NOT NULL,
  privacy_acknowledged BOOLEAN NOT NULL,
  marketing_consent BOOLEAN NOT NULL DEFAULT FALSE,
  terms_document_url TEXT NOT NULL,
  privacy_document_url TEXT NOT NULL,
  cookie_policy_url TEXT NOT NULL,
  consented_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_org_trial_requests_status ON organization_trial_requests(status);
CREATE INDEX IF NOT EXISTS idx_org_trial_requests_contact_email ON organization_trial_requests(contact_email);
CREATE INDEX IF NOT EXISTS idx_org_trial_requests_created_at ON organization_trial_requests(created_at);

CREATE UNIQUE INDEX IF NOT EXISTS idx_org_trial_requests_pending_email
  ON organization_trial_requests(contact_email)
  WHERE status = 'pending';

CREATE INDEX IF NOT EXISTS idx_org_trial_request_consents_trial_request_id
  ON organization_trial_request_consents(trial_request_id);
