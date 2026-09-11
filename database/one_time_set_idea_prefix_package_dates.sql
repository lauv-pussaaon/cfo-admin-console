-- One-shot: set package window for every org whose code starts with idea-
-- (idea-001, idea-041, … — not idealauv). Apply on the admin (Supabase) DB.
-- 2026-09-03 through 2026-10-04.

UPDATE organizations
SET
  package_start = DATE '2026-09-03',
  package_end = DATE '2026-10-04',
  updated_at = NOW()
WHERE code LIKE 'idea-%';

SELECT id, code, name, account_type, package_start, package_end
FROM organizations
WHERE code LIKE 'idea-%'
ORDER BY code;
