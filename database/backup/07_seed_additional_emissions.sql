-- Generate additional realistic annual_emissions with monthly data
-- This creates 10+ additional emission records with realistic seasonal patterns

-- First, ensure we have the annual report
DO $$
DECLARE
  v_report_id UUID;
  v_org_id UUID;
BEGIN
  -- Get or create organization
  SELECT id INTO v_org_id FROM organizations WHERE name = 'SIDEN Co., Ltd.' LIMIT 1;
  IF v_org_id IS NULL THEN
    INSERT INTO organizations (name) VALUES ('SIDEN Co., Ltd.') RETURNING id INTO v_org_id;
  END IF;
  
  -- Get or create annual report
  SELECT id INTO v_report_id FROM annual_reports WHERE year = 2024 LIMIT 1;
  IF v_report_id IS NULL THEN
    INSERT INTO annual_reports (organization_id, year, base_year, status, total_scope1, total_scope2, total_scope3)
    VALUES (v_org_id, 2024, 2023, 'draft', 0, 0, 0) RETURNING id INTO v_report_id;
  END IF;
  
  -- Create additional emission factors for more variety
  INSERT INTO emission_factors (activity_name_th, activity_name_en, scope, category_code, unit, co2_factor, ch4_factor, n2o_factor, co2e_factor, source, source_version, reference_year, applicable_region, is_active) VALUES
  ('การเดินทางทางอากาศ (ในประเทศ)', 'Domestic Air Travel', 3, 'S3.TRAVEL.AIR_DOMESTIC', 'km', 0, 0, 0, 0.255, 'IPCC', 'AR4', 2006, 'Thailand', true),
  ('การเดินทางทางอากาศ (ระหว่างประเทศ)', 'International Air Travel', 3, 'S3.TRAVEL.AIR_INTERNATIONAL', 'km', 0, 0, 0, 0.285, 'IPCC', 'AR4', 2006, 'Thailand', true),
  ('การเดินทางโดยรถยนต์', 'Car Travel', 3, 'S3.TRAVEL.CAR', 'km', 0, 0, 0, 0.192, 'IPCC', 'AR4', 2006, 'Thailand', true),
  ('การเดินทางโดยรถประจำทาง', 'Bus Travel', 3, 'S3.TRAVEL.BUS', 'km', 0, 0, 0, 0.089, 'IPCC', 'AR4', 2006, 'Thailand', true),
  ('การเดินทางโดยรถไฟ', 'Train Travel', 3, 'S3.TRAVEL.TRAIN', 'km', 0, 0, 0, 0.041, 'IPCC', 'AR4', 2006, 'Thailand', true),
  ('การขนส่งสินค้า (รถบรรทุก)', 'Freight Transport (Truck)', 3, 'S3.TRANSPORT.FREIGHT_TRUCK', 'tonne-km', 0, 0, 0, 0.165, 'IPCC', 'AR4', 2006, 'Thailand', true),
  ('การขนส่งสินค้า (เรือ)', 'Freight Transport (Ship)', 3, 'S3.TRANSPORT.FREIGHT_SHIP', 'tonne-km', 0, 0, 0, 0.010, 'IPCC', 'AR4', 2006, 'Thailand', true),
  ('การจัดการขยะ (ฝังกลบ)', 'Waste Management (Landfill)', 3, 'S3.WASTE.LANDFILL', 'tonne', 0, 0, 0, 0.5, 'IPCC', 'AR4', 2006, 'Thailand', true),
  ('การจัดการขยะ (เผา)', 'Waste Management (Incineration)', 3, 'S3.WASTE.INCINERATION', 'tonne', 0, 0, 0, 0.3, 'IPCC', 'AR4', 2006, 'Thailand', true),
  ('การใช้น้ำ', 'Water Consumption', 3, 'S3.UTILITIES.WATER', 'm3', 0, 0, 0, 0.0004, 'IPCC', 'AR4', 2006, 'Thailand', true)
  ON CONFLICT DO NOTHING;
  
  -- Create emission activities
  INSERT INTO emission_activities (scope, code, name_th, name_en, default_unit) VALUES
  (3, 'TRAVEL_AIR_DOM', 'การเดินทางทางอากาศ (ในประเทศ)', 'Domestic Air Travel', 'km'),
  (3, 'TRAVEL_AIR_INT', 'การเดินทางทางอากาศ (ระหว่างประเทศ)', 'International Air Travel', 'km'),
  (3, 'TRAVEL_CAR', 'การเดินทางโดยรถยนต์', 'Car Travel', 'km'),
  (3, 'TRAVEL_BUS', 'การเดินทางโดยรถประจำทาง', 'Bus Travel', 'km'),
  (3, 'TRAVEL_TRAIN', 'การเดินทางโดยรถไฟ', 'Train Travel', 'km'),
  (3, 'FREIGHT_TRUCK', 'การขนส่งสินค้า (รถบรรทุก)', 'Freight Transport (Truck)', 'tonne-km'),
  (3, 'FREIGHT_SHIP', 'การขนส่งสินค้า (เรือ)', 'Freight Transport (Ship)', 'tonne-km'),
  (3, 'WASTE_LANDFILL', 'การจัดการขยะ (ฝังกลบ)', 'Waste Management (Landfill)', 'tonne'),
  (3, 'WASTE_INCINERATION', 'การจัดการขยะ (เผา)', 'Waste Management (Incineration)', 'tonne'),
  (3, 'WATER_CONSUMPTION', 'การใช้น้ำ', 'Water Consumption', 'm3')
  ON CONFLICT (code) DO NOTHING;
  
  -- Link activities to emission factors
  INSERT INTO emission_activity_factors (activity_id, emission_factor_id, is_default) 
  SELECT a.id, ef.id, true
  FROM emission_activities a
  JOIN emission_factors ef ON ef.activity_name_th = a.name_th
  WHERE a.scope = 3
  ON CONFLICT DO NOTHING;
  
  RAISE NOTICE 'Created additional emission factors and activities';
