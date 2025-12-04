-- Master data seed for CFO Beta App (idempotent, destructive for dev)
-- Run after 01_schema.sql

TRUNCATE TABLE emission_activity_factors RESTART IDENTITY CASCADE;
TRUNCATE TABLE emission_activities RESTART IDENTITY CASCADE;
TRUNCATE TABLE emission_factors RESTART IDENTITY CASCADE;
TRUNCATE TABLE organizations RESTART IDENTITY CASCADE;

-- Organization
INSERT INTO organizations (name) VALUES ('SIDEN Co., Ltd.') ON CONFLICT DO NOTHING;

-- Scope 2: TGO grid EF (with source_version)
INSERT INTO emission_factors (
  activity_name_th, activity_name_en, scope, category_code, unit,
  co2_factor, ch4_factor, n2o_factor, co2e_factor, source, source_version, reference_year,
  applicable_region, is_active
) VALUES (
  'ไฟฟ้าจากโครงข่าย (ประเทศไทย)', 'Grid Electricity (Thailand)', 2, 'S2.ELECTRICITY.TH', 'kWh',
  0.0000, 0.0000, 0.0000, 0.4590, 'TGO', '2023', 2023,
  'Thailand', true
) ON CONFLICT DO NOTHING;

-- Scope 1 core
INSERT INTO emission_factors (
  activity_name_th, activity_name_en, scope, category_code, unit,
  co2_factor, ch4_factor, n2o_factor, co2e_factor, source, source_version, reference_year,
  applicable_region, is_active
) VALUES
 ('ดีเซล (การเผาไหม้)', 'Diesel (Combustion)', 1, 'S1.STATIONARY.DIESEL', 'litre', 2.676, 0.0001, 0.0001, 2.68, 'IPCC', 'AR4', 2006, 'Thailand', true),
 ('โรงแรม (ต่อคืน)', 'Hotel stay (per night)', 3, 'S3.SERVICES.HOTEL', 'night', 0, 0, 0, 15.0, 'IPCC', 'AR4', 2019, 'Thailand', true)
ON CONFLICT DO NOTHING;

-- Additional EF seeds
-- Scope 1 (20 total across two blocks)
INSERT INTO emission_factors (activity_name_th, activity_name_en, scope, category_code, unit, co2_factor, ch4_factor, n2o_factor, co2e_factor, source, source_version, reference_year, applicable_region, is_active) VALUES
 ('ก๊าซธรรมชาติ (การเผาไหม้)', 'Natural Gas (Combustion)', 1, 'S1.NATURAL_GAS', 'm3', 1.90, 0.0000, 0.0000, 2.00, 'IPCC', 'AR4', 2006, 'Thailand', true),
 ('เบนซิน ยานยนต์', 'Gasoline - Vehicles', 1, 'S1.GASOLINE_VEHICLE', 'litre', 2.28, 0.0000, 0.0000, 2.31, 'IPCC', 'AR4', 2006, 'Thailand', true),
 ('ดีเซล ยานยนต์', 'Diesel - Vehicles', 1, 'S1.DIESEL_VEHICLE', 'litre', 2.64, 0.0000, 0.0000, 2.68, 'IPCC', 'AR4', 2006, 'Thailand', true),
 ('LPG โฟล์คลิฟท์', 'LPG - Forklift', 1, 'S1.LPG_FORKLIFT', 'kg', 1.51, 0.0000, 0.0000, 1.53, 'IPCC', 'AR4', 2006, 'Thailand', true),
 ('สารทำความเย็น R-410A', 'Refrigerant R-410A', 1, 'S1.REFRIG_R410A', 'kg', 0, 0, 0, 2088.0, 'IPCC', 'AR4', 2007, 'Thailand', true),
 ('สารทำความเย็น R-134a', 'Refrigerant R-134a', 1, 'S1.REFRIG_R134A', 'kg', 0, 0, 0, 1430.0, 'IPCC', 'AR4', 2007, 'Thailand', true),
 ('น้ำมันเตา', 'Fuel Oil', 1, 'S1.FUEL_OIL', 'litre', 3.11, 0.0000, 0.0000, 3.14, 'IPCC', 'AR4', 2006, 'Thailand', true),
 ('ถ่านหิน', 'Coal Combustion', 1, 'S1.COAL', 'kg', 2.42, 0.0000, 0.0000, 2.50, 'IPCC', 'AR4', 2006, 'Thailand', true),
 ('ชีวมวล', 'Biomass Combustion', 1, 'S1.BIOMASS', 'kg', 0.10, 0.0000, 0.0000, 0.10, 'IPCC', 'AR4', 2006, 'Thailand', true),
 ('บ่อบำบัดน้ำเสีย (มีเทน)', 'Wastewater CH4', 1, 'S1.WASTEWATER', 'm3', 0, 0, 0, 0.80, 'IPCC', 'AR4', 2006, 'Thailand', true)
