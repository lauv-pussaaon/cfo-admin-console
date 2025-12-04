-- Add updated_at column to annual_emissions table
-- This script adds an updated_at column and trigger to automatically update it

-- ===========================================
-- PART 1: ADD UPDATED_AT COLUMN
-- ===========================================

-- Add updated_at column to annual_emissions table
ALTER TABLE annual_emissions 
ADD COLUMN IF NOT EXISTS updated_at TIMESTAMPTZ DEFAULT NOW();

-- Update existing records to have updated_at = created_at
UPDATE annual_emissions 
SET updated_at = created_at 
WHERE updated_at IS NULL;

-- ===========================================
-- PART 2: CREATE UPDATE TRIGGER
-- ===========================================

-- Function to automatically update the updated_at column
CREATE OR REPLACE FUNCTION update_annual_emissions_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger to automatically update updated_at on any update
CREATE TRIGGER trigger_update_annual_emissions_updated_at
  BEFORE UPDATE ON annual_emissions
  FOR EACH ROW
  EXECUTE FUNCTION update_annual_emissions_updated_at();

-- ===========================================
-- PART 3: CREATE INDEX FOR PERFORMANCE
-- ===========================================

-- Create index on updated_at for efficient sorting
CREATE INDEX IF NOT EXISTS idx_annual_emissions_updated_at ON annual_emissions(updated_at);

-- ===========================================
-- PART 4: VERIFY CHANGES
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

-- Show sample data with updated_at
SELECT 
  id,
  created_at,
  updated_at,
  submission_status
FROM annual_emissions
ORDER BY updated_at DESC
LIMIT 5;
