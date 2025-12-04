-- Truncate approval data tables
-- This script clears all approval data for testing/development purposes

-- Clear approval history (this table tracks all approval actions)
TRUNCATE TABLE emission_approval_history CASCADE;

-- Clear current approvals (this table tracks current approval status)
TRUNCATE TABLE emission_approvals CASCADE;

-- Reset annual_emissions submission_status to 'pending' for all records
-- This ensures all records start fresh without approval status
UPDATE annual_emissions 
SET submission_status = 'pending' 
WHERE submission_status IN ('approved', 'rejected', 'changes_requested');

-- Optional: Reset to 'submitted' if you want to keep submitted status
-- UPDATE annual_emissions 
-- SET submission_status = 'submitted' 
-- WHERE submission_status IN ('approved', 'rejected', 'changes_requested');

-- Verify the cleanup
SELECT 
  'emission_approvals' as table_name,
  COUNT(*) as record_count
FROM emission_approvals
UNION ALL
SELECT 
  'emission_approval_history' as table_name,
  COUNT(*) as record_count
FROM emission_approval_history
UNION ALL
SELECT 
  'annual_emissions_status' as table_name,
  COUNT(*) as record_count
FROM annual_emissions 
WHERE submission_status IN ('approved', 'rejected', 'changes_requested');
