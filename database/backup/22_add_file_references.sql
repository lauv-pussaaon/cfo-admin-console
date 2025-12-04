-- Add file reference fields to annual_emissions table
-- This script adds support for file attachments to emission records

-- ===========================================
-- PART 1: ADD FILE REFERENCE FIELDS
-- ===========================================

-- Add file reference fields to annual_emissions table
ALTER TABLE annual_emissions 
ADD COLUMN IF NOT EXISTS evidence_file_url TEXT,
ADD COLUMN IF NOT EXISTS evidence_file_name TEXT,
ADD COLUMN IF NOT EXISTS evidence_file_type TEXT,
ADD COLUMN IF NOT EXISTS evidence_file_size INTEGER,
ADD COLUMN IF NOT EXISTS evidence_uploaded_at TIMESTAMPTZ;

-- Add indexes for file reference fields
CREATE INDEX IF NOT EXISTS idx_annual_emissions_evidence_file ON annual_emissions(evidence_file_url);
CREATE INDEX IF NOT EXISTS idx_annual_emissions_evidence_uploaded ON annual_emissions(evidence_uploaded_at);

-- ===========================================
-- PART 2: VERIFY CHANGES
-- ===========================================

-- Show the updated table structure
SELECT 
  column_name, 
  data_type, 
  is_nullable,
  column_default
FROM information_schema.columns 
WHERE table_name = 'annual_emissions'
ORDER BY ordinal_position;

-- Show sample data with file references
SELECT 
  ae.id,
  ea.name_th as activity_name,
  ae.evidence_source,
  ae.evidence_file_name,
  ae.evidence_file_url,
  ae.evidence_uploaded_at
FROM annual_emissions ae
JOIN emission_activities ea ON ea.id = ae.activity_id
WHERE ae.evidence_file_url IS NOT NULL
LIMIT 5;