ON CONFLICT DO NOTHING;

INSERT INTO emission_factors (activity_name_th, activity_name_en, scope, category_code, unit, co2_factor, ch4_factor, n2o_factor, co2e_factor, source, source_version, reference_year, applicable_region, is_active) VALUES
 ('LPG (การเผาไหม้แบบอยู่กับที่)', 'LPG (Stationary Combustion)', 1, 'S1.LPG_STATIONARY', 'kg', 1.51, 0.0000, 0.0000, 1.53, 'IPCC', 'AR4', 2006, 'Thailand', true),
 ('ก๊าด (เคอโรซีน)', 'Kerosene', 1, 'S1.KEROSENE', 'litre', 2.41, 0.0000, 0.0000, 2.43, 'IPCC', 'AR4', 2006, 'Thailand', true),
 ('โพรเพน', 'Propane', 1, 'S1.PROPANE', 'kg', 1.50, 0.0000, 0.0000, 1.52, 'IPCC', 'AR4', 2006, 'Thailand', true),
 ('บิวเทน', 'Butane', 1, 'S1.BUTANE', 'kg', 1.66, 0.0000, 0.0000, 1.70, 'IPCC', 'AR4', 2006, 'Thailand', true),
 ('แก๊สโซฮอล์ E10', 'Ethanol Blend E10', 1, 'S1.ETHANOL_E10', 'litre', 2.10, 0.0000, 0.0000, 2.12, 'IPCC', 'AR4', 2006, 'Thailand', true),
 ('สารทำความเย็น R-32', 'Refrigerant R-32', 1, 'S1.REFRIG_R32', 'kg', 0, 0, 0, 675.0, 'IPCC', 'AR4', 2007, 'Thailand', true),
 ('สารทำความเย็น R-22', 'Refrigerant R-22', 1, 'S1.REFRIG_R22', 'kg', 0, 0, 0, 1810.0, 'IPCC', 'AR4', 2007, 'Thailand', true),
 ('สารทำความเย็น R-407C', 'Refrigerant R-407C', 1, 'S1.REFRIG_R407C', 'kg', 0, 0, 0, 1774.0, 'IPCC', 'AR4', 2007, 'Thailand', true),
 ('สารทำความเย็น R-404A', 'Refrigerant R-404A', 1, 'S1.REFRIG_R404A', 'kg', 0, 0, 0, 3922.0, 'IPCC', 'AR4', 2007, 'Thailand', true),
 ('ปูนขาว (CaCO3 → CaO)', 'Lime Production (Process CO2)', 1, 'S1.PROCESS_LIME', 'ton', 0, 0, 0, 790.0, 'IPCC', 'AR4', 2006, 'Thailand', true)
ON CONFLICT DO NOTHING;

