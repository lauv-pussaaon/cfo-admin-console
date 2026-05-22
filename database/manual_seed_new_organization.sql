-- =============================================================================
-- 06_seed_new_organization.sql
-- Run after:
--   01_schema.sql
--   02_seed_master_data.sql
-- Purpose:
--   Seed one organization row only (no users, invitations, or support rows).
--   Edit the literals in seed_input below.
-- =============================================================================

WITH admin_user AS (
  SELECT id
  FROM users
  WHERE email = 'admin@cfo.com'
  LIMIT 1
),
seed_input AS (
  SELECT
    'cbis0124'::TEXT AS org_code,
    'cbis0124'::TEXT AS org_name,
    'New organization from seed script'::TEXT AS org_description,
    'https://cbis0124.app.local'::TEXT AS org_app_url,
    'cbis0124@gmail.com'::TEXT AS factory_admin_email
)
INSERT INTO organizations (
  name,
  code,
  description,
  app_url,
  factory_admin_email,
  is_initialized,
  created_by
)
SELECT
  i.org_name,
  i.org_code,
  i.org_description,
  i.org_app_url,
  i.factory_admin_email,
  FALSE,
  (SELECT id FROM admin_user)
FROM seed_input i
ON CONFLICT (code) DO UPDATE
SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  app_url = EXCLUDED.app_url,
  factory_admin_email = EXCLUDED.factory_admin_email,
  updated_at = NOW();

-- =============================================================================
-- Verification snippets
-- =============================================================================

-- SELECT id, code, name, factory_admin_email, is_initialized
-- FROM organizations
-- WHERE code = 'cbis0124';
