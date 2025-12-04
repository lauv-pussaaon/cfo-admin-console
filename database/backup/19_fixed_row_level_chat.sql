-- CFO Beta App - Fixed Row Level Chat Setup
-- This script creates ONE chat discussion per unique activity (not per emission record)
-- Run this after running 18_diagnose_chat_issue.sql to understand the problem

-- ===========================================
-- PART 0: CLEANUP EXISTING ROW-LEVEL CONVERSATIONS
-- ===========================================

-- Clean up existing row-level conversations
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
-- PART 1: CREATE CONVERSATIONS FOR UNIQUE ACTIVITIES ONLY
-- ===========================================

DO $$
DECLARE
  v_report_id UUID;
  v_record_conv_id UUID;
  v_conv_count INTEGER := 0;
  activity_record RECORD;

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

  -- Create conversations for each UNIQUE activity (not each emission record)
  FOR activity_record IN (
    SELECT 
      ea.id as activity_id,
      ea.name_th as activity_name,
      ea.scope,
      ranked_emissions.id as first_emission_id
    FROM (
      SELECT 
        ae.activity_id,
        ae.id,
        ROW_NUMBER() OVER (PARTITION BY ae.activity_id ORDER BY ae.created_at ASC) as rn
      FROM annual_emissions ae
      WHERE ae.annual_report_id = v_report_id
    ) ranked_emissions
    JOIN emission_activities ea ON ea.id = ranked_emissions.activity_id
    WHERE ranked_emissions.rn = 1
    ORDER BY ea.scope, ea.name_th
  ) LOOP
    v_conv_count := v_conv_count + 1;
    
    -- Create conversation for this activity (not each emission record)
    INSERT INTO conversations (
      title,
      context_type,
      context_id,
      report_id,
      created_by
    ) VALUES (
      activity_record.activity_name || ' (Scope ' || activity_record.scope || ')',
      'record',
      activity_record.first_emission_id::TEXT,  -- Use first emission record as context
      v_report_id,
      (SELECT id FROM users WHERE role = 'project_owner' LIMIT 1)
    ) RETURNING id INTO v_record_conv_id;

    -- Add all users as participants
    INSERT INTO conversation_participants (conversation_id, user_id, joined_at)
    SELECT v_record_conv_id, id, NOW()
    FROM users;

    RAISE NOTICE 'Created conversation for activity: % (Scope %)', 
      activity_record.activity_name, activity_record.scope;
  END LOOP;

  RAISE NOTICE 'Fixed row-level chat setup completed: % conversations created', v_conv_count;

END $$;

-- ===========================================
-- PART 2: VERIFICATION
-- ===========================================

-- Show summary
SELECT 
  'Fixed Row-Level Conversations' as type,
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

-- Show all conversations (should be 1 overall + unique activities = 23 total)
SELECT 
  c.title,
  c.context_type,
  CASE 
    WHEN c.context_type = 'overall' THEN 'Overall Data Discussion'
    ELSE ea.name_th
  END as activity_name,
  CASE 
    WHEN c.context_type = 'overall' THEN NULL
    ELSE ea.scope
  END as scope
FROM conversations c
LEFT JOIN annual_emissions ae ON ae.id::TEXT = c.context_id
LEFT JOIN emission_activities ea ON ea.id = ae.activity_id
ORDER BY 
  CASE WHEN c.context_type = 'overall' THEN 0 ELSE 1 END,
  ea.scope,
  ea.name_th;