-- Scope 1 TGO variants for demo (to ensure TGO shows for S1 activities as well)
INSERT INTO emission_factors (activity_name_th, activity_name_en, scope, category_code, unit, co2_factor, ch4_factor, n2o_factor, co2e_factor, source, source_version, reference_year, applicable_region, is_active) VALUES
 ('ดีเซล (การเผาไหม้) - TGOเทียบเท่า', 'Diesel (Combustion) - TGO equivalent', 1, 'S1.STATIONARY.DIESEL', 'litre', 2.676, 0.0001, 0.0001, 2.68, 'TGO', '2023', 2023, 'Thailand', true),
 ('ก๊าซธรรมชาติ (การเผาไหม้) - TGOเทียบเท่า', 'Natural Gas (Combustion) - TGO equivalent', 1, 'S1.NATURAL_GAS', 'm3', 1.90, 0.0000, 0.0000, 2.00, 'TGO', '2023', 2023, 'Thailand', true),
 ('LPG (อยู่กับที่) - TGOเทียบเท่า', 'LPG (Stationary) - TGO equivalent', 1, 'S1.LPG_STATIONARY', 'kg', 1.51, 0.0000, 0.0000, 1.53, 'TGO', '2023', 2023, 'Thailand', true),
 ('น้ำมันเตา - TGOเทียบเท่า', 'Fuel Oil - TGO equivalent', 1, 'S1.FUEL_OIL', 'litre', 3.11, 0.0000, 0.0000, 3.14, 'TGO', '2023', 2023, 'Thailand', true),
 ('ถ่านหิน - TGOเทียบเท่า', 'Coal - TGO equivalent', 1, 'S1.COAL', 'kg', 2.42, 0.0000, 0.0000, 2.50, 'TGO', '2023', 2023, 'Thailand', true),
 ('ชีวมวล - TGOเทียบเท่า', 'Biomass - TGO equivalent', 1, 'S1.BIOMASS', 'kg', 0.10, 0.0000, 0.0000, 0.10, 'TGO', '2023', 2023, 'Thailand', true)
ON CONFLICT DO NOTHING;

-- Scope 2 (10 including TGO and custom)
INSERT INTO emission_factors (activity_name_th, activity_name_en, scope, category_code, unit, co2_factor, ch4_factor, n2o_factor, co2e_factor, source, source_version, reference_year, applicable_region, is_active) VALUES
 ('ไฟฟ้า MEA', 'Electricity (MEA)', 2, 'S2.ELECTRICITY.MEA', 'kWh', 0, 0, 0, 0.500, 'TGO', '2023', 2023, 'Thailand', true),
 ('ไฟฟ้า PEA', 'Electricity (PEA)', 2, 'S2.ELECTRICITY.PEA', 'kWh', 0, 0, 0, 0.480, 'TGO', '2023', 2023, 'Thailand', true),
 ('ไฟฟ้า Wheeling', 'Electricity (Wheeled)', 2, 'S2.ELECTRICITY.WHEELED', 'kWh', 0, 0, 0, 0.430, 'Supplier', 'v1', 2023, 'Thailand', true),
 ('ไฟฟ้าพลังงานหมุนเวียน', 'Electricity (Renewable)', 2, 'S2.ELECTRICITY.RENEWABLE', 'kWh', 0, 0, 0, 0.050, 'TGO', '2023', 2023, 'Thailand', true),
 ('โซลาร์เซลล์ (ในสถานที่)', 'Solar PV (On-site)', 2, 'S2.SOLAR_PV', 'kWh', 0, 0, 0, 0.020, 'Factory', 'v1', 2023, 'Thailand', true),
 ('ไอน้ำ (รับซื้อ)', 'Purchased Steam', 2, 'S2.PURCHASED.STEAM', 'kg', 0, 0, 0, 0.180, 'Supplier', 'v1', 2023, 'Thailand', true),
 ('ความร้อน (รับซื้อ)', 'Purchased Heat', 2, 'S2.PURCHASED.HEAT', 'MJ', 0, 0, 0, 0.060, 'Supplier', 'v1', 2023, 'Thailand', true),
 ('น้ำเย็น (รับซื้อ)', 'Purchased Chilled Water', 2, 'S2.PURCHASED.CHILLED_WATER', 'ton-hr', 0, 0, 0, 0.180, 'Supplier', 'v1', 2023, 'Thailand', true),
 ('ไฟฟ้า (UPS)', 'Electricity (UPS)', 2, 'S2.ELECTRICITY.UPS', 'kWh', 0, 0, 0, 0.520, 'TGO', '2023', 2023, 'Thailand', true),
 ('ไฟฟ้า (ดาต้าเซ็นเตอร์)', 'Electricity (Data Center)', 2, 'S2.ELECTRICITY.DC', 'kWh', 0, 0, 0, 0.600, 'TGO', '2023', 2023, 'Thailand', true)
ON CONFLICT DO NOTHING;

