-- CFO Beta App - Row Level Chat Setup (Simple Version)
-- This script creates chat discussions for each record in the first annual report
-- Run this in Supabase SQL Editor after chat_setup.sql

-- ===========================================
-- PART 0: CLEANUP (Optional - Uncomment to reset)
-- ===========================================
-- Uncomment these lines to clean up existing row-level conversations:
DELETE FROM message_attachments WHERE message_id IN (
  SELECT m.id FROM messages m 
  JOIN conversations c ON c.id = m.conversation_id 
  WHERE c.context_type = 'record'
);
DELETE FROM messages WHERE conversation_id IN (
  SELECT id FROM conversations WHERE context_type = 'record'
);
DELETE FROM conversation_participants WHERE conversation_id IN (
  SELECT id FROM conversations WHERE context_type = 'record'
);
DELETE FROM conversations WHERE context_type = 'record';
DELETE FROM tasks WHERE conversation_id IN (
  SELECT id FROM conversations WHERE context_type = 'record'
);
DELETE FROM notifications WHERE conversation_id IN (
  SELECT id FROM conversations WHERE context_type = 'record'
);

-- ===========================================
-- PART 1: CREATE RECORD-LEVEL CONVERSATIONS
-- ===========================================

DO $$
DECLARE
  v_report_id UUID;
  v_record_conv_id UUID;
  v_conv_count INTEGER := 0;
  emission_record RECORD;

BEGIN
  -- Get the first annual report ID
  SELECT ar.id INTO v_report_id
  FROM annual_reports ar
  JOIN organizations o ON o.id = ar.organization_id
  WHERE o.name = 'SIDEN Co., Ltd.' AND ar.year = 2024
  LIMIT 1;

  IF v_report_id IS NULL THEN
    RAISE EXCEPTION 'Annual report not found. Please run the seed scripts first.';
  END IF;

  RAISE NOTICE 'Creating row-level conversations for report: %', v_report_id;

  -- Create conversations for each emission record
  FOR emission_record IN (
    SELECT 
      ae.id,
      ea.name_th as activity_name,
      ea.scope
    FROM annual_emissions ae
    JOIN emission_activities ea ON ea.id = ae.activity_id
    WHERE ae.annual_report_id = v_report_id
    ORDER BY ea.scope, ea.name_th
  ) LOOP
    v_conv_count := v_conv_count + 1;
    
    -- Create conversation for this record
    INSERT INTO conversations (
      title,
      context_type,
      context_id,
      report_id,
      created_by
    ) VALUES (
      emission_record.activity_name || ' (Scope ' || emission_record.scope || ')',
      'record',
      emission_record.id::TEXT,
      v_report_id,
      (SELECT id FROM users WHERE role = 'project_owner' LIMIT 1)
    ) RETURNING id INTO v_record_conv_id;

    -- Add all users as participants
    INSERT INTO conversation_participants (conversation_id, user_id, joined_at)
    SELECT v_record_conv_id, id, NOW()
    FROM users;

    RAISE NOTICE 'Created conversation for: %', emission_record.activity_name;
  END LOOP;

  RAISE NOTICE 'Row-level chat setup completed: % conversations created', v_conv_count;

END $$;

-- ===========================================
-- PART 2: VERIFICATION
-- ===========================================

-- Show summary
SELECT 
  'Row-Level Conversations' as type,
  COUNT(*) as conversations,
  COUNT(DISTINCT cp.user_id) as total_participants
FROM conversations c
LEFT JOIN conversation_participants cp ON cp.conversation_id = c.id
WHERE c.context_type = 'record';

-- Show conversations by scope
SELECT 
  ea.scope,
  COUNT(c.id) as conversations,
  COUNT(DISTINCT cp.user_id) as participants_per_scope
FROM conversations c
JOIN annual_emissions ae ON ae.id::TEXT = c.context_id
JOIN emission_activities ea ON ea.id = ae.activity_id
LEFT JOIN conversation_participants cp ON cp.conversation_id = c.id
WHERE c.context_type = 'record'
GROUP BY ea.scope
ORDER BY ea.scope;

-- Show sample conversations
SELECT 
  c.title,
  ea.name_th as activity_name,
  ea.scope
FROM conversations c
JOIN annual_emissions ae ON ae.id::TEXT = c.context_id
JOIN emission_activities ea ON ea.id = ae.activity_id
WHERE c.context_type = 'record'
ORDER BY ea.scope, ea.name_th
LIMIT 10;

