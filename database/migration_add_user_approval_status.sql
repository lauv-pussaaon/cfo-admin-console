-- Add user approval status for public registration workflow
ALTER TABLE users
ADD COLUMN IF NOT EXISTS is_approved BOOLEAN NOT NULL DEFAULT FALSE;

-- Keep existing users able to sign in after migration
UPDATE users
SET is_approved = TRUE
WHERE is_approved IS FALSE;

CREATE INDEX IF NOT EXISTS idx_users_is_approved ON users(is_approved);
