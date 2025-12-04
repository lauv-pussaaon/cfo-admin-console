-- CFO Beta App - Clean Drop Script
-- Run this first to drop all tables, types, and indexes
-- This provides a clean slate for fresh schema creation

-- ===========================================
-- PART 1: DROP TYPES FIRST (before tables that use them)
-- ===========================================

DROP TYPE IF EXISTS approval_status CASCADE;
DROP TYPE IF EXISTS approval_priority CASCADE;

-- ===========================================
-- PART 2: DROP TABLES IN DEPENDENCY ORDER
-- ===========================================

-- Drop tables that depend on other tables first
DROP TABLE IF EXISTS notifications CASCADE;
DROP TABLE IF EXISTS conversation_participants CASCADE;
DROP TABLE IF EXISTS tasks CASCADE;
DROP TABLE IF EXISTS message_attachments CASCADE;
DROP TABLE IF EXISTS messages CASCADE;
DROP TABLE IF EXISTS conversations CASCADE;

DROP TABLE IF EXISTS emission_approval_history CASCADE;
DROP TABLE IF EXISTS emission_approvals CASCADE;
DROP TABLE IF EXISTS emission_evidence_files CASCADE;
DROP TABLE IF EXISTS monthly_emissions_records CASCADE;
DROP TABLE IF EXISTS annual_emissions CASCADE;

DROP TABLE IF EXISTS fuel_resources CASCADE;
DROP TABLE IF EXISTS scope_categories CASCADE;
DROP TABLE IF EXISTS annual_reports CASCADE;
DROP TABLE IF EXISTS user_business_units CASCADE;
DROP TABLE IF EXISTS user_organizations CASCADE;
DROP TABLE IF EXISTS business_units CASCADE;
DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS organizations CASCADE;

-- ===========================================
-- PART 3: DROP EXTENSIONS (optional)
-- ===========================================

-- Note: We don't drop uuid-ossp extension as it may be used by other databases
-- DROP EXTENSION IF EXISTS "uuid-ossp" CASCADE;

