-- =============================================================================
-- 05_seed_organizations_ideaday.sql
-- Run after:
--   01_schema.sql
--   02_seed_master_data.sql
-- Purpose:
--   Seed 100 demo organizations (ideaday-001..ideaday-100) for event/testing.
--   Organizations only — no user accounts or user_organizations rows.
-- =============================================================================

WITH admin_user AS (
  SELECT id
  FROM users
  WHERE email = 'admin@cfo.com'
  LIMIT 1
),
seed_rows AS (
  SELECT
    n,
    'ideaday-' || lpad(n::TEXT, 3, '0') AS slug,
    'ideaday-' || lpad(n::TEXT, 3, '0') AS name,
    'https://ideaday-' || lpad(n::TEXT, 3, '0') || '.ideacarb.shop' AS app_url,
    'admin@ideaday-' || lpad(n::TEXT, 3, '0') || '.ideacarb.shop' AS factory_admin_email
  FROM generate_series(101, 120) AS n
)
INSERT INTO organizations (
  name,
  code,
  app_url,
  factory_admin_email,
  contact_first_name,
  contact_last_name,
  account_type,
  is_initialized,
  initialized_at,
  created_by
)
SELECT
  sr.name,
  sr.slug,
  sr.app_url,
  sr.factory_admin_email,
  'ideacarb',
  'exp day',
  'demo',
  TRUE,
  NOW(),
  (SELECT id FROM admin_user)
FROM seed_rows sr
ON CONFLICT (code) DO UPDATE
SET
  name = EXCLUDED.name,
  app_url = EXCLUDED.app_url,
  factory_admin_email = EXCLUDED.factory_admin_email,
  contact_first_name = EXCLUDED.contact_first_name,
  contact_last_name = EXCLUDED.contact_last_name,
  account_type = EXCLUDED.account_type,
  is_initialized = EXCLUDED.is_initialized,
  initialized_at = EXCLUDED.initialized_at,
  updated_at = NOW();

-- =============================================================================
-- Verification snippets
-- =============================================================================

-- SELECT COUNT(*) AS org_count
-- FROM organizations
-- WHERE code LIKE 'ideaday-%';

-- SELECT code, name, app_url, factory_admin_email, account_type, is_initialized
-- FROM organizations
-- WHERE code LIKE 'ideaday-%'
-- ORDER BY code;
