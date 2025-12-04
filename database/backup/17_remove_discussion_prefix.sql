-- Remove "Discussion:" prefix from existing conversation titles
-- This script updates existing conversations to remove the "Discussion:" prefix

-- Update overall conversations
UPDATE conversations 
SET title = 'Overall Data'
WHERE context_type = 'overall' 
  AND title LIKE 'Overall Data Discussion%';

-- Update record conversations that start with "Discussion:"
UPDATE conversations 
SET title = REPLACE(title, 'Discussion: ', '')
WHERE context_type = 'record' 
  AND title LIKE 'Discussion:%';

-- Verify the changes
SELECT 
  id,
  title,
  context_type,
  context_id,
  report_id
FROM conversations 
ORDER BY 
  CASE WHEN context_type = 'overall' THEN 0 ELSE 1 END,
  title;

-- Show count of updated conversations
SELECT 
  context_type,
  COUNT(*) as count,
  'Updated conversations' as status
FROM conversations 
GROUP BY context_type;





