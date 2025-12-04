-- CFO Beta App - Approval System Schema
-- This script creates the approval system for emission data
-- Run this after the existing schema is set up

-- ===========================================
-- PART 1: CREATE APPROVAL TABLES
-- ===========================================

-- Create approval status enum
DO $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'approval_status') THEN
    CREATE TYPE approval_status AS ENUM ('approve', 'request_changes', 'reject');
  END IF;
END $$;

-- Create priority enum
DO $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'approval_priority') THEN
    CREATE TYPE approval_priority AS ENUM ('low', 'medium', 'high');
  END IF;
END $$;

-- Create emission_approvals table
CREATE TABLE IF NOT EXISTS emission_approvals (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  annual_emission_id UUID NOT NULL REFERENCES annual_emissions(id) ON DELETE CASCADE,
  approver_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  status approval_status NOT NULL,
  comments TEXT NOT NULL,
  priority approval_priority DEFAULT 'medium',
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  
  -- Ensure only one active approval per emission
  UNIQUE(annual_emission_id, approver_id)
);

-- Create approval history table for audit trail
CREATE TABLE IF NOT EXISTS emission_approval_history (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  annual_emission_id UUID NOT NULL REFERENCES annual_emissions(id) ON DELETE CASCADE,
  approver_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  status approval_status NOT NULL,
  comments TEXT NOT NULL,
  priority approval_priority DEFAULT 'medium',
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- ===========================================
-- PART 2: UPDATE SUBMISSION STATUS ALIGNMENT
-- ===========================================

-- Update annual_emissions submission_status to align with approval workflow
-- Add new status values to support the approval workflow
ALTER TABLE annual_emissions 
ADD CONSTRAINT check_submission_status 
CHECK (submission_status IN ('pending', 'submitted', 'approved', 'rejected', 'changes_requested'));

-- Update existing data to align with new workflow
UPDATE annual_emissions 
SET submission_status = 'pending' 
WHERE submission_status = 'draft';

-- ===========================================
-- PART 3: CREATE INDEXES
-- ===========================================

-- Indexes for emission_approvals
CREATE INDEX IF NOT EXISTS idx_emission_approvals_emission ON emission_approvals(annual_emission_id);
CREATE INDEX IF NOT EXISTS idx_emission_approvals_approver ON emission_approvals(approver_id);
CREATE INDEX IF NOT EXISTS idx_emission_approvals_status ON emission_approvals(status);
CREATE INDEX IF NOT EXISTS idx_emission_approvals_created ON emission_approvals(created_at);

-- Indexes for emission_approval_history
CREATE INDEX IF NOT EXISTS idx_approval_history_emission ON emission_approval_history(annual_emission_id);
CREATE INDEX IF NOT EXISTS idx_approval_history_approver ON emission_approval_history(approver_id);
CREATE INDEX IF NOT EXISTS idx_approval_history_status ON emission_approval_history(status);
CREATE INDEX IF NOT EXISTS idx_approval_history_created ON emission_approval_history(created_at);

-- ===========================================
-- PART 4: CREATE TRIGGERS FOR AUDIT TRAIL
-- ===========================================

-- Function to create approval history entry
CREATE OR REPLACE FUNCTION create_approval_history()
RETURNS TRIGGER AS $$
BEGIN
  -- Insert into history table when approval is created or updated
  INSERT INTO emission_approval_history (
    annual_emission_id,
    approver_id,
    status,
    comments,
    priority,
    created_at
  ) VALUES (
    NEW.annual_emission_id,
    NEW.approver_id,
    NEW.status,
    NEW.comments,
    NEW.priority,
    NEW.created_at
  );
  
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger to automatically create history entries
CREATE TRIGGER trigger_approval_history
  AFTER INSERT OR UPDATE ON emission_approvals
  FOR EACH ROW
  EXECUTE FUNCTION create_approval_history();

-- Function to update emission status based on approval
CREATE OR REPLACE FUNCTION update_emission_status_on_approval()
RETURNS TRIGGER AS $$
BEGIN
  -- Update the annual_emissions submission_status based on approval
  UPDATE annual_emissions 
  SET submission_status = CASE 
    WHEN NEW.status = 'approve' THEN 'approved'
    WHEN NEW.status = 'request_changes' THEN 'changes_requested'
    WHEN NEW.status = 'reject' THEN 'rejected'
    ELSE submission_status
  END
  WHERE id = NEW.annual_emission_id;
  
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger to automatically update emission status
CREATE TRIGGER trigger_update_emission_status
  AFTER INSERT OR UPDATE ON emission_approvals
  FOR EACH ROW
  EXECUTE FUNCTION update_emission_status_on_approval();

-- ===========================================
-- PART 5: CREATE VIEWS FOR EASY QUERYING
-- ===========================================

-- View for emissions with latest approval status
CREATE OR REPLACE VIEW emissions_with_approval AS
SELECT 
  ae.*,
  ea.name_th as activity_name,
  ea.name_en as activity_name_en,
  ea.scope,
  ef.unit,
  ef.source,
  u.name as approver_name,
  u.email as approver_email,
  ap.status as approval_status,
  ap.comments as approval_comments,
  ap.priority as approval_priority,
  ap.created_at as approval_date
FROM annual_emissions ae
LEFT JOIN emission_activities ea ON ea.id = ae.activity_id
LEFT JOIN emission_factors ef ON ef.id = ae.emission_factor_id
LEFT JOIN emission_approvals ap ON ap.annual_emission_id = ae.id
LEFT JOIN users u ON u.id = ap.approver_id;

-- View for approval history
CREATE OR REPLACE VIEW approval_history_view AS
SELECT 
  ah.*,
  ae.annual_report_id,
  ea.name_th as activity_name,
  ea.scope,
  u.name as approver_name,
  u.email as approver_email
FROM emission_approval_history ah
JOIN annual_emissions ae ON ae.id = ah.annual_emission_id
JOIN emission_activities ea ON ea.id = ae.activity_id
JOIN users u ON u.id = ah.approver_id
ORDER BY ah.created_at DESC;

-- ===========================================
-- PART 6: VERIFY SETUP
-- ===========================================

-- Show the new table structures
SELECT 
  'emission_approvals' as table_name,
  column_name, 
  data_type,
  is_nullable,
  column_default
FROM information_schema.columns 
WHERE table_name = 'emission_approvals'
ORDER BY ordinal_position;

SELECT 
  'emission_approval_history' as table_name,
  column_name, 
  data_type,
  is_nullable,
  column_default
FROM information_schema.columns 
WHERE table_name = 'emission_approval_history'
ORDER BY ordinal_position;

-- Show the updated annual_emissions constraints
SELECT 
  'annual_emissions' as table_name,
  column_name, 
  data_type,
  is_nullable,
  column_default
FROM information_schema.columns 
WHERE table_name = 'annual_emissions' AND column_name = 'submission_status';

-- Show the new views
SELECT 
  'emissions_with_approval' as view_name,
  'View for emissions with latest approval status' as description
UNION ALL
SELECT 
  'approval_history_view' as view_name,
  'View for approval history with details' as description;
