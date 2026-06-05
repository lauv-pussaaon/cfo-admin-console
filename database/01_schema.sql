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
  account_type TEXT NOT NULL DEFAULT 'general customers',
  created_by UUID REFERENCES users(id) ON DELETE SET NULL,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  CONSTRAINT organizations_account_type_check CHECK (
    account_type IN ('general customers', 'demo', 'อบต', 'อบถ', 'cbis', 'ideacarb')
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
  status TEXT NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'approved')),
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
CREATE UNIQUE INDEX idx_org_trial_requests_pending_email ON organization_trial_requests(contact_email) WHERE status = 'pending';
CREATE INDEX idx_org_trial_request_consents_trial_request_id ON organization_trial_request_consents(trial_request_id);

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