END $$;

-- Generate 15 additional realistic annual_emissions with monthly data
DO $$
DECLARE
  v_report_id UUID;
  activity_record RECORD;
  emission_factor_record RECORD;
  month_index INTEGER;
  month_year DATE;
  annual_quantity NUMERIC;
  monthly_quantity NUMERIC;
  seasonal_factor NUMERIC;
  random_factor NUMERIC;
  co2e_factor NUMERIC;
  unit_name TEXT;
  activity_id UUID;
  emission_factor_id UUID;
  annual_co2e NUMERIC;
  counter INTEGER := 0;
BEGIN
  -- Get the annual report ID
  SELECT id INTO v_report_id FROM annual_reports WHERE year = 2024 LIMIT 1;
  
  -- Define realistic activity patterns
  FOR activity_record IN 
    SELECT 
      a.id as activity_id,
      a.name_th,
      a.scope,
      a.default_unit,
      ef.id as emission_factor_id,
      ef.co2e_factor,
      ef.unit,
      ef.activity_name_th as ef_name
    FROM emission_activities a
    JOIN emission_activity_factors eaf ON eaf.activity_id = a.id AND eaf.is_default = true
    JOIN emission_factors ef ON ef.id = eaf.emission_factor_id
    WHERE a.scope = 3
    ORDER BY a.id
    LIMIT 10
  LOOP
    counter := counter + 1;
    activity_id := activity_record.activity_id;
    emission_factor_id := activity_record.emission_factor_id;
    co2e_factor := activity_record.co2e_factor;
    unit_name := activity_record.unit;
    
    -- Generate realistic annual quantity based on activity type
    annual_quantity := CASE activity_record.name_th
      WHEN 'การเดินทางทางอากาศ (ในประเทศ)' THEN 5000 + (RANDOM() * 10000)  -- 5,000-15,000 km
      WHEN 'การเดินทางทางอากาศ (ระหว่างประเทศ)' THEN 2000 + (RANDOM() * 8000)  -- 2,000-10,000 km
      WHEN 'การเดินทางโดยรถยนต์' THEN 10000 + (RANDOM() * 20000)  -- 10,000-30,000 km
      WHEN 'การเดินทางโดยรถประจำทาง' THEN 5000 + (RANDOM() * 15000)  -- 5,000-20,000 km
      WHEN 'การเดินทางโดยรถไฟ' THEN 3000 + (RANDOM() * 7000)  -- 3,000-10,000 km
      WHEN 'การขนส่งสินค้า (รถบรรทุก)' THEN 1000 + (RANDOM() * 4000)  -- 1,000-5,000 tonne-km
      WHEN 'การขนส่งสินค้า (เรือ)' THEN 5000 + (RANDOM() * 15000)  -- 5,000-20,000 tonne-km
      WHEN 'การจัดการขยะ (ฝังกลบ)' THEN 50 + (RANDOM() * 200)  -- 50-250 tonnes
      WHEN 'การจัดการขยะ (เผา)' THEN 20 + (RANDOM() * 80)  -- 20-100 tonnes
      WHEN 'การใช้น้ำ' THEN 1000 + (RANDOM() * 5000)  -- 1,000-6,000 m3
      ELSE 1000 + (RANDOM() * 5000)
    END;
    
    annual_co2e := annual_quantity * co2e_factor;
    
    -- Create annual emission record
    INSERT INTO annual_emissions (
      annual_report_id, activity_id, emission_factor_id, quantity, co2_equivalent, 
      evidence_source, responsible_person, submission_status
    ) VALUES (
      v_report_id, activity_id, emission_factor_id, annual_quantity, annual_co2e,
      'seed_data', 'ระบบ', 'pending'
    ) ON CONFLICT DO NOTHING;
    
    -- Generate monthly data with realistic seasonal patterns
    FOR month_index IN 0..11 LOOP
      month_year := DATE('2024-01-01') + (month_index || ' months')::INTERVAL;
      
      -- Calculate seasonal factors based on activity type
      seasonal_factor := CASE 
        WHEN activity_record.name_th LIKE '%การเดินทาง%' THEN
          CASE month_index
            WHEN 0 THEN 0.7   -- January: Low travel
            WHEN 1 THEN 0.8   -- February: Still low
            WHEN 2 THEN 1.1   -- March: Spring travel
            WHEN 3 THEN 1.3   -- April: Songkran travel
            WHEN 4 THEN 1.2   -- May: Good weather
            WHEN 5 THEN 1.4   -- June: Summer travel
            WHEN 6 THEN 1.5   -- July: Peak summer
            WHEN 7 THEN 1.4   -- August: Summer travel
            WHEN 8 THEN 1.1   -- September: Back to school
            WHEN 9 THEN 1.0   -- October: Normal
            WHEN 10 THEN 0.9  -- November: Slight decrease
            WHEN 11 THEN 0.8  -- December: Holiday preparation
          END
        WHEN activity_record.name_th LIKE '%ขนส่ง%' THEN
          CASE month_index
            WHEN 0 THEN 0.8   -- January: Post-holiday low
            WHEN 1 THEN 0.9   -- February: Still low
            WHEN 2 THEN 1.1   -- March: Business pickup
            WHEN 3 THEN 1.2   -- April: Pre-Songkran rush
            WHEN 4 THEN 1.3   -- May: High activity
            WHEN 5 THEN 1.4   -- June: Peak season
            WHEN 6 THEN 1.3   -- July: High but stable
            WHEN 7 THEN 1.2   -- August: Slight decrease
            WHEN 8 THEN 1.1   -- September: Normal
            WHEN 9 THEN 1.0   -- October: Normal
            WHEN 10 THEN 1.1  -- November: Pre-holiday
            WHEN 11 THEN 1.2  -- December: Holiday rush
          END
        WHEN activity_record.name_th LIKE '%ขยะ%' THEN
          CASE month_index
            WHEN 0 THEN 1.1   -- January: Post-holiday waste
            WHEN 1 THEN 1.0   -- February: Normal
            WHEN 2 THEN 1.0   -- March: Normal
            WHEN 3 THEN 1.2   -- April: Songkran waste
            WHEN 4 THEN 1.1   -- May: Normal
            WHEN 5 THEN 1.0   -- June: Normal
            WHEN 6 THEN 1.0   -- July: Normal
            WHEN 7 THEN 1.0   -- August: Normal
            WHEN 8 THEN 1.0   -- September: Normal
            WHEN 9 THEN 1.0   -- October: Normal
            WHEN 10 THEN 1.0  -- November: Normal
            WHEN 11 THEN 1.3  -- December: Holiday waste
          END
        ELSE 1.0  -- Default: no seasonal variation
      END;
      
      -- Add random variation (±15%)
      random_factor := 0.85 + (RANDOM() * 0.3);
      
      -- Calculate monthly quantity
      monthly_quantity := (annual_quantity / 12.0) * seasonal_factor * random_factor;
      monthly_quantity := ROUND(monthly_quantity, 2);
      
      -- Insert monthly record
      INSERT INTO monthly_emissions_records (
        annual_report_id, activity_id, emission_factor_id, month_index, month_year,
        quantity, co2_equivalent, unit
      ) VALUES (
        v_report_id, activity_id, emission_factor_id, month_index, month_year,
        monthly_quantity, monthly_quantity * co2e_factor, unit_name
      ) ON CONFLICT (annual_report_id, activity_id, emission_factor_id, month_index) DO NOTHING;
      
    END LOOP;
    
    RAISE NOTICE 'Created emission %: % (%.2f %s)', counter, activity_record.name_th, annual_quantity, unit_name;
  END LOOP;
  
  RAISE NOTICE 'Generated % additional annual emissions with monthly data', counter;
