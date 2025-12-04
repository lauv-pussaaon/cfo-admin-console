-- Update monthly emissions structure to be more flexible
-- Run this after the existing schema is set up

-- Add month range columns to annual_reports
ALTER TABLE annual_reports 
ADD COLUMN IF NOT EXISTS start_month_year DATE,
ADD COLUMN IF NOT EXISTS end_month_year DATE;

-- Create new monthly_emissions_records table for dynamic month storage
CREATE TABLE IF NOT EXISTS monthly_emissions_records (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  annual_report_id UUID NOT NULL REFERENCES annual_reports(id) ON DELETE CASCADE,
  activity_id UUID NOT NULL REFERENCES emission_activities(id),
  emission_factor_id UUID NOT NULL REFERENCES emission_factors(id),
  month_index INTEGER NOT NULL CHECK (month_index >= 0 AND month_index <= 11), -- 0-11 for Jan-Dec
  month_year DATE NOT NULL, -- e.g., '2024-01-01' for January 2024
  quantity NUMERIC DEFAULT 0 NOT NULL,
  co2_equivalent NUMERIC DEFAULT 0 NOT NULL,
  unit TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  
  -- Ensure unique combination of report, activity, emission factor, and month
  UNIQUE(annual_report_id, activity_id, emission_factor_id, month_index)
);

-- Create indexes for the new table
CREATE INDEX IF NOT EXISTS idx_monthly_emissions_records_report ON monthly_emissions_records(annual_report_id);
CREATE INDEX IF NOT EXISTS idx_monthly_emissions_records_activity ON monthly_emissions_records(activity_id);
CREATE INDEX IF NOT EXISTS idx_monthly_emissions_records_ef ON monthly_emissions_records(emission_factor_id);
CREATE INDEX IF NOT EXISTS idx_monthly_emissions_records_month ON monthly_emissions_records(month_index);
CREATE INDEX IF NOT EXISTS idx_monthly_emissions_records_month_year ON monthly_emissions_records(month_year);

-- Migration function to convert existing monthly_emissions to new structure
CREATE OR REPLACE FUNCTION migrate_monthly_emissions_to_records()
RETURNS void AS $$
DECLARE
  rec RECORD;
  month_names TEXT[] := ARRAY['january', 'february', 'march', 'april', 'may', 'june', 
                            'july', 'august', 'september', 'october', 'november', 'december'];
  month_index INTEGER;
  month_year DATE;
BEGIN
  -- Loop through existing monthly_emissions records
  FOR rec IN SELECT * FROM monthly_emissions LOOP
    -- Loop through each month (0-11)
    FOR month_index IN 0..11 LOOP
      -- Calculate the month_year based on the annual report year
      month_year := DATE_TRUNC('year', NOW()) + (month_index || ' months')::INTERVAL;
      
      -- Insert record for each month with non-zero quantity
      IF (month_index = 0 AND rec.january_quantity > 0) OR
         (month_index = 1 AND rec.february_quantity > 0) OR
         (month_index = 2 AND rec.march_quantity > 0) OR
         (month_index = 3 AND rec.april_quantity > 0) OR
         (month_index = 4 AND rec.may_quantity > 0) OR
         (month_index = 5 AND rec.june_quantity > 0) OR
         (month_index = 6 AND rec.july_quantity > 0) OR
         (month_index = 7 AND rec.august_quantity > 0) OR
         (month_index = 8 AND rec.september_quantity > 0) OR
         (month_index = 9 AND rec.october_quantity > 0) OR
         (month_index = 10 AND rec.november_quantity > 0) OR
         (month_index = 11 AND rec.december_quantity > 0) THEN
        
        INSERT INTO monthly_emissions_records (
          annual_report_id,
          activity_id,
          emission_factor_id,
          month_index,
          month_year,
          quantity,
          co2_equivalent,
          unit
        ) VALUES (
          rec.annual_report_id,
          rec.activity_id,
          rec.emission_factor_id,
          month_index,
          month_year,
          CASE month_index
            WHEN 0 THEN rec.january_quantity
            WHEN 1 THEN rec.february_quantity
            WHEN 2 THEN rec.march_quantity
            WHEN 3 THEN rec.april_quantity
            WHEN 4 THEN rec.may_quantity
            WHEN 5 THEN rec.june_quantity
            WHEN 6 THEN rec.july_quantity
            WHEN 7 THEN rec.august_quantity
            WHEN 8 THEN rec.september_quantity
            WHEN 9 THEN rec.october_quantity
            WHEN 10 THEN rec.november_quantity
            WHEN 11 THEN rec.december_quantity
          END,
          CASE month_index
            WHEN 0 THEN rec.january_quantity * (SELECT co2e_factor FROM emission_factors WHERE id = rec.emission_factor_id)
            WHEN 1 THEN rec.february_quantity * (SELECT co2e_factor FROM emission_factors WHERE id = rec.emission_factor_id)
            WHEN 2 THEN rec.march_quantity * (SELECT co2e_factor FROM emission_factors WHERE id = rec.emission_factor_id)
            WHEN 3 THEN rec.april_quantity * (SELECT co2e_factor FROM emission_factors WHERE id = rec.emission_factor_id)
            WHEN 4 THEN rec.may_quantity * (SELECT co2e_factor FROM emission_factors WHERE id = rec.emission_factor_id)
            WHEN 5 THEN rec.june_quantity * (SELECT co2e_factor FROM emission_factors WHERE id = rec.emission_factor_id)
            WHEN 6 THEN rec.july_quantity * (SELECT co2e_factor FROM emission_factors WHERE id = rec.emission_factor_id)
            WHEN 7 THEN rec.august_quantity * (SELECT co2e_factor FROM emission_factors WHERE id = rec.emission_factor_id)
            WHEN 8 THEN rec.september_quantity * (SELECT co2e_factor FROM emission_factors WHERE id = rec.emission_factor_id)
            WHEN 9 THEN rec.october_quantity * (SELECT co2e_factor FROM emission_factors WHERE id = rec.emission_factor_id)
            WHEN 10 THEN rec.november_quantity * (SELECT co2e_factor FROM emission_factors WHERE id = rec.emission_factor_id)
            WHEN 11 THEN rec.december_quantity * (SELECT co2e_factor FROM emission_factors WHERE id = rec.emission_factor_id)
          END,
          rec.unit
        ) ON CONFLICT (annual_report_id, activity_id, emission_factor_id, month_index) DO NOTHING;
      END IF;
    END LOOP;
  END LOOP;
END;
$$ LANGUAGE plpgsql;

-- Run the migration (uncomment when ready to migrate)
-- SELECT migrate_monthly_emissions_to_records();

-- Update annual_reports with month ranges (example for 2024)
UPDATE annual_reports 
SET start_month_year = '2024-01-01', end_month_year = '2024-12-31'
WHERE year = 2024;

