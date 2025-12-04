-- Seed an initial annual report and corresponding monthly data, then roll up into annual_emissions
-- Run order: 01_schema.sql -> 02_seed_master_data.sql -> 03_create_monthly_emissions.sql -> 04_seed_first_report.sql

-- Destructive reset for idempotent report seeding (dev only)
TRUNCATE TABLE annual_emissions RESTART IDENTITY CASCADE;
TRUNCATE TABLE monthly_emissions RESTART IDENTITY CASCADE;
TRUNCATE TABLE annual_reports RESTART IDENTITY CASCADE;


-- 2) Create an annual report for 2024 for the org
WITH org AS (
  SELECT id FROM organizations WHERE name = 'SIDEN Co., Ltd.' LIMIT 1
), ins AS (
  INSERT INTO annual_reports (organization_id, year, base_year, status, total_scope1, total_scope2, total_scope3)
  SELECT id, 2024, 2023, 'draft', 0, 0, 0 FROM org
  ON CONFLICT DO NOTHING
  RETURNING id
)
SELECT 1;

-- 3) Resolve report id
DO $$
DECLARE
  v_report_id UUID;
BEGIN
  SELECT ar.id INTO v_report_id
  FROM annual_reports ar
  JOIN organizations o ON o.id = ar.organization_id
  WHERE o.name = 'SIDEN Co., Ltd.' AND ar.year = 2024
  LIMIT 1;

  IF v_report_id IS NULL THEN
    RAISE EXCEPTION 'Annual report not found';
  END IF;

  -- 4) Select 30 activities (20 S1, 3 S2, 7 S3) via default mappings
  WITH ranked AS (
    SELECT 
      a.id AS activity_id,
      ef.id AS emission_factor_id,
      a.scope,
      ef.unit,
      a.code,
      ROW_NUMBER() OVER (PARTITION BY a.scope ORDER BY a.code) AS rn
    FROM emission_activities a
    JOIN emission_activity_factors eaf ON eaf.activity_id = a.id AND eaf.is_default = TRUE
    JOIN emission_factors ef ON ef.id = eaf.emission_factor_id
  ), sel AS (
    SELECT activity_id, emission_factor_id, scope, unit FROM ranked r
    WHERE (r.scope = 1 AND r.rn <= 20)
       OR (r.scope = 2 AND r.rn <= 3)
       OR (r.scope = 3 AND r.rn <= 7)
  )
  INSERT INTO monthly_emissions (
    annual_report_id, activity_id, emission_factor_id, unit,
    january_quantity, february_quantity, march_quantity, april_quantity, may_quantity, june_quantity,
    july_quantity, august_quantity, september_quantity, october_quantity, november_quantity, december_quantity
  )
  SELECT v_report_id, activity_id, emission_factor_id, unit,
         100, 100, 100, 100, 100, 100,
         100, 100, 100, 100, 100, 100
  FROM sel
  ON CONFLICT DO NOTHING;

  -- 5) Roll up monthly totals into annual_emissions with co2e using EF's co2e_factor
  -- total_quantity * ef.co2e_factor (assumes unit alignment)
  WITH monthly_totals AS (
    SELECT 
      me.activity_id,
      me.emission_factor_id,
      SUM(me.january_quantity + me.february_quantity + me.march_quantity + me.april_quantity + me.may_quantity + me.june_quantity +
          me.july_quantity + me.august_quantity + me.september_quantity + me.october_quantity + me.november_quantity + me.december_quantity
      ) AS total_qty
    FROM monthly_emissions me
    WHERE me.annual_report_id = v_report_id
    GROUP BY me.activity_id, me.emission_factor_id
  ), calc AS (
    SELECT 
      v_report_id AS annual_report_id,
      mt.activity_id,
      mt.emission_factor_id,
      mt.total_qty AS quantity,
      (mt.total_qty * ef.co2e_factor) AS co2_equivalent
    FROM monthly_totals mt
    JOIN emission_factors ef ON ef.id = mt.emission_factor_id
  )
  INSERT INTO annual_emissions (
    annual_report_id, activity_id, emission_factor_id, quantity, co2_equivalent, evidence_source, responsible_person, submission_status
  )
  SELECT annual_report_id, activity_id, emission_factor_id, quantity, co2_equivalent, 'seed', 'ระบบ', 'pending'
  FROM calc
  ON CONFLICT DO NOTHING;

  -- 6) Update annual report totals by scope
  WITH joined AS (
    SELECT ae.*, ef.scope FROM annual_emissions ae
    JOIN emission_factors ef ON ef.id = ae.emission_factor_id
    WHERE ae.annual_report_id = v_report_id
  ), sums AS (
    SELECT 
      COALESCE(SUM(CASE WHEN scope = 1 THEN co2_equivalent END), 0) AS s1,
      COALESCE(SUM(CASE WHEN scope = 2 THEN co2_equivalent END), 0) AS s2,
      COALESCE(SUM(CASE WHEN scope = 3 THEN co2_equivalent END), 0) AS s3
    FROM joined
  )
  UPDATE annual_reports ar
  SET total_scope1 = s.s1,
      total_scope2 = s.s2,
      total_scope3 = s.s3
  FROM sums s
  WHERE ar.id = v_report_id;
END $$;


