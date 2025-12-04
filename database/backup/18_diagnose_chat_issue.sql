-- Diagnostic script to check why there are 33 chat discussions instead of 23
-- Run this to understand the data structure

-- ===========================================
-- PART 1: CHECK ACTIVITIES VS EMISSIONS
-- ===========================================

-- Count total activities
SELECT 
  'Total Activities' as type,
  COUNT(*) as count
FROM emission_activities;

-- Count total annual_emissions records
SELECT 
  'Total Annual Emissions Records' as type,
  COUNT(*) as count
FROM annual_emissions ae
JOIN annual_reports ar ON ar.id = ae.annual_report_id
JOIN organizations o ON o.id = ar.organization_id
WHERE o.name = 'SIDEN Co., Ltd.' AND ar.year = 2024;

-- Count unique activities in annual_emissions
SELECT 
  'Unique Activities in Annual Emissions' as type,
  COUNT(DISTINCT ae.activity_id) as count
FROM annual_emissions ae
JOIN annual_reports ar ON ar.id = ae.annual_report_id
JOIN organizations o ON o.id = ar.organization_id
WHERE o.name = 'SIDEN Co., Ltd.' AND ar.year = 2024;

-- ===========================================
-- PART 2: CHECK FOR DUPLICATE ACTIVITIES
-- ===========================================

-- Show activities with multiple emission records
SELECT 
  ea.name_th as activity_name,
  ea.scope,
  COUNT(ae.id) as emission_records_count
FROM annual_emissions ae
JOIN emission_activities ea ON ea.id = ae.activity_id
JOIN annual_reports ar ON ar.id = ae.annual_report_id
JOIN organizations o ON o.id = ar.organization_id
WHERE o.name = 'SIDEN Co., Ltd.' AND ar.year = 2024
GROUP BY ea.id, ea.name_th, ea.scope
HAVING COUNT(ae.id) > 1
ORDER BY emission_records_count DESC;

-- ===========================================
-- PART 3: CHECK CURRENT CONVERSATIONS
-- ===========================================

-- Count current conversations
SELECT 
  'Current Conversations' as type,
  COUNT(*) as count
FROM conversations;

-- Count by context type
SELECT 
  context_type,
  COUNT(*) as count
FROM conversations
GROUP BY context_type;

-- Show all conversations with their activities
SELECT 
  c.title,
  c.context_type,
  ea.name_th as activity_name,
  ea.scope,
  ae.id as emission_id
FROM conversations c
LEFT JOIN annual_emissions ae ON ae.id::TEXT = c.context_id
LEFT JOIN emission_activities ea ON ea.id = ae.activity_id
ORDER BY c.context_type, ea.scope, ea.name_th;

-- ===========================================
-- PART 4: IDENTIFY THE PROBLEM
-- ===========================================

-- Show activities that have multiple emission records
SELECT 
  ea.name_th as activity_name,
  ea.scope,
  COUNT(ae.id) as records_count,
  STRING_AGG(ae.id::TEXT, ', ') as emission_ids
FROM annual_emissions ae
JOIN emission_activities ea ON ea.id = ae.activity_id
JOIN annual_reports ar ON ar.id = ae.annual_report_id
JOIN organizations o ON o.id = ar.organization_id
WHERE o.name = 'SIDEN Co., Ltd.' AND ar.year = 2024
GROUP BY ea.id, ea.name_th, ea.scope
ORDER BY records_count DESC;



