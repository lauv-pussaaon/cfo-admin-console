-- CFO Beta App - Complete Chat System Setup
-- This single script creates the entire chat system
-- Run this in Supabase SQL Editor

-- ===========================================
-- PART 1: DROP EXISTING TABLES (if any)
-- ===========================================
DROP TABLE IF EXISTS notifications CASCADE;
DROP TABLE IF EXISTS tasks CASCADE;
DROP TABLE IF EXISTS message_attachments CASCADE;
DROP TABLE IF EXISTS messages CASCADE;
DROP TABLE IF EXISTS conversation_participants CASCADE;
DROP TABLE IF EXISTS conversations CASCADE;

-- Note: Users should be created by 10_auth_update.sql first
-- This script assumes users already exist

-- ===========================================
-- PART 2: CREATE TABLES
-- ===========================================

-- Users table (simple, no enums)
CREATE TABLE IF NOT EXISTS users (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  email TEXT UNIQUE NOT NULL,
  name TEXT NOT NULL,
  avatar_url TEXT,
  role TEXT DEFAULT 'project_staff', -- Simple text field
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Conversations table
CREATE TABLE conversations (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  title TEXT NOT NULL,
  context_type TEXT NOT NULL, -- 'overall' or 'record'
  context_id TEXT, -- record ID for record-level chats
  report_id UUID, -- Links to annual_reports for overall chats
  created_by UUID REFERENCES users(id),
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Messages table
CREATE TABLE messages (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  conversation_id UUID REFERENCES conversations(id) ON DELETE CASCADE,
  sender_id UUID REFERENCES users(id),
  content TEXT NOT NULL,
  message_type TEXT DEFAULT 'text', -- 'text', 'status', 'task'
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Message attachments table
CREATE TABLE message_attachments (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  message_id UUID REFERENCES messages(id) ON DELETE CASCADE,
  file_name TEXT NOT NULL,
  file_path TEXT NOT NULL,
  file_type TEXT NOT NULL,
  file_size INTEGER,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Tasks table
CREATE TABLE tasks (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  conversation_id UUID REFERENCES conversations(id),
  message_id UUID REFERENCES messages(id),
  title TEXT NOT NULL,
  description TEXT,
  assigned_to UUID REFERENCES users(id),
  created_by UUID REFERENCES users(id),
  status TEXT DEFAULT 'pending', -- 'pending', 'in_progress', 'completed'
  due_date TIMESTAMPTZ,
  completed_at TIMESTAMPTZ,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Conversation participants table
CREATE TABLE conversation_participants (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  conversation_id UUID REFERENCES conversations(id) ON DELETE CASCADE,
  user_id UUID REFERENCES users(id) ON DELETE CASCADE,
  joined_at TIMESTAMPTZ DEFAULT NOW(),
  last_read_at TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE(conversation_id, user_id)
);

-- Notifications table
CREATE TABLE notifications (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id UUID REFERENCES users(id) ON DELETE CASCADE,
  conversation_id UUID REFERENCES conversations(id),
  message_id UUID REFERENCES messages(id),
  task_id UUID REFERENCES tasks(id),
  type TEXT NOT NULL, -- 'message', 'task_assigned', 'task_completed'
  title TEXT NOT NULL,
  content TEXT,
  is_read BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- ===========================================
-- PART 3: CREATE INDEXES
-- ===========================================
CREATE INDEX idx_conversations_context ON conversations(context_type, context_id, report_id);
CREATE INDEX idx_messages_conversation ON messages(conversation_id, created_at);
CREATE INDEX idx_tasks_assigned ON tasks(assigned_to, status);
CREATE INDEX idx_notifications_user ON notifications(user_id, is_read);

-- ===========================================
-- PART 4: CREATE TRIGGERS
-- ===========================================
-- Updated_at trigger for conversations
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ language 'plpgsql';

CREATE TRIGGER update_conversations_updated_at
    BEFORE UPDATE ON conversations
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- ===========================================
-- PART 5: INSERT SAMPLE DATA
-- ===========================================

-- Note: Users are inserted by 10_auth_update.sql
-- This script only creates chat-related data

-- Create conversations and data for the first annual report
DO $$
DECLARE
  v_report_id UUID;
  v_overall_conv_id UUID;
  v_record_conv_id UUID;
  v_emission_record_id UUID;
  v_user_count INTEGER;
BEGIN
  -- Check if users exist
  SELECT COUNT(*) INTO v_user_count FROM users;
  
  IF v_user_count = 0 THEN
    RAISE EXCEPTION 'No users found. Please run 10_auth_update.sql first to create users.';
  END IF;
  
  -- Get the first annual report
  SELECT id INTO v_report_id FROM annual_reports ORDER BY created_at ASC LIMIT 1;
  
  IF v_report_id IS NOT NULL THEN
    -- Create overall conversation for this report
    INSERT INTO conversations (title, context_type, context_id, report_id, created_by)
    VALUES ('Overall Data', 'overall', NULL, v_report_id, '550e8400-e29b-41d4-a716-446655440001')
    RETURNING id INTO v_overall_conv_id;
    
    -- Add all users to overall conversation
    INSERT INTO conversation_participants (conversation_id, user_id)
    SELECT v_overall_conv_id, id FROM users;
    
    -- Insert sample messages for overall conversation
    INSERT INTO messages (conversation_id, sender_id, content, message_type) VALUES
      (v_overall_conv_id, '550e8400-e29b-41d4-a716-446655440001', 'Welcome to the overall data discussion!', 'text'),
      (v_overall_conv_id, '550e8400-e29b-41d4-a716-446655440002', 'Thanks! I''ll update the data this week.', 'text'),
      (v_overall_conv_id, '550e8400-e29b-41d4-a716-446655440003', 'Scope 2 data is ready for review.', 'text');
    
    -- Create sample task for overall conversation
    INSERT INTO tasks (conversation_id, title, description, assigned_to, created_by, status) VALUES
      (v_overall_conv_id, 'Review Scope 1 data', 'Please verify all Scope 1 calculations.', '550e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440001', 'pending');
    
    -- Create sample notification
    INSERT INTO notifications (user_id, conversation_id, type, title, content) VALUES
      ('550e8400-e29b-41d4-a716-446655440003', v_overall_conv_id, 'task_assigned', 'New Task', 'You have a new task: Review Scope 1 data');
    
    -- Create record-level conversation for first emission record
    SELECT id INTO v_emission_record_id FROM annual_emissions ORDER BY created_at ASC LIMIT 1;
    
    IF v_emission_record_id IS NOT NULL THEN
      -- Create record conversation
      INSERT INTO conversations (title, context_type, context_id, report_id, created_by)
      VALUES ('Sample Record', 'record', v_emission_record_id::TEXT, v_report_id, '550e8400-e29b-41d4-a716-446655440001')
      RETURNING id INTO v_record_conv_id;
      
      -- Add all users to record conversation
      INSERT INTO conversation_participants (conversation_id, user_id)
      SELECT v_record_conv_id, id FROM users;
      
      -- Insert sample messages for record conversation
      INSERT INTO messages (conversation_id, sender_id, content, message_type) VALUES
        (v_record_conv_id, '550e8400-e29b-41d4-a716-446655440002', 'This data looks good.', 'text'),
        (v_record_conv_id, '550e8400-e29b-41d4-a716-446655440003', 'I''ll double-check the calculations.', 'text');
      
      -- Create sample task for record conversation
      INSERT INTO tasks (conversation_id, title, description, assigned_to, created_by, status) VALUES
        (v_record_conv_id, 'Verify calculations', 'Please verify the emission calculations for this record.', '550e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440002', 'in_progress');
    END IF;
    
    RAISE NOTICE 'Chat system setup completed successfully!';
  ELSE
    RAISE NOTICE 'No annual reports found. Please create a report first.';
  END IF;
END $$;

-- ===========================================
-- PART 6: VERIFY DATA
-- ===========================================
SELECT 'Users' as table_name, COUNT(*) as count FROM users
UNION ALL
SELECT 'Conversations', COUNT(*) FROM conversations
UNION ALL
SELECT 'Messages', COUNT(*) FROM messages
UNION ALL
SELECT 'Tasks', COUNT(*) FROM tasks
UNION ALL
SELECT 'Notifications', COUNT(*) FROM notifications
UNION ALL
SELECT 'Participants', COUNT(*) FROM conversation_participants;
