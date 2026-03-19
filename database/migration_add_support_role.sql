-- Add Support role to admin console users (existing DBs)
ALTER TABLE users DROP CONSTRAINT IF EXISTS users_role_check;
ALTER TABLE users ADD CONSTRAINT users_role_check CHECK (role IN ('Admin', 'Dealer', 'Consult', 'Audit', 'Support'));
