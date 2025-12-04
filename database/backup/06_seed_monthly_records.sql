-- Seed realistic monthly emissions records for existing annual_emissions
-- Run after: 01_schema.sql -> 02_seed_master_data.sql -> 03_create_monthly_emissions.sql -> 04_seed_first_report.sql -> 05_update_monthly_structure.sql

-- First, run the migration to convert existing data
SELECT migrate_monthly_emissions_to_records();

-- Update annual_reports with month ranges for 2024
UPDATE annual_reports 
SET start_month_year = '2024-01-01', end_month_year = '2024-12-31'
WHERE year = 2024;

-- Clear existing monthly_emissions_records to start fresh
TRUNCATE TABLE monthly_emissions_records RESTART IDENTITY CASCADE;

-- Generate realistic monthly data for existing annual_emissions
DO $$
DECLARE
  emission_record RECORD;
  month_index INTEGER;
  month_year DATE;
  base_quantity NUMERIC;
  monthly_quantity NUMERIC;
  seasonal_factor NUMERIC;
  random_factor NUMERIC;
  co2e_factor NUMERIC;
  unit_name TEXT;
BEGIN
  -- Loop through all existing annual_emissions
  FOR emission_record IN 
    SELECT 
      ae.id,
      ae.annual_report_id,
      ae.activity_id,
      ae.emission_factor_id,
      ae.quantity,
      ae.co2_equivalent,
      ef.co2e_factor,
      ef.unit,
      ef.activity_name_th,
      ef.scope
    FROM annual_emissions ae
    JOIN emission_factors ef ON ef.id = ae.emission_factor_id
    ORDER BY ef.scope, ae.id
  LOOP
    co2e_factor := emission_record.co2e_factor;
    unit_name := emission_record.unit;
    base_quantity := emission_record.quantity / 12.0; -- Average monthly quantity
    
    -- Generate monthly data for each month (0-11)
    FOR month_index IN 0..11 LOOP
      month_year := DATE('2024-01-01') + (month_index || ' months')::INTERVAL;
      
      -- Calculate seasonal and random factors for realistic variation
      seasonal_factor := CASE month_index
        WHEN 0 THEN 0.8  -- January: Lower activity
        WHEN 1 THEN 0.9  -- February: Still lower
        WHEN 2 THEN 1.1  -- March: Spring increase
        WHEN 3 THEN 1.2  -- April: Peak activity
        WHEN 4 THEN 1.3  -- May: High activity
        WHEN 5 THEN 1.4  -- June: Peak summer
        WHEN 6 THEN 1.3  -- July: High summer
        WHEN 7 THEN 1.2  -- August: Still high
        WHEN 8 THEN 1.1  -- September: Slight decrease
        WHEN 9 THEN 1.0  -- October: Normal
        WHEN 10 THEN 0.9 -- November: Decrease
        WHEN 11 THEN 0.8 -- December: Holiday season
      END;
      
      -- Add random variation (±20%)
      random_factor := 0.8 + (RANDOM() * 0.4);
      
      -- Calculate final monthly quantity
      monthly_quantity := base_quantity * seasonal_factor * random_factor;
      
      -- Ensure minimum values for certain activities
      IF emission_record.scope = 1 AND monthly_quantity < 10 THEN
        monthly_quantity := 10 + (RANDOM() * 50);
      ELSIF emission_record.scope = 2 AND monthly_quantity < 100 THEN
        monthly_quantity := 100 + (RANDOM() * 200);
      ELSIF emission_record.scope = 3 AND monthly_quantity < 1 THEN
        monthly_quantity := 1 + (RANDOM() * 10);
      END IF;
      
      -- Round to appropriate decimal places
      monthly_quantity := ROUND(monthly_quantity, 2);
      
      -- Insert monthly record
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
        emission_record.annual_report_id,
        emission_record.activity_id,
        emission_record.emission_factor_id,
        month_index,
        month_year,
        monthly_quantity,
        monthly_quantity * co2e_factor,
        unit_name
      ) ON CONFLICT (annual_report_id, activity_id, emission_factor_id, month_index) DO NOTHING;
      
    END LOOP;
  END LOOP;
  
  RAISE NOTICE 'Generated monthly records for % annual emissions', (SELECT COUNT(*) FROM annual_emissions);
END $$;

-- Verify the data by showing some statistics
DO $$
DECLARE
  total_records INTEGER;
  total_quantity NUMERIC;
  total_co2e NUMERIC;
  scope1_count INTEGER;
  scope2_count INTEGER;
  scope3_count INTEGER;
BEGIN
  SELECT COUNT(*) INTO total_records FROM monthly_emissions_records;
  SELECT COALESCE(SUM(quantity), 0) INTO total_quantity FROM monthly_emissions_records;
  SELECT COALESCE(SUM(co2_equivalent), 0) INTO total_co2e FROM monthly_emissions_records;
  
  SELECT COUNT(DISTINCT mer.activity_id) INTO scope1_count
  FROM monthly_emissions_records mer
  JOIN emission_factors ef ON ef.id = mer.emission_factor_id
  WHERE ef.scope = 1;
  
  SELECT COUNT(DISTINCT mer.activity_id) INTO scope2_count
  FROM monthly_emissions_records mer
  JOIN emission_factors ef ON ef.id = mer.emission_factor_id
  WHERE ef.scope = 2;
  
  SELECT COUNT(DISTINCT mer.activity_id) INTO scope3_count
  FROM monthly_emissions_records mer
  JOIN emission_factors ef ON ef.id = mer.emission_factor_id
  WHERE ef.scope = 3;
  
  RAISE NOTICE 'Monthly Records Summary:';
  RAISE NOTICE 'Total monthly records: %', total_records;
  RAISE NOTICE 'Total quantity: %', ROUND(total_quantity, 2);
  RAISE NOTICE 'Total CO2e: %', ROUND(total_co2e, 2);
  RAISE NOTICE 'Scope 1 activities: %', scope1_count;
  RAISE NOTICE 'Scope 2 activities: %', scope2_count;
  RAISE NOTICE 'Scope 3 activities: %', scope3_count;
END $$;

-- Show sample monthly data for verification
SELECT 
  ef.activity_name_th,
  ef.scope,
  mer.month_index,
  TO_CHAR(mer.month_year, 'Mon YYYY') as month_name,
  mer.quantity,
  mer.co2_equivalent,
  mer.unit
FROM monthly_emissions_records mer
JOIN emission_factors ef ON ef.id = mer.emission_factor_id
ORDER BY ef.scope, ef.activity_name_th, mer.month_index
LIMIT 20;
