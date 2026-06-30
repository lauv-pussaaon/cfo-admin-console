-- Add package period columns to organizations (existing DBs)
ALTER TABLE organizations
  ADD COLUMN IF NOT EXISTS package_start DATE,
  ADD COLUMN IF NOT EXISTS package_end DATE;

-- Backfill existing rows by account type
UPDATE organizations SET package_start = '2026-06-26', package_end = '2026-07-31' WHERE account_type = 'demo';
UPDATE organizations SET package_start = '2026-06-01', package_end = NULL WHERE account_type IN ('employee', 'project');
UPDATE organizations SET package_start = '2026-06-01', package_end = '2026-07-31' WHERE account_type = 'general customers';