-- Scope 3 (10)
INSERT INTO emission_factors (activity_name_th, activity_name_en, scope, category_code, unit, co2_factor, ch4_factor, n2o_factor, co2e_factor, source, source_version, reference_year, applicable_region, is_active) VALUES
 ('เครื่องบิน ระยะสั้น', 'Air Travel - Short Haul', 3, 'S3.AIR.SHORT', 'passenger-km', 0, 0, 0, 0.160, 'IPCC', 'AR4', 2019, 'Global', true),
 ('เครื่องบิน ระยะไกล', 'Air Travel - Long Haul', 3, 'S3.AIR.LONG', 'passenger-km', 0, 0, 0, 0.110, 'IPCC', 'AR4', 2019, 'Global', true),
 ('รถไฟ', 'Rail', 3, 'S3.RAIL', 'passenger-km', 0, 0, 0, 0.040, 'IPCC', 'AR4', 2019, 'Global', true),
 ('แท็กซี่', 'Taxi', 3, 'S3.TAXI', 'km', 0, 0, 0, 0.200, 'IPCC', 'AR4', 2019, 'Global', true),
 ('พนักงานเดินทาง', 'Employee Commute', 3, 'S3.COMMUTE', 'km', 0, 0, 0, 0.150, 'IPCC', 'AR4', 2019, 'Global', true),
 ('ขนส่งขาเข้า (รถบรรทุก)', 'Inbound Freight - Truck', 3, 'S3.FREIGHT.IN', 'ton-km', 0, 0, 0, 0.100, 'IPCC', 'AR4', 2019, 'Global', true),
 ('ขนส่งขาออก (รถบรรทุก)', 'Outbound Freight - Truck', 3, 'S3.FREIGHT.OUT', 'ton-km', 0, 0, 0, 0.110, 'IPCC', 'AR4', 2019, 'Global', true),
 ('น้ำประปา', 'Water Supply', 3, 'S3.WATER', 'm3', 0, 0, 0, 0.344, 'TGO', '2019', 2019, 'Global', true),
 ('ขยะทั่วไป', 'Waste - General', 3, 'S3.WASTE.GENERAL', 'kg', 0, 0, 0, 1.80, 'TGO', '2019', 2019, 'Global', true),
 ('บริการไอที', 'IT Services', 3, 'S3.IT.SERVICES', 'USD', 0, 0, 0, 0.100, 'IPCC', 'AR4', 2019, 'Global', true)
ON CONFLICT DO NOTHING;

