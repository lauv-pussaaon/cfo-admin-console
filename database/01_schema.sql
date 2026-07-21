-- Admin Console Schema
-- Baseline schema for the single admin console Supabase instance.
-- Run order: 00_drop_all.sql -> 01_schema.sql -> 02_seed_master_data.sql
--   -> 03_seed_ef_catalog_releases.sql -> dataprep/ef-catalog/generated/*
--   -> 04_seed_emission_templates_and_activity_groups.sql
--   -> 05_seed_organizations_ideaday.sql / 06_seed_notification_recipients.sql

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
  role TEXT NOT NULL CHECK (role IN ('Admin', 'Dealer', 'Consult', 'Audit', 'Support')),
  is_approved BOOLEAN NOT NULL DEFAULT FALSE,
  invite_hashcode TEXT UNIQUE,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- User consents (PDPA registration consent audit trail)
CREATE TABLE user_consents (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id UUID NOT NULL UNIQUE REFERENCES users(id) ON DELETE CASCADE,
  terms_accepted BOOLEAN NOT NULL,
  privacy_acknowledged BOOLEAN NOT NULL,
  marketing_consent BOOLEAN NOT NULL DEFAULT FALSE,
  collect_share_data_consent BOOLEAN NOT NULL DEFAULT FALSE,
  terms_document_url TEXT NOT NULL,
  privacy_document_url TEXT NOT NULL,
  collect_share_data_consent_url TEXT NOT NULL,
  consented_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
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
  contact_first_name TEXT,
  contact_last_name TEXT,
  contact_phone TEXT,
  username TEXT,
  password TEXT,
  account_type TEXT NOT NULL DEFAULT 'general customers',
  package_start DATE,
  package_end DATE,
  created_by UUID REFERENCES users(id) ON DELETE SET NULL,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  CONSTRAINT organizations_account_type_check CHECK (
    account_type IN ('general customers', 'demo', 'employee', 'project')
  )
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

-- Organization trial registration requests (pending until admin approval)
CREATE TABLE organization_trial_requests (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  organization_name TEXT NOT NULL,
  contact_first_name TEXT NOT NULL,
  contact_last_name TEXT NOT NULL,
  contact_email TEXT NOT NULL,
  contact_phone TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'processing', 'approved', 'cancelled')),
  organization_id UUID REFERENCES organizations(id) ON DELETE SET NULL,
  approved_account_type TEXT,
  reviewed_by UUID REFERENCES users(id) ON DELETE SET NULL,
  reviewed_at TIMESTAMPTZ,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- PDPA consent records for trial registration requests
CREATE TABLE organization_trial_request_consents (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  trial_request_id UUID NOT NULL UNIQUE REFERENCES organization_trial_requests(id) ON DELETE CASCADE,
  terms_accepted BOOLEAN NOT NULL,
  privacy_acknowledged BOOLEAN NOT NULL,
  marketing_consent BOOLEAN NOT NULL DEFAULT FALSE,
  collect_share_data_consent BOOLEAN NOT NULL DEFAULT FALSE,
  terms_document_url TEXT NOT NULL,
  privacy_document_url TEXT NOT NULL,
  collect_share_data_consent_url TEXT NOT NULL,
  consented_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Admin notification recipient emails
CREATE TABLE notification_recipients (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  event_type TEXT NOT NULL CHECK (event_type IN ('trial_request')),
  email TEXT NOT NULL,
  label TEXT,
  is_enabled BOOLEAN NOT NULL DEFAULT TRUE,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE (event_type, email)
);

-- Organization Invitations (invitations for client admins)
CREATE TABLE organization_invitations (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  organization_id UUID NOT NULL REFERENCES organizations(id) ON DELETE CASCADE,
  email TEXT NOT NULL,
  token TEXT UNIQUE NOT NULL,
  status TEXT NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'accepted', 'expired')),
  role TEXT NOT NULL DEFAULT 'Factory Admin',
  created_by UUID REFERENCES users(id) ON DELETE SET NULL,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  expires_at TIMESTAMPTZ NOT NULL,
  accepted_at TIMESTAMPTZ
);

-- Support chat conversations (one conversation per organization)
CREATE TABLE support_conversations (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  organization_id UUID NOT NULL REFERENCES organizations(id) ON DELETE CASCADE UNIQUE,
  client_last_read_at TIMESTAMPTZ,
  staff_last_read_at TIMESTAMPTZ,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Support chat messages
CREATE TABLE support_messages (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  conversation_id UUID NOT NULL REFERENCES support_conversations(id) ON DELETE CASCADE,
  organization_id UUID NOT NULL REFERENCES organizations(id) ON DELETE CASCADE,
  body TEXT NOT NULL,
  sender_type TEXT NOT NULL CHECK (sender_type IN ('client', 'staff')),
  staff_user_id UUID REFERENCES users(id) ON DELETE SET NULL,
  client_user_id TEXT,
  client_display_name TEXT,
  client_avatar_url TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Support message attachments
CREATE TABLE support_message_attachments (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  message_id UUID NOT NULL REFERENCES support_messages(id) ON DELETE CASCADE,
  organization_id UUID NOT NULL REFERENCES organizations(id) ON DELETE CASCADE,
  uploaded_by_type TEXT NOT NULL CHECK (uploaded_by_type IN ('client', 'staff')),
  uploaded_by_user_id TEXT,
  bucket TEXT NOT NULL,
  file_path TEXT NOT NULL,
  file_name TEXT NOT NULL,
  file_size BIGINT NOT NULL,
  file_type TEXT NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Scope categories (EF catalog)
CREATE TABLE scope_categories (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  scope INTEGER NOT NULL CHECK (scope IN (1, 2, 3, 4)),
  name_th TEXT NOT NULL,
  name_en TEXT NOT NULL,
  display_order INTEGER NOT NULL DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  deleted_at TIMESTAMPTZ
);

-- Fuel resources (versioned EF catalog rows)
CREATE TABLE fuel_resources (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  scope_category_id UUID NOT NULL REFERENCES scope_categories(id) ON DELETE CASCADE,
  resource TEXT NOT NULL,
  sub_category TEXT,
  unit TEXT,
  ef_value NUMERIC,
  value1_label TEXT,
  value1_unit TEXT,
  value2_label TEXT,
  value2_unit TEXT,
  ref_info TEXT,
  ref_co2 NUMERIC,
  ref_fossil_ch4 NUMERIC,
  ref_ch4 NUMERIC,
  ref_n2o NUMERIC,
  ref_sf6 NUMERIC,
  ref_nf3 NUMERIC,
  ref_hfcs NUMERIC,
  ref_pfcs NUMERIC,
  gwp100_hfcs NUMERIC,
  gwp100_pfcs NUMERIC,
  extraghg_ef NUMERIC,
  extraghg_gwp100 NUMERIC,
  ref_source TEXT CHECK (ref_source IN ('SELF_COLLECT', 'SUPPLIER', 'TH_LCI', 'TGO', 'THAI_RES', 'INTERNATIONAL', 'OTHER', 'SUBSITUTE')),
  version TEXT,
  ref_code TEXT,
  sort_index INT,
  multiplier NUMERIC NOT NULL DEFAULT 1,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  deleted_at TIMESTAMPTZ
);

-- EF catalog release metadata (publish / sync SoT)
CREATE TABLE ef_catalog_releases (
  version TEXT PRIMARY KEY,
  status TEXT NOT NULL DEFAULT 'draft'
    CHECK (status IN ('draft', 'published')),
  is_default BOOLEAN NOT NULL DEFAULT false,
  content_hash TEXT,
  fuel_count INT NOT NULL DEFAULT 0,
  link_count INT NOT NULL DEFAULT 0,
  order_index INT NOT NULL DEFAULT 0,
  published_at TIMESTAMPTZ,
  published_by UUID,
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Emission templates (industry templates)
CREATE TABLE emission_templates (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  legacy_industry_id INTEGER UNIQUE,
  industry_code TEXT UNIQUE NOT NULL,
  name_th TEXT NOT NULL,
  name_en TEXT NOT NULL,
  examples TEXT,
  is_active BOOLEAN NOT NULL DEFAULT TRUE,
  feature_image_url TEXT,
  feature_image_path TEXT,
  display_order INTEGER NOT NULL DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  deleted_at TIMESTAMPTZ
);

-- Template activity groups
CREATE TABLE template_activity_groups (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  template_id UUID NOT NULL REFERENCES emission_templates(id) ON DELETE CASCADE,
  legacy_activity_group_id INTEGER,
  name_th TEXT NOT NULL,
  name_en TEXT NOT NULL,
  scope INTEGER CHECK (scope IN (1, 2, 3, 4)),
  scope_category_id UUID REFERENCES scope_categories(id) ON DELETE SET NULL,
  scope_sub_category TEXT,
  is_common BOOLEAN NOT NULL DEFAULT FALSE,
  sort_order INTEGER NOT NULL DEFAULT 0,
  status TEXT NOT NULL DEFAULT 'active' CHECK (status IN ('active', 'inactive')),
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  deleted_at TIMESTAMPTZ
);

-- Activity group <-> fuel resource mappings
CREATE TABLE template_activity_group_fuel_resources (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  template_activity_group_id UUID NOT NULL REFERENCES template_activity_groups(id) ON DELETE CASCADE,
  fuel_resource_id UUID NOT NULL REFERENCES fuel_resources(id) ON DELETE CASCADE,
  note TEXT,
  sort_order INTEGER NOT NULL DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE(template_activity_group_id, fuel_resource_id)
);

-- App usage tracking from multi-tenant org-app instances
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
CREATE INDEX idx_users_is_approved ON users(is_approved);
CREATE INDEX idx_users_invite_hashcode ON users(invite_hashcode);
CREATE INDEX idx_user_consents_user_id ON user_consents(user_id);

-- Organization trial requests indexes
CREATE INDEX idx_org_trial_requests_status ON organization_trial_requests(status);
CREATE INDEX idx_org_trial_requests_contact_email ON organization_trial_requests(contact_email);
CREATE INDEX idx_org_trial_requests_created_at ON organization_trial_requests(created_at);
CREATE UNIQUE INDEX idx_org_trial_requests_active_email ON organization_trial_requests(contact_email) WHERE status IN ('pending', 'processing');
CREATE INDEX idx_org_trial_request_consents_trial_request_id ON organization_trial_request_consents(trial_request_id);

-- Notification recipients indexes
CREATE INDEX idx_notification_recipients_event_enabled ON notification_recipients(event_type, is_enabled);

-- Organization invitations indexes
CREATE UNIQUE INDEX idx_organization_invitations_unique_pending ON organization_invitations(organization_id, email) WHERE status = 'pending';
CREATE INDEX idx_organization_invitations_token ON organization_invitations(token);
CREATE INDEX idx_organization_invitations_organization ON organization_invitations(organization_id);
CREATE INDEX idx_organization_invitations_email ON organization_invitations(email);
CREATE INDEX idx_organization_invitations_status ON organization_invitations(status);

-- Support chat indexes
CREATE INDEX idx_support_conversations_organization_id ON support_conversations(organization_id);
CREATE INDEX idx_support_conversations_updated_at ON support_conversations(updated_at);
CREATE INDEX idx_support_messages_conversation_created_at ON support_messages(conversation_id, created_at);
CREATE INDEX idx_support_messages_organization_created_at ON support_messages(organization_id, created_at);
CREATE INDEX idx_support_messages_sender_type ON support_messages(sender_type);
CREATE INDEX idx_support_message_attachments_message_id ON support_message_attachments(message_id);
CREATE INDEX idx_support_message_attachments_organization_created_at ON support_message_attachments(organization_id, created_at);
CREATE INDEX idx_support_message_attachments_uploader ON support_message_attachments(uploaded_by_type, uploaded_by_user_id);

-- Scope categories indexes
CREATE INDEX idx_scope_categories_scope ON scope_categories(scope);
CREATE INDEX idx_scope_categories_display_order ON scope_categories(scope, display_order);
CREATE INDEX idx_scope_categories_deleted_at ON scope_categories(deleted_at) WHERE deleted_at IS NULL;

-- Fuel resources indexes
CREATE INDEX idx_fuel_resources_category ON fuel_resources(scope_category_id);
CREATE INDEX idx_fuel_resources_resource ON fuel_resources(resource);
CREATE INDEX idx_fuel_resources_category_resource ON fuel_resources(scope_category_id, resource);
CREATE INDEX idx_fuel_resources_ref_source ON fuel_resources(ref_source);
CREATE INDEX idx_fuel_resources_deleted_at ON fuel_resources(deleted_at) WHERE deleted_at IS NULL;
CREATE INDEX idx_fuel_resources_version ON fuel_resources(version);
CREATE INDEX idx_fuel_resources_ref_code ON fuel_resources(ref_code);
CREATE UNIQUE INDEX uq_fuel_resources_ref_source_version_ref_code
  ON fuel_resources (ref_source, version, ref_code)
  WHERE ref_code IS NOT NULL AND deleted_at IS NULL;

-- EF catalog releases indexes
CREATE UNIQUE INDEX uq_ef_catalog_releases_one_default
  ON ef_catalog_releases (is_default)
  WHERE is_default = true AND status = 'published';

-- Emission templates indexes
CREATE INDEX idx_emission_templates_active ON emission_templates(is_active);
CREATE INDEX idx_emission_templates_display_order ON emission_templates(display_order);
CREATE INDEX idx_emission_templates_deleted_at ON emission_templates(deleted_at) WHERE deleted_at IS NULL;

-- Template activity groups indexes
CREATE UNIQUE INDEX idx_template_activity_groups_template_legacy
  ON template_activity_groups(template_id, legacy_activity_group_id);
CREATE INDEX idx_template_activity_groups_template_sort
  ON template_activity_groups(template_id, sort_order);
CREATE INDEX idx_template_activity_groups_scope_category
  ON template_activity_groups(scope, scope_category_id);
CREATE INDEX idx_template_activity_groups_deleted_at
  ON template_activity_groups(deleted_at) WHERE deleted_at IS NULL;

-- Template activity group fuel mappings indexes
CREATE INDEX idx_tagfr_activity_group ON template_activity_group_fuel_resources(template_activity_group_id);
CREATE INDEX idx_tagfr_fuel_resource ON template_activity_group_fuel_resources(fuel_resource_id);

-- App usage tracking indexes
CREATE INDEX idx_app_usage_tracking_domain ON app_usage_tracking(domain);
CREATE INDEX idx_app_usage_tracking_created_at ON app_usage_tracking(created_at);
CREATE INDEX idx_app_usage_tracking_domain_created_at ON app_usage_tracking(domain, created_at);
CREATE INDEX idx_app_usage_tracking_user_id ON app_usage_tracking(user_id) WHERE user_id IS NOT NULL;
CREATE INDEX idx_app_usage_tracking_session_id ON app_usage_tracking(session_id) WHERE session_id IS NOT NULL;
