-- Migration: Add app_usage_tracking table
-- This table stores usage tracking data from multi-tenant org-app instances
-- Run this after 01_schema.sql

-- ===========================================
-- CREATE TABLE
-- ===========================================

CREATE TABLE app_usage_tracking (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  domain TEXT NOT NULL,
  page TEXT NOT NULL,
  user_role TEXT,
  user_id UUID,
  user_agent TEXT NOT NULL,
  referrer TEXT,
  screen_width INTEGER,
  screen_height INTEGER,
  language TEXT,
  timezone TEXT,
  ip_address TEXT,
  session_id TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- ===========================================
-- CREATE INDEXES
-- ===========================================

-- Index for filtering by domain
CREATE INDEX idx_app_usage_tracking_domain ON app_usage_tracking(domain);

-- Index for time-based queries
CREATE INDEX idx_app_usage_tracking_created_at ON app_usage_tracking(created_at);

-- Composite index for domain + time queries (common analytics pattern)
CREATE INDEX idx_app_usage_tracking_domain_created_at ON app_usage_tracking(domain, created_at);

-- Index for user-based queries
CREATE INDEX idx_app_usage_tracking_user_id ON app_usage_tracking(user_id) WHERE user_id IS NOT NULL;

-- Index for session tracking
CREATE INDEX idx_app_usage_tracking_session_id ON app_usage_tracking(session_id) WHERE session_id IS NOT NULL;
