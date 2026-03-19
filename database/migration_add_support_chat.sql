-- Add support chat conversations and messages tables

CREATE TABLE IF NOT EXISTS support_conversations (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  organization_id UUID NOT NULL REFERENCES organizations(id) ON DELETE CASCADE UNIQUE,
  client_last_read_at TIMESTAMPTZ,
  staff_last_read_at TIMESTAMPTZ,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS support_messages (
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

CREATE INDEX IF NOT EXISTS idx_support_conversations_organization_id
  ON support_conversations(organization_id);
CREATE INDEX IF NOT EXISTS idx_support_conversations_updated_at
  ON support_conversations(updated_at);
CREATE INDEX IF NOT EXISTS idx_support_messages_conversation_created_at
  ON support_messages(conversation_id, created_at);
CREATE INDEX IF NOT EXISTS idx_support_messages_organization_created_at
  ON support_messages(organization_id, created_at);
CREATE INDEX IF NOT EXISTS idx_support_messages_sender_type
  ON support_messages(sender_type);
