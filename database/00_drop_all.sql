-- Admin Console - Clean Drop Script
-- Run this first to drop all tables and indexes
-- This provides a clean slate for fresh schema creation

-- ===========================================
-- PART 1: DROP TABLES IN DEPENDENCY ORDER
-- ===========================================

-- Drop tables that depend on other tables first
DROP TABLE IF EXISTS organization_invitations CASCADE;
DROP TABLE IF EXISTS user_organizations CASCADE;
DROP TABLE IF EXISTS organizations CASCADE;
DROP TABLE IF EXISTS users CASCADE;

-- ===========================================
-- PART 2: DROP EXTENSIONS (optional)
-- ===========================================

-- Note: We don't drop uuid-ossp extension as it may be used by other databases
-- DROP EXTENSION IF EXISTS "uuid-ossp" CASCADE;