END $$;

-- Update annual report totals
DO $$
DECLARE
  v_report_id UUID;
  scope1_total NUMERIC;
  scope2_total NUMERIC;
  scope3_total NUMERIC;
BEGIN
  SELECT id INTO v_report_id FROM annual_reports WHERE year = 2024 LIMIT 1;
  
  -- Calculate totals from annual_emissions
  SELECT 
    COALESCE(SUM(CASE WHEN ef.scope = 1 THEN ae.co2_equivalent END), 0),
    COALESCE(SUM(CASE WHEN ef.scope = 2 THEN ae.co2_equivalent END), 0),
    COALESCE(SUM(CASE WHEN ef.scope = 3 THEN ae.co2_equivalent END), 0)
  INTO scope1_total, scope2_total, scope3_total
  FROM annual_emissions ae
  JOIN emission_factors ef ON ef.id = ae.emission_factor_id
  WHERE ae.annual_report_id = v_report_id;
  
  -- Update annual report
  UPDATE annual_reports 
  SET total_scope1 = scope1_total, total_scope2 = scope2_total, total_scope3 = scope3_total
  WHERE id = v_report_id;
  
  RAISE NOTICE 'Updated annual report totals: S1=%.2f, S2=%.2f, S3=%.2f', scope1_total, scope2_total, scope3_total;
END $$;

-- Show final statistics
SELECT 
  'Annual Emissions' as metric,
  COUNT(*) as count,
  ROUND(SUM(quantity), 2) as total_quantity,
  ROUND(SUM(co2_equivalent), 2) as total_co2e
FROM annual_emissions
UNION ALL
SELECT 
  'Monthly Records' as metric,
  COUNT(*) as count,
  ROUND(SUM(quantity), 2) as total_quantity,
  ROUND(SUM(co2_equivalent), 2) as total_co2e
FROM monthly_emissions_records;
