-- Admin Console Schema
-- This script creates all tables for the admin console application
-- Run order: 00_drop_all.sql -> 01_schema.sql -> 02_seed_master_data.sql

-- ===========================================
-- PART 1: CREATE EXTENSIONS
-- ===========================================

-- Enable UUID extension
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- ===========================================
-- PART 2: CREATE TABLES
-- ===========================================

-- Users (system users only)
CREATE TABLE users (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  username TEXT UNIQUE NOT NULL,
  email TEXT UNIQUE NOT NULL,
  password_hash TEXT NOT NULL,
  name TEXT NOT NULL,
  avatar_url TEXT,
  role TEXT NOT NULL CHECK (role IN ('Admin', 'Dealer', 'Consult', 'Audit')),
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Organizations (client organizations)
CREATE TABLE organizations (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  name TEXT NOT NULL,
  code TEXT UNIQUE,
  description TEXT,
  app_url TEXT,                    -- URL to org app instance
  is_initialized BOOLEAN DEFAULT FALSE,
  initialized_at TIMESTAMPTZ,
  factory_admin_email TEXT,        -- Email for factory admin
  created_by UUID REFERENCES users(id) ON DELETE SET NULL,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- User Organizations (links dealers/consult/audit to organizations)
CREATE TABLE user_organizations (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  organization_id UUID NOT NULL REFERENCES organizations(id) ON DELETE CASCADE,
  assigned_at TIMESTAMPTZ DEFAULT NOW(),
  assigned_by UUID REFERENCES users(id) ON DELETE SET NULL,
  UNIQUE(user_id, organization_id)
);

-- ===========================================
-- PART 3: CREATE INDEXES
-- ===========================================

-- User organizations indexes
CREATE INDEX idx_user_organizations_user ON user_organizations(user_id);
CREATE INDEX idx_user_organizations_organization ON user_organizations(organization_id);

-- Organizations indexes
CREATE INDEX idx_organizations_code ON organizations(code);
CREATE INDEX idx_organizations_initialized ON organizations(is_initialized);
CREATE INDEX idx_organizations_created_at ON organizations(created_at);

-- Users indexes
CREATE INDEX idx_users_role ON users(role);
CREATE INDEX idx_users_email ON users(email);
