-- Remove deprecated account types and related organization records
DELETE FROM organizations
WHERE account_type IN ('cbis', 'ideacarb', 'อบต', 'อบถ');

UPDATE organization_trial_requests
SET approved_account_type = NULL
WHERE approved_account_type IN ('cbis', 'ideacarb', 'อบต', 'อบถ');

ALTER TABLE organizations DROP CONSTRAINT IF EXISTS organizations_account_type_check;
ALTER TABLE organizations ADD CONSTRAINT organizations_account_type_check
  CHECK (account_type IN ('general customers', 'demo', 'employee', 'project'));
