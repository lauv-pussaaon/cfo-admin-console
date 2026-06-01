-- Add support message attachments table
CREATE TABLE IF NOT EXISTS support_message_attachments (
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

CREATE INDEX IF NOT EXISTS idx_support_message_attachments_message_id
  ON support_message_attachments(message_id);
CREATE INDEX IF NOT EXISTS idx_support_message_attachments_organization_created_at
  ON support_message_attachments(organization_id, created_at);
CREATE INDEX IF NOT EXISTS idx_support_message_attachments_uploader
  ON support_message_attachments(uploaded_by_type, uploaded_by_user_id);
