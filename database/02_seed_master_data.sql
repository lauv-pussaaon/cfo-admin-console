-- Seed initial admin user
-- Default password: admin123
-- Hash generated using SHA-256 (matching the password hashing utility in the app)

-- Default admin user (password should be changed on first login)
INSERT INTO users (username, email, password_hash, name, role)
VALUES (
  'admin',
  'admin@cfo.com',
  '240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9', -- SHA-256 hash of 'admin123'
  'System Administrator',
  'Admin'
)
ON CONFLICT (username) DO NOTHING;