-- Activities for all EF codes
INSERT INTO emission_activities (scope, code, name_th, name_en, default_unit) VALUES
 (2, 'S2.ELECTRICITY', 'ไฟฟ้า', 'Electricity', 'kWh'),
 (1, 'S1.DIESEL', 'ดีเซล (การเผาไหม้)', 'Diesel (Combustion)', 'litre'),
 (3, 'S3.HOTEL', 'โรงแรม', 'Hotel stay', 'night'),
 (1, 'S1.NATURAL_GAS', 'ก๊าซธรรมชาติ (การเผาไหม้)', 'Natural Gas (Combustion)', 'm3'),
 (1, 'S1.GASOLINE_VEHICLE', 'เบนซิน ยานยนต์', 'Gasoline - Vehicles', 'litre'),
 (1, 'S1.DIESEL_VEHICLE', 'ดีเซล ยานยนต์', 'Diesel - Vehicles', 'litre'),
 (1, 'S1.LPG_FORKLIFT', 'LPG โฟล์คลิฟท์', 'LPG - Forklift', 'kg'),
 (1, 'S1.REFRIG_R410A', 'สารทำความเย็น R-410A', 'Refrigerant R-410A', 'kg'),
 (1, 'S1.REFRIG_R134A', 'สารทำความเย็น R-134a', 'Refrigerant R-134a', 'kg'),
 (1, 'S1.FUEL_OIL', 'น้ำมันเตา', 'Fuel Oil', 'litre'),
 (1, 'S1.COAL', 'ถ่านหิน', 'Coal Combustion', 'kg'),
 (1, 'S1.BIOMASS', 'ชีวมวล', 'Biomass Combustion', 'kg'),
 (1, 'S1.WASTEWATER', 'บ่อบำบัดน้ำเสีย (มีเทน)', 'Wastewater CH4', 'm3'),
 (1, 'S1.LPG_STATIONARY', 'LPG (การเผาไหม้แบบอยู่กับที่)', 'LPG (Stationary Combustion)', 'kg'),
 (1, 'S1.KEROSENE', 'ก๊าด (เคอโรซีน)', 'Kerosene', 'litre'),
 (1, 'S1.PROPANE', 'โพรเพน', 'Propane', 'kg'),
 (1, 'S1.BUTANE', 'บิวเทน', 'Butane', 'kg'),
 (1, 'S1.ETHANOL_E10', 'แก๊สโซฮอล์ E10', 'Ethanol Blend E10', 'litre'),
 (1, 'S1.REFRIG_R32', 'สารทำความเย็น R-32', 'Refrigerant R-32', 'kg'),
 (1, 'S1.REFRIG_R22', 'สารทำความเย็น R-22', 'Refrigerant R-22', 'kg'),
 (1, 'S1.REFRIG_R407C', 'สารทำความเย็น R-407C', 'Refrigerant R-407C', 'kg'),
 (1, 'S1.REFRIG_R404A', 'สารทำความเย็น R-404A', 'Refrigerant R-404A', 'kg'),
 (1, 'S1.PROCESS_LIME', 'ปูนขาว (CaCO3 → CaO)', 'Lime Production (Process CO2)', 'ton'),
 (2, 'S2.ELECTRICITY.MEA', 'ไฟฟ้า MEA', 'Electricity (MEA)', 'kWh'),
 (2, 'S2.ELECTRICITY.PEA', 'ไฟฟ้า PEA', 'Electricity (PEA)', 'kWh'),
 (2, 'S2.ELECTRICITY.WHEELED', 'ไฟฟ้า Wheeling', 'Electricity (Wheeled)', 'kWh'),
 (2, 'S2.ELECTRICITY.RENEWABLE', 'ไฟฟ้าพลังงานหมุนเวียน', 'Electricity (Renewable)', 'kWh'),
 (2, 'S2.SOLAR_PV', 'โซลาร์เซลล์ (ในสถานที่)', 'Solar PV (On-site)', 'kWh'),
 (2, 'S2.PURCHASED.STEAM', 'ไอน้ำ (รับซื้อ)', 'Purchased Steam', 'kg'),
 (2, 'S2.PURCHASED.HEAT', 'ความร้อน (รับซื้อ)', 'Purchased Heat', 'MJ'),
 (2, 'S2.PURCHASED.CHILLED_WATER', 'น้ำเย็น (รับซื้อ)', 'Purchased Chilled Water', 'ton-hr'),
 (2, 'S2.ELECTRICITY.UPS', 'ไฟฟ้า (UPS)', 'Electricity (UPS)', 'kWh'),
 (2, 'S2.ELECTRICITY.DC', 'ไฟฟ้า (ดาต้าเซ็นเตอร์)', 'Electricity (Data Center)', 'kWh'),
 (3, 'S3.AIR.SHORT', 'เครื่องบิน ระยะสั้น', 'Air Travel - Short Haul', 'passenger-km'),
 (3, 'S3.AIR.LONG', 'เครื่องบิน ระยะไกล', 'Air Travel - Long Haul', 'passenger-km'),
 (3, 'S3.RAIL', 'รถไฟ', 'Rail', 'passenger-km'),
 (3, 'S3.TAXI', 'แท็กซี่', 'Taxi', 'km'),
 (3, 'S3.COMMUTE', 'พนักงานเดินทาง', 'Employee Commute', 'km'),
 (3, 'S3.FREIGHT.IN', 'ขนส่งขาเข้า (รถบรรทุก)', 'Inbound Freight - Truck', 'ton-km'),
 (3, 'S3.FREIGHT.OUT', 'ขนส่งขาออก (รถบรรทุก)', 'Outbound Freight - Truck', 'ton-km'),
 (3, 'S3.WATER', 'น้ำประปา', 'Water Supply', 'm3'),
 (3, 'S3.WASTE.GENERAL', 'ขยะทั่วไป', 'Waste - General', 'kg'),
 (3, 'S3.IT.SERVICES', 'บริการไอที', 'IT Services', 'USD')
ON CONFLICT (code) DO NOTHING;

-- Map activities to default factors (match by code)
INSERT INTO emission_activity_factors (activity_id, emission_factor_id, is_default)
SELECT a.id, ef.id, true
FROM emission_activities a
JOIN emission_factors ef ON ef.category_code = a.code
ON CONFLICT DO NOTHING;


