-- CFO Beta App - Transaction Data Seed
-- Run after: 01_schema.sql -> 02_seed_master_data.sql
-- This script seeds transaction data: annual_reports, annual_emissions, monthly_emissions_records

-- ===========================================
-- PART 1: TRUNCATE TRANSACTION DATA TABLES
-- ===========================================

TRUNCATE TABLE monthly_emissions_records RESTART IDENTITY CASCADE;
TRUNCATE TABLE annual_emissions RESTART IDENTITY CASCADE;
TRUNCATE TABLE annual_reports RESTART IDENTITY CASCADE;

-- ===========================================
-- PART 2: CREATE ANNUAL REPORT
-- ===========================================

DO $$
DECLARE
  v_org_id UUID;
  v_report_id UUID;
  emission_record RECORD;
  month_index INTEGER;
  month_year DATE;
  base_quantity NUMERIC;
  seasonal_factor NUMERIC;
  random_factor NUMERIC;
  monthly_quantity NUMERIC;
BEGIN
  -- Get organization ID
  SELECT id INTO v_org_id FROM organizations WHERE name = 'SIDEN Co., Ltd.' LIMIT 1;
  
  IF v_org_id IS NULL THEN
    RAISE EXCEPTION 'Organization not found. Please run 02_seed_master_data.sql first.';
  END IF;
  
  -- Create annual report for 2024 with base year 2023
  INSERT INTO annual_reports (organization_id, year, base_year, status, start_month_year, end_month_year)
  VALUES (v_org_id, 2024, 2023, 'draft', '2024-01-01', '2024-12-31')
  ON CONFLICT (organization_id, year) DO UPDATE
  SET base_year = EXCLUDED.base_year,
      start_month_year = EXCLUDED.start_month_year,
      end_month_year = EXCLUDED.end_month_year
  RETURNING id INTO v_report_id;
  
  -- Create sample annual emissions (30 activities: 20 S1, 3 S2, 7 S3)
  WITH ranked AS (
    SELECT 
      a.id AS activity_id,
      ef.id AS emission_factor_id,
      a.scope,
      ef.unit,
      ef.co2e_factor,
      a.code,
      ROW_NUMBER() OVER (PARTITION BY a.scope ORDER BY a.code) AS rn
    FROM emission_activities a
    JOIN emission_activity_factors eaf ON eaf.activity_id = a.id AND eaf.is_default = TRUE
    JOIN emission_factors ef ON ef.id = eaf.emission_factor_id
  ), sel AS (
    SELECT activity_id, emission_factor_id, scope, unit, co2e_factor FROM ranked r
    WHERE (r.scope = 1 AND r.rn <= 20)
       OR (r.scope = 2 AND r.rn <= 3)
       OR (r.scope = 3 AND r.rn <= 7)
  )
  INSERT INTO annual_emissions (
    annual_report_id, activity_id, emission_factor_id, quantity, co2_equivalent,
    evidence_source, responsible_person, submission_status
  )
  SELECT 
    v_report_id,
    activity_id,
    emission_factor_id,
    1200.0 AS quantity, -- Annual quantity
    1200.0 * co2e_factor AS co2_equivalent,
    'seed' AS evidence_source,
    'ระบบ' AS responsible_person,
    'pending' AS submission_status
  FROM sel
  ON CONFLICT DO NOTHING;
  
  -- Generate monthly emissions records for each annual emission
  FOR emission_record IN 
    SELECT 
      ae.id,
      ae.annual_report_id,
      ae.activity_id,
      ae.emission_factor_id,
      ae.quantity,
      ef.co2e_factor,
      ef.unit
    FROM annual_emissions ae
    JOIN emission_factors ef ON ef.id = ae.emission_factor_id
    WHERE ae.annual_report_id = v_report_id
  LOOP
    -- Generate monthly data for each month (0-11)
    FOR month_index IN 0..11 LOOP
      month_year := DATE('2024-01-01') + (month_index || ' months')::INTERVAL;
      base_quantity := emission_record.quantity / 12.0;
      
      -- Calculate seasonal factor
      seasonal_factor := CASE month_index
        WHEN 0 THEN 0.8  -- January
        WHEN 1 THEN 0.9  -- February
        WHEN 2 THEN 1.1  -- March
        WHEN 3 THEN 1.2  -- April
        WHEN 4 THEN 1.3  -- May
        WHEN 5 THEN 1.4  -- June
        WHEN 6 THEN 1.3  -- July
        WHEN 7 THEN 1.2  -- August
        WHEN 8 THEN 1.1  -- September
        WHEN 9 THEN 1.0  -- October
        WHEN 10 THEN 0.9 -- November
        WHEN 11 THEN 0.8 -- December
      END;
      
      -- Add random variation (±20%)
      random_factor := 0.8 + (RANDOM() * 0.4);
      monthly_quantity := base_quantity * seasonal_factor * random_factor;
      
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
        monthly_quantity * emission_record.co2e_factor,
        emission_record.unit
      ) ON CONFLICT DO NOTHING;
    END LOOP;
  END LOOP;
  
  RAISE NOTICE 'Created annual report for 2024 with base year 2023';
END $$;

