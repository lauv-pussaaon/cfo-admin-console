-- Generated TGO API fuels for admin SoT
-- version = TGO API
BEGIN;

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2e3febec-cdc1-5574-8d17-59ddc01e504c', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Natural Gas (NCV)', NULL, 'SCF', 0.05727759, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 0.057222, NULL, 0.00000102, 1.02e-7, 'TGO', 'TGO API', 'EF001-1', 6, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2c969976-87bd-596d-b949-b3dfe6821801', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Natural Gas (NCV)', NULL, 'MJ', 0.0561545, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 0.0561, NULL, 0.000001, 1e-7, 'TGO', 'TGO API', 'EF001-2', 7, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('79f3b028-dfec-55b2-abe5-38915b5e44f2', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Natural Gas (HHV)', NULL, 'MJ', 0.050151666, '2021 API Compendium, Table 4.3 &amp; Table 4.6', 0.0501, NULL, 9.48e-7, 9.48e-8, 'TGO', 'TGO API', 'EF001-3', 8, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('14de46ce-aa8d-512f-97b0-8a89182f8953', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Natural Gas (HHV)', NULL, 'MMBTU', 52.9545, '2021 API Compendium, Table 4.3 &amp; Table 4.6', 52.9, NULL, 0.001, 0.0001, 'TGO', 'TGO API', 'EF001-4', 9, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5c19d3da-484b-5b27-9f89-a70a90c495a1', 'a1000001-0001-4001-8001-000000000001'::uuid, 'LPG', NULL, 'Liter', 1.68117279, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.679722, NULL, 0.00002662, 0.000002662, 'TGO', 'TGO API', 'EF001-5', 10, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8e7fdd29-6ce5-52a9-bd1b-7e08f3ed63d2', 'a1000001-0001-4001-8001-000000000001'::uuid, 'LPG', NULL, 'kg', 3.11328294444444, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 3.1105962962963, NULL, 0.0000492962962962963, 0.00000492962962962963, 'TGO', 'TGO API', 'EF001-6', 11, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3c2eb3ef-632d-5ee9-b5f2-f208dae4611c', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Acetelyne', NULL, 'kg', 3.38461538461538, '2C2H2+502 &rarr; 4CO2+2H2O (MWC2H2 =26, MWCO2 =44)', 3.38461538461538, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF001-7', 12, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c351f392-6f1a-5721-a713-c4755a29f6e8', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Ethane', NULL, 'kg', 3.14285714285714, 'C2H4 + 3O2 --&gt; 2CO2 + 2H2O (MWC2H4 =28, MWCO2 =44)', 3.14285714285714, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF001-8', 13, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a743c939-eb50-556d-a856-c24b55a7d125', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Propane', NULL, 'kg', 3, 'C3H8+5O2&rarr;3CO2+4H2O (MWC3H8 =44, MWCO2 =44)', 3, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF001-9', 14, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4d29328e-51cb-5220-a5de-965c75db4826', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Butane', NULL, 'kg', 3.03448275862069, '2C4H10+ 1302 &rarr; 8CO2+10H2O (MWC4H10 =58, MWCO2 =44)', 3.03448275862069, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF001-10', 15, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ce511bee-e099-5a41-ab23-edb887bec5ce', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Fuel Oil A', NULL, 'Liter', 3.21977540460363, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 3.2096984443713, NULL, 0.0001244069164485, 0.0000248813832897, 'TGO', 'TGO API', 'EF001-11', 16, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('57ddafab-a33c-5256-9f44-629b574e5eff', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Fuel Oil C', NULL, 'Liter', 3.24549756405015, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 3.23534010094254, NULL, 0.0001254007791063, 0.00002508015582126, 'TGO', 'TGO API', 'EF001-12', 17, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a379f1a2-6745-509f-9c82-f9111b7d31cb', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Jet Kerosene', NULL, 'Liter', 2.47728579, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.468895, NULL, 0.00010359, 0.000020718, 'TGO', 'TGO API', 'EF001-13', 18, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('268854f2-55e2-595d-b7a6-513238655518', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Other Kerosene', NULL, 'Liter', 2.49109779, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.482707, NULL, 0.00010359, 0.000020718, 'TGO', 'TGO API', 'EF001-14', 19, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f87bd9b2-4d28-5ffb-a4a4-b2371a6a3c15', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Diesel', NULL, 'Liter', 2.70757206, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.698722, NULL, 0.00010926, 0.000021852, 'TGO', 'TGO API', 'EF001-15', 20, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5e1fc1c8-db7a-5f40-971e-768683e3bab4', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Gasoline', NULL, 'Liter', 2.18921364, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, NULL, 0.00009444, 0.000018888, 'TGO', 'TGO API', 'EF001-16', 21, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c6b90a0d-160f-5979-bb19-315e70f682b7', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Biodiesel', NULL, 'Liter', 1.64961846, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.643976, NULL, 0.00006966, 0.000013932, 'TGO', 'TGO API', 'EF001-17', 22, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c3697ecc-68cc-5af8-b446-dcff508f2369', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Bio-gasollne (Ethanol)', NULL, 'Liter', 1.501920063, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.4967828, NULL, 0.000063423, 0.0000126846, 'TGO', 'TGO API', 'EF001-18', 23, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f4547d95-7965-54aa-920e-2a2519e68850', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Diesel B7 (แบบคิด EF ของ Biofuel ด้วย)', NULL, 'Liter', 2.633515308, 'คิดที่สัดส่วนไบโอดีเซล (7%)', 2.62488978, NULL, 0.000106488, 0.0000212976, 'TGO', 'TGO API', 'EF001-19', 24, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9cc06196-41fe-5acd-bbc9-1091508fdf87', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Diesel B7: Report in Scope 1', NULL, 'Liter', 2.518436988, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 2.50981146, NULL, 0.000106488, 0.0000212976, 'TGO', 'TGO API', 'EF001-20', 25, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('76081edd-ac29-55bc-9ded-9d06c948944d', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Diesel B7: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.11507832, 'นับเฉพาะ CO2 จาก biofuel', 0.11507832, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF001-21', 26, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('624dd51e-1a96-5ae4-9804-b82482b27e29', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Diesel B20 (แบบคิด EF ของ Biofuel ด้วย)', NULL, 'Liter', 2.49598134, 'คิดที่สัดส่วนไบโอดีเซล (20%)', 2.4877728, NULL, 0.00010134, 0.000020268, 'TGO', 'TGO API', 'EF001-22', 27, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('dfd1f239-0729-5c6f-a2f4-ba6b5a079c3f', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Diesel B20: Report in Scope 1', NULL, 'Liter', 2.16718614, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 2.1589776, NULL, 0.00010134, 0.000020268, 'TGO', 'TGO API', 'EF001-23', 28, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1d3b1928-e3dd-5f8f-86ec-022d573a21b1', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Diesel B20: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.3287952, 'นับเฉพาะ CO2 จาก biofuel', 0.3287952, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF001-24', 29, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a2f01c48-cc3e-5c46-859a-073b24bea340', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Gasohol (E10)', NULL, 'Liter', 2.1204842823, 'คิดที่สัดส่วนเอทานอล (10%)', 2.11308588, NULL, 0.0000913383, 0.00001826766, 'TGO', 'TGO API', 'EF001-25', 30, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('edccb822-7d61-5ca0-9457-bf1e0fcf7628', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Gasohol E10: Report in Scope 1', NULL, 'Liter', 1.9708060023, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 1.9634076, NULL, 0.0000913383, 0.00001826766, 'TGO', 'TGO API', 'EF001-26', 31, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a3f3743b-4222-5677-9098-c1308011ac7a', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Gasohol E10: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.14967828, 'นับเฉพาะ CO2 จาก biofuel', 0.14967828, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF001-27', 32, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('19d138ac-2c77-5000-a1aa-94e21a251dc2', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Gasohol (E20)', NULL, 'Liter', 2.0517549246, 'คิดที่สัดส่วนเอทานอล (20%)', 2.04460776, NULL, 0.0000882366, 0.00001764732, 'TGO', 'TGO API', 'EF001-28', 33, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('66443102-358c-5097-ae5f-6631d1e72c53', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Gasohol E20: Report in Scope 1', NULL, 'Liter', 1.7523983646, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 1.7452512, NULL, 0.0000882366, 0.00001764732, 'TGO', 'TGO API', 'EF001-29', 34, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('128e6e4c-d394-552a-a21d-3362af9e4ee4', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Gasohol E20: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.29935656, 'นับเฉพาะ CO2 จาก biofuel', 0.29935656, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF001-30', 35, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('37d99afe-13e9-53de-87d1-bfe2566eb05b', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Gasohol (E85)', NULL, 'Liter', 1.60501409955, 'คิดที่สัดส่วนเอทานอล (85%)', 1.59949998, NULL, 0.00006807555, 0.00001361511, 'TGO', 'TGO API', 'EF001-31', 36, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2b2b7975-89c3-5816-88f4-69b3d15d08b5', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Gasohol E85: Report in Scope 1', NULL, 'Liter', 0.33274871955, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 0.3272346, NULL, 0.00006807555, 0.00001361511, 'TGO', 'TGO API', 'EF001-32', 37, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('466b7717-19cf-57f2-8555-ee223dd5ece6', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Gasohol E85: Report in Biogenic CO2 emissions', NULL, 'Liter', 1.27226538, 'นับเฉพาะ CO2 จาก biofuel', 1.27226538, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF001-33', 38, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('547c4766-918a-5c93-bc7e-5c3bf72a2e5d', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Lignite', NULL, 'kg', 1.20996225, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.2019, NULL, 0.000119, 0.00001785, 'TGO', 'TGO API', 'EF001-34', 39, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('cb1df35f-38b1-5223-a0b6-a87bd6885ef7', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Anthracite', NULL, 'kg', 3.1078935, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 3.08662, NULL, 0.000314, 0.0000471, 'TGO', 'TGO API', 'EF001-35', 40, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4a9a1309-8c24-5005-ad97-dcaedcc21b25', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Bituminous Coal', NULL, 'kg', 2.512467675, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.494602, NULL, 0.0002637, 0.000039555, 'TGO', 'TGO API', 'EF001-36', 41, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b03743da-5c6a-5a7d-b440-2cd690d4907d', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Coking Coal', NULL, 'kg', 2.632517325, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.613798, NULL, 0.0002763, 0.000041445, 'TGO', 'TGO API', 'EF001-37', 42, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e1070836-de6b-5a15-a651-c3aa081de420', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Fuel wood', NULL, 'kg', 1.821261, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.79088, NULL, 0.0004797, 0.00006396, 'TGO', 'TGO API', 'EF001-38', 43, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0de72854-3823-57d6-a84a-2d8f363b3f75', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Fuel wood: Report in Scope 1', NULL, 'kg', 0.030381, 'นับเฉพาะ CH4 และ N2O', NULL, NULL, 0.0004797, 0.00006396, 'TGO', 'TGO API', 'EF001-39', 44, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('547be753-d10d-5813-bd86-6ae6b53f4768', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Fuel wood: Report in Biogenic CO2 emissions', NULL, 'kg', 1.79088, 'นับเฉพาะ CO2 จาก biofuel', 1.79088, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF001-40', 45, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5b13df8c-241d-5c5f-8696-7a913c369220', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Saw dust', NULL, 'kg', 1.239232, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.21856, NULL, 0.0003264, 0.00004352, 'TGO', 'TGO API', 'EF001-41', 46, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5f810064-e794-5c7a-ae32-2e4f1be1b086', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Saw dust: Report in Scope 1', NULL, 'kg', 0.020672, 'นับเฉพาะ CH4 และ N2O', NULL, NULL, 0.0003264, 0.00004352, 'TGO', 'TGO API', 'EF001-42', 47, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f049ce5b-49a3-5111-a6aa-3700d29623e2', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Saw dust: Report in Biogenic CO2 emissions', NULL, 'kg', 1.21856, 'นับเฉพาะ CO2 จาก biofuel', 1.21856, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF001-43', 48, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8a1a3892-52c5-5254-abf8-de5f7e0c857f', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Charcoal', NULL, 'kg', 3.289432, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 3.23456, NULL, 0.0008664, 0.00011552, 'TGO', 'TGO API', 'EF001-44', 49, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('cad1dd5f-188e-5cac-9d2a-b4ed282e21d6', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Charcoal: Report in Scope 1', NULL, 'kg', 0.1923, 'นับเฉพาะ CH4 และ N2O', NULL, NULL, 0.0058, 0.00011552, 'TGO', 'TGO API', 'EF001-45', 50, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('aafa6913-5c76-5be2-8272-38bfb706f63f', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Charcoal: Report in Biogenic CO2 emissions', NULL, 'kg', 3.23456, 'นับเฉพาะ CO2 จาก biofuel', 3.23456, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF001-46', 51, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('50f2eaee-96df-56ce-8f89-2f4bfe6d5848', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Paddy husk', NULL, 'kg', 1.46736, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.44, NULL, 0.000432, 0.0000576, 'TGO', 'TGO API', 'EF001-47', 52, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('307836b4-c9b2-54f4-830b-206747eb693e', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Paddy husk: Report in Scope 1', NULL, 'kg', 0.02736, 'นับเฉพาะ CH4 และ N2O', NULL, NULL, 0.000432, 0.0000576, 'TGO', 'TGO API', 'EF001-48', 53, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e36f20ef-ef55-55c0-b2b5-6b39727bbfe9', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Paddy husk: Report in Biogenic CO2 emissions', NULL, 'kg', 1.44, 'นับเฉพาะ CO2 จาก biofuel', 1.44, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF001-49', 54, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('fbd531b7-acad-5e69-9f19-fd00fc68d7af', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Baggasse', NULL, 'kg', 0.767307, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 0.753, NULL, 0.0002259, 0.00003012, 'TGO', 'TGO API', 'EF001-50', 55, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1c3d3c67-ed69-5a26-af8d-7d43b3cccc94', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Baggasse: Report in Scope 1', NULL, 'kg', 0.014307, NULL, NULL, NULL, 0.0002259, 0.00003012, 'TGO', 'TGO API', 'EF001-51', 56, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('98000581-b54e-582d-9351-e68b88ed4352', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Baggasse: Report in Biogenic CO2 emissions', NULL, 'kg', 0.753, 'นับเฉพาะ CO2 จาก biofuel', 0.753, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF001-52', 57, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c3e2d03d-7035-53b7-9ed9-60ac3c74eb1c', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Palm kernel shell', NULL, 'kg', 1.888207, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.853, NULL, 0.0005559, 0.00007412, 'TGO', 'TGO API', 'EF001-53', 58, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('af8589ac-ab22-5da0-bb88-0e75641554d3', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Palm kernel shell: Report in Scope 1', NULL, 'kg', 0.035207, 'นับเฉพาะ CH4 และ N2O', NULL, NULL, 0.0005559, 0.00007412, 'TGO', 'TGO API', 'EF001-54', 59, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f02672ba-7ad9-5cc8-98ab-0cd635b25e03', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Palm kernel shell: Report in Biogenic CO2 emissions', NULL, 'kg', 1.853, 'นับเฉพาะ CO2 จาก biofuel', 1.853, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF001-55', 60, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('70253cb5-7722-566f-bc8f-b3a747a70e0c', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Cob', NULL, 'kg', 1.709882, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.678, NULL, 0.0005034, 0.00006712, 'TGO', 'TGO API', 'EF001-56', 61, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1622af73-d6b5-5802-ad64-058490455794', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Cob: Report in Scope 1', NULL, 'kg', 0.031882, 'นับเฉพาะ CH4 และ N2O', NULL, NULL, 0.0005034, 0.00006712, 'TGO', 'TGO API', 'EF001-57', 62, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c671ee07-2f9e-5e5f-95a2-dec7e5fa635a', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Cob: Report in Biogenic CO2 emissions', NULL, 'kg', 1.678, 'นับเฉพาะ CO2 จาก biofuel', 1.678, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF001-58', 63, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4c302295-da0d-52d7-ad1e-bdc16f8656d3', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Biogas', NULL, 'm3', 1.143918685, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.142778, NULL, 0.00002093, 0.000002093, 'TGO', 'TGO API', 'EF001-59', 64, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f3180eb1-d994-5a39-8bd7-678042c19f04', 'a1000001-0001-4001-8001-000000000001'::uuid, 'Biogas: Report in Scope 1', NULL, 'm3', 0.001140685, 'นับเฉพาะ CH4 และ N2O', NULL, NULL, 0.00002093, 0.000002093, 'TGO', 'TGO API', 'EF001-60', 65, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d07a57e4-6167-5463-9af0-02648ac91bc7', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Biogas: Report in Biogenic CO2 emissions', NULL, 'm3', 1.142778, 'นับเฉพาะ CO2 จาก biofuel', 1.142778, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF001-61', 66, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2b882e18-7fb6-52db-b42d-a262d3fb29b6', 'a1000001-0001-4001-8001-000000000002'::uuid, 'LPG', NULL, 'kg', 3.20573814814815, 'IPCC defaults (2006) และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 3.1105962962963, NULL, 0.00246481481481481, 0.0000985925925925926, 'TGO', 'TGO API', 'EF002-1', 67, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('bb86ebe7-cb0d-52b2-a529-8ee587dd0ad2', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Diesel: Aggriculture', NULL, 'Liter', 2.978981184, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.698722, NULL, 0.000151143, 0.001041612, 'TGO', 'TGO API', 'EF002-2', 68, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a8ce65e4-0bdc-509f-9fb3-460dc6874624', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Diesel: Forestry', NULL, 'Liter', 2.978981184, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.698722, NULL, 0.000151143, 0.001041612, 'TGO', 'TGO API', 'EF002-3', 69, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('345501a4-8325-5bdb-976d-4258a0f4fd16', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Diesel: Industry', NULL, 'Liter', 2.978981184, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.698722, NULL, 0.000151143, 0.001041612, 'TGO', 'TGO API', 'EF002-4', 70, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2267556a-2406-582a-8f37-c7760e559393', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Diesel: Household', NULL, 'Liter', 2.978981184, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.698722, NULL, 0.000151143, 0.001041612, 'TGO', 'TGO API', 'EF002-5', 71, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d2b900f4-3a10-5b69-9e81-d031f50cf069', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Biodiesel', NULL, 'Liter', 1.643976, 'IPCC defaults (2006) และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.643976, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF002-6', 72, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e5db21d2-677c-5c77-ae6d-56024957d464', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Ethanol, Bio-gasoline', NULL, 'Liter', 1.4967828, 'IPCC defaults (2006) และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.4967828, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF002-7', 73, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7ab2763f-964b-5f7b-8abe-89a5ad1aa667', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Motor Gasoline 4-stroke: Aggriculture', NULL, 'Liter', 2.2687636, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, NULL, 0.0025184, 0.00006296, 'TGO', 'TGO API', 'EF002-8', 74, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0d63bc89-e0e6-5feb-b22c-a19fc2941838', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Motor Gasoline 4-stroke:  Forestry', NULL, 'Liter', 2.181564, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF002-9', 75, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6d590ee8-f910-52e4-b6a3-8915f6bd92dd', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Motor Gasoline 4-stroke:  Industry', NULL, 'Liter', 2.2423204, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, NULL, 0.001574, 0.00006296, 'TGO', 'TGO API', 'EF002-10', 76, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d371a944-a159-5274-b71f-0b3ccb04e081', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Motor Gasoline 4-stroke:  Household', NULL, 'Liter', 2.3040212, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, NULL, 0.0037776, 0.00006296, 'TGO', 'TGO API', 'EF002-11', 77, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('772497ac-2b9a-5682-bc7a-c2ff3bbad2ce', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Motor Gasoline 2-stroke: Aggriculture', NULL, 'Liter', 2.30830248, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, NULL, 0.0044072, 0.000012592, 'TGO', 'TGO API', 'EF002-12', 78, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f2eb2e43-0085-5644-a4a8-1870b5162f0a', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Motor Gasoline 2-stroke:  Forestry', NULL, 'Liter', 2.33474568, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, NULL, 0.0053516, 0.000012592, 'TGO', 'TGO API', 'EF002-13', 79, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('dd5317bd-265c-5a2b-8b00-206e76281d5c', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Motor Gasoline 2-stroke:  Industry', NULL, 'Liter', 2.29948808, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, NULL, 0.0040924, 0.000012592, 'TGO', 'TGO API', 'EF002-14', 80, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d7b2db9d-229e-504f-a2ae-40ede6d4776b', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Motor Gasoline 2-stroke:  Household', NULL, 'Liter', 2.34356008, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, NULL, 0.0056664, 0.000012592, 'TGO', 'TGO API', 'EF002-15', 81, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e48f5832-af48-5533-9555-612aefda9f50', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Diesel B7', NULL, 'Liter', 2.905148964, 'คิดที่สัดส่วนไบโอดีเซล (7%)', 2.62488978, NULL, 0.000151143, 0.001041612, 'TGO', 'TGO API', 'EF002-16', 82, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('dec91fe1-9098-5b95-b0b0-ab0d1e639e89', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Diesel B7: Report in Scope 1', NULL, 'Liter', 2.790070644, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 2.50981146, NULL, 0.000151143, 0.001041612, 'TGO', 'TGO API', 'EF002-17', 83, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b676f2a5-9f38-5cdb-b620-022a54b73c8d', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Diesel B7: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.11507832, 'นับเฉพาะ CO2 จาก biofuel', 0.11507832, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF002-18', 84, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('132633b9-24d8-5fa5-9adb-45aa8225edbe', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Gasohol E10,  4-stroke: Aggriculture', NULL, 'Liter', 2.20028548, 'คิดที่สัดส่วนเอทานอล  (10%)', 2.11308588, NULL, 0.0025184, 0.00006296, 'TGO', 'TGO API', 'EF002-19', 85, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d574fda0-9cee-5e42-b952-b38689a4886d', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Gasohol E10: Report in Scope 1', NULL, 'Liter', 2.0506072, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 1.9634076, NULL, 0.0025184, 0.00006296, 'TGO', 'TGO API', 'EF002-20', 86, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('424208b4-5d53-56e3-8bc5-e629fd78c456', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Gasohol E10: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.14967828, 'นับเฉพาะ CO2 จาก biofuel', 0.14967828, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF002-21', 87, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d0fb4395-c9e9-5030-9148-6e880563f4d0', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Gasohol E10, 4-stroke: Forestry', NULL, 'Liter', 2.11308588, 'คิดที่สัดส่วนเอทานอล  (10%)', 2.11308588, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF002-22', 88, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ffa3582b-cccf-5617-914d-d655f539401d', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Gasohol E10: Report in Scope 1', NULL, 'Liter', 1.9634076, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 1.9634076, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF002-23', 89, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('bcabfabd-566e-5135-b123-8c4a32e35249', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Gasohol E10: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.14967828, 'นับเฉพาะ CO2 จาก biofuel', 0.14967828, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF002-24', 90, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('38a3c835-9a3b-5e1a-aa54-a4e998e045be', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Gasohol E10, 4-stroke: Industry', NULL, 'Liter', 2.17384228, 'คิดที่สัดส่วนเอทานอล  (10%)', 2.11308588, NULL, 0.001574, 0.00006296, 'TGO', 'TGO API', 'EF002-25', 91, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b1dd5249-aaec-533b-be83-f79f12424fcf', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Gasohol E10: Report in Scope 1', NULL, 'Liter', 2.024164, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 1.9634076, NULL, 0.001574, 0.00006296, 'TGO', 'TGO API', 'EF002-26', 92, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('76199e3d-7dd8-5953-82e9-132a6562c16b', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Gasohol E10: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.14967828, 'นับเฉพาะ CO2 จาก biofuel', 0.14967828, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF002-27', 93, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('10c6e2e0-9800-538f-bcc6-524fb21ec371', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Gasohol E10, 4-stroke: Household', NULL, 'Liter', 2.23554308, 'คิดที่สัดส่วนเอทานอล  (10%)', 2.11308588, NULL, 0.0037776, 0.00006296, 'TGO', 'TGO API', 'EF002-28', 94, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('cc5b3bab-ccfa-5088-bfad-67c7151c991e', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Gasohol E10: Report in Scope 1', NULL, 'Liter', 2.0858648, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 1.9634076, NULL, 0.0037776, 0.00006296, 'TGO', 'TGO API', 'EF002-29', 95, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('aaceddfb-db26-53a0-8137-2f318c175c87', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Gasohol E10: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.14967828, 'นับเฉพาะ CO2 จาก biofuel', 0.14967828, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF002-30', 96, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('19a88549-5362-54f2-ac33-f830e7c9ded4', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Gasohol E10, 2-stroke: Aggriculture', NULL, 'Liter', 2.23982436, 'คิดที่สัดส่วนเอทานอล  (10%)', 2.11308588, NULL, 0.0044072, 0.000012592, 'TGO', 'TGO API', 'EF002-31', 97, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5a2b94cb-29f7-5e99-9fe5-3dde69c12581', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Gasohol E10: Report in Scope 1', NULL, 'Liter', 2.09014608, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 1.9634076, NULL, 0.0044072, 0.000012592, 'TGO', 'TGO API', 'EF002-32', 98, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0dbfaca5-b902-59d9-a80f-4d12eaaa9380', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Gasohol E10: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.14967828, 'นับเฉพาะ CO2 จาก biofuel', 0.14967828, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF002-33', 99, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('72b35394-ede2-5fe8-9354-f6de632bc865', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Gasohol E10, 2-stroke: Forestry', NULL, 'Liter', 2.26626756, 'คิดที่สัดส่วนเอทานอล (10%)', 2.11308588, NULL, 0.0053516, 0.000012592, 'TGO', 'TGO API', 'EF002-34', 100, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('177cd883-8d1a-58e9-a1cf-0ac6c7966615', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Gasohol E10: Report in Scope 1', NULL, 'Liter', 2.11658928, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 1.9634076, NULL, 0.0053516, 0.000012592, 'TGO', 'TGO API', 'EF002-35', 101, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1e6a367b-2654-5a61-879a-112576e56445', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Gasohol E10: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.14967828, 'นับเฉพาะ CO2 จาก biofuel', 0.14967828, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF002-36', 102, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('bc418f21-f2f1-55b1-b939-033333306300', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Gasohol E10, 2-stroke: Industry', NULL, 'Liter', 2.23100996, 'คิดที่สัดส่วนเอทานอล (10%)', 2.11308588, NULL, 0.0040924, 0.000012592, 'TGO', 'TGO API', 'EF002-37', 103, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ccaf2870-c50e-596e-ba59-49986927851b', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Gasohol E10: Report in Scope 1', NULL, 'Liter', 2.08133168, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 1.9634076, NULL, 0.0040924, 0.000012592, 'TGO', 'TGO API', 'EF002-38', 104, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('60e14a2a-7204-5407-8c81-a9e8f3b1b579', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Gasohol E10: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.14967828, 'นับเฉพาะ CO2 จาก biofuel', 0.14967828, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF002-39', 105, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ce3d608e-f9cb-5ca2-bb01-4d9c2730f628', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Gasohol E10, 2-stroke: Household', NULL, 'Liter', 2.27508196, 'คิดที่สัดส่วนเอทานอล  (10%)', 2.11308588, NULL, 0.0056664, 0.000012592, 'TGO', 'TGO API', 'EF002-40', 106, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f28c7077-f88a-587a-9a23-23ea18f24b78', 'a1000001-0001-4001-8001-000000000002'::uuid, 'Gasohol E10: Report in Scope 1', NULL, 'Liter', 2.12540368, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 1.9634076, NULL, 0.0056664, 0.000012592, 'TGO', 'TGO API', 'EF002-41', 107, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d26ba4a0-f888-569a-9178-73bf1b80fc51', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Gasohol E10: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.14967828, 'นับเฉพาะ CO2 จาก biofuel', 0.14967828, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF002-42', 108, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('255ce805-544b-5133-ae59-1c68e0fbb9bc', 'a1000001-0001-4001-8001-000000000003'::uuid, 'CNG', NULL, 'kg', 2.2539509, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 &amp; 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.12619, NULL, 0.0034868, 0.0001137, 'TGO', 'TGO API', 'EF003-1', 109, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5909dc0b-ba96-5030-87fc-1192d8a3c1ef', 'a1000001-0001-4001-8001-000000000003'::uuid, 'LPG', NULL, 'Liter', 1.72734518, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 &amp; 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.679722, NULL, 0.00165044, 0.000005324, 'TGO', 'TGO API', 'EF003-2', 110, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('36c6c6ed-db1e-563b-a918-bc3f6f128639', 'a1000001-0001-4001-8001-000000000003'::uuid, 'LPG', NULL, 'kg', 3.19878737037037, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 &amp; 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 3.1105962962963, NULL, 0.00305637037037037, 0.00000985925925925926, 'TGO', 'TGO API', 'EF003-3', 111, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9a32e9d2-e519-5beb-954b-ea724dcae38b', 'a1000001-0001-4001-8001-000000000003'::uuid, 'Diesel', NULL, 'Liter', 2.740339134, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 &amp; 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.698722, NULL, 0.000142038, 0.000142038, 'TGO', 'TGO API', 'EF003-4', 112, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c5b033db-3682-5864-a081-ea7e762357a3', 'a1000001-0001-4001-8001-000000000003'::uuid, 'Motor Gasoline - uncontrolled', NULL, 'Liter', 2.23734656, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 &amp; 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, NULL, 0.00103884, 0.000100736, 'TGO', 'TGO API', 'EF003-5', 113, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('497d0fca-6d97-54a5-bc2e-32aa5a534138', 'a1000001-0001-4001-8001-000000000003'::uuid, 'Motor Gasoline - oxydation catalyst', NULL, 'Liter', 2.2703376, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 &amp; 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, NULL, 0.000787, 0.00025184, 'TGO', 'TGO API', 'EF003-6', 114, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4012b830-ebbc-5665-95f2-908b73b2d866', 'a1000001-0001-4001-8001-000000000003'::uuid, 'Motor Gasoline - low mileage light duty vihicle vintage 1995 or later', NULL, 'Liter', 2.232464012, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 &amp; 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, NULL, 0.000119624, 0.000179436, 'TGO', 'TGO API', 'EF003-7', 115, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e1f4df4c-fc5d-5b4e-904c-cadf3675c0f6', 'a1000001-0001-4001-8001-000000000003'::uuid, 'Biodiesel', NULL, 'Liter', 1.670509494, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 &amp; 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.643976, NULL, 0.000090558, 0.000090558, 'TGO', 'TGO API', 'EF003-8', 116, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5a71d58a-de7d-5a38-978d-663c1b090edc', 'a1000001-0001-4001-8001-000000000003'::uuid, 'Ethanol (Bio-gasoline)', NULL, 'Liter', 1.507437864, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 &amp; 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.4967828, NULL, 0.000380538, NULL, 'TGO', 'TGO API', 'EF003-9', 117, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5c5c428d-5254-5b8c-bcaa-867e0b5b670a', 'a1000001-0001-4001-8001-000000000003'::uuid, 'Diesel (แบบคิด EF ของ Biofuel ด้วย)', NULL, 'Liter', 2.6654510592, 'คิดที่สัดส่วนไบโอดีเซล (7%)', 2.62488978, NULL, 0.0001384344, 0.0001384344, 'TGO', 'TGO API', 'EF003-10', 118, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ad21502a-6b8b-5135-8d01-a104df0d1698', 'a1000001-0001-4001-8001-000000000003'::uuid, 'Diesel B7: Report in Scope 1', NULL, 'Liter', 2.5503727392, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 2.50981146, NULL, 0.0001384344, 0.0001384344, 'TGO', 'TGO API', 'EF003-11', 119, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('74f574fe-d6a7-5413-a4dd-49e1ddf79bcf', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Diesel B7: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.11507832, 'นับเฉพาะ CO2 จาก biofuel', 0.11507832, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF003-12', 120, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5b29b1b9-a270-5b52-ab6f-b6d222301212', 'a1000001-0001-4001-8001-000000000003'::uuid, 'Diesel (แบบคิด EF ของ Biofuel ด้วย)', NULL, 'Liter', 2.526373206, 'คิดที่สัดส่วนไบโอดีเซล (20%)', 2.4877728, NULL, 0.000131742, 0.000131742, 'TGO', 'TGO API', 'EF003-13', 121, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('28cd872c-ad9e-5d96-a0b8-381345ac8e98', 'a1000001-0001-4001-8001-000000000003'::uuid, 'Diesel B20: Report in Scope 1', NULL, 'Liter', 2.197578006, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 2.1589776, NULL, 0.000131742, 0.000131742, 'TGO', 'TGO API', 'EF003-14', 122, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4de74a99-2668-58d6-bfc4-3e0c0e1aad7f', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Diesel B20: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.3287952, 'นับเฉพาะ CO2 จาก biofuel', 0.3287952, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF003-15', 123, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6832fb8a-2560-579d-844a-64f975ad5de7', 'a1000001-0001-4001-8001-000000000003'::uuid, 'Motor Gasoline - low mileage light duty vihicle vintage 1995 or later', NULL, 'Liter', 2.1599613972, 'คิดที่สัดส่วนเอทานอล (10%)', 2.11308588, NULL, 0.0001457154, 0.0001614924, 'TGO', 'TGO API', 'EF003-16', 124, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('817adbb0-c9a7-59a3-b1e0-1e21ca5e68db', 'a1000001-0001-4001-8001-000000000003'::uuid, 'Gasohol E10: Report in Scope 1', NULL, 'Liter', 2.0102831172, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 1.9634076, NULL, 0.0001457154, 0.0001614924, 'TGO', 'TGO API', 'EF003-17', 125, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('90a3ac57-36b7-5544-97a9-d01c6d6ba526', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Gasohol E10: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.14967828, 'นับเฉพาะ CO2 จาก biofuel', 0.14967828, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF003-18', 126, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ea82f58f-530c-5d9c-b781-3a4ff1735b18', 'a1000001-0001-4001-8001-000000000003'::uuid, 'Motor Gasoline - low mileage light duty vihicle vintage 1995 or later', NULL, 'Liter', 2.0874587824, 'คิดที่สัดส่วนเอทานอล (20%)', 2.04460776, NULL, 0.0001718068, 0.0001435488, 'TGO', 'TGO API', 'EF003-19', 127, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('dc2558e2-be57-584e-bdb7-2b7376dd5f9b', 'a1000001-0001-4001-8001-000000000003'::uuid, 'Gasohol E20: Rreport in Scope 1', NULL, 'Liter', 1.7881022224, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 1.7452512, NULL, 0.0001718068, 0.0001435488, 'TGO', 'TGO API', 'EF003-20', 128, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('25051aa7-2597-566b-afd1-420611217af9', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Gasohol E20: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.29935656, 'นับเฉพาะ CO2 จาก biofuel', 0.29935656, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF003-21', 129, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('58c111a8-54d6-50e7-8045-8bce4e4d97ba', 'a1000001-0001-4001-8001-000000000003'::uuid, 'Motor Gasoline - low mileage light duty vihicle vintage 1995 or later', NULL, 'Liter', 1.6161917862, 'คิดที่สัดส่วนเอทานอล (85%)', 1.59949998, NULL, 0.0003414009, 0.0000269154, 'TGO', 'TGO API', 'EF003-22', 130, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('23ed2eca-d0b0-5605-ac89-748af2d8f43e', 'a1000001-0001-4001-8001-000000000003'::uuid, 'Gasohol E85: Report in Scope 1', NULL, 'Liter', 0.3439264062, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 0.3272346, NULL, 0.0003414009, 0.0000269154, 'TGO', 'TGO API', 'EF003-23', 131, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a15f2949-4f2c-550d-be65-8dcbc3b1cbbc', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Gasohol E85: Report in Biogenic CO2 emissions', NULL, 'Liter', 1.27226538, 'นับเฉพาะ CO2 จาก biofuel', 1.27226538, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF003-24', 132, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d1de5a39-56da-5d92-b807-c4196c39013f', 'a1000001-0001-4001-8001-000000000003'::uuid, 'Motor Gasoline - oxydation catalyst', NULL, 'Liter', NULL, 'คิดที่สัดส่วนเอทานอล 10%', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF003-25', 133, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6bccb0c4-dc2a-5029-bf64-0c5e0652aa0e', 'a1000001-0001-4001-8001-000000000003'::uuid, 'Gasohol E10: Report in Scope 1', NULL, 'Liter', 2.0444, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 1.9634, NULL, 0.0007, 0.0002, 'TGO', 'TGO API', 'EF003-26', 134, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0edaa7e3-3981-555a-b45a-157562d9d217', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Gasohol E10: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.1497, 'นับเฉพาะ CO2 จาก biofuel', 0.1497, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF003-27', 135, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0aacc9b1-a088-55f7-8f91-d89f0a1d8b93', 'a1000001-0001-4001-8001-000000000003'::uuid, 'Motor Gasoline - oxydation catalyst', NULL, 'Liter', NULL, 'คิดที่สัดส่วนเอทานอล 20%', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF003-28', 136, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1fa134eb-6e9d-554c-aa95-c50b13f9e18c', 'a1000001-0001-4001-8001-000000000003'::uuid, 'Gasohol E20: Report in Scope 1', NULL, 'Liter', 1.8184, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 1.7453, NULL, 0.0007, 0.0002, 'TGO', 'TGO API', 'EF003-29', 137, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0eecd33f-9b85-5498-bb5b-ef9ea8314112', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Gasohol E20: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.2994, 'นับเฉพาะ CO2 จาก biofuel', 0.2994, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF003-30', 138, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3fc270b1-a57c-54da-8ec2-cb491acc386a', 'a1000001-0001-4001-8001-000000000003'::uuid, 'Motor Gasoline - oxydation catalyst', NULL, 'Liter', NULL, 'คิดที่สัดส่วนเอทานอล 85%', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF003-31', 139, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('77200f77-5cad-5011-920a-07f445933221', 'a1000001-0001-4001-8001-000000000003'::uuid, 'Gasohol E85: Report in Scope 1', NULL, 'Liter', 0.3496, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 0.3272, NULL, 0.0004, 0.00001, 'TGO', 'TGO API', 'EF003-32', 140, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('cbe17b62-3124-58af-9d3a-2d5d9b561b27', 'a1000004-0004-4004-8004-000000000014'::uuid, 'Gasohol E85: Report in Biogenic CO2 emissions', NULL, 'Liter', 1.2723, 'นับเฉพาะ CO2 จาก biofuel', 1.2723, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF003-33', 141, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a83a4b50-541a-5a56-a1af-c93996ef80d8', 'a1000002-0002-4002-8002-000000000006'::uuid, 'ไฟฟ้าแบบ grid mix ปี 2016-2018; LCIA method IPCC 2013 GWP 100a V1.03 (CFO Scope2)', NULL, 'kWh', 0.4999, 'Thai National LCI Database, TIISMTEC-NSTDA, AR5 (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF004-1', 142, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a272edb4-360c-580d-a9c5-ab6de93a0158', 'a1000002-0002-4002-8002-000000000006'::uuid, 'ไฟฟ้าแบบ grid mix ปี 2016-2018; การได้มาซึ่งเชื้อเพลิงรวมถึงการขนส่งเชื้อเพลิงที่ใช้ในการผลิตไฟฟ้าสำ', NULL, 'kWh', 0.0987, 'Thai National LCI Database, TIISMTEC-NSTDA, AR5 (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF004-2', 143, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c8e8458e-aaa9-5dc6-b8bb-16d18ffc8c7e', 'a1000002-0002-4002-8002-000000000006'::uuid, 'ไฟฟ้าแบบ grid mix ปี 2016-2018; LCIA method IPCC 2013 GWP 100a V1.03 (CFP)', NULL, 'kWh', 0.5986, 'Thai National LCI Database, TIISMTEC-NSTDA, AR5 (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF004-3', 144, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('cc2d49d8-3d33-5235-9069-0b211431a332', 'a1000002-0002-4002-8002-000000000006'::uuid, 'ไฟฟ้าแบบ grid mix ปี 2022-2024; LCIA method IPCC 2013 GWP 100a V1.03 (CFO Scope2)', NULL, 'kWh', 0.475, 'Thai National LCI Database, TIISMTEC-NSTDA, AR5 (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF004-4', 145, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('88cc243d-a7e5-5791-967f-94a62de54b61', 'a1000002-0002-4002-8002-000000000006'::uuid, 'ไฟฟ้าแบบ grid mix ปี 2022-2024; การได้มาซึ่งเชื้อเพลิงรวมถึงการขนส่ง เชื้อเพลิงที่ใช้ในการผลิตไฟฟ้า สำหรับ SCOPE 3', NULL, 'kWh', 0.0812, 'Thai National LCI Database, TIISMTEC-NSTDA, AR5 (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF004-5', 146, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('cf030ee3-da71-5f02-9d38-b9adbe406d80', 'a1000002-0002-4002-8002-000000000006'::uuid, 'ไฟฟ้าแบบ grid mix ปี 2022-2024; LCIA method IPCC 2013 GWP 100a V1.03 (CFP)', NULL, 'kWh', 0.5562, 'Thai National LCI Database, TIISMTEC-NSTDA, AR5 (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF004-6', 147, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('87e5f451-1690-5f54-ae4a-b5e045fe18fb', 'a1000004-0004-4004-8004-000000000014'::uuid, 'R-22 (HCFC-22)', NULL, 'kg', 1760, 'IPCC 2013, AR5', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF005-1', 148, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f3a55375-8e5f-5210-8ab7-8c1a29585b7f', 'a1000001-0001-4001-8001-000000000005'::uuid, 'R-32', NULL, 'kg', 677, 'IPCC 2013, AR5', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF005-2', 149, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f7d01f04-5e25-5978-abe6-7f278c45ed30', 'a1000001-0001-4001-8001-000000000005'::uuid, 'R-125', NULL, 'kg', 3170, 'IPCC 2013, AR5', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF005-3', 150, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e9d3909d-aa6b-5957-8386-c69a7a8024f0', 'a1000001-0001-4001-8001-000000000005'::uuid, 'R-134', NULL, 'kg', 1120, 'IPCC 2013, AR5', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF005-4', 151, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('34b4bbe7-2a73-5edf-a90d-6224c9a783fc', 'a1000001-0001-4001-8001-000000000005'::uuid, 'R-134a', NULL, 'kg', 1300, 'IPCC 2013, AR5', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF005-5', 152, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('55865cae-18ef-52cf-8598-c379e80850df', 'a1000001-0001-4001-8001-000000000005'::uuid, 'R-143', NULL, 'kg', 328, 'IPCC 2013, AR5', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF005-6', 153, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7e628b23-463e-5c91-ae40-565e85d12001', 'a1000001-0001-4001-8001-000000000005'::uuid, 'R-143a', NULL, 'kg', 4800, 'IPCC 2013, AR5', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF005-7', 154, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2eb12475-de69-5b31-ba8d-64135483b79d', 'a1000001-0001-4001-8001-000000000005'::uuid, 'R-404a', NULL, 'kg', 3942.8, 'IPCC defaults (2006), volume 3, chapter 7, table 7.8,  p.7.44 (HFC-125/HFC-143a/HFC-134a)(44.0%/52.0%/4.0%)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF005-8', 155, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3194b964-1b67-5dfa-8c84-77ba4c1d6741', 'a1000001-0001-4001-8001-000000000005'::uuid, 'R-407a', NULL, 'kg', 1923.4, 'IPCC defaults (2006), volume 3, chapter 7, table 7.8,  p.7.44 (HFC-32/HFC-125/HFC-134a)(20.0%/40.0%/40.0%)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF005-9', 156, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0854f173-d78a-5471-8319-fa055d5d1c70', 'a1000001-0001-4001-8001-000000000005'::uuid, 'R-407C', NULL, 'kg', 1624.21, 'IPCC defaults (2006), volume 3, chapter 7, table 7.8,  p.7.44 (HFC-32/HFC-125/HFC-134a)(23.0%/25.0%/52.0%)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF005-10', 157, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6431545a-7652-5bff-8fbf-30f71c262d1b', 'a1000001-0001-4001-8001-000000000005'::uuid, 'R-410a', NULL, 'kg', 1923.5, 'IPCC defaults (2006), volume 3, chapter 7, table 7.8,  p.7.44 (HFC-32/HFC-125)(50.0%/50.0%)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF005-11', 158, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('66177276-15ed-530a-adbb-d5be8f01e80b', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.5896, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-88c19c9080cb', 1, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('71122b0b-582f-50db-9d39-c90ba0c6e766', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.5372, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-a9f4d0f59d28', 2, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('aad0784a-b655-5c78-8362-97ce9a63fda8', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0532, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d7aecbbee9e5', 3, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3c6b6b06-48f7-5de0-af68-38de6d18a00c', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0421, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-e9eb0a324c91', 4, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('657c9c2a-785a-5cfe-8382-86325b450ca0', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0971, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-1a20ff9a9925', 5, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c0d5839d-0a28-5103-8288-55b6119616de', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.079, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-0726dd38f680', 6, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f8cd84e4-2744-5d99-8861-e24f3369ff7e', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.069, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-80bf33626f1d', 7, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('de979da4-b9a0-54b4-918a-f9e4fdef3a28', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0546, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-ef4d990dac65', 8, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('621594d3-d226-5df7-b82b-8224ddd7e9dd', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.7509, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-ad816b237d83', 9, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9801b4f2-73dd-5184-9a2a-de9bf1e24c07', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.6408, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-0761a93256f3', 10, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('65e81f38-4953-5524-a7f5-f13f0b5c4f24', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0639, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-f4a53f481b19', 11, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a58b0f27-b886-50ab-9c52-7c3da18659da', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0539, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-a4098729be55', 12, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('95878819-e9c5-529f-9c7f-35d4d97702c9', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1201, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-63b71b18ba75', 13, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('dcc1cc6f-5a39-5770-a154-6443512dd2d7', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0977, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-972e36252fea', 14, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ff7ed608-a859-5c03-bd59-ca92da375f76', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.084, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-4725acb5172c', 15, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b1c0c5ae-a3a5-516f-885c-80cd2e260133', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0687, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-15c6f5660337', 16, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a88eee73-ee6e-54af-b969-e4356c0dfbf2', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.4271, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-7c1591b4285c', 17, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3638e317-3857-58e4-bc7f-bc2ac376b153', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0677, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-a417d59b98a0', 18, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('678b3dc5-590e-5c5f-bc2c-950d015330e4', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1246, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-7bbce834050a', 19, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b6427835-0013-5ad8-aef9-2d8cde53fe6e', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0874, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-b2dc83000cb5', 20, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('67cce379-3f54-5304-8959-a267546b8ada', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.513, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-e238121ae767', 21, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9d4f31bd-2135-5797-8bf3-264f133d1e18', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0749, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-a035d9e6ec15', 22, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5513cfa0-15d3-5467-9a7c-c38d7bfd5c99', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1443, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-28fd60ef1073', 23, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b233f21b-0196-50f5-835f-8aa9fbda3705', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.099, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-4e6ac6eb79ed', 24, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4780b85f-6134-59ae-ba62-2ce96b68cd2c', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.492, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-bd89e0dbb6b1', 25, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7155e17c-8b7f-59e2-aad5-737e5a1c99bc', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0613, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-defa5bcda49a', 26, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('929e1455-aa06-5068-bc61-153423c7eed9', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1082, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-c92688fab98e', 27, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f15ff279-1598-5748-8df7-f11bc5ffe3aa', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0768, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-fea6fe1c9e73', 28, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3dc4707a-5725-5fb0-9dca-a3fa2e359566', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.6079, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-a2099a49323d', 29, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b94fa1e1-bcfd-5c70-b5c9-c21562c52c95', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0734, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-69ffdb04221a', 30, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5ec246f4-43c4-50c8-b422-63674b377855', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1345, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-017a2c270ae8', 31, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c671c201-ffaf-56b3-8e6a-5323f85b1556', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0942, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-915c747a7430', 32, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3e853ef2-b3fe-5521-a8b7-7a2339da44d9', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก ขนาดเล็ก 4 ล้อ วิ่งแบบปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.313, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-7526d8143852', 33, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ab38c8d5-8c41-591b-b11e-70133c14925e', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก ขนาดเล็ก 4 ล้อ วิ่งแบบปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.141, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-75e7b8eb1cc7', 34, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b920395e-621e-5c3f-8627-e5dd4c2b76e9', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก ขนาดเล็ก 4 ล้อ วิ่งแบบปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.2697, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-e8fad500c1ff', 35, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6fa3376e-ca27-5c86-bf01-c1d2c929530a', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก ขนาดเล็ก 4 ล้อ วิ่งแบบปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1839, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-a8ba40aacc0b', 36, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a477ebca-fb18-59e7-8583-884c40ace8d1', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก ขนาดเล็ก 4 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.3748, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-bb4cd5e034a3', 37, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('60d89f76-8e70-58b9-943f-bea843915b0b', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก ขนาดเล็ก 4 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1626, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-fd1645519add', 38, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5b7e28f1-94ca-58d8-b565-4f3f3fb8264c', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก ขนาดเล็ก 4 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.3163, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-fe02e96ee9e1', 39, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7c64ecd6-7e1c-59a1-93a2-b4d44b6f3a7c', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุก ขนาดเล็ก 4 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.2138, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-2351b12badec', 40, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('08cd3524-e9dd-595a-befd-f67c39b094f1', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.8679, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-1646346bd57a', 41, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('761bd95b-6301-520d-b3e2-b9a9df535c26', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0443, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-76fba00b5e7f', 42, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('334c573c-9aef-5424-867c-6d19bbecdb8d', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0802, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-8b71a5197f08', 43, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('71a3450c-e30f-58bf-8099-5788f24ff329', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0568, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-0585ccdcbdec', 44, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3e3890d5-0440-5f82-80f7-b7668a087724', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 1.0651, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-437a85928c19', 45, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d1127833-b881-53a1-9f7c-0479ec6c0ac2', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0532, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-902510e256ec', 46, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('45c0a1f4-7b73-50e1-b4b1-8a5675dbd7e3', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0975, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d9ddeba7352b', 47, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c5663357-6861-5592-a25a-3bdfa36d20bb', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0687, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-de86eb8c2c76', 48, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d7a12d51-89b1-52b2-b0bc-ec4715839207', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.2358, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-635d12a86a0e', 49, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a33d499c-b8a3-51ec-9587-91e1e581c3f5', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0411, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-e47c21334ad6', 50, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('feb7ecca-4047-5f06-808b-40f3931f4209', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.076, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-db71f735f3c1', 51, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d254da1b-361b-55b7-b6fb-3d24edd71e99', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0528, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-bc731d22e4f9', 52, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3ca7bd38-cf68-5b6b-90c6-125e2e4cd748', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งปกติและแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0515, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-4191095937c7', 53, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('00f2ad71-b23a-5c91-a26d-db0f6729374f', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งปกติและแบบสมบุกสมบัน 25% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.2059, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-994b6f4bee85', 54, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('570b064e-81af-5477-b1d5-a85b27ca132c', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งปกติและแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1029, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-667cf5fe21f8', 55, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('cf1bb8ff-7e2d-5485-8dc3-d0a2184144ee', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งปกติและแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0686, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-bdf4e2fff297', 56, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f18d889d-93dd-5c80-9dff-5deedc8774fc', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 1.0015, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-fe18db1aabf3', 57, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e263bf9e-ee6d-540e-98e2-6ee3e289e0e9', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0507, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-a93ac22ff310', 58, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2cc81ef0-60b2-5abf-bee1-c9a6cf1cd6e0', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.092, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-09ec79741603', 59, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('dfc542dd-cf84-5692-8a8b-427f2fd37835', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.065, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-8159fe699e2c', 60, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('fc28e112-d246-549c-93a0-a3981f6cced3', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.8399, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-f1d30120a136', 61, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2d6495e8-595f-5cb5-8e07-9f7373947edb', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0448, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-4839a715588a', 62, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('cfee3857-0d5c-52de-a0ed-9ea87287e0ad', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0839, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d2d95c307793', 63, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c7aa7310-9c05-5e5c-8aca-cdf81f810590', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0594, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-17bc7c568d92', 64, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('511f4633-b760-537f-bd61-c38fa9124bf3', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 1.1435, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-064e71401f87', 65, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4315771d-9690-59a0-ac84-74b58a6a9749', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0547, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-f838e467a9f3', 66, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('05ed827c-4be3-5dac-a872-d328ee95e360', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.101, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-5734e4466802', 67, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6caa8a24-178c-59b9-b153-5988edce131f', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0705, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-a0b06d3f5f27', 68, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3a310ead-23b3-51ec-bb73-3224a4d426e5', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 1.0201, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-9f9654ab0063', 69, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7f7411a9-e9b3-5fc6-a417-619e6d366fec', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0459, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-ad92b0ea38ae', 70, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e95bc2f9-0950-5744-a475-1de1f5e0e1c9', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0866, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-7af33dd4cd3a', 71, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('dfead4a7-fb95-5dd6-a3a3-530549f040cd', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0596, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-32298c84a28f', 72, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('716ebd66-1f37-5cda-89cf-2bff07030eac', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 1.2446, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-4fe4a8d789b1', 73, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('eda424ea-582f-5606-9add-eb003793457e', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.054, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-655d9974919b', 74, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('eb226d07-6b29-5226-9713-52cfb15e0b8c', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1041, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-76307c807a5d', 75, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('96c20731-15d9-52bd-baed-14fe95452c13', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.071, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-36d760e697e8', 76, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('12dd5917-b394-51a6-b016-35cacfe3d2a6', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 10 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.5744, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-a076a59bc3ec', 77, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('53c31f79-575c-55ee-b97b-7c61cfe4be48', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 10 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0454, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-6ee88b74b252', 78, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('de90faea-f0ec-5e8f-a73e-89fd4036258e', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 10 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0852, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-4e2b2b6d3c32', 79, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('82c468bd-c305-5c01-af3f-5097d2498a02', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 10 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0589, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-60a81b12c0f5', 80, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a78bbef9-0d35-5526-84fc-71151acc28cd', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.6776, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-afb89d76be84', 81, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5720f2e9-eb6a-5a13-8238-dde56536b3fc', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0553, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-8ba89706d6c0', 82, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b0e9bc3e-915a-5525-838a-d6dfd93c0ab2', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1043, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-2939500d9b61', 83, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a0b6edb1-d464-57f7-a4fa-79326f019779', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0724, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-e4ff98b8e8de', 84, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('33555f04-1dd9-5c05-a296-c9b558bfd86b', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.2414, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d8fa252e5a52', 85, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8f776c6d-4c5d-513d-8056-8b0bb6ccf69a', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.2153, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-690405257950', 86, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('63c04ea2-b288-54af-afe5-9e81b17b0e95', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.3803, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d7821e79906f', 87, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4af8b222-5755-5cfc-b2b8-1594a7772023', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.2705, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d28873a79645', 88, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f941c353-3d0a-5bde-911d-42b81d8edfcd', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.3089, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-c0f22325c1ea', 89, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8506df5a-363d-572e-95de-a480e190553a', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.2555, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-e5b70fc5b45e', 90, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('feca1eaa-9651-5aea-a0f2-b80144487fe7', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.4693, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-cdc6d30e749e', 91, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8b3c487f-c384-5867-b2c5-e3c519ee4ce0', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.3274, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-c732205a7a39', 92, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e752ee6f-d3d3-561d-944c-90e66cc6dc38', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 4 ล้อ วิ่งแบบปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.3343, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-0148b27427c9', 93, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('102b8ae6-830c-5459-82a1-d84e9e2e4e9c', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 4 ล้อ วิ่งแบบปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1834, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-149d64cc06ed', 94, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('99b0a539-2f5b-555d-9b8a-b46bc54c1687', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 4 ล้อ วิ่งแบบปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.3399, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-6972f6f1aaaf', 95, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d9de7f89-793e-5c3d-bcfb-05e1a134ec57', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 4 ล้อ วิ่งแบบปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.2404, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-3766e4c13854', 96, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('76db91b4-689c-5bc9-b53b-8a3c211b3fe7', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 4 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.4104, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-abadfef9bd0d', 97, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7ad4fb3d-6d9d-5c1c-9c13-73e8c95d241c', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 4 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.199, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-30c71ac38827', 98, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2e15ada0-27cc-5d8b-9080-3dea168b18cb', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 4 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.367, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-066649385873', 99, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('13ce69b3-85c7-5ba6-b5f1-1609e3e93770', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 4 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.2549, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-5421b1364ab6', 100, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6ce898b6-9e24-50f6-909e-7be3349ba2ba', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.4066, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-7a75b2b82e4b', 101, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f9325799-2a01-5d7d-97b4-06339d87a063', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0653, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-1daf7a1d4ed1', 102, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('fccc4761-10db-5dd4-8146-2b283bdf7afd', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1197, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-6b488e31315f', 103, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('cffdbaa2-994d-5f44-8a4b-ba1870827b44', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0842, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-da469f6563f2', 104, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d2a55d4c-d93a-5619-bf40-d4d72d157890', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.4225, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-667947309306', 105, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9fac165f-bcf2-518d-ab38-ec255ca7c868', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0691, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-883ee09df70f', 106, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4cf5d58d-5a3e-5de9-ae42-7615948bedf5', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1301, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-6926208be6d6', 107, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1bb08c61-3d8a-593e-9ef8-f9c29692b8f6', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0912, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-a312a8eca4cf', 108, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d0c8f955-d7bf-5a48-b487-d0e26968785d', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.4371, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-e113ef6cd737', 109, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9c29c99a-204c-55a4-9378-093f29dc2f1d', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0546, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-f5f1b9ad3f36', 110, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7c506555-b255-5efb-8be6-75bca02b6dde', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.102, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-c7debbe8cdeb', 111, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('55c02d6a-b225-596c-9ee1-784dbff74e74', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0716, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-4d83dee97d11', 112, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0b19ef61-1199-58f1-9d2d-6eecab095747', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.5595, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-f50efdf81d7f', 113, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('05966246-168b-5be7-a219-9733ddd8cb9f', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0678, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-8f3517e0d05f', 114, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('449c838e-21f5-50da-8666-a636a778ea4a', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1228, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-ca1938c54487', 115, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0362d241-cc5d-5eaf-ae2c-27d710c08120', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0863, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-cb72465e872c', 116, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5ec88eaf-a99a-5039-bef8-4167b4218d73', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.821, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-7ec3f5752f8e', 117, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('19ba6955-33c3-5bcf-becc-ffab1650080a', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0449, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-b875dca48600', 118, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('825266f1-bafd-5445-ba96-17b074e1a658', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0803, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-a6ebeb1f0865', 119, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7cf28277-1a43-51b5-b760-c3c4bf43fe7b', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0577, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-8fe210ff35c8', 120, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e6c2d634-2c87-5b8b-8f57-ab507f754892', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.9957, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d2caf47a8452', 121, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('40cd706b-3536-5dc4-b2d7-946006c6c721', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0523, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-c62ca9691f16', 122, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('acf297be-052e-5df0-b05a-5826b96a3ea3', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0914, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-7fdc5265a105', 123, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5b127256-186e-5769-9e42-fa9f966a2447', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0654, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-aa42fe1bc5ea', 124, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e9db1f8c-61b8-5a2b-b548-56b158a16855', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.7866, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d70b15280b85', 125, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2c7e7091-99c3-5b93-bed6-93595ea0a62a', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0403, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-56b8e008dce8', 126, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4c342991-52ed-5a3c-8f20-e56127a811a2', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.073, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d1b95af2b21a', 127, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1416fd8f-8e60-5065-9728-0e0e1d27f7cd', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0517, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-6ed40c7cd380', 128, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e0a67bc3-5f9b-5c57-9b37-f8e9c11a7c67', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.8652, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-a933796f1666', 129, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('bf5d465f-a30e-58f7-a924-f02486fa0520', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0502, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-299ac33ab363', 130, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b548ac5e-9d5a-5cb6-81fa-790898c22962', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0858, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-ce9b6b4deb2c', 131, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d3ca031c-4895-555e-b71b-791509102bdc', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0627, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d85ae3f76874', 132, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('744854e0-fd95-50ab-803d-2e1b11f65d4a', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.605, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-3dbc748ac726', 133, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6c8e785e-1fe8-5a71-8503-bc572b3904a1', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0488, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-4dbc64c47224', 134, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5a0cea69-a77a-53f9-b206-b576174890f0', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.088, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-ad0d8415fc2e', 135, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('009de6f1-58c5-543c-a68a-919f14e153dd', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0616, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-84e028d03151', 136, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('525cf07e-4856-5d78-87d2-c829b514a8bc', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.667, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-ec08d198e747', 137, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d3484ccf-4863-5fac-ab1f-a5edcf4fd226', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0611, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-7c60c68cdfc1', 138, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('bf8761d4-59f3-5b53-bd28-39da63c2d81e', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1018, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-b85f00dcc2fb', 139, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('aecc8ec0-6dc9-57eb-81a9-3af2add7e9f9', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0738, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-ef8a7dfbdff1', 140, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d842aaec-9df9-5820-b4a6-76d86bde132a', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกขยะ 6 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.492, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-b88dee241516', 141, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('471ddb30-b194-5fc4-b2b4-4e23150707d7', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกขยะ 6 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0474, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-4a2bd05b6b17', 142, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8a48925a-3610-50b6-bbdd-eb8808d54329', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกขยะ 6 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0839, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-40a0555126a7', 143, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c5a5cc24-ceaa-532f-b2bc-0b72c8300573', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกขยะ 6 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0607, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-75ae81d257db', 144, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('28cbbd5a-00d7-5217-9393-dda94fb10841', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกขยะ 6 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.5443, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-518c6f72c80d', 145, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9c991d6b-453f-5a64-96be-df3fb55b8a12', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกขยะ 6 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0552, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-17171ff2e1ef', 146, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('aadb7592-3717-508b-b55c-71850cb2e918', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกขยะ 6 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0944, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-dbaca9896ac1', 147, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('18d0b224-d347-54a2-9be2-56aa9099033a', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกขยะ 6 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0693, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-80674536fb59', 148, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('638b1a25-ebb9-5a3a-b4b4-ff00899ce74a', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งปกติ  50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0918, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-cb64c8b6a7a0', 149, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4a279dd2-c846-58e3-955d-d7e477761501', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.6313, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-87ce7317805e', 150, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4acff010-7c9f-5673-ab67-68c4fded5d1d', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.047, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-139a89e6b1b4', 151, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a0158bf9-f6b5-51e2-8d0f-d5138a5420ab', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0624, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-708dc4a1d832', 152, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('25f5ce20-7423-56a0-a81a-f5e82c9a2679', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งแบบสมบุกสมบัน  50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1097, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-0d73250d5170', 153, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c28d35e4-2d31-5c02-b250-abd7d6f1a263', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.7378, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-576b91903284', 154, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4793e2cb-f89c-57db-b99c-0671557a80fa', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.061, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-4652a514984b', 155, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9a41789e-d3b4-5542-8910-ae391f810836', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0772, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-1522b51be8ee', 156, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8de4d669-2c10-5fb4-bccf-7fa2ad1e3cd4', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.9454, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-06dfc00583a2', 157, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1d2a0f16-1ecd-5e19-8993-77828a51846d', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0433, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-f5d8bf74a1b6', 158, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ca54fedf-1d39-55fb-8fd0-1fa4acc323f8', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.084, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-de6ef8f632bc', 159, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5289ea6d-2882-5584-9292-2975d7353a3d', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0577, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-2f889bf695b8', 160, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1dae4ab5-6580-520c-858d-d70f99258fb1', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 1.1848, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-1d5405032079', 161, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9aa23f03-a652-58bd-99f8-520de4f21759', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0591, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-6f464bf019ec', 162, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1bf1d448-8540-5995-99e8-337616b48a1d', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1049, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-517ccaa500aa', 163, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('958de154-c157-50b5-85c6-061eaa3c3347', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0745, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-a581d5e5d4fe', 164, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b4d2133f-e250-59d1-8742-9e249decc1cd', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 10 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.4638, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-f5abc5cc08ec', 165, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5fa20290-c031-5f86-9229-00e1f663456f', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 10 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0474, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-cc94c5b64f9a', 166, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('befc2293-ed32-5ead-a996-091d0ab4d698', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 10 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0834, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-f8b0535991c1', 167, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d907e180-e61d-56c9-aa63-f2078b746e50', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 10 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.061, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-031fc1521e69', 168, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9ec8e952-64b0-5916-9d3b-10b1c888a637', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 10 ล้อ วิ่งแบบสมบุกสมบัน  75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0731, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-6325e68af069', 169, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c5666aa4-1537-5d23-9e6c-b47c0dab93f2', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 10 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.4822, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d4621d3df1cd', 170, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('66ed5649-fa9b-520c-b033-3742a6d599ba', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 10 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0546, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-216416a440c2', 171, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('05f6f447-f21d-5348-9458-ffad3499bb39', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 10 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0985, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-e774a5aab977', 172, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('bddef947-8912-5bf4-a387-f27c0ec03b97', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 18 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.9126, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-3d36548bb006', 173, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0b257538-1302-54a9-ab1d-b6b3c875c878', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 18 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0461, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d97611b4dedd', 174, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('35b1cec1-76ca-52ad-a2d0-b3e8ca7a8911', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 18 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.084, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-f43045b47282', 175, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0d28df78-f18f-592f-9f9a-db5c7f37cb3f', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 18 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0594, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-c8ea8ca19b2a', 176, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('53ae21cd-4b9f-5d53-989b-a776ea7a8624', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 18 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 1.1208, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-bf05181491a1', 177, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2c6778a7-4735-5c28-b3f7-b92d4dbfbdba', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 18 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0589, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-541595512d72', 178, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('eb0091d6-934c-568c-832b-f452212486b9', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 18 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1042, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-937e64fd1e74', 179, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4e20b9e1-53f0-50c7-af1d-5f86eddad0e6', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 18 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0745, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-61d51fb9911d', 180, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('59b2f90d-b679-50d6-8507-2f1b97ab085b', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.5973, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-e701f8ac8112', 181, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a971951f-3592-5690-97a4-d4863facdf68', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0514, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-816430b0c9f8', 182, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('530c7402-c3ea-5d8c-a7c2-5d3ffc049093', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0956, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-5fc1c0f11632', 183, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f24310f0-8f98-5915-b010-3f8de2960b9f', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0671, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-115f704e42dd', 184, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6c06789d-0500-516c-be93-b1f3ad7e1a37', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.6427, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-5ebb93171937', 185, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4f4c9a97-35b0-55f9-bccd-958fc5e43bee', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0573, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-1f41f53cdf1d', 186, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c75713c3-9b10-5561-b9b7-db6c1ced21ef', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1065, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-2b4785ebfaca', 187, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3f5a88a2-87ab-5610-a290-54ef3014060d', 'a1000003-0003-4003-8003-00000000000a'::uuid, 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0752, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d71f1ccad535', 188, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('58d0512c-63e9-50c9-8e87-92fc18b0db90', 'a1000003-0003-4003-8003-00000000000b'::uuid, 'การกำจัดขยะมูลฝอยชุมชนแบบเทกอง', 'กลุ่มการจัดการขยะ (Landfills)', 'kg', 1.0387, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-4bc7c98351f1', 189, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('94678026-ff85-5ad6-b69f-6acaa8c5bbc6', 'a1000003-0003-4003-8003-00000000000b'::uuid, 'การคัดแยกขยะมูลฝอยชุมชน', 'กลุ่มการจัดการขยะ (Landfills)', 'kg', 0.0158, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-5123cc5a23f5', 190, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b38c2738-b296-542b-9139-e63c7adcdd0e', 'a1000003-0003-4003-8003-00000000000b'::uuid, 'การจัดการมูลฝอยสด (การหมักแบบไร้อากาศ)', 'กลุ่มการจัดการขยะ (Landfills)', 'kg', 0.1055, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d5d67d5d9f8a', 191, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('11c67c72-256a-56d4-b727-2f7da51d2f77', 'a1000003-0003-4003-8003-00000000000b'::uuid, 'การจัดเก็บ รวบรวม และขนถ่ายขยะมูลฝอยชุมชน', 'กลุ่มการจัดการขยะ (Landfills)', 'kg', 0.0142, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-6f5e45869fe0', 192, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('192314d3-e6f2-5d8c-b612-ac58b37baffd', 'a1000003-0003-4003-8003-00000000000b'::uuid, 'การฝังกลบขยะมูลฝอยชุมชนแบบติดตั้งระบบนำก๊าซมีเทนมาใช้ประโยชน์', 'กลุ่มการจัดการขยะ (Landfills)', 'kg', 0.0175, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-37fd5a1843a8', 193, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5775e3f4-1ae9-551e-825f-9f26cd280a23', 'a1000003-0003-4003-8003-00000000000b'::uuid, 'การฝังกลบขยะมูลฝอยชุมชนแบบถูกหลักสุขาภิบาล', 'กลุ่มการจัดการขยะ (Landfills)', 'kg', 0.7933, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-ae175755b282', 194, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('76dc7199-5e64-575f-8978-692bf015219b', 'a1000003-0003-4003-8003-00000000000b'::uuid, 'ปุ๋ยหมักอินทรีย์จากการจัดการมูลฝอยสด', 'กลุ่มการจัดการขยะ (Landfills)', 'kg', 0.3323, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-5904d8ccc5e8', 195, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e191a9ef-944b-5751-b9b1-cde3fe6f7f61', 'a1000003-0003-4003-8003-00000000000b'::uuid, 'ปุ๋ยหมักอินทรีย์น้ำจากการจัดการมูลฝอยสด', 'กลุ่มการจัดการขยะ (Landfills)', 'm3', 0.3335, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-b9abbc4eb450', 196, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b986da25-bfcb-58ed-80dc-a9f558a6bfad', 'a1000003-0003-4003-8003-00000000000b'::uuid, 'การปรับปรุงคุณภาพน้ำเสียชุมชนของประเทศ', 'กลุ่มการปรับปรุงน้ำเสียชุมชน (Municipal Wastewater Treatment)', 'm3', 0.1119, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-68a6f295538a', 197, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('87474bf8-6665-5ed7-a834-6305adfcc649', 'a1000003-0003-4003-8003-00000000000b'::uuid, 'การปรับปรุงคุณภาพน้ำเสียชุมชนของเมืองขนาดกลาง', 'กลุ่มการปรับปรุงน้ำเสียชุมชน (Municipal Wastewater Treatment)', 'm3', 0.0849, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-ba947792e100', 198, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('40cbc340-1e12-5c8f-bc91-5de62f2edc0c', 'a1000003-0003-4003-8003-00000000000b'::uuid, 'การปรับปรุงคุณภาพน้ำเสียชุมชนของเมืองขนาดใหญ่', 'กลุ่มการปรับปรุงน้ำเสียชุมชน (Municipal Wastewater Treatment)', 'm3', 0.1199, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-f63fc92e7813', 199, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f9a91305-ddb9-5ec0-9f62-2a56a2910020', 'a1000003-0003-4003-8003-00000000000b'::uuid, 'การรวบรวมน้ำเสียชุมชนของประเทศ, ค่าเฉลี่ยประเทศไทย', 'กลุ่มการปรับปรุงน้ำเสียชุมชน (Municipal Wastewater Treatment)', 'm3', 0.0094, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-e6ab25a37493', 200, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9c85729c-a162-5d73-8b6d-558c3c027288', 'a1000003-0003-4003-8003-00000000000b'::uuid, 'การรวบรวมน้ำเสียชุมชนของเมือง ขนาดกลาง', 'กลุ่มการปรับปรุงน้ำเสียชุมชน (Municipal Wastewater Treatment)', 'm3', 0.0347, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-92aa412c6cdc', 201, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('85e63a67-bdbc-5003-88ca-f13ad711f21f', 'a1000003-0003-4003-8003-00000000000b'::uuid, 'การรวบรวมน้ำเสียชุมชนของเมือง ขนาดใหญ่', 'กลุ่มการปรับปรุงน้ำเสียชุมชน (Municipal Wastewater Treatment)', 'm3', 0.0018, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-dc6ef7a85995', 202, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1daa5281-528a-52c4-9a82-f82193253166', 'a1000003-0003-4003-8003-00000000000b'::uuid, 'การรวบรวมและการปรับปรุงคุณภาพน้ำเสียชุมชนของประเทศ', 'กลุ่มการปรับปรุงน้ำเสียชุมชน (Municipal Wastewater Treatment)', 'm3', 0.1212, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-e012210e3892', 203, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6b106d45-7f4c-540d-afbf-0770e4ac3a09', 'a1000003-0003-4003-8003-00000000000b'::uuid, 'การรวบรวมและการปรับปรุงคุณภาพน้ำเสียชุมชนของเมืองขนาดกลาง', 'กลุ่มการปรับปรุงน้ำเสียชุมชน (Municipal Wastewater Treatment)', 'm3', 0.1196, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-aaed1f8cf843', 204, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0674f7c4-394d-5f02-a23d-7428ce71efa4', 'a1000003-0003-4003-8003-00000000000b'::uuid, 'การรวบรวมและการปรับปรุงคุณภาพน้ำเสียชุมชนของเมืองขนาดใหญ่', 'กลุ่มการปรับปรุงน้ำเสียชุมชน (Municipal Wastewater Treatment)', 'm3', 0.1217, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-8932fb238d78', 205, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('611785d5-739a-57e1-87e8-55d9ff7be80a', 'a1000003-0003-4003-8003-000000000007'::uuid, 'น้ำประปา-การนิคมอุตสาหกรรม', 'กลุ่มน้ำประปาและน้ำอุตสาหกรรม (Tap Water and Industrial Water)', 'm3', 0.2512, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d67bdecd2afb', 206, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9541253a-1c72-5ad0-aec6-86221e9798d9', 'a1000003-0003-4003-8003-000000000007'::uuid, 'น้ำประปา-การประปานครหลวง', 'กลุ่มน้ำประปาและน้ำอุตสาหกรรม (Tap Water and Industrial Water)', 'm3', 0.7836, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-383479fe7e71', 207, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('52925a52-52e3-5df1-b15c-19770cf32134', 'a1000003-0003-4003-8003-000000000007'::uuid, 'น้ำประปา-การประปาส่วนภูมิภาค', 'กลุ่มน้ำประปาและน้ำอุตสาหกรรม (Tap Water and Industrial Water)', 'm3', 0.5167, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-4cbc785d5953', 208, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('44a5bdaf-49ba-5c6e-9187-72fb7124d82d', 'a1000003-0003-4003-8003-000000000007'::uuid, 'น้ำปราศจากไอออน ที่ผลิตโดยเทคโนโลยี Ion Exchange', 'กลุ่มน้ำประปาและน้ำอุตสาหกรรม (Tap Water and Industrial Water)', 'm3', 1.9851, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-8ed163c2d768', 209, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9d13dc7e-24b8-51a5-a135-db0dff7c7638', 'a1000003-0003-4003-8003-000000000007'::uuid, 'น้ำปราศจากไอออน ที่ผลิตโดยเทคโนโลยี Reverse Osmosis', 'กลุ่มน้ำประปาและน้ำอุตสาหกรรม (Tap Water and Industrial Water)', 'm3', 2.0141, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-4ef5223f06c5', 210, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('375b6d84-5821-5f0e-902e-33cc44ecbf1a', 'a1000003-0003-4003-8003-000000000007'::uuid, 'น้ำอ่อนสำหรับหม้อไอน้ำ', 'กลุ่มน้ำประปาและน้ำอุตสาหกรรม (Tap Water and Industrial Water)', 'm3', 0.9442, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-a45ec36f7305', 211, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('22c49aff-fd60-5cba-84a2-3ee2d9300774', 'a1000003-0003-4003-8003-000000000007'::uuid, 'น้ำนมดิบจากศูนย์รวบรวมน้ำนม', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 2.4337, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-a47a7e9cc2c7', 212, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3701124e-d8fc-5031-bf0d-eac269c56991', 'a1000003-0003-4003-8003-000000000007'::uuid, 'น้ำนมดิบจากโค', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 1.5896, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-71d266bb864f', 213, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1cf2a858-8cf6-55ae-9c95-7b2a84636a27', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ปลาดุก (เลี้ยงในบ่อดิน)', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 3.7776, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-e1a5c65674c1', 214, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0ed26b9b-cff4-5e9e-9816-ad61ef6a0822', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ปลาทับทิม (เลี้ยงในบ่อดิน)', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 0.4318, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-7863e93a30d0', 215, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('95639da6-280c-52e5-bd15-4723fc5eb1ba', 'a1000003-0003-4003-8003-000000000007'::uuid, 'สุกรขุนชำแหละ', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 4.2045, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d250467a6ce4', 216, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d1cd14ff-85f8-5c0c-8881-3dd880386032', 'a1000003-0003-4003-8003-000000000007'::uuid, 'สุกรขุนชำแหละอื่นๆ', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 4.2045, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-60e4df8b9d08', 217, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7cdbd12f-0667-5f69-82a0-6bd3d371aaaa', 'a1000003-0003-4003-8003-000000000007'::uuid, 'สุกรขุนมีชีวิต', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 3.2026, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-3df0ea716f59', 218, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3d32d617-79aa-50c9-bdc5-af1175ef3630', 'a1000003-0003-4003-8003-000000000007'::uuid, 'หนังโคสด', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 13.8206, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-33e5ba8e9628', 219, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7144d2ff-0743-57ae-84d8-49e4d3be3abe', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เนื้อโคชำแหละ', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 13.8206, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-1a1ae8e077f6', 220, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1df335c8-4c6a-5349-af14-6c4ccc1b7f9a', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เนื้อโคชำแหละอื่นๆ', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 13.8206, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-38989e4dc0f2', 221, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('af5397f7-d6e0-50e2-bc6d-9fa1b711bf38', 'a1000003-0003-4003-8003-000000000007'::uuid, 'โคเนื้อมีชีวิต: ระยะเวลาขุน 6-12 เดือน', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 10.0143, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-f7b300cb60af', 222, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2620e91c-5131-5d78-ad98-cb8b14e478e1', 'a1000003-0003-4003-8003-000000000007'::uuid, 'โคเนื้อมีชีวิต: ระยะเวลาขุนมากกว่า 12 เดือน', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 12.5479, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-98feca115234', 223, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7462c6a7-80ca-5778-83d0-f498b272162b', 'a1000003-0003-4003-8003-000000000007'::uuid, 'โคเนื้อมีชีวิต: ระยะเวลาขุนไม่เกิน 6 เดือน', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 8.7657, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-ca5d5f4a021e', 224, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('82fec049-f55c-5d1a-a4c0-ec9ee8359ad8', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ไก่สดชำแหละ', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 4.4988, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-62586155bd5a', 225, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ae9f17a9-ebfe-568e-9d9f-4eb2cf5ab562', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ไก่สดชำแหละอื่นๆ', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 4.4988, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-9d26acfaa2ce', 226, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('03e2b4ab-2c30-5623-8f56-3061f326b6e9', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ไก่สดทั้งตัว', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 4.4201, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-f4b027ef215e', 227, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('725353fe-6ba7-5d75-a9f5-9478fc331a19', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ไก่เนื้อมีชีวิตจากฟาร์ม', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 3.2504, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-13d8425df2e0', 228, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a9d33047-4767-5ffe-97c9-6082d1650d74', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ไก่เนื้อมีชีวิตจากฟาร์มที่เลี้ยงโดยใช้อาหารที่ไม่มีโปรตีนจากเนื้อสัตว์เป็นองค์ประกอบ', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 2.6518, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-753cd9a771cd', 229, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('95fe1b56-4f53-57e6-aa1a-64eed5679979', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ไข่ไก่', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 8.8497, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-0bd848144f19', 230, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c6613d35-2cde-5e91-9490-f12b16c6f79d', 'a1000003-0003-4003-8003-000000000007'::uuid, 'Acrylonitrile Butadiene Styrene (ABS)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 4.5845, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-1f02552738dd', 231, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4bd6005e-1884-5666-a6fc-1c21221da795', 'a1000003-0003-4003-8003-000000000007'::uuid, 'Benzene', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 1.6128, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-fc02b55d818a', 232, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('001b2173-3f18-54d3-86db-7604be6485be', 'a1000003-0003-4003-8003-000000000007'::uuid, 'Bisphenol A (BPA)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 3.5411, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-7367485378fa', 233, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7494d617-a52a-5a83-b76b-e9fc4c345d36', 'a1000003-0003-4003-8003-000000000007'::uuid, 'Caprolactam (CPL)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 2.784, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-2eacc295022d', 234, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('54e5743a-3be5-55df-a056-8ae9f6e27dd4', 'a1000003-0003-4003-8003-000000000007'::uuid, 'Cumene', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 1.7067, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-a2cf4f519df3', 235, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2772089a-e951-54f2-8bde-c3f9c0180668', 'a1000003-0003-4003-8003-000000000007'::uuid, 'Cyclohexane (CX)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 2.0625, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-bc6a26663fff', 236, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5efa29e9-337d-506a-ae04-932a14a47fd5', 'a1000003-0003-4003-8003-000000000007'::uuid, 'Ethylbenzene', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 2.3828, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-af0a7c61e1d8', 237, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e64565b7-cff5-55d8-bdcc-770b65ea3c8a', 'a1000003-0003-4003-8003-000000000007'::uuid, 'Ethylene', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 1.9671, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-4a0285b4e2b4', 238, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b5c5b4a4-77b3-5fdc-8e15-a5302ba0455f', 'a1000003-0003-4003-8003-000000000007'::uuid, 'Ethylene glycol', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 1.71, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-9912dcbdd517', 239, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ee546829-b528-5d92-8bda-b49e4e183822', 'a1000003-0003-4003-8003-000000000007'::uuid, 'Ethylene oxide', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 2.7986, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-2e25bbe4498a', 240, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('210ab732-86c6-54c7-994f-b1db97cdb939', 'a1000003-0003-4003-8003-000000000007'::uuid, 'General Purposed Polystyrene (GPPS)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 2.1815, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-fa4a76b2f75c', 241, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e2e2c359-bf2f-57f7-b7f7-ba1e30b31ac6', 'a1000003-0003-4003-8003-000000000007'::uuid, 'High Density Polyethylene (HDPE)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 2.4664, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-17b6f6273c4b', 242, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f88569d4-95a6-5d58-ae3c-155b862e8ced', 'a1000003-0003-4003-8003-000000000007'::uuid, 'High Impact Polystyrene (HIPS)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 3.393, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-46eeff33cfb6', 243, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('89c67aed-1569-5b38-ac41-954a303334ae', 'a1000003-0003-4003-8003-000000000007'::uuid, 'Linear Low Density Polyethylene (LLDPE)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 2.3995, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-ab77e97aed32', 244, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a8a83a0e-9dc6-55a0-8b3f-4e1631f6ba56', 'a1000003-0003-4003-8003-000000000007'::uuid, 'Low Density Polyethylene (LDPE)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 2.4345, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-bc3f4ea826e5', 245, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('54bf78dd-fa7a-5668-920c-645add126148', 'a1000003-0003-4003-8003-000000000007'::uuid, 'Mixed C4', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 1.1263, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-8e72c7dcf853', 246, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ef3a8cc5-8913-50ce-9271-7160c86adfad', 'a1000003-0003-4003-8003-000000000007'::uuid, 'P-xylene', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 1.3021, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-428e1e878df6', 247, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e8d28bd0-999e-5ce2-8f09-5a04cdba85c4', 'a1000003-0003-4003-8003-000000000007'::uuid, 'Phenol', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 2.5856, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-c86fddbbb86e', 248, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3af4471a-dacd-53a2-8d85-e527dd717ccf', 'a1000003-0003-4003-8003-000000000007'::uuid, 'Polyethylene Terephthalate (PET)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 2.9389, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-223f6a76ed3d', 249, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('728e0809-1809-529c-ab4b-b673534db189', 'a1000003-0003-4003-8003-000000000007'::uuid, 'Polypropylene (PP)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 2.0366, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-0028d4d23c59', 250, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('89ecad85-62dc-54b2-9cfe-d7e89e71fab8', 'a1000003-0003-4003-8003-000000000007'::uuid, 'Polyvinyl Chloride (PVC)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 3.0658, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-01ffe1979238', 251, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e8e530c4-ad68-53a0-96c3-95341a635bb0', 'a1000003-0003-4003-8003-000000000007'::uuid, 'Propylene', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 1.7096, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-44edc2638565', 252, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('adcc3ff4-f8ec-551e-a4d1-322d5f6c7b05', 'a1000003-0003-4003-8003-000000000007'::uuid, 'Purified Terephthalic Acid', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 1.8081, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-b8420478c9b9', 253, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a4cda315-88e5-5192-b937-5516090efe09', 'a1000003-0003-4003-8003-000000000007'::uuid, 'Styrene Acrylonitrile (SAN)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 3.8395, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-5520c85900d5', 254, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('64bc0b71-9b16-5fc6-8433-c3ad6404bcdc', 'a1000003-0003-4003-8003-000000000007'::uuid, 'Styrene Monomer (SM)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 2.0597, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-03ce0ad721ba', 255, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3b5702c3-bb86-51ad-9930-df304f1965cb', 'a1000003-0003-4003-8003-000000000007'::uuid, 'Toluene', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 1.336, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-a91f9249615f', 256, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5744dcdc-8982-5b49-9a5e-93347a418b56', 'a1000003-0003-4003-8003-000000000007'::uuid, 'Vinyl Chloride Monomer (VCM)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 2.7456, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-f56141032c7b', 257, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9e47be63-0ae0-551c-ab55-fed8c2cc19bb', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ก๊าซคาร์บอนไดออกไซด์', 'กลุ่มผลิตภัณฑ์จากก๊าซธรรมชาติ (Natural Gas)', 'kg', 1.0017, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-37fd7f16b843', 258, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f6c8ef66-af9b-5c5a-a15f-cfb3c453bd28', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ก๊าซธรรมชาติ/มีเทน', 'กลุ่มผลิตภัณฑ์จากก๊าซธรรมชาติ (Natural Gas)', 'kg', 1.0815, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-9eeeadd8d772', 259, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('942121c6-7389-5029-b855-8416c9ca05a7', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ก๊าซธรรมชาติเหลว', 'กลุ่มผลิตภัณฑ์จากก๊าซธรรมชาติ (Natural Gas)', 'kg', 1.1083, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-b174bb84bc39', 260, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9944b147-e960-536d-9c02-523000f01f44', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ก๊าซธรรมชาติแบบผสม', 'กลุ่มผลิตภัณฑ์จากก๊าซธรรมชาติ (Natural Gas)', 'kg', 0.7238, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-ca8f765f818d', 261, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b366250a-654c-51d3-b38c-c532db71d632', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ก๊าซธรรมชาติแบบผสม', 'กลุ่มผลิตภัณฑ์จากก๊าซธรรมชาติ (Natural Gas)', 'm3', 0.5534, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-2a7897cce63a', 262, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('385d9ec9-1f38-54a7-b4fc-57df862b1c7e', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ก๊าซหุงต้ม', 'กลุ่มผลิตภัณฑ์จากก๊าซธรรมชาติ (Natural Gas)', 'kg', 1.1366, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-176fdb2afe25', 263, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0215e06f-1c83-53b4-a720-59ba8b6c7584', 'a1000003-0003-4003-8003-000000000007'::uuid, 'อีเทน', 'กลุ่มผลิตภัณฑ์จากก๊าซธรรมชาติ (Natural Gas)', 'kg', 1.1142, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-fdcc63320682', 264, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('02239c82-3b5b-513b-b32c-e1d9be064ce0', 'a1000003-0003-4003-8003-000000000007'::uuid, 'โพรเพน', 'กลุ่มผลิตภัณฑ์จากก๊าซธรรมชาติ (Natural Gas)', 'kg', 1.1254, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-11f8d04bfb83', 265, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('af02706d-a69b-5ecc-bef3-84a9d2fc710b', 'a1000003-0003-4003-8003-000000000007'::uuid, 'นมผึ้ง (Royal jelly)', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร (Food and Agricultural Products)', 'kg', 0.9413, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-e84d99afaa3f', 266, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('268c72bf-2b2d-5bc1-a97f-2081ce9fde32', 'a1000003-0003-4003-8003-000000000007'::uuid, 'น้ำผึ้งกรอง', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร (Food and Agricultural Products)', 'kg', 0.9401, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-dfcc3811c260', 267, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('641a4eb0-5dde-5545-b868-b681e7ac74d3', 'a1000003-0003-4003-8003-000000000007'::uuid, 'น้ำมันงาสกัดเย็นแบบครัวเรือน', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร (Food and Agricultural Products)', 'kg', 1.161, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-de4f0fe1f627', 268, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f43209ae-1fcf-5331-b382-6be1f7c55fdc', 'a1000003-0003-4003-8003-000000000007'::uuid, 'หอยหวาน (Spotted Babylon)', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร (Food and Agricultural Products)', 'kg', 0.0237, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-7fddc064c547', 269, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('604e8ec4-5ad8-5c87-9ca1-db103f6a19c0', 'a1000003-0003-4003-8003-000000000007'::uuid, 'หอยแครง (Ark shell)', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร (Food and Agricultural Products)', 'kg', 0.0064, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-75de600139ae', 270, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6bfb9e78-2bf0-5739-9d68-6048ca1811aa', 'a1000003-0003-4003-8003-000000000007'::uuid, 'หอยแมลงภู่ (Asian green mussel)', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร (Food and Agricultural Products)', 'kg', 5.9788, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-0ffdfc3cf2fa', 271, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8d67bb53-d3e2-56e4-8a7f-87fb5432199b', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เกลือทะเล', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร (Food and Agricultural Products)', 'kg', 0.0056, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-760f153316d5', 272, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8b2aabe3-f27e-5aa1-b737-b1d636c08595', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เกลือสินเธาว์แบบตากลานดิน', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร (Food and Agricultural Products)', 'kg', 0.0049, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-4dc83cbb3a98', 273, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('231feb2a-dbd2-5979-a2b4-3e4d58631871', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เกสรผึ้ง', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร (Food and Agricultural Products)', 'kg', 0.9378, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-9dc94582acab', 274, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9d11a52f-593e-5f0a-a485-da291fa3b108', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เป็ดเนื้อ', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร (Food and Agricultural Products)', 'kg', 4.7585, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-b6ba3bebffac', 275, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c6271706-e51e-5dbf-9883-e22d9eb1867d', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ไขผึ้ง', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร (Food and Agricultural Products)', 'kg', 0.9412, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-2e578fbc7df1', 276, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a7f845b4-f7fb-5983-be42-d6414fc0875c', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ก๊าซหุงต้ม', 'กลุ่มพลังงานและเชื้อเพลิง (Energy and Fuels)', 'kg', 0.4304, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-cdd19046d61d', 277, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2c88d66a-baf4-5c4f-8437-e8477ba2811f', 'a1000003-0003-4003-8003-000000000009'::uuid, 'ก๊าซหุงต้มแบบผสม', 'กลุ่มพลังงานและเชื้อเพลิง (Energy and Fuels)', 'kg', 0.9458, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-35b57c1f4a99', 278, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3d4fc89c-b1fa-560e-b99c-0855f97f0417', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ซัลเฟอร์', 'กลุ่มพลังงานและเชื้อเพลิง (Energy and Fuels)', 'kg', 0.2374, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-5aae800b4938', 279, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('696c425f-05ee-5808-949b-7e48567f68e0', 'a1000003-0003-4003-8003-000000000009'::uuid, 'น้ำมันก๊าดหรือน้ำมันเครื่องบิน', 'กลุ่มพลังงานและเชื้อเพลิง (Energy and Fuels)', 'kg', 0.325, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-8105ccacf52c', 280, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('fe44e214-1f11-5c18-a776-63223521f932', 'a1000003-0003-4003-8003-000000000009'::uuid, 'น้ำมันดีเซล / น้ำมันโซล่าร์', 'กลุ่มพลังงานและเชื้อเพลิง (Energy and Fuels)', 'kg', 0.3503, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d70833813bfc', 281, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8bd93808-5f72-59e1-bdb9-5b08a6adad77', 'a1000003-0003-4003-8003-000000000009'::uuid, 'น้ำมันเตา', 'กลุ่มพลังงานและเชื้อเพลิง (Energy and Fuels)', 'kg', 0.3708, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-1bcea92f16a9', 282, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e9b293d2-b45e-5df6-a997-26431ee281bb', 'a1000003-0003-4003-8003-000000000009'::uuid, 'แก๊สโซลีน', 'กลุ่มพลังงานและเชื้อเพลิง (Energy and Fuels)', 'kg', 0.4006, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d0f8ee7406f5', 283, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('317c2f53-e498-500e-b3f8-3a96de2459ae', 'a1000003-0003-4003-8003-000000000009'::uuid, 'แนฟทา', 'กลุ่มพลังงานและเชื้อเพลิง (Energy and Fuels)', 'kg', 0.2941, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-e5e5fa9539de', 284, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1313c964-c75e-56c3-b8fe-767d7557c4ea', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กระเจี๊ยบเขียว', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.1528, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-9d4c41a2814a', 285, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b4a3139d-7bdd-5c2d-b4ba-cb7da25dc07e', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กระเทียม', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.4783, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-06d07bfc1546', 286, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('135c3c3d-971b-5b97-8537-16f8d4f4adf1', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กระเทียม (อินทรีย์)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.1312, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-aa43180b5d66', 287, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('44c1c481-c0cf-5182-abd0-4ee60707175b', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กระเพรา', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.5021, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-1c89123eb9f0', 288, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c06a79dc-f444-5956-9771-ee585c5ef37a', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กล้วยหอม', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.6116, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-a36344d85681', 289, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7c74cd7f-2b9d-5c58-8c55-e29f799a4d54', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กล้วยไข่', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.5737, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-5b7237fe4a2c', 290, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ea8b3e53-1234-5c1a-b248-da4cbc1a3628', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กะหล่ำดอก', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.2502, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-0828baff0745', 291, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a142cecd-79f6-586e-ae26-b2fd3e621ea7', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กะหล่ำปลี', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.3425, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-90bf5a69e6ab', 292, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('51a125b2-ee8e-565b-af7c-f83e560c7164', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กะหล่ำปลี (อินทรีย์)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.3146, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-eaacb22983aa', 293, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c9ff55e8-a216-53bf-b0b5-86d8b1bbf96f', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กาแฟสารอราบิก้า (ปลูกร่วม)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 5.1991, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-8bd93865cd9e', 294, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d70c3985-5c26-53e3-8509-ade0ad866a02', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กาแฟสารอราบิก้า (ปลูกเชิงเดี่ยว)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 4.9152, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-dfb1cb75eb2e', 295, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('31e44e71-75b4-586f-a11e-1f0937ebd2a9', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กาแฟอราบิก้า (ค่าเฉลี่ย)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 5.6839, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-5a8369f595f9', 296, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('720c5c24-52e9-55c4-b18c-1f0bf78773b6', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กาแฟอราบิก้าคั่วบด', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 7.8091, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-c8f98a82835f', 297, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1d0e2442-576c-5dd6-a403-551a5db279d0', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กาแฟอาราบิกา (อินทรีย์)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.904, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-18a6676a514e', 298, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0543112f-ddd2-5fee-86ca-11aaa56cf947', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กาแฟโรบัสตา', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 8.0783, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-85e9904dbc9f', 299, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('018dc601-3dca-5fa2-bab0-d523dffd19c3', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ข่า', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.2085, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-287052eb99c7', 300, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f0f30c97-b7ba-50a6-9d4b-aae795ba56a5', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ข้าวฟ่างหวาน', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.0531, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-3972732162b0', 301, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('21368106-03d5-5498-a09e-a138a54bb81c', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ข้าวฟ่างเลี้ยงสัตว์', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.6623, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-27b06f7e0383', 302, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('09048134-28ac-54bb-a256-dc6a7a3290c3', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ข้าวโพดฝักอ่อน', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.421, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-16826e281b2d', 303, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7b38dacb-4e21-5d9b-af3b-1f1e73ff42cf', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ข้าวโพดหวาน', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.4042, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-7fcb25e9784c', 304, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('627b4445-0833-594a-aeb5-8ead45b66d82', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ขิง', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.1185, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-43b3f4bbd340', 305, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ace2a51a-63b6-559d-8e55-64e4f6640c39', 'a1000003-0003-4003-8003-000000000007'::uuid, 'งา', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.3456, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-610555b293b4', 306, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('77a01a90-dbdd-5f37-98e1-8bb573bfc196', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ชาอูหลง (สด)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 1.5107, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-138f22b33a62', 307, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ef6032a3-e6f5-5b65-8975-66c7029cc34e', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ชาอูหลง (สด) (อินทรีย์)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 2.2855, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-6988a6c41905', 308, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('006df0be-1aee-5dbf-8b2a-f903e90786cb', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ชาอูหลง (แห้ง)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 11.6152, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-82e65198225b', 309, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('627eb690-dc96-5a53-8b76-5a9b56c154ef', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ชาอูหลง (แห้ง) (อินทรีย์)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 5.0252, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-8fd531252f01', 310, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('effe1791-7f1d-5db1-8b8f-59463fd28994', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ตะไคร้', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.1707, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-b038806076a7', 311, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3eaa8dc0-33d9-575b-a0d0-4a53948ece61', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ถั่วดำ', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.4151, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-6962aea293a5', 312, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4392e868-8b96-539e-b986-116de7317342', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ถั่วฝักยาว', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.3234, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-7606a6c73263', 313, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4277068b-3de3-5133-841f-184d5f6d6a81', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ถั่วลิสง', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.7544, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-dca6c20b1334', 314, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('06dfa85e-57d3-5b27-8a2f-8ba2878eb963', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ถั่วเขียว', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.8806, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-ef8114345238', 315, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3a9cf54a-570d-5187-af4d-9b4574aaaf90', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ถั่วเหลืองฝักสด', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.535, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-f21592f92d7f', 316, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c84ba67d-4fd1-5606-ad33-164a6654f89b', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ถั่วแขก', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.3, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-5746a474574a', 317, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c27bf346-dc7d-5ad0-bec2-a6110f7bea06', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ถั่วแขก (อินทรีย์)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.1581, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-20dd9754b549', 318, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7bf6aa16-2740-5a9e-b17d-a356711dc638', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ทุเรียน', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.2412, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-43df11ee2ace', 319, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('50b0c5df-5a36-5e84-a111-d9d6738886f3', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผลมะกรูด', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.2848, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-29b9a5723f97', 320, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2bb270e2-de81-5a73-8161-4a6bd546d8bc', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผักกาดหอม', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.922, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-89c0b480453d', 321, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b8a72153-208f-53be-9a57-f8c457be908f', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผักกาดหัว (อินทรีย์)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.2612, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-a558cfeb398e', 322, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('42fe81e8-1fe7-5fdd-90df-b11996a97685', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผักกาดเขียวกวางตุ้ง', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.193, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-29da5b1ee524', 323, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('36db0d3f-ecab-5a64-8f93-0a98ffbb7b35', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผักกาดเขียวกวางตุ้ง (อินทรีย์)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.2585, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-0be1266916ba', 324, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('243f9433-0fbc-58c4-bb81-dea11c8f2fea', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผักคะน้า', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.2401, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-701650495774', 325, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ad39fca5-4e05-54c7-b571-56e683c1b472', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ฝรั่ง', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.4724, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-8af16b2265de', 326, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2a09705c-1526-5566-9c84-36c65c3d1f2c', 'a1000003-0003-4003-8003-000000000007'::uuid, 'พริกขี้หนู', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.4138, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-f3a9bb352517', 327, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6e47b9a9-e6b4-5d80-b5d7-ae23deb1d42c', 'a1000003-0003-4003-8003-000000000007'::uuid, 'พริกชี้ฟ้า', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.4668, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-668f779eca2e', 328, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8da0f427-39ab-5abe-8ab9-f9302ab38654', 'a1000003-0003-4003-8003-000000000007'::uuid, 'พริกหวาน', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.544, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-3cb7ab011ab6', 329, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f87f9b48-80d1-5fc1-9018-402fa145d906', 'a1000003-0003-4003-8003-000000000007'::uuid, 'พริกไทย', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 1.3891, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-6670e52aa65a', 330, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c82ff01d-9681-57e7-ad2f-a0c92e52014d', 'a1000003-0003-4003-8003-000000000007'::uuid, 'มะนาว', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.2043, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-3fac88695930', 331, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b0c8a88d-4ead-52d8-89e1-d258c0814b8b', 'a1000003-0003-4003-8003-000000000007'::uuid, 'มะพร้าว', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.8392, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-781c2410814c', 332, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ce29434b-2072-5bf0-a16f-bbf5b0b37ffb', 'a1000003-0003-4003-8003-000000000007'::uuid, 'มะพร้าวน้ำหอม', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 1.3039, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d734289f36da', 333, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('45cb3ca3-5b27-5746-b25e-9200c1d1b17d', 'a1000003-0003-4003-8003-000000000007'::uuid, 'มะม่วง', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.2977, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-4d473931b1c0', 334, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4a21b172-6331-57ea-9d27-d238733852e5', 'a1000003-0003-4003-8003-000000000007'::uuid, 'มะเขือเทศ', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.4633, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-75e8f8e82cd9', 335, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('59cb4095-8ec2-5b7f-8f46-f0875672b96d', 'a1000003-0003-4003-8003-000000000007'::uuid, 'มังคุด', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.9287, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-7a96bf870f06', 336, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('07ec57d0-33bd-5268-a560-b51f14060397', 'a1000003-0003-4003-8003-000000000007'::uuid, 'มันฝรั่ง', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.1463, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-359db0ef4707', 337, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5a53d6fa-d3b8-501b-b3aa-38981fa66789', 'a1000003-0003-4003-8003-000000000007'::uuid, 'มันสำปะหลัง', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.0387, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-34558e04bdb9', 338, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b9b10be7-bcf1-5e59-be4b-4edfe7a9170c', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ลองกอง', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.6104, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-ba317457f3c7', 339, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e019dcd5-6f34-54df-bb77-55fdfea45f79', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ลำไยนอกฤดู', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.9755, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-106175813b86', 340, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9716f167-d26d-5b45-a634-80945edd94bb', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ลำไยในฤดู', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.5895, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-9df24bb0b15e', 341, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('bc45cf96-71e8-5afe-b3b0-f2aecc90ef5b', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ลิ้นจี่', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 1.1649, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-9e707b9c1132', 342, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('917955cb-9720-5a8f-aac3-b35644cfed07', 'a1000003-0003-4003-8003-000000000007'::uuid, 'สตรอเบอรี่', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.606, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-c2c4a54d17d6', 343, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('54c5bf21-e670-5a33-b19f-e8fbc5c09efc', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ส้มเขียวหวาน', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.7169, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-081a029ac28f', 344, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5d6abf1e-2f82-5c86-ab23-fafb7994bec8', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ส้มโอ', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.2558, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-573c9829b53e', 345, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f613ca8d-6b78-518f-8877-fc7e6273ceae', 'a1000003-0003-4003-8003-000000000007'::uuid, 'สับปะรดผลสด', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.125, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-553fca206f6b', 346, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('fcd6d279-e03c-57e3-9a6a-147659ba735a', 'a1000003-0003-4003-8003-000000000007'::uuid, 'สับปะรดโรงงาน', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.3295, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d7ac098da450', 347, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2ed7f0db-e673-53ae-9c09-5429680a267b', 'a1000003-0003-4003-8003-000000000007'::uuid, 'หน่อไม้', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 1.0726, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-216c8e6d9a2f', 348, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('294d385d-5052-561a-a75a-f62a7060d3b6', 'a1000003-0003-4003-8003-000000000007'::uuid, 'หน่อไม้ฝรั่ง (อินทรีย์)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 1.2537, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-a6c3eb88ef6a', 349, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4e8cadca-e918-5f76-ae31-2361f63b7607', 'a1000003-0003-4003-8003-000000000007'::uuid, 'หอมหัวใหญ่', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.3188, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-caa4dfecad2f', 350, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4b7630e8-4c53-53f8-8b57-b935ef000abb', 'a1000003-0003-4003-8003-000000000007'::uuid, 'หอมแดง', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.3907, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-ba3708d1680a', 351, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d1ecfdc5-080e-50bf-a041-c8e481f41e1a', 'a1000003-0003-4003-8003-000000000007'::uuid, 'องุ่น (ปลูกแบบมีหลังคา)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.2147, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-9fa61481213a', 352, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a75b296e-179a-5342-a797-d9d21b2bd8cf', 'a1000003-0003-4003-8003-000000000007'::uuid, 'องุ่น (ปลูกแบบไม่มีหลังคา)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.3289, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-4f4cf0eb7f68', 353, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0f2c08df-c35c-5563-b0f2-9c87ba3ea149', 'a1000003-0003-4003-8003-000000000007'::uuid, 'อ้อยคั้นน้ำ', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.063, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-06a5cf0f6024', 354, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c7959d69-e971-567d-849f-bc26c4bc31c0', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เงาะ', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.205, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-4931d7cd2dd1', 355, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a1e4b428-7a57-566f-a6ea-3ccb04191ee9', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เห็ดฟาง', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.2295, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-3ed807058662', 356, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('42476d1a-aea6-5b33-99c8-cfb9cf17b6d5', 'a1000003-0003-4003-8003-000000000007'::uuid, 'แครอท', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.2661, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-2474de22dd28', 357, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('820f1afb-b6a7-5fa7-bffb-681e99f38a98', 'a1000003-0003-4003-8003-000000000007'::uuid, 'แตงกวา', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.3441, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-8d611c7eeacf', 358, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b8d4d8e6-e663-5721-b4ea-52a2f000477c', 'a1000003-0003-4003-8003-000000000007'::uuid, 'แตงโม', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.4844, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-bbd6de290b86', 359, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7da50c07-d2ee-5abc-a9e5-59bca4c0396f', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ใบมะกรูด', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.4973, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-43fe002976f0', 360, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('76738d49-93de-50c5-bd59-06185cdbd4b9', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผ้าถักจากเส้นด้ายฝ้าย', 'กลุ่มสิ่งทอ (Textile)', 'kg', 8.2794, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-947c1b21a878', 361, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('938d1a18-9ef7-5b8a-ba96-7dbd887d7dbc', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผ้าถักจากเส้นด้ายฝ้าย; จากกระบวนการฟอกย้อมและตกแต่งสำเร็จ', 'กลุ่มสิ่งทอ (Textile)', 'kg', 12.2313, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-97224caad0ae', 362, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('013f59eb-a2ab-5c98-be48-15487b22333c', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผ้าถักจากเส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ CVC', 'กลุ่มสิ่งทอ (Textile)', 'kg', 4.9192, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-f7c0b09f34b8', 363, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c9e7edaa-e69b-56c6-a0bf-2b99a2d4216a', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผ้าถักจากเส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ CVC; จากกระบวนการฟอกย้อมและตกแต่งสำเร็จ', 'กลุ่มสิ่งทอ (Textile)', 'kg', 8.646, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-986bcf9d0012', 364, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5b68a86f-a054-50f1-9da0-2196b7a7d751', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผ้าถักจากเส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ TC', 'กลุ่มสิ่งทอ (Textile)', 'kg', 5.5651, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-4d72e2c9fb5f', 365, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b6c41c72-3a08-5220-85e2-f9c5ac32a0ba', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผ้าถักจากเส้นด้ายโพลีเอสเตอร์', 'กลุ่มสิ่งทอ (Textile)', 'kg', 4.4169, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-58dc59bff748', 366, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7a19aa5b-f6f3-52f4-9677-19c893a0561c', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผ้าถักจากเส้นด้ายโพลีเอสเตอร์; จากกระบวนการฟอกย้อมและตกแต่งสำเร็จ', 'กลุ่มสิ่งทอ (Textile)', 'kg', 6.8223, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-bcc22e377475', 367, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7cf2dc24-4e1e-512f-85a6-be393ec9b046', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผ้าทอจากเส้นด้ายฝ้าย', 'กลุ่มสิ่งทอ (Textile)', 'kg', 12.0915, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-c0f60ea1be1e', 368, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7ec5e53c-f579-5bdb-a9e4-1307af22afcb', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผ้าทอจากเส้นด้ายฝ้าย; จากกระบวนการฟอกย้อมและตกแต่งสำเร็จ', 'กลุ่มสิ่งทอ (Textile)', 'kg', 16.054, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-2a3a5680a259', 369, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('71763798-1f3c-580e-8e12-be1578723ceb', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผ้าทอจากเส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ CVC', 'กลุ่มสิ่งทอ (Textile)', 'kg', 6.6296, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-e742d6de6761', 370, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b29353de-338c-56b7-8efc-119d894e75a6', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผ้าทอจากเส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ CVC; จากกระบวนการฟอกย้อมและตกแต่งสำเร็จ', 'กลุ่มสิ่งทอ (Textile)', 'kg', 9.1462, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-992555e41510', 371, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f9ba4094-cd68-5db4-a69d-c146d87c8e98', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผ้าทอจากเส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ TC', 'กลุ่มสิ่งทอ (Textile)', 'kg', 8.3837, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d48775fd5636', 372, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('58b2a87a-390c-5608-a87e-a4c1905ab596', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผ้าทอจากเส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ TC; จากกระบวนการฟอกย้อมและตกแต่งสำเร็จ', 'กลุ่มสิ่งทอ (Textile)', 'kg', 14.1111, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-dabd858b92d0', 373, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('029b479c-5830-5cc6-944f-aa724209076e', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผ้าทอจากเส้นด้ายโพลีเอสเตอร์', 'กลุ่มสิ่งทอ (Textile)', 'kg', 6.1192, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-1b52f7255ff6', 374, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2ba8863e-6fd0-5cbe-96c0-e71a03a7d05a', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผ้าทอจากเส้นด้ายโพลีเอสเตอร์;จากกระบวนการฟอกย้อมและตกแต่งสำเร็จ', 'กลุ่มสิ่งทอ (Textile)', 'kg', 9.5714, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-02ef6b35c411', 375, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d866a8aa-0f7f-5519-91b5-46fa8c63d2e5', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เส้นด้ายฝ้าย', 'กลุ่มสิ่งทอ (Textile)', 'kg', 11.0609, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-0d3aadb40cd1', 376, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('778274df-63ff-57aa-904e-ff3dbc637b22', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ CVC', 'กลุ่มสิ่งทอ (Textile)', 'kg', 4.1388, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-656da0bdf475', 377, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d15b660d-ff4d-52f1-96a5-af70ea6ba5f3', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ CVC', 'กลุ่มสิ่งทอ (Textile)', 'kg', 9.4051, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-685de924688c', 378, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3e6681ae-d5dc-50f7-8967-8be600787be9', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ TC', 'กลุ่มสิ่งทอ (Textile)', 'kg', 5.0407, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-2b2bb8f06579', 379, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('88b69307-2f52-5f00-b6ba-f17f79822cb6', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ TC', 'กลุ่มสิ่งทอ (Textile)', 'kg', 9.6122, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-6dfee4e8967d', 380, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e1fdc873-ba01-5ebf-91a2-ad3bd911174d', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เส้นด้ายฝ้ายสาง', 'กลุ่มสิ่งทอ (Textile)', 'kg', 7.191, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-271e60df6366', 381, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('26f6dd11-7e84-52a0-92e0-2e429904ef71', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เส้นด้ายฝ้ายหวี', 'กลุ่มสิ่งทอ (Textile)', 'kg', 7.8285, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-965cd64c1943', 382, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('98e0136a-fa76-5833-bff7-27c926f8d847', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เส้นด้ายโพลีเอสเตอร์; จากกระบวนการปั่นเส้นด้าย', 'กลุ่มสิ่งทอ (Textile)', 'kg', 3.6928, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-c1aee455fa71', 383, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ce1486b5-00dc-50a7-aa47-f177aecd04f8', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เส้นด้ายโพลีเอสเตอร์; จากกระบวนการย้อมสี', 'กลุ่มสิ่งทอ (Textile)', 'kg', 6.2029, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-e96a954baa66', 384, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('520b006c-8a2e-52d3-bd8c-d7b8372299a8', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กากถั่วเหลือง', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 0.7751, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-36bf0a98ccf7', 385, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6924a0ae-818e-5320-8014-4ae3e2937d18', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การปลูกข้าวโพดเลี้ยงสัตว์', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 0.2575, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-96cf321fcad0', 386, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1a0032f6-7e83-585d-b612-84d53a282f88', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ถั่วเหลือง', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 0.5384, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-bc2e03a7d404', 387, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('02c2ee85-518e-51c4-be60-2522c3d78a4b', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ปลาป่นที่ผลิตจากปลาเป็ด', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 1.7498, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-ef6ff1cd73c0', 388, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ecd64a2d-b441-56e2-8625-24dcd0e9bd99', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ปลาป่นที่ผลิตจากเศษปลาซูริมิ', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 1.1111, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-5a1aea352ece', 389, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('028b8ef7-c39f-576a-80f9-20f333348ce8', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ปลาป่นที่ผลิตจากเศษปลาทูน่า', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 3.6894, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-f2be171e4733', 390, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6bac4df4-8fb7-5131-8fb0-204c7ab6df8d', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ปลาเป็ด', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 0.0009, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-a2beeaff8f44', 391, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('684b3480-bde4-557c-84c4-8157943be94b', 'a1000003-0003-4003-8003-000000000007'::uuid, 'อาหารสุกรขุน', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 0.8728, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-8f2a60689544', 392, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('beb15b24-9034-5abc-bc49-de62f7ed6f6a', 'a1000003-0003-4003-8003-000000000007'::uuid, 'อาหารไก่เนื้อที่มีโปรตีนจากเนื้อสัตว์เป็นองค์ประกอบ', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 0.8256, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-f5bbf1fcb8ff', 393, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('bb8eda65-4900-567d-abb5-5b1ad7461dd7', 'a1000003-0003-4003-8003-000000000007'::uuid, 'อาหารไก่เนื้อที่ไม่มีโปรตีนจากเนื้อสัตว์เป็นองค์ประกอบ', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 0.922, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-b366073be336', 394, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('150302ae-f1b0-53e0-bfdb-120ffe6569fd', 'a1000003-0003-4003-8003-000000000007'::uuid, 'อาหารไก่ไข่', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 0.7367, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-550d0e645066', 395, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ae26f485-a542-58c2-9f3d-7823c0276f30', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เมล็ดข้าวโพดเลี้ยงสัตว์', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 0.298, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-215a4f5ce4f0', 396, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('cedbabb9-43f5-56a0-ac21-69bdbabc3486', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เมล็ดข้าวโพดเลี้ยงสัตว์', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 0.3412, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-5a094b43f652', 397, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0af9cd63-7655-597e-aeb3-a1a719f3fb45', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เศษปลาจากซูริมิ', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 0.0292, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-fdab80af1d8d', 398, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('10a7356f-7c5d-5ff7-b443-da868dec1d8c', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เศษปลาจากทูน่า', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 1.2656, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-1d25508b52ec', 399, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('edef912c-0766-5ce8-9635-d550064b6cc9', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กรดไขมันปาล์ม (PFAD), ค่าเฉลี่ยประเทศไทย', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.9406, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-0cd356347afe', 400, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2475b972-dfff-5270-bc39-6883f78563fd', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กลีเซอรีน, ค่าเฉลี่ยประเทศไทย', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.6605, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-5f6981201e34', 401, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('376e9b01-2ee9-5ad3-a883-8ef81521f7a9', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กะลาปาล์ม, ค่าเฉลี่ยประเทศไทย', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.3647, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-6fe0638caef1', 402, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('210bea3a-dcee-5bc3-8dcc-7414e50b0171', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กะลาปาล์ม, จากโรงงานที่มีระบบผลิตก๊าซชีวภาพ', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.2951, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-9a9c7bf37f76', 403, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('03a82f7a-79a4-5d54-a2f3-083b3b604a69', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กะลาปาล์ม, จากโรงงานที่ไม่มีระบบผลิตก๊าซชีวภาพ', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.4854, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-ab29ec1f8394', 404, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4e3d51e8-a782-5e8c-840a-eb13377a35d1', 'a1000003-0003-4003-8003-000000000007'::uuid, 'น้ำมันปาล์มดิบ, ค่าเฉลี่ยประเทศไทย', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.8339, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-a80ef914177c', 405, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('09a01aec-4ad6-5bf9-a60c-442efb90bb06', 'a1000003-0003-4003-8003-000000000007'::uuid, 'น้ำมันปาล์มดิบ, จากโรงงานที่มีระบบผลิตก๊าซชีวภาพ', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.6955, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-19f8767d711f', 406, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('137cfc8e-449b-5a0e-bd37-a1bf3861aa90', 'a1000003-0003-4003-8003-000000000007'::uuid, 'น้ำมันปาล์มดิบ, จากโรงงานที่ไม่มีระบบผลิตก๊าซชีวภาพ', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 1.1445, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d8c4f3b33e56', 407, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2510af66-c7e0-5b7c-bc50-fa4126d724fc', 'a1000003-0003-4003-8003-000000000007'::uuid, 'น้ำมันปาล์มบริสุทธิ์ (RBDPO), ค่าเฉลี่ยประเทศไทย', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.9069, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-e602a3d7449b', 408, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3fb148cd-106c-5543-8c76-8fd06e40ec83', 'a1000003-0003-4003-8003-000000000007'::uuid, 'น้ำมันปาล์มโอเลอิน (Olein), ค่าเฉลี่ยประเทศไทย', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.9275, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-06eafd73173e', 409, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7854de10-de6c-5a4d-bec5-002acb2bfae1', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผลปาล์มทะลายสด ค่าเฉลี่ยประเทศไทย', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.0678, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-e75305311a05', 410, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e02a7e93-c103-5c94-b7bd-683dbd490b04', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผลปาล์มทะลายสด ภาคตะวันออก (สวนขนาดเล็ก)', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.0679, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-7f30a02cec0b', 411, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a6ce1f71-1144-5b7c-bf26-a77336dfc603', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผลปาล์มทะลายสด ภาคตะวันออก (สวนขนาดใหญ่)', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.0821, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-bef932f9dd03', 412, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b5cb5935-70ea-552f-9f7c-407d24c8a680', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผลปาล์มทะลายสด ภาคใต้ตอนบน (สวนขนาดเล็ก)', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.0568, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-03aeebd3afe5', 413, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8a615045-b12d-59bb-8056-89bc10dc650d', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผลปาล์มทะลายสด ภาคใต้ตอนบน (สวนขนาดใหญ่)', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.0605, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-a263a783c7cd', 414, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6f846e22-68fe-577c-9806-e760912e523b', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผลปาล์มทะลายสด ภาคใต้ตอนล่างฝั่งตะวันตก (สวนขนาดเล็ก)', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.0681, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-3eb03124d0d5', 415, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('16a80322-f8e3-5a5b-b403-f154b83285e5', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผลปาล์มทะลายสด ภาคใต้ตอนล่างฝั่งตะวันตก (สวนขนาดใหญ่)', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.0784, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-22478e8396e8', 416, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ee1cb822-6657-500f-8754-8de97973dcf4', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผลปาล์มทะลายสด ภาคใต้ตอนล่างฝั่งตะวันออก (สวนขนาดเล็ก)', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.0737, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-92a3342866fb', 417, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('796280e8-5b81-5039-b4c9-64b8226b7485', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ผลปาล์มทะลายสด ภาคใต้ตอนล่างฝั่งตะวันออก (สวนขนาดใหญ่)', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.0695, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-62e6a7d921fc', 418, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('03bbf426-625e-573c-8f28-f1db0ed8ce07', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เมล็ดในปาล์ม, ค่าเฉลี่ยประเทศไทย', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.5672, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-51a6881180ac', 419, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3aa03ebf-b005-55d7-9f7a-de7d3e98ec92', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เมล็ดในปาล์ม, จากโรงงานที่มีระบบผลิตก๊าซชีวภาพ', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.4602, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-434852ec64cb', 420, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5b5ba268-49aa-56b2-9c04-32b9c6fd369e', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เมล็ดในปาล์ม, จากโรงงานที่ไม่มีระบบผลิตก๊าซชีวภาพ', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.7573, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-125eaa31df61', 421, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d1a5c438-0b7a-5f8a-aaed-5d1f8e3d69e6', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ไขมันปาล์ม (Stearin) ค่าเฉลี่ยประเทศไทย', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 1.0066, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-849a5bd5c9c7', 422, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('25a57af9-b51f-56cc-a80a-52f836bc68b9', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ไบโอดีเซล, ค่าเฉลี่ยประเทศไทย', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 1.0372, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-6daf2237322b', 423, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('bb73d34b-43ab-55bf-9b9a-0e5372440151', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กล้ายางชำถุง', 'กลุ่มอุตสาหกรรมยางธรรมชาติ (Natural rubber)', 'p', 0.352, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-4674b072ea28', 424, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('77c28b3e-d2a4-5406-8b42-07d53d67a5f0', 'a1000003-0003-4003-8003-000000000007'::uuid, 'น้ำยางข้น (DRC 60%)', 'กลุ่มอุตสาหกรรมยางธรรมชาติ (Natural rubber)', 'kg', 0.1787, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-2899e067c71e', 425, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('53ebff54-5597-566a-ae34-197f17447434', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ยางก้อนถ้วย (DRC 55%)', 'กลุ่มอุตสาหกรรมยางธรรมชาติ (Natural rubber)', 'kg', 0.0494, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-8db19bec49a7', 426, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('dbabe039-831d-5ad2-ac7c-492f7df8342b', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ยางสกิม', 'กลุ่มอุตสาหกรรมยางธรรมชาติ (Natural rubber)', 'kg', 0.3443, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d1f239ff9c2c', 427, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c7a0f071-dffa-5abc-9ea2-514df4c1a1bc', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ยางแท่ง STR 10/20', 'กลุ่มอุตสาหกรรมยางธรรมชาติ (Natural rubber)', 'kg', 0.2479, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-5a9651331592', 428, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c2133710-d853-53f9-9c93-1b9ffe3fec66', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ยางแท่ง STR KL/5L/5CV', 'กลุ่มอุตสาหกรรมยางธรรมชาติ (Natural rubber)', 'kg', 0.2205, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-8c5cd41e9ae4', 429, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e89a94fb-8535-5cc4-9741-e8f9466a956e', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กิ่งไม้ยางพารา', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0372, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-03c2bcc3f218', 430, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('156de183-0d8c-54df-8302-00db9bb0a4a2', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ขี้เลื่อยจากพาเลทไม้ยางพารา', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0804, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-1dfeab804da2', 431, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8caf60d6-597b-5a53-af28-511244cd5eea', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ขี้เลื่อยจากไม้ยางพาราประสาน', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.2191, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-2f5e6c76f8f6', 432, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('bc516829-b53d-58c8-b6c5-fe32263fb2d5', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ขี้เลื่อยจากไม้ยางพาราอัดประสาน', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.3372, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-88462860a556', 433, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0a94068e-28c3-533f-aad9-c70adb4a55b6', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ขี้เลื่อยจากไม้ยางพาราแปรรูป', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0706, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-a276309fcd83', 434, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('675fd9ef-d5ba-5185-9175-7e57c2537b40', 'a1000003-0003-4003-8003-000000000007'::uuid, 'น้ำยางสด', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0264, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-a1432820f7b8', 435, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9e7f5d1e-6195-5b32-9bf0-144daa5b0306', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ปีกไม้ยางพารา', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0706, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-b1636297d43d', 436, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('dc33e0a5-dd45-55e1-a93e-39500268b85a', 'a1000003-0003-4003-8003-000000000007'::uuid, 'พาเลทไม้ยางพารา', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0804, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-03e5e254bc47', 437, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('751e97a5-6c04-5b0d-bec1-313360edb53d', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เศษยาง', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0265, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-0ad346220d4f', 438, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9c2584f0-2d8d-5f89-815a-e41617e262af', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ไม้ยางพาราท่อนสด', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0372, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-058ddf12ebb7', 439, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b49e6efc-50be-53ee-af5c-416f4c32ecdd', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ไม้ยางพาราประสาน เกรด AB', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.2191, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-643de4aae359', 440, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5b8ce95b-e7ed-55a5-9eb9-a70b1c0b4dd1', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ไม้ยางพาราประสาน เกรด C', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.2191, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-37184bd3b63c', 441, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('85902ce2-3877-5304-91f9-f09d1bc7ae7a', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ไม้ยางพาราสด', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0264, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-66e755634130', 442, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e5cb64d0-debb-55a1-92e2-6ae4dd7c61c6', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ไม้ยางพาราอัดประสาน เกรด AB', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.3372, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d3e42f2fdd98', 443, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e4da1b26-90ec-571f-90e4-9e1efef97f2b', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ไม้ยางพาราอัดประสาน เกรด C', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.3372, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-4911178ad4c0', 444, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('df6f0d39-f79e-54c0-90f7-d310037fc477', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ไม้ยางพาราแปรรูป เกรด AB', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0706, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-ab053019cc77', 445, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b14e7bd3-7f76-506f-9ea6-0e9b6ae95d70', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ไม้ยางพาราแปรรูป เกรด C', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0706, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-8decc6660e2a', 446, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2fc84a63-fecb-53b3-ad49-b1ab308efba4', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การพรวนจานโดยแทรกเตอร์ขนาด 90 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.004, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-0482107b6393', 447, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('513dd2bc-dc23-5673-aadd-8fc6641dd72c', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การพรวนซี่สริงโดยแทรกเตอร์ขนาด 90 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0031, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-0ac36cedacb0', 448, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('95af7cb5-c96d-5940-a52f-bfdb06c5e8fd', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การใช้รถแทรกเตอร์สองล้อ (รถไถเดินตาม) (&lt; 18 แรงม้า) ขับเคลื่อนด้วยน้ำมันดีเซล', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'hr', 6.3752, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d3f48346a3cb', 449, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2f7c1677-5e99-55e5-86f7-48e919eab86d', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การใช้รถแทรกเตอร์สองล้อ (รถไถเดินตาม) (&lt; 18 แรงม้า) ขับเคลื่อนด้วยน้ำมันเบนซิน', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'hr', 7.1084, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-ac2e3770e1e1', 450, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('27780eea-95be-51bf-b2d2-aa7514e9c4fa', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การใช้รถแทรกเตอร์สี่ล้อขนาด 15 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'hr', 10.6537, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d66181cc777e', 451, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c69e7935-14a2-55d3-b171-a118d1981b52', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การใช้รถแทรกเตอร์สี่ล้อขนาด 35 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'hr', 23.9727, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-3b6109cd9446', 452, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ce8e7f9a-b30d-5e0c-90fb-d91db1632b42', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การใช้รถแทรกเตอร์สี่ล้อขนาด 45 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'hr', 30.7268, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-1d6b709c80d3', 453, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9dc5353f-7b21-513e-97bb-6d4ee627a0e2', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การใช้รถแทรกเตอร์สี่ล้อขนาด 70 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'hr', 47.7623, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d07d001be52e', 454, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('eda941ee-1362-55db-91bc-d33de4f6b5f0', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การใช้รถแทรกเตอร์สี่ล้อขนาด 80 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'hr', 54.6728, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-9db6510ca642', 455, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2fcc55c4-3deb-535c-bc71-6c55b450f677', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การใช้รถแทรกเตอร์สี่ล้อขนาด 90 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'hr', 61.2466, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-67dd76034e5d', 456, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('bf53d14d-2f75-59c6-b875-eaec26f62c1f', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การใช้รถไถตอซังขนาด 35 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0029, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-174b9148cf1a', 457, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2a2da0ed-3336-5526-b330-3f70fe0ba1f3', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การใช้เครื่องปลูกหัวมันสำปะหลัง ขนาด 90 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0022, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-0ae7d9a5fb6d', 458, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1dd23bad-10f0-5f4b-a584-18cd68d8bb82', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การใช้เครื่องพ่นยาแบบติดท้ายรถแทรคเตอร์ขนาด 35 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0008, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-f11034f4023a', 459, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('64f2d4e3-8640-5304-ad74-e0ca0dab2d93', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การใช้เครื่องพ่นยาแบบสูบโยกสะพายหลัง ขนาด 2-5 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 5.5897377e-10, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-022b0767f878', 460, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1f6a3f85-a8ec-51f6-b57f-50e726414fbf', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การใช้เครื่องพรวนระหว่างแถว (การไถย่อยดิน) ขนาด 35 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0016, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-bd194d5224e8', 461, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a1e251c2-b3a6-582b-8efa-4bbe41cc9da6', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การใช้เครื่องพรวนเพื่อกำจัดวัชพืชขนาด 35 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0013, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-2ab68bc52299', 462, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ad1f9b11-ba0f-5f70-be5b-db629d2e7c4d', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การใช้เครื่องสูบน้ำสำหรับการเกษตรขนาด 15 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm3', 0.0551, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-e2f9e8f54394', 463, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f85902a1-6f0d-58d8-86df-19b43424c7cd', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การใช้เครื่องหว่านปุ๋ยเม็ด ขนาด 35 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0012, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-b767aabb9b31', 464, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('48d4284f-cac3-587f-9dac-73ea3f1d2b2c', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การใช้เครื่องหว่านเมล็ดขนาด 35 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0021, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-2c1f7ccb8ca6', 465, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e66a37fa-565a-569f-8228-a86fb663d658', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การใช้เครื่องเกี่ยวนวดข้าว', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0071, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-0b659da576dd', 466, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a4de168d-c225-5269-a031-eb52a67189ff', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การใช้เครื่องเกี่ยวนวดข้าวโพด', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0083, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-8ca9d378fc5e', 467, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('dc5eeb3b-4b8d-57b3-bc55-8be6054f9cc2', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การใช้เครื่องเติมอากาศขนาด 2-3 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'hp-hr', 1.1821, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-afc55f5baa35', 468, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2ea7e589-0bdb-579a-9938-6c0febc51171', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การใช้เครื่องใส่ปุ๋ยมูลสัตว์ขนาด 90 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0024, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-14fdfb66da91', 469, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2c789287-eaa6-589d-b9b5-6a372c2b440f', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การใช้เครื่องใส่ปูนขาวขนาด 90 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0031, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-89ce484698cd', 470, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b6b210dc-3216-54b3-b09c-becc48712f0c', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การใช้เลื่อยขนาด 2-3 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'hp-hr', 1.3476, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-e49eeb3519a6', 471, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('026f621c-868f-5c70-8b28-fb26394f5bda', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การใช้ไถหัวหมูโดยแทรกเตอร์ขนาด 90 แรงม้า (คิดรวมการใช้รถแทรกเตอร์แล้ว)', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0075, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-91df29cc237f', 472, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0636ad97-9c2e-5a74-8a4b-31742796de68', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การไถด้วยจานโดยแทรกเตอร์ขนาด 90 แรงม้า (คิดรวมการใช้รถแทรกเตอร์แล้ว)', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0049, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-8488d0c45a8f', 473, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('24d4145d-5a8a-5f6d-99df-aec255b2a685', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การไถดินดานโดยแทรกเตอร์ขนาด 90 แรงม้า (คิดรวมการใช้รถแทรกเตอร์แล้ว)', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0065, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-046954f97da9', 474, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('085b62c0-318a-552b-b7e9-b5d3a0b7abce', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การไถพรวนด้วยเหล็กแหลมโดยแทรกเตอร์ขนาด 90 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0046, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-e339f682b0df', 475, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('81ef4ad3-614e-5c9d-acf8-42ade8532475', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การไถยกร่องโดยแทรกเตอร์ขนาด 90 แรงม้า (คิดรวมการใช้รถแทรกเตอร์แล้ว)', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0042, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-17e2ba0a85f8', 476, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('32478457-c3e2-5057-9510-be2947edcdd7', 'a1000003-0003-4003-8003-000000000007'::uuid, 'การไถลูกกลิ้งโดยแทรกเตอร์ขนาด 90 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0016, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-90525fd14fcd', 477, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2b04db72-e892-5319-91e5-c536988cfdb1', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กระดาษกล่องขาวเคลือบแป้ง/กระดาษกล่องแป้งหลังเทา', 'กลุ่มเยื่อและกระดาษ (Pulp and Paper)', 'kg', 1.8679, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-e62bda3c4cf1', 478, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('457b3115-44bd-5658-9f31-65560ec6dbde', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กระดาษคราฟท์ ชนิดทำผิวกล่อง', 'กลุ่มเยื่อและกระดาษ (Pulp and Paper)', 'kg', 1.6324, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-5206ef57c10c', 479, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('fa7c4c8c-b84e-58f9-9558-1aa6d1193f8a', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กระดาษคราฟท์ ชนิดทำลอน', 'กลุ่มเยื่อและกระดาษ (Pulp and Paper)', 'kg', 1.6184, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-e755ff677f79', 480, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3be1ed9d-f161-50fb-96e0-0d02ba28035c', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กระดาษพิมพ์เขียนแบบเคลือบผิว', 'กลุ่มเยื่อและกระดาษ (Pulp and Paper)', 'kg', 2.1639, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-7624c592ab40', 481, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('dcdefa34-0980-5176-a3ba-74618e4a14f6', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กระดาษพิมพ์เขียนแบบไม่เคลือบผิว', 'กลุ่มเยื่อและกระดาษ (Pulp and Paper)', 'kg', 2.102, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-e2f8b0975909', 482, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('471f61f0-c1b3-5c9e-a9c1-52f2f75bd95c', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กระดาษหนังสือพิมพ์', 'กลุ่มเยื่อและกระดาษ (Pulp and Paper)', 'kg', 1.3589, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-dc9fb54206cb', 483, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f8e74e80-b2d4-5958-a21c-92cdb667b1a4', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เยื่อกระดาษชนิดฟอกขาวจากชานอ้อย', 'กลุ่มเยื่อและกระดาษ (Pulp and Paper)', 'kg', 4.3924, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-3520a504e79e', 484, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2fdfdf26-1629-5006-a463-203f77508ef0', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เยื่อกระดาษชนิดฟอกขาวจากยูคาลิปตัส', 'กลุ่มเยื่อและกระดาษ (Pulp and Paper)', 'kg', 0.6677, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-7f7fc9e0eeb8', 485, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1e5609dd-2799-5a3f-a003-d4d98b9b853d', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เยื่อกึ่งเคมี', 'กลุ่มเยื่อและกระดาษ (Pulp and Paper)', 'kg', 0.2994, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-836f59a146dd', 486, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('51114cc1-6c63-50be-8c27-1097bca3d7d2', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กระจกฉนวนความร้อน', 'กลุ่มแก้วและกระจก (Glass and Mirror)', 'kg', 1.7043, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-f4c6d5b35bcf', 487, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3eedf775-b84c-54e1-95f9-c013c98f85fb', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กระจกนิรภัยชั้นเดียว', 'กลุ่มแก้วและกระจก (Glass and Mirror)', 'kg', 3.1358, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-53347687a04f', 488, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4a3c8a06-f4c1-59c9-b1c5-640324f578db', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กระจกนิรภัยหลายชั้น', 'กลุ่มแก้วและกระจก (Glass and Mirror)', 'kg', 2.4449, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d5fd2b24e497', 489, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('77179ef9-25ec-572a-802f-720c3a2c6962', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กระจกแผ่นเรียบ', 'กลุ่มแก้วและกระจก (Glass and Mirror)', 'kg', 1.2709, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-ebcfbcfdb6e1', 490, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2da62740-8e44-5fff-bde0-093cebfd4683', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ขวดแก้วสีชา', 'กลุ่มแก้วและกระจก (Glass and Mirror)', 'kg', 0.8305, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-aae9e33975bb', 491, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2c489aa0-43e3-59ba-8f73-44b125ec0025', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ขวดแก้วใส', 'กลุ่มแก้วและกระจก (Glass and Mirror)', 'kg', 0.8075, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-2693a1923892', 492, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('dae29d13-a269-5541-82da-731ba2b8269d', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ฉนวนใยแก้ว', 'กลุ่มแก้วและกระจก (Glass and Mirror)', 'kg', 2.5612, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-574add77fc58', 493, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1632fca6-4e4f-5db4-87bd-8dc315070f9a', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ลวดเหล็กกล้าดึงเย็นเสริมคอนกรีต (ลวดปลอก) (Steel Wire: Cold drawn Product)', 'กลุ่มโลหะและอโลหะ (Ferrous and Non-Ferrous)', 'kg', 2.5748, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-0e317e5c7245', 494, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('03ef7907-0fa6-50a9-a3b1-526aaa6de925', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ลวดเหล็กกล้าตีเกลียว 7 เส้น สำหรับคอนกรีตอัดแรง (Steel Wire: PC Strand)', 'กลุ่มโลหะและอโลหะ (Ferrous and Non-Ferrous)', 'kg', 2.8726, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-024bb427c113', 495, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f035aa96-ea5a-5f4b-81e0-79b6e25ccc3a', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ลวดเหล็กกล้าสำหรับคอนกรีตอัดแรง (Steel Wire: PC Single Wire)', 'กลุ่มโลหะและอโลหะ (Ferrous and Non-Ferrous)', 'kg', 2.7911, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-1d5b1c5f1073', 496, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d3dbf13f-5bec-5003-a333-275e5db607e2', 'a1000003-0003-4003-8003-000000000007'::uuid, 'อะลูมิเนียมเส้นหน้าตัด ชุบเคลือบสีอโนไดซ์ ซีรีย์ 6063 (Aluminium extrusion, Anodized 6063)', 'กลุ่มโลหะและอโลหะ (Ferrous and Non-Ferrous)', 'kg', 15.1848, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-2d76a773eaf9', 497, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a3612221-f781-5d74-8f97-1d1ed15b965d', 'a1000003-0003-4003-8003-000000000007'::uuid, 'อะลูมิเนียมเส้นหน้าตัด พ่นสีฝุ่น ซีรีย์ 6063 (Aluminium extrusion, Powder-coated 6063)', 'กลุ่มโลหะและอโลหะ (Ferrous and Non-Ferrous)', 'kg', 22.9605, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-899c150609f4', 498, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4ed69f8f-8737-55ee-8231-629b5e9d20b7', 'a1000003-0003-4003-8003-000000000007'::uuid, 'อะลูมิเนียมเส้นหน้าตัดซีรีย์ MF 6061/6063 (Aluminium extrusion, Mill Finish 6061/6063)', 'กลุ่มโลหะและอโลหะ (Ferrous and Non-Ferrous)', 'kg', 17.2254, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-bfb89fd3ea15', 499, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('42dd368c-e844-5990-b268-2cdace08bee6', 'a1000003-0003-4003-8003-000000000007'::uuid, 'อะลูมิเนียมแท่งบิลเลท (Aluminium, billet)', 'กลุ่มโลหะและอโลหะ (Ferrous and Non-Ferrous)', 'kg', 11.9048, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-b2286e3e9bc5', 500, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('294e6052-962d-5db6-ae22-1600bdd0bc9e', 'a1000003-0003-4003-8003-000000000007'::uuid, 'อะลูมิเนียมแผ่นชนิดม้วน (Aluminium, flat-rolled)', 'กลุ่มโลหะและอโลหะ (Ferrous and Non-Ferrous)', 'kg', 5.8236, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-c62491d81770', 501, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('bb0dcfd9-2c35-524e-bb68-caec014e3abe', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เหล็กแผ่นรีดร้อนชนิดม้วน (Hot Rolled Coil Steel)', 'กลุ่มโลหะและอโลหะ (Ferrous and Non-Ferrous)', 'kg', 1.8578, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-bd41e003018f', 502, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9ffb9bc7-73c0-557d-9762-bb03f275c125', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เหล็กแผ่นรีดร้อนชนิดแผ่นหนา (Hot Rolled Steel Plate)', 'กลุ่มโลหะและอโลหะ (Ferrous and Non-Ferrous)', 'kg', 2.8307, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-3010fc005209', 503, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e9cc1119-a89d-53bf-b077-5ae0062aad96', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เหล็กแผ่นรีดเย็นชนิดม้วน (Cold-rolled Steel Coil)', 'กลุ่มโลหะและอโลหะ (Ferrous and Non-Ferrous)', 'kg', 2.031, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-f02b0623b5d0', 504, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('29ddf299-fd47-5aeb-860c-7675919d7faa', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เหล็กแผ่นเคลือบสี (Pre-Painted Steel Coil)', 'กลุ่มโลหะและอโลหะ (Ferrous and Non-Ferrous)', 'kg', 3.4776, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-bf93a2b4d492', 505, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f899d550-cc36-5e21-b822-cd8e7959aded', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เหล็กแผ่นเคลือบโลหะ (Metal Coated Steel Coil)', 'กลุ่มโลหะและอโลหะ (Ferrous and Non-Ferrous)', 'kg', 3.1732, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-bd00c894d547', 506, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7cf8482f-21e7-5ce2-8520-333ae1bb8c2b', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ไฟฟ้า', 'กลุ่มไฟฟ้า (Electricity)', 'kWh', 0.5562, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-b06ea04b1200', 507, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('43cec752-5c97-5029-acb0-d4f5f9a6e435', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ต้นกล้าหม่อนชำถุง (Mulberry nursery)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 0.0705, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-dc57f9342ece', 508, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f7859ecd-c362-5533-8a29-6ff87a0410b5', 'a1000003-0003-4003-8003-000000000007'::uuid, 'รังไหม (Silkworm cocoon)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 6.712, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d7a5ca4fe4e6', 509, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d5782e30-9886-5eda-894d-834c78319b04', 'a1000003-0003-4003-8003-000000000007'::uuid, 'สีธรรมชาติ จากต้นคราม (Natural color, from indigo blue)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 0.1811, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-9bee86159daa', 510, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('56c9b30a-58ab-5df2-a986-2512eb74ec7b', 'a1000003-0003-4003-8003-000000000007'::uuid, 'หม่อนผลสด - การปลูกแบบทั่วไป  (Non-GAP) (Mulberry fruit; Non-GAP)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 0.3922, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-e3dcb7e53a18', 511, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ac150fd4-f829-584c-acd0-45744f70c223', 'a1000003-0003-4003-8003-000000000007'::uuid, 'หม่อนผลสด - การปลูกแบบมีระบบปฏิบัติทางการเกษตรที่ดีสำหรับหม่อนเพื่อผลิตหม่อนผล (GAP) (Mulberry fruit; GAP)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 0.1853, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-fb1f99ac852b', 512, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('89434be0-6586-5691-a935-b3e5bf9385fa', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เส้นไหม ย้อมสีธรรมชาติ (Dyed Silks, with chemical color)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 75.687, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-1f5a172fc479', 513, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e1512766-df5e-579e-b481-5aa7718fa9ea', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เส้นไหม ย้อมสีเคมี (Dyed Silks, with chemical color)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 76.812, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-891335342cf6', 514, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0d1b622a-8984-5968-a9db-104ef4413a31', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เส้นไหม ไม่ย้อมสี &ndash; ลอกกาวธรรมชาติ (Degummed silk, natural production)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 69.2072, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-81000808c28e', 515, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('95ddf7ef-acd8-541a-89b2-79d7269a5414', 'a1000003-0003-4003-8003-000000000007'::uuid, 'เส้นไหม ไม่ย้อมสี &ndash; ลอกกาวเคมี (Degummed silk, chemical production)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 77.223, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-6ba2c78d49a1', 516, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0e778201-ad37-5a3f-9c00-5474dbfe18b7', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ใบหม่อนสำหรับผลิตชา - การปลูกแบบทั่วไป (Non-GAP) (Mulberry leave, for tea production; Non-GAP)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 0.2218, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-28d3d3eda07d', 517, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('95e8d691-b1d4-54b1-b040-3bf87e4a8dbf', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ใบหม่อนสำหรับผลิตชา &ndash; การปลูกแบบมีระบบปฏิบัติทางการเกษตรที่ดีสำหรับหม่อนเพื่อผลิตใบ (GAP) (Mulberry leave, for tea production; GAP)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 0.5575, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-d300edfd6941', 518, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3e50e2b3-007f-5517-b9bd-4c2b67e47b08', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ใบหม่อนสำหรับเลี้ยงไหม - การปลูกแบบทั่วไป (Non-GAP) (Mulberry leave, for silk worm production; Non-GAP)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 0.2247, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-0df1dfed88ee', 519, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('36216577-2a7b-5eb8-b2df-75bbd1bb0dc8', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ใบหม่อนสำหรับเลี้ยงไหม &ndash; การปลูกแบบมีระบบปฏิบัติทางการเกษตรที่ดีสำหรับหม่อนเพื่อผลิตใบ (GAP) (Mulberry leave, for silk woarm production; GAP)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 0.5574, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-661747dbf8be', 520, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('61125982-1c2a-51bc-be1e-1c3d9937f867', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ไข่ไหม (Silkworm eggs)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'p (แผ่น)', 7.3956, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-ca3d3bf3d31c', 521, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('bf530971-fc5f-574d-afb7-070d4cfb78b2', 'a1000003-0003-4003-8003-000000000007'::uuid, 'กระถินสดอินทรีย์', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.0018, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-827cefa7b67d', 524, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8366d4de-1b0e-537d-bd39-bcdc8871cd29', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ถั่วฮามาต้าสดอินทรีย์', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.0044, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-fb13cce1a6bf', 525, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2d31f55b-a237-5f8d-8931-8c467206bc26', 'a1000003-0003-4003-8003-000000000007'::uuid, 'ถั่วเหลืองอินทรีย์', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.0664, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-5fb69d574d53', 526, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9f9e68a8-27f2-5db8-9a03-ac0d0ded40ee', 'a1000003-0003-4003-8003-000000000007'::uuid, 'มันสำปะหลัง (ปลูกแบบปลอดภัย; อินทรีย์)', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.0562, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-165579f69872', 527, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('836c2946-629d-5d13-9f01-52e45873b64b', 'a1000003-0003-4003-8003-000000000007'::uuid, 'มันสำปะหลังหมักอินทรีย์', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.0827, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-397ab1139a17', 528, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9e5b9e12-9ac3-50e0-8cd1-513d951188b9', 'a1000003-0003-4003-8003-000000000007'::uuid, 'หญ้ากินนีสดอินทรีย์', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.0021, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-8b72b057204a', 529, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d6cec49d-8673-501d-9903-20cddfa20339', 'a1000003-0003-4003-8003-000000000007'::uuid, 'หญ้ากินนีอินทรีย์ หมักด้วยไซโล', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.0034, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-424033b769d6', 530, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('39ee07ff-9c4d-53a4-941d-0cc7652ea570', 'a1000003-0003-4003-8003-000000000007'::uuid, 'หญ้ากินนีแห้งอินทรีย์ (ความชื้น 10%)', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.017, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-627846c79cfb', 531, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3dcf7195-00f0-5f86-86f6-f1ff24006f85', 'a1000003-0003-4003-8003-000000000007'::uuid, 'หญ้ารูซี่สดอินทรีย์', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.0041, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-9c673c12c7b6', 532, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('24a93d5f-d125-5602-bec3-9f892df1fbbe', 'a1000003-0003-4003-8003-000000000007'::uuid, 'หญ้าเนเปียร์สดอินทรีย์', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.0016, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-5a1cec347e54', 533, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ff4fc924-2ec3-5421-86ad-be8aefc30a43', 'a1000003-0003-4003-8003-000000000007'::uuid, 'หญ้าเนเปียร์อินทรีย์ หมักด้วยถุงพลาสติก', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.0047, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-bf57c502a535', 534, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ed1fbde1-17bb-5954-95e0-f7e09f0e2307', 'a1000003-0003-4003-8003-000000000007'::uuid, 'หญ้าแพงโกล่าสดอินทรีย์', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.0038, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-b5435a9c5817', 535, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4e812fe5-91c9-547f-ae12-f0fd345a06bc', 'a1000003-0003-4003-8003-000000000007'::uuid, 'อาหารข้นโคนมอินทรีย์ (16-18% โปรตีน)', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.7368, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-955feb6f1a88', 536, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('32c81c83-6d37-5b08-9279-d2c8aaab83ef', 'a1000003-0003-4003-8003-000000000007'::uuid, 'อาหารข้นโคนมอินทรีย์ (16-18% โปรตีน) สำหรับการเลี้ยงตลอดวัฎจักรชีวิต (Life cycle)', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.3149, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-9a5a7b39ab38', 537, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0db48501-e8b3-5cde-aa66-b97b3b072edb', 'a1000003-0003-4003-8003-000000000007'::uuid, 'อาหารข้นโคนมอินทรีย์ (16-18% โปรตีน) สำหรับการเลี้ยงเฉพาะช่วงให้น้ำนม (Lactation)', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.4467, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-4fb0625c4423', 538, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6da64559-1c90-5c07-9636-f14a26d6f8e4', 'a1000003-0003-4003-8003-000000000007'::uuid, 'แร่ธาตุพรีมิกซ์', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.2532, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-094ef860ac28', 539, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0efc66de-0d7d-57e5-a30d-b9f4198a5274', 'a1000003-0003-4003-8003-000000000007'::uuid, 'แร่ธาตุและวิตามินพรีมิกซ์', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 1.8369, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO API', 'EF006-550e169e44e5', 540, 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

COMMIT;