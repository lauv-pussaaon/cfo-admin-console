-- =============================================================================
-- migrate_drop_dealer_role.sql
-- One-time migration for EXISTING admin-console databases.
--
-- Purpose:
--   Dealer is no longer a users.role. Delete those accounts, then drop Dealer
--   from the role check. Safe to re-run.
-- =============================================================================

BEGIN;

DELETE FROM users WHERE role = 'Dealer';

DO $$
DECLARE
  cname text;
BEGIN
  FOR cname IN
    SELECT con.conname
    FROM pg_constraint con
    WHERE con.conrelid = 'users'::regclass
      AND con.contype = 'c'
      AND pg_get_constraintdef(con.oid) ILIKE '%Dealer%'
  LOOP
    EXECUTE format('ALTER TABLE users DROP CONSTRAINT %I', cname);
  END LOOP;
END $$;

ALTER TABLE users DROP CONSTRAINT IF EXISTS users_role_check;
ALTER TABLE users
  ADD CONSTRAINT users_role_check
  CHECK (role IN ('Admin', 'Consult', 'Audit', 'Support'));

COMMIT;
