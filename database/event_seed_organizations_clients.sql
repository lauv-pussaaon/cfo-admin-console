-- =============================================================================
-- 05_seed_organizations_clients.sql
-- Run after:
--   01_schema.sql
--   02_seed_master_data.sql
-- Purpose:
--   Seed 23 client organizations (organizations only, no user account creation)
--   with code range cbis0101..cbis0123 and mapped factory admin emails.
-- =============================================================================

WITH admin_user AS (
  SELECT id
  FROM users
  WHERE email = 'admin@cfo.com'
  LIMIT 1
),
client_orgs AS (
  SELECT *
  FROM (
    VALUES
      ('cbis0101', 'cbis0101', 'cbis0101@gmail.com'),
      ('cbis0102', 'cbis0102', 'cbis0102@gmail.com'),
      ('cbis0103', 'cbis0103', 'cbis0103@gmail.com'),
      ('cbis0104', 'cbis0104', 'cskill2020@gmail.com'),
      ('cbis0105', 'cbis0105', 'ittirith.k@glinkthai.com'),
      ('cbis0106', 'cbis0106', 'chutima.c@glinkthai.com'),
      ('cbis0107', 'cbis0107', 'thasanamon.r@sonic.co.th'),
      ('cbis0108', 'cbis0108', 'mintra@bcpggroup.com'),
      ('cbis0109', 'cbis0109', 'Paphaporn.Hongsananda@gaysorngroup.com'),
      ('cbis0110', 'cbis0110', 'witsarut.s@gaysorngroup.com'),
      ('cbis0111', 'cbis0111', 'phueksachat.p@gaysorngroup.com'),
      ('cbis0112', 'cbis0112', 'ponlawitk@thaicom.net'),
      ('cbis0113', 'cbis0113', 'taratip@yamaha-motor.co.th'),
      ('cbis0114', 'cbis0114', 'orawee_t@apthai.com'),
      ('cbis0115', 'cbis0115', 'mintra.m@bgrimmpower.com'),
      ('cbis0116', 'cbis0116', 'kanjanut.v@bgrimmpower.com'),
      ('cbis0117', 'cbis0117', 'piyanee.c@bgrimmpower.com'),
      ('cbis0118', 'cbis0118', 'sayan.o@bgrimmpower.com'),
      ('cbis0119', 'cbis0119', 'tidaporn.c@bgrimmpower.com'),
      ('cbis0120', 'cbis0120', 'thitirat.c@bgrimmpower.com'),
      ('cbis0121', 'cbis0121', 'aaeypannarat@gmail.com'),
      ('cbis0122', 'cbis0122', 'Pphonthakorn.work@gmail.com'),
      ('cbis0123', 'cbis0123', 'contact@cbis.institute')
  ) AS t(code, name, factory_admin_email)
)
INSERT INTO organizations (
  name,
  code,
  factory_admin_email,
  is_initialized,
  created_by
)
SELECT
  co.name,
  co.code,
  co.factory_admin_email,
  FALSE,
  (SELECT id FROM admin_user)
FROM client_orgs co
ON CONFLICT (code) DO UPDATE
SET
  name = EXCLUDED.name,
  factory_admin_email = EXCLUDED.factory_admin_email,
  updated_at = NOW();

-- =============================================================================
-- Verification snippets
-- =============================================================================

-- 1) Expect 23 rows for this range
-- SELECT COUNT(*) AS org_count
-- FROM organizations
-- WHERE code BETWEEN 'cbis0101' AND 'cbis0123';

-- 2) Verify mapping order/content
-- SELECT code, name, factory_admin_email
-- FROM organizations
-- WHERE code BETWEEN 'cbis0101' AND 'cbis0123'
-- ORDER BY code;

-- 3) Sanity checks: null / duplicate emails
-- SELECT COUNT(*) AS null_factory_admin_email_count
-- FROM organizations
-- WHERE code BETWEEN 'cbis0101' AND 'cbis0123'
--   AND factory_admin_email IS NULL;
--
-- SELECT factory_admin_email, COUNT(*) AS duplicate_count
-- FROM organizations
-- WHERE code BETWEEN 'cbis0101' AND 'cbis0123'
-- GROUP BY factory_admin_email
-- HAVING COUNT(*) > 1;
