-- Add account_type to organizations (existing DBs)
ALTER TABLE organizations
  ADD COLUMN IF NOT EXISTS account_type TEXT NOT NULL DEFAULT 'general customers';

ALTER TABLE organizations DROP CONSTRAINT IF EXISTS organizations_account_type_check;
ALTER TABLE organizations ADD CONSTRAINT organizations_account_type_check
  CHECK (account_type IN ('general customers', 'demo', 'อบต', 'อบถ', 'cbis', 'ideacarb'));
