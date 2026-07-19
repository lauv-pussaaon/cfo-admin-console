-- Generated TGO 1 กรกฎาคม 2569 fuels for admin SoT (from pnpm tgo-ef:build-import)
-- Cat4 duo: value1=ระยะทาง/km for all; value2=น้ำหนักที่ขน/ton except resource containing " 0% Loading"
BEGIN;

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a0ee57a2-125e-563e-80eb-b94c84a9b957', 'a1000001-0001-4001-8001-000000000001', 'Natural Gas (NCV)', NULL, 'SCF', 0.05727759, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 0.057222, NULL, 0.00000102, 1.02e-7, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-1', 1, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('dad8ac50-759e-5744-8abd-f25a5a86f839', 'a1000001-0001-4001-8001-000000000001', 'Natural Gas (NCV)', NULL, 'MJ', 0.0561545, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 0.0561, NULL, 0.000001, 1e-7, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-2', 2, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f6ebbc11-77c6-53ba-97c9-1ad97c9e324b', 'a1000001-0001-4001-8001-000000000001', 'Natural Gas (HHV)', NULL, 'MJ', 0.050151666, NULL, NULL, NULL, NULL, '2021 API Compendium, Table 4.3 &amp; Table 4.6', 0.0501, NULL, 9.48e-7, 9.48e-8, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-3', 3, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('50f61e85-bb23-50d3-ad42-5091e442310c', 'a1000001-0001-4001-8001-000000000001', 'Natural Gas (HHV)', NULL, 'MMBTU', 52.9545, NULL, NULL, NULL, NULL, '2021 API Compendium, Table 4.3 &amp; Table 4.6', 52.9, NULL, 0.001, 0.0001, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-4', 4, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c375fbb3-503a-5b43-be3f-51b05c2a322f', 'a1000001-0001-4001-8001-000000000001', 'LPG', NULL, 'Liter', 1.68117279, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.679722, NULL, 0.00002662, 0.000002662, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-5', 5, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('487880ad-9005-5b05-91bb-c9691c0ff9a9', 'a1000001-0001-4001-8001-000000000001', 'LPG', NULL, 'kg', 3.11328294444444, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 3.1105962962963, NULL, 0.0000492962962962963, 0.00000492962962962963, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-6', 6, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7d8f2c1d-c653-588d-83a6-5a02f1b365db', 'a1000001-0001-4001-8001-000000000001', 'Acetelyne', NULL, 'kg', 3.38461538461538, NULL, NULL, NULL, NULL, '2C2H2+502 &rarr; 4CO2+2H2O (MWC2H2 =26, MWCO2 =44)', 3.38461538461538, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-7', 7, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a043a0bf-219f-51b6-96b3-a5dc51436ccf', 'a1000001-0001-4001-8001-000000000001', 'Ethane', NULL, 'kg', 3.14285714285714, NULL, NULL, NULL, NULL, 'C2H4 + 3O2 --&gt; 2CO2 + 2H2O (MWC2H4 =28, MWCO2 =44)', 3.14285714285714, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-8', 8, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b7c0a21b-893d-56aa-91f1-4fcff1659333', 'a1000001-0001-4001-8001-000000000001', 'Propane', NULL, 'kg', 3, NULL, NULL, NULL, NULL, 'C3H8+5O2&rarr;3CO2+4H2O (MWC3H8 =44, MWCO2 =44)', 3, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-9', 9, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b1c485e5-dcc4-5df1-8bf1-42549f2d960a', 'a1000001-0001-4001-8001-000000000001', 'Butane', NULL, 'kg', 3.03448275862069, NULL, NULL, NULL, NULL, '2C4H10+ 1302 &rarr; 8CO2+10H2O (MWC4H10 =58, MWCO2 =44)', 3.03448275862069, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-10', 10, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('53c5baf8-6655-5ce5-b0ad-f614fd9bcee9', 'a1000001-0001-4001-8001-000000000001', 'Fuel Oil A', NULL, 'Liter', 3.21977540460363, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 3.2096984443713, NULL, 0.0001244069164485, 0.0000248813832897, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-11', 11, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4fff6bdd-8300-55ec-8b51-1044a03833b0', 'a1000001-0001-4001-8001-000000000001', 'Fuel Oil C', NULL, 'Liter', 3.24549756405015, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 3.23534010094254, NULL, 0.0001254007791063, 0.00002508015582126, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-12', 12, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b77bc1f8-5a08-5ca0-86f5-28018ca1f2ba', 'a1000001-0001-4001-8001-000000000001', 'Jet Kerosene', NULL, 'Liter', 2.47728579, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.468895, NULL, 0.00010359, 0.000020718, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-13', 13, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('93f612ea-5f5e-5c82-b387-bd6d8a34de32', 'a1000001-0001-4001-8001-000000000001', 'Other Kerosene', NULL, 'Liter', 2.49109779, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.482707, NULL, 0.00010359, 0.000020718, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-14', 14, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6a96f9f4-6414-5c55-9b62-8ff82d3a3a70', 'a1000001-0001-4001-8001-000000000001', 'Diesel', NULL, 'Liter', 2.70757206, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.698722, NULL, 0.00010926, 0.000021852, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-15', 15, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('61d61b92-1130-520e-a129-45116fc45b7d', 'a1000001-0001-4001-8001-000000000001', 'Gasoline', NULL, 'Liter', 2.18921364, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, NULL, 0.00009444, 0.000018888, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-16', 16, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('db81ce81-d4e8-572d-9b1a-ab4529a45e6b', 'a1000001-0001-4001-8001-000000000001', 'Biodiesel', NULL, 'Liter', 1.64961846, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.643976, NULL, 0.00006966, 0.000013932, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-17', 17, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('49fb9283-37d8-51c1-90be-e7e8b7517ae6', 'a1000001-0001-4001-8001-000000000001', 'Bio-gasollne (Ethanol)', NULL, 'Liter', 1.501920063, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.4967828, NULL, 0.000063423, 0.0000126846, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-18', 18, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('269da535-e952-5f0a-af60-e34f4f648f08', 'a1000001-0001-4001-8001-000000000001', 'Diesel B7 (แบบคิด EF ของ Biofuel ด้วย)', NULL, 'Liter', 2.633515308, NULL, NULL, NULL, NULL, 'คิดที่สัดส่วนไบโอดีเซล (7%)', 2.62488978, NULL, 0.000106488, 0.0000212976, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-19', 19, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('749fea82-640a-54ca-b5c1-107246baba52', 'a1000001-0001-4001-8001-000000000001', 'Diesel B7: Report in Scope 1', NULL, 'Liter', 2.518436988, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 2.50981146, NULL, 0.000106488, 0.0000212976, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-20', 20, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('71b90a87-ba56-5853-9d25-d15864344bdb', 'a1000004-0004-4004-8004-000000000014', 'Diesel B7: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.11507832, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 0.11507832, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-21', 21, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('553235aa-2d60-585d-a0ba-0170649ae4d0', 'a1000001-0001-4001-8001-000000000001', 'Diesel B20 (แบบคิด EF ของ Biofuel ด้วย)', NULL, 'Liter', 2.49598134, NULL, NULL, NULL, NULL, 'คิดที่สัดส่วนไบโอดีเซล (20%)', 2.4877728, NULL, 0.00010134, 0.000020268, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-22', 22, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('cdb45120-2d6e-5425-996d-45a98ffd0ba6', 'a1000001-0001-4001-8001-000000000001', 'Diesel B20: Report in Scope 1', NULL, 'Liter', 2.16718614, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 2.1589776, NULL, 0.00010134, 0.000020268, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-23', 23, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('693807d7-6064-5d4e-b732-282ca3fd8ef0', 'a1000004-0004-4004-8004-000000000014', 'Diesel B20: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.3287952, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 0.3287952, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-24', 24, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8204e152-16b2-560e-a8dd-e060ae4c6eb5', 'a1000001-0001-4001-8001-000000000001', 'Gasohol (E10)', NULL, 'Liter', 2.1204842823, NULL, NULL, NULL, NULL, 'คิดที่สัดส่วนเอทานอล (10%)', 2.11308588, NULL, 0.0000913383, 0.00001826766, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-25', 25, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('03312a7d-03c2-55d6-bd68-91057e71640f', 'a1000001-0001-4001-8001-000000000001', 'Gasohol E10: Report in Scope 1', NULL, 'Liter', 1.9708060023, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 1.9634076, NULL, 0.0000913383, 0.00001826766, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-26', 26, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6ea4c009-c610-563e-98f6-7eb9e96fc4b6', 'a1000004-0004-4004-8004-000000000014', 'Gasohol E10: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.14967828, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 0.14967828, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-27', 27, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7389d746-0aaa-5860-9608-218054fc7e76', 'a1000001-0001-4001-8001-000000000001', 'Gasohol (E20)', NULL, 'Liter', 2.0517549246, NULL, NULL, NULL, NULL, 'คิดที่สัดส่วนเอทานอล (20%)', 2.04460776, NULL, 0.0000882366, 0.00001764732, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-28', 28, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('028ed101-a815-5f61-a5dd-d9e46481dfa4', 'a1000001-0001-4001-8001-000000000001', 'Gasohol E20: Report in Scope 1', NULL, 'Liter', 1.7523983646, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 1.7452512, NULL, 0.0000882366, 0.00001764732, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-29', 29, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9085cfff-065e-57af-b075-2a192f8d3e16', 'a1000004-0004-4004-8004-000000000014', 'Gasohol E20: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.29935656, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 0.29935656, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-30', 30, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9801ca62-9692-5003-9123-1a697d0058d0', 'a1000001-0001-4001-8001-000000000001', 'Gasohol (E85)', NULL, 'Liter', 1.60501409955, NULL, NULL, NULL, NULL, 'คิดที่สัดส่วนเอทานอล (85%)', 1.59949998, NULL, 0.00006807555, 0.00001361511, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-31', 31, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5d371e99-8abf-5022-8e2d-b415db881b80', 'a1000001-0001-4001-8001-000000000001', 'Gasohol E85: Report in Scope 1', NULL, 'Liter', 0.33274871955, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 0.3272346, NULL, 0.00006807555, 0.00001361511, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-32', 32, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9ec31e93-884d-5ee6-a053-b041a2622c27', 'a1000004-0004-4004-8004-000000000014', 'Gasohol E85: Report in Biogenic CO2 emissions', NULL, 'Liter', 1.27226538, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 1.27226538, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-33', 33, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c0355b81-fa8e-5c6c-8e00-e7c7ba5f0fdc', 'a1000001-0001-4001-8001-000000000001', 'Lignite', NULL, 'kg', 1.20996225, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.2019, NULL, 0.000119, 0.00001785, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-34', 34, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2acabfa9-674d-5aa9-b824-86b6de3e6070', 'a1000001-0001-4001-8001-000000000001', 'Anthracite', NULL, 'kg', 3.1078935, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 3.08662, NULL, 0.000314, 0.0000471, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-35', 35, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('57767ef0-d8e2-50e4-8e81-3e8a86187244', 'a1000001-0001-4001-8001-000000000001', 'Bituminous Coal', NULL, 'kg', 2.512467675, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.494602, NULL, 0.0002637, 0.000039555, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-36', 36, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('143c6a78-13b5-58a7-b131-aff800d2fee5', 'a1000001-0001-4001-8001-000000000001', 'Coking Coal', NULL, 'kg', 2.632517325, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.613798, NULL, 0.0002763, 0.000041445, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-37', 37, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('139250fc-17f7-500e-a55f-08208350b65c', 'a1000001-0001-4001-8001-000000000001', 'Fuel wood', NULL, 'kg', 1.821261, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.79088, NULL, 0.0004797, 0.00006396, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-38', 38, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c0caace4-f789-5a17-9ba0-63138a6ff8fe', 'a1000001-0001-4001-8001-000000000001', 'Fuel wood: Report in Scope 1', NULL, 'kg', 0.030381, NULL, NULL, NULL, NULL, 'นับเฉพาะ CH4 และ N2O', NULL, NULL, 0.0004797, 0.00006396, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-39', 39, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('00393939-be0e-52fd-b4bd-6b2bdb78fbde', 'a1000004-0004-4004-8004-000000000014', 'Fuel wood: Report in Biogenic CO2 emissions', NULL, 'kg', 1.79088, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 1.79088, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-40', 40, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('dcbd07ce-5ebf-57f5-829c-a39681180718', 'a1000001-0001-4001-8001-000000000001', 'Saw dust', NULL, 'kg', 1.239232, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.21856, NULL, 0.0003264, 0.00004352, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-41', 41, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('07ce327c-0bcb-5c65-8226-725f2bb03ad2', 'a1000001-0001-4001-8001-000000000001', 'Saw dust: Report in Scope 1', NULL, 'kg', 0.020672, NULL, NULL, NULL, NULL, 'นับเฉพาะ CH4 และ N2O', NULL, NULL, 0.0003264, 0.00004352, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-42', 42, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('67ddaf86-12f3-5568-a08a-7e6dd9512b92', 'a1000004-0004-4004-8004-000000000014', 'Saw dust: Report in Biogenic CO2 emissions', NULL, 'kg', 1.21856, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 1.21856, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-43', 43, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e4a6a892-580c-5c97-ac83-fd7cd1f6e607', 'a1000001-0001-4001-8001-000000000001', 'Charcoal', NULL, 'kg', 3.289432, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 3.23456, NULL, 0.0008664, 0.00011552, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-44', 44, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e713f986-5e70-5a63-b358-e5417178129d', 'a1000001-0001-4001-8001-000000000001', 'Charcoal: Report in Scope 1', NULL, 'kg', 0.1923, NULL, NULL, NULL, NULL, 'นับเฉพาะ CH4 และ N2O', NULL, NULL, 0.0058, 0.00011552, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-45', 45, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d1f714ee-8ac9-5bd7-b2ef-98e5b7a66d3f', 'a1000004-0004-4004-8004-000000000014', 'Charcoal: Report in Biogenic CO2 emissions', NULL, 'kg', 3.23456, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 3.23456, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-46', 46, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('256cda7d-8e3e-53c7-92cd-4d0dec9b1e62', 'a1000001-0001-4001-8001-000000000001', 'Paddy husk', NULL, 'kg', 1.46736, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.44, NULL, 0.000432, 0.0000576, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-47', 47, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e4c001f4-27ee-5c60-95fe-3324f95fb71f', 'a1000001-0001-4001-8001-000000000001', 'Paddy husk: Report in Scope 1', NULL, 'kg', 0.02736, NULL, NULL, NULL, NULL, 'นับเฉพาะ CH4 และ N2O', NULL, NULL, 0.000432, 0.0000576, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-48', 48, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6c369e1e-8fd6-5276-84a5-d971a56cd663', 'a1000004-0004-4004-8004-000000000014', 'Paddy husk: Report in Biogenic CO2 emissions', NULL, 'kg', 1.44, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 1.44, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-49', 49, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('534f8454-d3f1-504d-8417-6874341ed9b9', 'a1000001-0001-4001-8001-000000000001', 'Baggasse', NULL, 'kg', 0.767307, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 0.753, NULL, 0.0002259, 0.00003012, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-50', 50, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d2a30c86-6c9b-5401-814a-1da7baedcd0e', 'a1000001-0001-4001-8001-000000000001', 'Baggasse: Report in Scope 1', NULL, 'kg', 0.014307, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0002259, 0.00003012, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-51', 51, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ab8eeeba-e49c-5e1f-963d-e20a10eb8036', 'a1000004-0004-4004-8004-000000000014', 'Baggasse: Report in Biogenic CO2 emissions', NULL, 'kg', 0.753, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 0.753, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-52', 52, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9069e9ec-2cc9-56bf-b424-d37d7b9b1296', 'a1000001-0001-4001-8001-000000000001', 'Palm kernel shell', NULL, 'kg', 1.888207, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.853, NULL, 0.0005559, 0.00007412, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-53', 53, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('931f82b6-3f77-5398-9cba-a431b03904c8', 'a1000001-0001-4001-8001-000000000001', 'Palm kernel shell: Report in Scope 1', NULL, 'kg', 0.035207, NULL, NULL, NULL, NULL, 'นับเฉพาะ CH4 และ N2O', NULL, NULL, 0.0005559, 0.00007412, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-54', 54, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('847b9ca0-ded5-529e-afb4-f8a011ab49b1', 'a1000004-0004-4004-8004-000000000014', 'Palm kernel shell: Report in Biogenic CO2 emissions', NULL, 'kg', 1.853, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 1.853, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-55', 55, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('05010271-6667-5021-b53a-e6a8bcff1def', 'a1000001-0001-4001-8001-000000000001', 'Cob', NULL, 'kg', 1.709882, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.678, NULL, 0.0005034, 0.00006712, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-56', 56, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5527a071-2d2b-56df-a454-585daecd7c92', 'a1000001-0001-4001-8001-000000000001', 'Cob: Report in Scope 1', NULL, 'kg', 0.031882, NULL, NULL, NULL, NULL, 'นับเฉพาะ CH4 และ N2O', NULL, NULL, 0.0005034, 0.00006712, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-57', 57, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('83106160-e2d0-50ec-85e3-d70640ab18cf', 'a1000004-0004-4004-8004-000000000014', 'Cob: Report in Biogenic CO2 emissions', NULL, 'kg', 1.678, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 1.678, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-58', 58, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e7a5242b-0ae8-5736-ad02-cc435f74bfba', 'a1000001-0001-4001-8001-000000000001', 'Biogas', NULL, 'm3', 1.143918685, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.142778, NULL, 0.00002093, 0.000002093, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-59', 59, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('900ae32d-e687-567d-8f92-3f7fd3c3fcb8', 'a1000001-0001-4001-8001-000000000001', 'Biogas: Report in Scope 1', NULL, 'm3', 0.001140685, NULL, NULL, NULL, NULL, 'นับเฉพาะ CH4 และ N2O', NULL, NULL, 0.00002093, 0.000002093, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-60', 60, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('dc194e19-978d-5be2-a2f6-b90f2bd0de12', 'a1000004-0004-4004-8004-000000000014', 'Biogas: Report in Biogenic CO2 emissions', NULL, 'm3', 1.142778, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 1.142778, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF001-61', 61, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('fdc4f649-ce59-50ce-a45b-51af89ac7c81', 'a1000001-0001-4001-8001-000000000002', 'LPG', NULL, 'kg', 3.20573814814815, NULL, NULL, NULL, NULL, 'IPCC defaults (2006) และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 3.1105962962963, NULL, 0.00246481481481481, 0.0000985925925925926, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-1', 62, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('11930eaf-9a2c-5c3b-b1d2-738a7845aa58', 'a1000001-0001-4001-8001-000000000002', 'Diesel: Aggriculture', NULL, 'Liter', 2.978981184, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.698722, NULL, 0.000151143, 0.001041612, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-2', 63, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5dd7dd7e-2331-5f5b-b4e7-e35611a891a8', 'a1000001-0001-4001-8001-000000000002', 'Diesel: Forestry', NULL, 'Liter', 2.978981184, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.698722, NULL, 0.000151143, 0.001041612, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-3', 64, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0bd8fd1b-330b-54e3-b598-c2f21a89dfc2', 'a1000001-0001-4001-8001-000000000002', 'Diesel: Industry', NULL, 'Liter', 2.978981184, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.698722, NULL, 0.000151143, 0.001041612, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-4', 65, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5307fda0-1d72-5703-8dea-3b089042f16b', 'a1000001-0001-4001-8001-000000000002', 'Diesel: Household', NULL, 'Liter', 2.978981184, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.698722, NULL, 0.000151143, 0.001041612, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-5', 66, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('bd1cafc2-f478-5d80-b24e-2411b15fcf08', 'a1000001-0001-4001-8001-000000000002', 'Biodiesel', NULL, 'Liter', 1.643976, NULL, NULL, NULL, NULL, 'IPCC defaults (2006) และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.643976, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-6', 67, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('774fc00d-0e04-5c62-8317-ead692741fac', 'a1000001-0001-4001-8001-000000000002', 'Ethanol, Bio-gasoline', NULL, 'Liter', 1.4967828, NULL, NULL, NULL, NULL, 'IPCC defaults (2006) และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.4967828, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-7', 68, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f032d4d6-3c75-5c2f-bf66-d2a02d939f31', 'a1000001-0001-4001-8001-000000000002', 'Motor Gasoline 4-stroke: Aggriculture', NULL, 'Liter', 2.2687636, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, NULL, 0.0025184, 0.00006296, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-8', 69, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('49d7815c-70f8-5ad7-b7b8-1991441ac9d6', 'a1000001-0001-4001-8001-000000000002', 'Motor Gasoline 4-stroke:  Forestry', NULL, 'Liter', 2.181564, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-9', 70, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b6adbc98-15bb-5d55-9632-771ef263fc4a', 'a1000001-0001-4001-8001-000000000002', 'Motor Gasoline 4-stroke:  Industry', NULL, 'Liter', 2.2423204, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, NULL, 0.001574, 0.00006296, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-10', 71, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b9fa64a6-d74a-5226-bab3-da5289e3fb1f', 'a1000001-0001-4001-8001-000000000002', 'Motor Gasoline 4-stroke:  Household', NULL, 'Liter', 2.3040212, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, NULL, 0.0037776, 0.00006296, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-11', 72, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c18b5ee5-2b88-57b1-b227-9b4955557ca7', 'a1000001-0001-4001-8001-000000000002', 'Motor Gasoline 2-stroke: Aggriculture', NULL, 'Liter', 2.30830248, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, NULL, 0.0044072, 0.000012592, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-12', 73, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('58f43ac2-68f5-5b0a-9565-240af2501563', 'a1000001-0001-4001-8001-000000000002', 'Motor Gasoline 2-stroke:  Forestry', NULL, 'Liter', 2.33474568, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, NULL, 0.0053516, 0.000012592, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-13', 74, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a0d4812e-746d-5ff6-a4a1-bfce6a9c4c60', 'a1000001-0001-4001-8001-000000000002', 'Motor Gasoline 2-stroke:  Industry', NULL, 'Liter', 2.29948808, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, NULL, 0.0040924, 0.000012592, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-14', 75, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f204f2d8-9a2d-511f-8eaf-610204b03e0a', 'a1000001-0001-4001-8001-000000000002', 'Motor Gasoline 2-stroke:  Household', NULL, 'Liter', 2.34356008, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, NULL, 0.0056664, 0.000012592, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-15', 76, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a07927d8-fc01-5edf-a8f6-cbcfea9f6ff6', 'a1000001-0001-4001-8001-000000000002', 'Diesel B7', NULL, 'Liter', 2.905148964, NULL, NULL, NULL, NULL, 'คิดที่สัดส่วนไบโอดีเซล (7%)', 2.62488978, NULL, 0.000151143, 0.001041612, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-16', 77, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('fcaba8bf-5d7d-5a9e-82fb-2abfbcbfdee0', 'a1000001-0001-4001-8001-000000000002', 'Diesel B7: Report in Scope 1', NULL, 'Liter', 2.790070644, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 2.50981146, NULL, 0.000151143, 0.001041612, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-17', 78, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a693d1f0-5ddb-50d7-aca9-2304987b6e23', 'a1000004-0004-4004-8004-000000000014', 'Diesel B7: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.11507832, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 0.11507832, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-18', 79, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('da794d15-096d-54e3-8bbf-7e97f20676eb', 'a1000001-0001-4001-8001-000000000002', 'Gasohol E10,  4-stroke: Aggriculture', NULL, 'Liter', 2.20028548, NULL, NULL, NULL, NULL, 'คิดที่สัดส่วนเอทานอล  (10%)', 2.11308588, NULL, 0.0025184, 0.00006296, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-19', 80, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8439c996-6cbf-5091-acd7-fb48c2043a0a', 'a1000001-0001-4001-8001-000000000002', 'Gasohol E10: Report in Scope 1', NULL, 'Liter', 2.0506072, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 1.9634076, NULL, 0.0025184, 0.00006296, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-20', 81, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('22d47ed8-712f-53a7-a94a-cff7bcfbf512', 'a1000004-0004-4004-8004-000000000014', 'Gasohol E10: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.14967828, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 0.14967828, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-21', 82, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d919b6eb-4d7e-5a96-b5cb-7f539f077ff2', 'a1000001-0001-4001-8001-000000000002', 'Gasohol E10, 4-stroke: Forestry', NULL, 'Liter', 2.11308588, NULL, NULL, NULL, NULL, 'คิดที่สัดส่วนเอทานอล  (10%)', 2.11308588, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-22', 83, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('21d6dde6-0f00-5cf0-8ea0-ac73fbf3a046', 'a1000001-0001-4001-8001-000000000002', 'Gasohol E10: Report in Scope 1', NULL, 'Liter', 1.9634076, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 1.9634076, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-23', 84, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c87d8e28-8606-5b36-8e6c-9e4899be8a2e', 'a1000004-0004-4004-8004-000000000014', 'Gasohol E10: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.14967828, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 0.14967828, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-24', 85, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1d6d6bad-25a9-5fb9-8675-bd675f5a7e27', 'a1000001-0001-4001-8001-000000000002', 'Gasohol E10, 4-stroke: Industry', NULL, 'Liter', 2.17384228, NULL, NULL, NULL, NULL, 'คิดที่สัดส่วนเอทานอล  (10%)', 2.11308588, NULL, 0.001574, 0.00006296, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-25', 86, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('91ad7d9d-ded0-5d85-8aa0-0856ff9c8652', 'a1000001-0001-4001-8001-000000000002', 'Gasohol E10: Report in Scope 1', NULL, 'Liter', 2.024164, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 1.9634076, NULL, 0.001574, 0.00006296, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-26', 87, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2f9041ac-36d8-5ed1-8989-f70dd68a1831', 'a1000004-0004-4004-8004-000000000014', 'Gasohol E10: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.14967828, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 0.14967828, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-27', 88, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('33e8e068-ea3d-5b2a-9faf-ce5b42c8d461', 'a1000001-0001-4001-8001-000000000002', 'Gasohol E10, 4-stroke: Household', NULL, 'Liter', 2.23554308, NULL, NULL, NULL, NULL, 'คิดที่สัดส่วนเอทานอล  (10%)', 2.11308588, NULL, 0.0037776, 0.00006296, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-28', 89, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('85d2cced-7412-50ec-ae72-f0ee6812e37f', 'a1000001-0001-4001-8001-000000000002', 'Gasohol E10: Report in Scope 1', NULL, 'Liter', 2.0858648, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 1.9634076, NULL, 0.0037776, 0.00006296, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-29', 90, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0a70765b-13c1-5d78-9b79-d33329f0e4ef', 'a1000004-0004-4004-8004-000000000014', 'Gasohol E10: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.14967828, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 0.14967828, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-30', 91, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a9b6397e-c7ba-5b5d-918b-c693cd98de21', 'a1000001-0001-4001-8001-000000000002', 'Gasohol E10, 2-stroke: Aggriculture', NULL, 'Liter', 2.23982436, NULL, NULL, NULL, NULL, 'คิดที่สัดส่วนเอทานอล  (10%)', 2.11308588, NULL, 0.0044072, 0.000012592, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-31', 92, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('69767209-b53d-58b9-bd70-503dfdae4f5c', 'a1000001-0001-4001-8001-000000000002', 'Gasohol E10: Report in Scope 1', NULL, 'Liter', 2.09014608, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 1.9634076, NULL, 0.0044072, 0.000012592, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-32', 93, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b472a93f-feb8-5273-8c02-8e6d7d3e5ade', 'a1000004-0004-4004-8004-000000000014', 'Gasohol E10: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.14967828, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 0.14967828, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-33', 94, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('cef5d0e2-8900-5da5-9f20-46a96ec1485f', 'a1000001-0001-4001-8001-000000000002', 'Gasohol E10, 2-stroke: Forestry', NULL, 'Liter', 2.26626756, NULL, NULL, NULL, NULL, 'คิดที่สัดส่วนเอทานอล (10%)', 2.11308588, NULL, 0.0053516, 0.000012592, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-34', 95, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('84453dd4-2c0c-5519-9207-530300fbca4b', 'a1000001-0001-4001-8001-000000000002', 'Gasohol E10: Report in Scope 1', NULL, 'Liter', 2.11658928, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 1.9634076, NULL, 0.0053516, 0.000012592, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-35', 96, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('fe8ce8e1-e2c0-5da0-9d70-288593a476b4', 'a1000004-0004-4004-8004-000000000014', 'Gasohol E10: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.14967828, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 0.14967828, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-36', 97, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6d32c113-fb9d-5943-aab3-9cfff5261dbe', 'a1000001-0001-4001-8001-000000000002', 'Gasohol E10, 2-stroke: Industry', NULL, 'Liter', 2.23100996, NULL, NULL, NULL, NULL, 'คิดที่สัดส่วนเอทานอล (10%)', 2.11308588, NULL, 0.0040924, 0.000012592, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-37', 98, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('cb9dc83d-c64c-5cc1-acf4-61a93c665dd4', 'a1000001-0001-4001-8001-000000000002', 'Gasohol E10: Report in Scope 1', NULL, 'Liter', 2.08133168, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 1.9634076, NULL, 0.0040924, 0.000012592, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-38', 99, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('30cc0a62-12f8-5653-bd66-309443ae82ae', 'a1000004-0004-4004-8004-000000000014', 'Gasohol E10: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.14967828, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 0.14967828, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-39', 100, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5c2ea7d2-860f-5a7e-9a8f-cdc15c5c67a5', 'a1000001-0001-4001-8001-000000000002', 'Gasohol E10, 2-stroke: Household', NULL, 'Liter', 2.27508196, NULL, NULL, NULL, NULL, 'คิดที่สัดส่วนเอทานอล  (10%)', 2.11308588, NULL, 0.0056664, 0.000012592, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-40', 101, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7c6c0277-7f4a-551a-a5f7-116819930f8d', 'a1000001-0001-4001-8001-000000000002', 'Gasohol E10: Report in Scope 1', NULL, 'Liter', 2.12540368, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 1.9634076, NULL, 0.0056664, 0.000012592, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-41', 102, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2fa94124-b6eb-5588-9586-ee3386e42054', 'a1000004-0004-4004-8004-000000000014', 'Gasohol E10: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.14967828, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 0.14967828, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF002-42', 103, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('27914fed-e4a2-552b-89c2-92ccde9ceed4', 'a1000001-0001-4001-8001-000000000003', 'CNG', NULL, 'kg', 2.2539509, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 &amp; 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.12619, NULL, 0.0034868, 0.0001137, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-1', 104, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('87e7eb11-8296-58d1-91ec-0d3269f9199b', 'a1000001-0001-4001-8001-000000000003', 'LPG', NULL, 'Liter', 1.72734518, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 &amp; 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.679722, NULL, 0.00165044, 0.000005324, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-2', 105, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4432e6cf-47e9-5dd9-a4ee-b0aca7a435a5', 'a1000001-0001-4001-8001-000000000003', 'LPG', NULL, 'kg', 3.19878737037037, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 &amp; 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 3.1105962962963, NULL, 0.00305637037037037, 0.00000985925925925926, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-3', 106, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c74a1bb1-8140-535c-8b4d-a590b656c6ab', 'a1000001-0001-4001-8001-000000000003', 'Diesel', NULL, 'Liter', 2.740339134, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 &amp; 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.698722, NULL, 0.000142038, 0.000142038, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-4', 107, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('26a9dae3-af9c-5f99-8b0c-8300b5670ea4', 'a1000001-0001-4001-8001-000000000003', 'Motor Gasoline - uncontrolled', NULL, 'Liter', 2.23734656, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 &amp; 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, NULL, 0.00103884, 0.000100736, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-5', 108, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4f780aaa-ccb9-5f45-93b2-16b9fae2d649', 'a1000001-0001-4001-8001-000000000003', 'Motor Gasoline - oxydation catalyst', NULL, 'Liter', 2.2703376, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 &amp; 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, NULL, 0.000787, 0.00025184, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-6', 109, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('644cdf14-7065-5114-b305-c09edab58977', 'a1000001-0001-4001-8001-000000000003', 'Motor Gasoline - low mileage light duty vihicle vintage 1995 or later', NULL, 'Liter', 2.232464012, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 &amp; 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, NULL, 0.000119624, 0.000179436, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-7', 110, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ab8bbcac-7b85-5ba2-a805-515687446dd2', 'a1000001-0001-4001-8001-000000000003', 'Biodiesel', NULL, 'Liter', 1.670509494, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 &amp; 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.643976, NULL, 0.000090558, 0.000090558, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-8', 111, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('433eaec9-46df-5044-a9a8-477225806f51', 'a1000001-0001-4001-8001-000000000003', 'Ethanol (Bio-gasoline)', NULL, 'Liter', 1.507437864, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 &amp; 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.4967828, NULL, 0.000380538, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-9', 112, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('87061d2b-c34c-5365-b898-f704fdf96644', 'a1000001-0001-4001-8001-000000000003', 'Diesel (แบบคิด EF ของ Biofuel ด้วย)', NULL, 'Liter', 2.6654510592, NULL, NULL, NULL, NULL, 'คิดที่สัดส่วนไบโอดีเซล (7%)', 2.62488978, NULL, 0.0001384344, 0.0001384344, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-10', 113, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('87b734f6-b08b-5db6-87bb-0195b642d6cc', 'a1000001-0001-4001-8001-000000000003', 'Diesel B7: Report in Scope 1', NULL, 'Liter', 2.5503727392, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 2.50981146, NULL, 0.0001384344, 0.0001384344, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-11', 114, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('15003b05-7436-5c7c-add2-a1c034c36cd9', 'a1000004-0004-4004-8004-000000000014', 'Diesel B7: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.11507832, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 0.11507832, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-12', 115, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d25d8bcb-c63c-5f52-a630-e221d6ba08cd', 'a1000001-0001-4001-8001-000000000003', 'Diesel (แบบคิด EF ของ Biofuel ด้วย)', NULL, 'Liter', 2.526373206, NULL, NULL, NULL, NULL, 'คิดที่สัดส่วนไบโอดีเซล (20%)', 2.4877728, NULL, 0.000131742, 0.000131742, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-13', 116, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3fabe61b-177a-5e45-ab47-86220a8b0ddf', 'a1000001-0001-4001-8001-000000000003', 'Diesel B20: Report in Scope 1', NULL, 'Liter', 2.197578006, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 2.1589776, NULL, 0.000131742, 0.000131742, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-14', 117, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('369fb499-d62a-56ec-be8a-4e1e31d292d4', 'a1000004-0004-4004-8004-000000000014', 'Diesel B20: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.3287952, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 0.3287952, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-15', 118, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8d00af99-e856-5011-ae34-b027f61d81b2', 'a1000001-0001-4001-8001-000000000003', 'Motor Gasoline - low mileage light duty vihicle vintage 1995 or later', NULL, 'Liter', 2.1599613972, NULL, NULL, NULL, NULL, 'คิดที่สัดส่วนเอทานอล (10%)', 2.11308588, NULL, 0.0001457154, 0.0001614924, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-16', 119, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('dcf04d2d-6742-5a5b-ac18-a328b4432eba', 'a1000001-0001-4001-8001-000000000003', 'Gasohol E10: Report in Scope 1', NULL, 'Liter', 2.0102831172, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 1.9634076, NULL, 0.0001457154, 0.0001614924, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-17', 120, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6d65dfc0-8fac-5343-a3a9-9875e2df7176', 'a1000004-0004-4004-8004-000000000014', 'Gasohol E10: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.14967828, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 0.14967828, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-18', 121, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5b4758ec-1668-59b7-99b1-6ed325e4aea6', 'a1000001-0001-4001-8001-000000000003', 'Motor Gasoline - low mileage light duty vihicle vintage 1995 or later', NULL, 'Liter', 2.0874587824, NULL, NULL, NULL, NULL, 'คิดที่สัดส่วนเอทานอล (20%)', 2.04460776, NULL, 0.0001718068, 0.0001435488, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-19', 122, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ac0d2bb5-cd56-5ab4-ad2a-921e79226dfe', 'a1000001-0001-4001-8001-000000000003', 'Gasohol E20: Rreport in Scope 1', NULL, 'Liter', 1.7881022224, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 1.7452512, NULL, 0.0001718068, 0.0001435488, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-20', 123, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('dbb07944-538e-5fc5-8ace-6250afdb5931', 'a1000004-0004-4004-8004-000000000014', 'Gasohol E20: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.29935656, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 0.29935656, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-21', 124, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c7369673-2a75-54de-9051-67905dfd9ff9', 'a1000001-0001-4001-8001-000000000003', 'Motor Gasoline - low mileage light duty vihicle vintage 1995 or later', NULL, 'Liter', 1.6161917862, NULL, NULL, NULL, NULL, 'คิดที่สัดส่วนเอทานอล (85%)', 1.59949998, NULL, 0.0003414009, 0.0000269154, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-22', 125, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3e4e9427-8c17-56c7-b22f-92dbdab4104a', 'a1000001-0001-4001-8001-000000000003', 'Gasohol E85: Report in Scope 1', NULL, 'Liter', 0.3439264062, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 0.3272346, NULL, 0.0003414009, 0.0000269154, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-23', 126, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('de5d7249-42e3-5163-84e1-e5e7dde2d231', 'a1000004-0004-4004-8004-000000000014', 'Gasohol E85: Report in Biogenic CO2 emissions', NULL, 'Liter', 1.27226538, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 1.27226538, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-24', 127, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('bb96805e-37fb-54e5-ae02-d3fe15cfc43b', 'a1000001-0001-4001-8001-000000000003', 'Motor Gasoline - oxydation catalyst', NULL, 'Liter', NULL, NULL, NULL, NULL, NULL, 'คิดที่สัดส่วนเอทานอล 10%', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-25', 128, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('48fa72e6-ef1f-5454-8a34-7c8c9fb32f84', 'a1000001-0001-4001-8001-000000000003', 'Gasohol E10: Report in Scope 1', NULL, 'Liter', 2.0444, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 1.9634, NULL, 0.0007, 0.0002, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-26', 129, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5ef43b52-65f2-5af2-af78-5649d20535eb', 'a1000004-0004-4004-8004-000000000014', 'Gasohol E10: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.1497, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 0.1497, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-27', 130, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4bdf86fe-37e8-5d0a-94ed-ec193557bcb2', 'a1000001-0001-4001-8001-000000000003', 'Motor Gasoline - oxydation catalyst', NULL, 'Liter', NULL, NULL, NULL, NULL, NULL, 'คิดที่สัดส่วนเอทานอล 20%', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-28', 131, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f887f87e-695e-565c-a9e6-243b8303d505', 'a1000001-0001-4001-8001-000000000003', 'Gasohol E20: Report in Scope 1', NULL, 'Liter', 1.8184, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 1.7453, NULL, 0.0007, 0.0002, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-29', 132, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b9550947-4c62-5266-ab15-4146ea7e309c', 'a1000004-0004-4004-8004-000000000014', 'Gasohol E20: Report in Biogenic CO2 emissions', NULL, 'Liter', 0.2994, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 0.2994, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-30', 133, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6c955783-b2eb-5f7b-9bc3-ff961dc7ba99', 'a1000001-0001-4001-8001-000000000003', 'Motor Gasoline - oxydation catalyst', NULL, 'Liter', NULL, NULL, NULL, NULL, NULL, 'คิดที่สัดส่วนเอทานอล 85%', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-31', 134, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('47c1a819-0e53-5491-9aff-f5629f343585', 'a1000001-0001-4001-8001-000000000003', 'Gasohol E85: Report in Scope 1', NULL, 'Liter', 0.3496, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก fossil fuel, CH4 และ N2O', 0.3272, NULL, 0.0004, 0.00001, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-32', 135, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c2dc1cf3-972d-5083-9356-0d2dc3743f9d', 'a1000004-0004-4004-8004-000000000014', 'Gasohol E85: Report in Biogenic CO2 emissions', NULL, 'Liter', 1.2723, NULL, NULL, NULL, NULL, 'นับเฉพาะ CO2 จาก biofuel', 1.2723, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF003-33', 136, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2abc2b67-d01c-5171-a7a6-59829d8771bd', 'a1000002-0002-4002-8002-000000000006', 'ไฟฟ้าแบบ grid mix ปี 2016-2018; LCIA method IPCC 2013 GWP 100a V1.03 (CFO Scope2)', NULL, 'kWh', 0.4999, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIISMTEC-NSTDA, AR5 (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF004-1', 137, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1c8052de-db01-59d1-b949-55782f02f8c6', 'a1000002-0002-4002-8002-000000000006', 'ไฟฟ้าแบบ grid mix ปี 2016-2018; การได้มาซึ่งเชื้อเพลิงรวมถึงการขนส่งเชื้อเพลิงที่ใช้ในการผลิตไฟฟ้าสำ', NULL, 'kWh', 0.0987, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIISMTEC-NSTDA, AR5 (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF004-2', 138, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2a746fab-3828-5443-9208-bd9f0be88a35', 'a1000002-0002-4002-8002-000000000006', 'ไฟฟ้าแบบ grid mix ปี 2016-2018; LCIA method IPCC 2013 GWP 100a V1.03 (CFP)', NULL, 'kWh', 0.5986, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIISMTEC-NSTDA, AR5 (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF004-3', 139, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a82d2553-4cc8-5f7b-9736-a3293c2eb297', 'a1000002-0002-4002-8002-000000000006', 'ไฟฟ้าแบบ grid mix ปี 2022-2024; LCIA method IPCC 2013 GWP 100a V1.03 (CFO Scope2)', NULL, 'kWh', 0.475, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIISMTEC-NSTDA, AR5 (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF004-4', 140, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c1708f17-29af-5719-a2d6-2e6d6ab2552a', 'a1000002-0002-4002-8002-000000000006', 'ไฟฟ้าแบบ grid mix ปี 2022-2024; การได้มาซึ่งเชื้อเพลิงรวมถึงการขนส่ง เชื้อเพลิงที่ใช้ในการผลิตไฟฟ้า สำหรับ SCOPE 3', NULL, 'kWh', 0.0812, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIISMTEC-NSTDA, AR5 (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF004-5', 141, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6c8d6e1f-bbb0-57d8-a34e-bd8154bcbad1', 'a1000002-0002-4002-8002-000000000006', 'ไฟฟ้าแบบ grid mix ปี 2022-2024; LCIA method IPCC 2013 GWP 100a V1.03 (CFP)', NULL, 'kWh', 0.5562, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIISMTEC-NSTDA, AR5 (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF004-6', 142, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e306b330-612c-5608-91e4-c8e94b4dc786', 'a1000004-0004-4004-8004-000000000014', 'R-22 (HCFC-22)', NULL, 'kg', 1760, NULL, NULL, NULL, NULL, 'IPCC 2013, AR5', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF005-1', 143, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('77b187cc-0b37-59e9-8c58-8d7680aadaab', 'a1000001-0001-4001-8001-000000000005', 'R-32', NULL, 'kg', 677, NULL, NULL, NULL, NULL, 'IPCC 2013, AR5', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF005-2', 144, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('fbf32e47-995e-54e8-992f-3d1d333e35ff', 'a1000001-0001-4001-8001-000000000005', 'R-125', NULL, 'kg', 3170, NULL, NULL, NULL, NULL, 'IPCC 2013, AR5', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF005-3', 145, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('56c8d02f-f4c2-5bf2-88a3-052dd59d00be', 'a1000001-0001-4001-8001-000000000005', 'R-134', NULL, 'kg', 1120, NULL, NULL, NULL, NULL, 'IPCC 2013, AR5', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF005-4', 146, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('097e100f-d6c7-5ba5-ae0b-efa7c621f306', 'a1000001-0001-4001-8001-000000000005', 'R-134a', NULL, 'kg', 1300, NULL, NULL, NULL, NULL, 'IPCC 2013, AR5', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF005-5', 147, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ee87ab73-dfbc-5dfd-b0ff-72cbb4dbae85', 'a1000001-0001-4001-8001-000000000005', 'R-143', NULL, 'kg', 328, NULL, NULL, NULL, NULL, 'IPCC 2013, AR5', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF005-6', 148, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7ad3ecb4-2471-53dd-a399-eb183cb4dccd', 'a1000001-0001-4001-8001-000000000005', 'R-143a', NULL, 'kg', 4800, NULL, NULL, NULL, NULL, 'IPCC 2013, AR5', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF005-7', 149, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('111c5d7f-d8c5-5212-afee-0099c8edc188', 'a1000001-0001-4001-8001-000000000005', 'R-404a', NULL, 'kg', 3942.8, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 3, chapter 7, table 7.8,  p.7.44 (HFC-125/HFC-143a/HFC-134a)(44.0%/52.0%/4.0%)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF005-8', 150, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6e2f0100-2e25-54e9-b2c3-d5fcb92256d3', 'a1000001-0001-4001-8001-000000000005', 'R-407a', NULL, 'kg', 1923.4, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 3, chapter 7, table 7.8,  p.7.44 (HFC-32/HFC-125/HFC-134a)(20.0%/40.0%/40.0%)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF005-9', 151, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('55354f0c-396e-5833-a1fa-71dab4721b72', 'a1000001-0001-4001-8001-000000000005', 'R-407C', NULL, 'kg', 1624.21, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 3, chapter 7, table 7.8,  p.7.44 (HFC-32/HFC-125/HFC-134a)(23.0%/25.0%/52.0%)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF005-10', 152, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f03c97de-9c3a-5dae-95a1-3afa62a7189f', 'a1000001-0001-4001-8001-000000000005', 'R-410a', NULL, 'kg', 1923.5, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 3, chapter 7, table 7.8,  p.7.44 (HFC-32/HFC-125)(50.0%/50.0%)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF005-11', 153, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('eb5510ca-2fb9-5700-aa76-ca8f168fde25', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.5896, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-88c19c9080cb', 154, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('31d8bc67-773c-5908-8ce2-03d2e01ea5d9', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.5372, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-a9f4d0f59d28', 155, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ffbacff8-158d-5951-80fa-af1a8ce5c517', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0532, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d7aecbbee9e5', 156, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1ccf9896-28ef-5950-86db-13b8e083c499', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0421, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-e9eb0a324c91', 157, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('59b33725-1939-5c6b-ac4e-baa173e0c644', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0971, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-1a20ff9a9925', 158, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6f9b07e0-cc49-5e51-9d48-f41583537db2', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.079, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-0726dd38f680', 159, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('cac23d97-5035-5a7a-a4cf-f516157b651b', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.069, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-80bf33626f1d', 160, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('88f200ba-233e-5ae1-9dda-31c546951e58', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0546, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-ef4d990dac65', 161, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('dc77fbaa-deda-5120-8803-b9790d57d1b1', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.7509, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-ad816b237d83', 162, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9801b4f2-73dd-5184-9a2a-de9bf1e24c07', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.6408, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-0761a93256f3', 163, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d6481649-5afd-5dff-969b-0385d25616e1', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0639, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-f4a53f481b19', 164, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('fbbfba52-68c1-5686-8158-bcc6d9e886a1', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0539, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-a4098729be55', 165, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b2481a4d-3f29-5931-83f0-e0213b345f95', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1201, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-63b71b18ba75', 166, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('69d2a78f-e448-56cf-86ed-5b78fbe77b25', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0977, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-972e36252fea', 167, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ee20e5dc-5d80-56a5-97ea-67488d13b18f', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.084, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-4725acb5172c', 168, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4c040fc9-dbb7-52a1-bb5f-7572fb3d95fb', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0687, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-15c6f5660337', 169, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a7cd9e19-c17d-5556-85cd-d1d017a07a87', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.4271, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-7c1591b4285c', 170, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('486b872b-3828-5a63-b497-729f00357b21', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0677, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-a417d59b98a0', 171, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0e9107a2-6c19-5925-a7da-7d7aad3ab3b3', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1246, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-7bbce834050a', 172, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('33d75868-11ad-5de9-87ba-1dc59471c617', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0874, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-b2dc83000cb5', 173, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e22b907b-7713-53c7-bdb1-ad0635f6c2c7', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.513, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-e238121ae767', 174, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7a8aa62c-1bc9-580a-80c8-624da2c15c88', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0749, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-a035d9e6ec15', 175, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9fa2baa5-abbb-554a-b5ad-ef32122cfa84', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1443, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-28fd60ef1073', 176, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7e58580d-201e-5e20-99fe-2fb016f11b30', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.099, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-4e6ac6eb79ed', 177, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d9810e51-56a3-5004-88cf-d99b278d55dd', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.492, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-bd89e0dbb6b1', 178, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('76854881-5a83-5f07-9e02-d0f3382d44a3', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0613, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-defa5bcda49a', 179, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('acda31ab-4f48-5e83-8c00-7110d5228b8e', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1082, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-c92688fab98e', 180, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('790f8889-e896-5368-967f-8347edc4190e', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0768, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-fea6fe1c9e73', 181, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('64cac3bd-0144-5318-8617-ccc188c7c701', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.6079, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-a2099a49323d', 182, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9f09fbb5-9984-588e-b3cd-a43624bc25c3', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0734, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-69ffdb04221a', 183, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('013dc41d-9f7d-5e59-b66c-bd65a0c4b1d3', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1345, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-017a2c270ae8', 184, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('62d8f7a7-b015-54c5-9ad6-914ef8d64c41', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0942, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-915c747a7430', 185, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('899b19cd-9f16-5db0-ad79-19fd72a82620', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก ขนาดเล็ก 4 ล้อ วิ่งแบบปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.313, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-7526d8143852', 186, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e8b0a5e3-6a47-5739-a685-2a81a74f6e2a', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก ขนาดเล็ก 4 ล้อ วิ่งแบบปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.141, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-75e7b8eb1cc7', 187, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7256b210-45d7-554b-a73e-bf58e06699e5', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก ขนาดเล็ก 4 ล้อ วิ่งแบบปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.2697, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-e8fad500c1ff', 188, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('33d7ed10-c62c-50f2-ac98-cc7d020c1307', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก ขนาดเล็ก 4 ล้อ วิ่งแบบปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1839, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-a8ba40aacc0b', 189, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1d914dbd-a683-57f3-a25e-4bf11b0b0db3', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก ขนาดเล็ก 4 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.3748, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-bb4cd5e034a3', 190, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e4f1f78a-94cf-57bd-a5ec-94d13d1f9ba5', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก ขนาดเล็ก 4 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1626, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-fd1645519add', 191, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a7dae447-9874-5edb-905c-e68b37c49d59', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก ขนาดเล็ก 4 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.3163, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-fe02e96ee9e1', 192, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ddcf9a30-c807-5ee7-87cd-f562bac17388', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุก ขนาดเล็ก 4 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.2138, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-2351b12badec', 193, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5c119cf6-67c9-5f70-8d70-802d27393884', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.8679, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-1646346bd57a', 194, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('64da7d62-3650-5c14-84cf-65d89486f73b', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0443, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-76fba00b5e7f', 195, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9c53443b-81dd-5c67-a3b4-7485f1315190', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0802, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-8b71a5197f08', 196, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('af18a3c7-cbbb-5f92-898b-c03b289765db', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0568, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-0585ccdcbdec', 197, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('815339ce-f814-5717-a757-25c78aa25403', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 1.0651, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-437a85928c19', 198, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7d778645-5812-589b-a50f-5292f02589d2', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0532, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-902510e256ec', 199, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5c205237-f718-5367-8ead-f02a6cb2a47f', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0975, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d9ddeba7352b', 200, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f679c8a1-a198-56c7-89b9-fb9da192c458', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0687, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-de86eb8c2c76', 201, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('64dc62a2-b613-588f-a1bc-f924c53879de', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.2358, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-635d12a86a0e', 202, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('caa4af91-8b86-5302-80d1-46ffdcefe2f1', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0411, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-e47c21334ad6', 203, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7e213329-beee-5748-ab12-0baa731f4375', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.076, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-db71f735f3c1', 204, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3693b83a-c0fd-51f7-add1-3be4cebbdfaa', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0528, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-bc731d22e4f9', 205, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7c22afda-1041-5f1a-915a-a14036e8dfc5', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งปกติและแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0515, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-4191095937c7', 206, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6601fe25-7d2e-5f5d-bf55-8471bb9b255f', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งปกติและแบบสมบุกสมบัน 25% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.2059, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-994b6f4bee85', 207, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d3bec3d2-7b05-598c-b463-90a788562e1b', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งปกติและแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1029, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-667cf5fe21f8', 208, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('031f7b90-4c06-5fe4-a99a-410d28e68a8d', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งปกติและแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0686, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-bdf4e2fff297', 209, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f930f22d-49cd-5000-92e1-7e034d9e0dd3', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 1.0015, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-fe18db1aabf3', 210, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f70e26e1-705e-5227-8f95-089e1d04ba58', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0507, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-a93ac22ff310', 211, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a3fead03-d6f9-5d6e-a715-6de7eb20fc1e', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.092, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-09ec79741603', 212, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ca3651e9-1ea0-5b4b-8254-24dc10137be0', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.065, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-8159fe699e2c', 213, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('fcd3387e-df0a-5c81-9824-a23826b9656e', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.8399, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-f1d30120a136', 214, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('677182d2-f344-58a6-b1c7-f71d4695d021', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0448, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-4839a715588a', 215, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e9441ea5-f095-5b00-aff4-8439f8afdb06', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0839, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d2d95c307793', 216, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('02602cfb-3255-58e4-93af-725a924016b7', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0594, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-17bc7c568d92', 217, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8444d569-3cbf-58c1-930d-e7d6d74e3fbf', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 1.1435, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-064e71401f87', 218, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c606acc8-2f81-55ec-86f7-4e39b0b2b483', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0547, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-f838e467a9f3', 219, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('87ec280f-1516-5544-a3c6-5b7e35c4d1a5', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.101, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-5734e4466802', 220, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('10ac31f0-5ee7-5590-bf31-68e1d3040822', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0705, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-a0b06d3f5f27', 221, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a6d3974d-347b-53b5-a1ea-e7b185f62dd0', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 1.0201, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-9f9654ab0063', 222, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('31e8ddff-22f8-565a-bb22-5ab4517f0233', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0459, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-ad92b0ea38ae', 223, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('59feeda8-0ed8-56d1-854c-9c8de25d01b9', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0866, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-7af33dd4cd3a', 224, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('81db4c69-ba10-5561-939a-161bf74188c5', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0596, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-32298c84a28f', 225, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('87277825-7591-5a57-bd45-433d4d3f50bd', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 1.2446, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-4fe4a8d789b1', 226, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f855cfd4-38dc-5a6b-b9a3-e7ff254e690f', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.054, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-655d9974919b', 227, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('68405698-a954-599c-8821-5fcc6360c7fa', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1041, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-76307c807a5d', 228, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('fcf321ad-a532-5504-a68e-bbf5a51f13e8', 'a1000003-0003-4003-8003-00000000000a', 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.071, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-36d760e697e8', 229, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1ab25300-a834-5d8a-be83-1d12fc9e6da8', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 10 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.5744, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-a076a59bc3ec', 230, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f03b5c30-4f5e-53e1-9075-4e57f26b9518', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 10 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0454, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-6ee88b74b252', 231, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('57a937fc-302f-5416-a73d-74791dee9f12', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 10 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0852, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-4e2b2b6d3c32', 232, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f3045008-1820-5f29-b182-f36c25459e4d', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 10 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0589, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-60a81b12c0f5', 233, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9a52b06c-8617-5552-b141-bce6e49986b0', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.6776, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-afb89d76be84', 234, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ca70a861-b729-55c3-b95a-d40c6062229e', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0553, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-8ba89706d6c0', 235, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6b2b9a65-1c9c-579b-847b-6be6efc12e5b', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1043, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-2939500d9b61', 236, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('62546a7b-177b-52ba-bc5a-dec06fd40d07', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0724, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-e4ff98b8e8de', 237, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('79bf6c11-49b4-5cd5-aa69-81642bf84137', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.2414, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d8fa252e5a52', 238, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('208626ed-0abe-5d41-ad3c-f49815f57259', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.2153, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-690405257950', 239, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('972bff0d-fcc4-5e8f-aa99-c02997563963', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.3803, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d7821e79906f', 240, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('841b1da0-c0b3-5fc2-81c2-ec20beb82fd4', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.2705, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d28873a79645', 241, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('30420c2c-ff79-5d46-961d-4db290b385d4', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.3089, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-c0f22325c1ea', 242, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('cec2ba2b-8f86-5b03-b517-212a909fca99', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.2555, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-e5b70fc5b45e', 243, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('43db88ac-61ec-5e3c-9afa-42ac8a3935ef', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.4693, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-cdc6d30e749e', 244, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('bee3cdb0-9146-50f6-9c8f-cebdbdc5f88d', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.3274, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-c732205a7a39', 245, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6b92ba90-4d45-5274-bc5a-cbc9d850e809', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 4 ล้อ วิ่งแบบปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.3343, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-0148b27427c9', 246, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('141e4a56-7438-57ca-bc91-46e70a455171', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 4 ล้อ วิ่งแบบปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1834, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-149d64cc06ed', 247, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c466d178-29de-5beb-94b4-14b812c317c7', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 4 ล้อ วิ่งแบบปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.3399, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-6972f6f1aaaf', 248, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0e6aea6c-0456-5614-83e7-ebef01b061bb', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 4 ล้อ วิ่งแบบปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.2404, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-3766e4c13854', 249, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1f0989ff-67f2-52b7-b7f9-802b3c8d10b0', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 4 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.4104, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-abadfef9bd0d', 250, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('715066eb-33a0-597c-a6f7-2c381ce6955d', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 4 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.199, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-30c71ac38827', 251, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('88f67a8c-371a-5f7d-9ccb-c6f59f858ce5', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 4 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.367, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-066649385873', 252, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('169c8221-2a23-5725-adf7-952dbacec012', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 4 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.2549, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-5421b1364ab6', 253, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8a50574b-21a2-592a-8632-a2a1ea803724', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.4066, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-7a75b2b82e4b', 254, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2a30d426-5a20-5108-a275-176928a7d5e7', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0653, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-1daf7a1d4ed1', 255, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2048ebbd-0453-513d-9233-e1bb4db13b95', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1197, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-6b488e31315f', 256, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('fcdc5dda-f424-57e6-9709-38e4ce2fa41b', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0842, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-da469f6563f2', 257, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3e164f74-5de3-5023-a1bf-da2341818390', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.4225, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-667947309306', 258, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('cd87a8a2-3289-5707-87ba-f17b5b6dd45f', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0691, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-883ee09df70f', 259, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('07a6702e-4c44-576e-a604-f53943359749', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1301, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-6926208be6d6', 260, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('51ca266b-4423-5efe-960b-2381e4799864', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0912, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-a312a8eca4cf', 261, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('186cf2fa-09cb-5b4c-8acd-1fe1094e07d8', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.4371, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-e113ef6cd737', 262, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7603780b-6719-5fdb-9586-87b1cac6f4a5', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0546, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-f5f1b9ad3f36', 263, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f956841b-3781-51f7-932e-c6a9a72d74f3', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.102, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-c7debbe8cdeb', 264, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d05162e5-a69c-5da3-8a08-56f1fce847cf', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0716, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-4d83dee97d11', 265, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7eb270ca-4733-5312-ba27-71cb4388495b', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.5595, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-f50efdf81d7f', 266, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4f6549d7-8744-5b16-9c7d-7c9b10cd8fd4', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0678, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-8f3517e0d05f', 267, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9486ede1-76a7-5041-9ddb-c6869c211a37', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1228, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-ca1938c54487', 268, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('79cfb42c-3d75-5d1b-aa05-525156eb9812', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0863, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-cb72465e872c', 269, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('245242ec-593d-5427-9b1c-17776b5443d4', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.821, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-7ec3f5752f8e', 270, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c4839665-e8e9-585b-b80e-7ea220a383ec', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0449, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-b875dca48600', 271, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6f046936-35ac-5a13-b193-79c0a72648d1', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0803, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-a6ebeb1f0865', 272, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5f7e3b30-3dea-5d13-a042-b2ae5a1ba4f8', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0577, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-8fe210ff35c8', 273, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2ac1128d-e68f-5267-bd0b-0f2b15ee375d', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.9957, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d2caf47a8452', 274, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5a09ce1e-7a32-5706-a31f-22a940943b15', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0523, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-c62ca9691f16', 275, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('85bd4071-d0be-5047-baf3-aeaf739ac427', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0914, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-7fdc5265a105', 276, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5c5f8b82-b4a7-55ce-acb8-76b5c26ef038', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0654, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-aa42fe1bc5ea', 277, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f935d07d-79c7-5d8e-9f80-420c6dbdb6c2', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.7866, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d70b15280b85', 278, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e128f6be-4d4a-5fa6-aaed-0c568ed4e0ea', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0403, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-56b8e008dce8', 279, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('eb9fb8f2-230f-5991-873d-80f2fcec2072', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.073, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d1b95af2b21a', 280, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4777534a-3a00-5e7a-a009-a24ec1d76db5', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0517, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-6ed40c7cd380', 281, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a477390d-8722-5cbe-9087-edcca4d881df', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.8652, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-a933796f1666', 282, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9399791d-ce16-5b13-bf5c-7b9facd57414', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0502, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-299ac33ab363', 283, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d459bd8d-344c-5bc3-aef5-fe46a9b412e3', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0858, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-ce9b6b4deb2c', 284, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('066f9937-c382-51ce-8908-e12a91e465e7', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0627, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d85ae3f76874', 285, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('36952636-cba7-5c45-9617-64b697ab8ef0', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.605, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-3dbc748ac726', 286, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4d616cb6-fbda-50fb-a9b4-e63818ccc4bb', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0488, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-4dbc64c47224', 287, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f5372ffe-20bd-54f0-bdc0-10fda3596280', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.088, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-ad0d8415fc2e', 288, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c1425db5-607e-571d-b4b0-31473d90fcb1', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0616, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-84e028d03151', 289, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7deac5c1-1d3a-504b-bbe3-dac1e737072a', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.667, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-ec08d198e747', 290, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b6c10c18-df10-5266-8dc4-69b31d26dd1d', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0611, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-7c60c68cdfc1', 291, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2d23f536-e6cf-5db6-9bee-3596bb566c80', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1018, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-b85f00dcc2fb', 292, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ca8adb42-f7f2-5e33-9c85-9912d5e96e0a', 'a1000003-0003-4003-8003-00000000000a', 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0738, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-ef8a7dfbdff1', 293, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a654f221-ba9e-5de8-9d0f-efac480020aa', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกขยะ 6 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.492, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-b88dee241516', 294, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('342e3e6a-c2dd-595b-91db-3df545a2d246', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกขยะ 6 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0474, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-4a2bd05b6b17', 295, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e3c2662f-348a-5a68-9527-7584d78854dc', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกขยะ 6 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0839, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-40a0555126a7', 296, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b5ecc6ea-b2a7-5ce8-8206-1f9c5ccc10b3', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกขยะ 6 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0607, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-75ae81d257db', 297, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('785f72a8-5549-589c-b278-7dfe56c64abb', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกขยะ 6 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.5443, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-518c6f72c80d', 298, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b3048fb4-8cab-56fe-8e0f-1ea8737daba6', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกขยะ 6 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0552, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-17171ff2e1ef', 299, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3ee491ef-757c-55b7-b95a-1c4eaa4a76e2', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกขยะ 6 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0944, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-dbaca9896ac1', 300, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d9615a2c-2af8-5946-9497-39a130db4055', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกขยะ 6 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0693, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-80674536fb59', 301, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('cc970a02-827a-53e7-97a8-7f7137a10a7b', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งปกติ  50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0918, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-cb64c8b6a7a0', 302, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f841c035-57b0-541a-bcb8-737821ef1498', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.6313, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-87ce7317805e', 303, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ceac9d68-5bb9-5670-8add-f324f68d3e7f', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.047, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-139a89e6b1b4', 304, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8468d48f-e67a-5852-b391-754714032c99', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0624, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-708dc4a1d832', 305, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('54598e07-0f6d-51fe-97ab-c6df4065a731', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งแบบสมบุกสมบัน  50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1097, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-0d73250d5170', 306, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('bf361724-9a3f-5406-abcc-94afb09f8449', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.7378, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-576b91903284', 307, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f8686a8b-f9db-509e-9c54-67ed9cac77ec', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.061, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-4652a514984b', 308, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9ca7052c-da69-5136-9ea2-0f1448755457', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0772, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-1522b51be8ee', 309, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7030af67-77fe-5434-b981-af3e9aee8a5f', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.9454, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-06dfc00583a2', 310, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7786b170-25e4-52e5-bab9-cbe3fb4d28a4', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0433, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-f5d8bf74a1b6', 311, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d3952c75-a617-5ac9-b0e1-992d0d6ac455', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.084, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-de6ef8f632bc', 312, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('57c8ed2b-32c3-5d17-820a-fce3c269e5a0', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0577, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-2f889bf695b8', 313, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e9e63504-c493-51dd-a4cf-64987dc0ff22', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 1.1848, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-1d5405032079', 314, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('53d5b095-b9de-5221-9e71-01a159467240', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0591, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-6f464bf019ec', 315, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('15b4b7ca-57aa-5cd7-8d91-5e450e2d3304', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1049, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-517ccaa500aa', 316, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('84a1f701-d06a-57ce-bebd-77edfeec8906', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0745, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-a581d5e5d4fe', 317, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e532fc2c-eac8-5cb1-9864-b365eb86ad13', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 10 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.4638, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-f5abc5cc08ec', 318, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('34e4a007-e7b0-59fa-b99c-790a0489cf3a', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 10 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0474, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-cc94c5b64f9a', 319, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a1f28b8b-b8cf-5a51-bd4f-a28d35576cc5', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 10 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0834, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-f8b0535991c1', 320, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b0ceff37-b721-5bb5-b353-a5f262496d6e', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 10 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.061, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-031fc1521e69', 321, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e7e15faf-909e-58df-b9c1-d8ee1a92faaf', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 10 ล้อ วิ่งแบบสมบุกสมบัน  75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0731, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-6325e68af069', 322, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f5cca83b-55a1-5711-ac4c-ce4cae22e263', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 10 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.4822, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d4621d3df1cd', 323, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1d4bc960-4a2a-5f45-9903-594bdc7abc73', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 10 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0546, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-216416a440c2', 324, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e3d2a275-2603-55ac-a8fd-aceb50c9160c', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 10 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0985, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-e774a5aab977', 325, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8882122b-b148-52bd-8f9b-2d6358ff3b32', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 18 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.9126, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-3d36548bb006', 326, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('32c22b0c-09cc-5089-aece-11960ea8af62', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 18 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0461, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d97611b4dedd', 327, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0f8db72f-30b6-57a8-a82c-045f4558659a', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 18 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.084, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-f43045b47282', 328, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3625cc8b-df41-54a3-bb2e-8fc63de0864c', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 18 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0594, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-c8ea8ca19b2a', 329, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9a326006-35df-59a4-ad2b-9e217b97a271', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 18 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 1.1208, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-bf05181491a1', 330, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9f4f67e9-e1ca-5754-9a92-b96fb12ab9cb', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 18 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0589, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-541595512d72', 331, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1413d417-ff5f-55ef-8d30-b8470365f013', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 18 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1042, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-937e64fd1e74', 332, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c60679a4-2d05-5189-87e3-404c4f1eaea4', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้าและชนิดถ้วย) 18 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0745, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-61d51fb9911d', 333, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8ac8322c-e413-50b8-8e8d-5727a977cf3c', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งปกติ 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.5973, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-e701f8ac8112', 334, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('29e5606e-86dd-5108-9945-1813da5a1bd0', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งปกติ 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0514, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-816430b0c9f8', 335, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('250129d8-d7fe-5578-80db-b3f137a1defc', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งปกติ 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0956, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-5fc1c0f11632', 336, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1bed7c48-82dc-552b-b7e6-4cc8fe45aec0', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งปกติ 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0671, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-115f704e42dd', 337, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a9ffa825-13e7-52b7-bc5b-354dad7874bf', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'km', 0.6427, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-5ebb93171937', 338, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('fdbac4b3-af02-5511-b75f-dd15c2477986', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0573, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-1f41f53cdf1d', 339, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7c32059e-797c-59d6-9731-a5698297577f', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.1065, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-2b4785ebfaca', 340, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8a550161-c1c4-532d-b2ce-a3c784478cf9', 'a1000003-0003-4003-8003-00000000000a', 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'กลุ่มการขนส่งโดยรถบรรทุก (Truck Transportations)', 'tkm', 0.0752, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d71f1ccad535', 341, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('92469584-dfd2-5511-aaa3-ec76f367bed3', 'a1000003-0003-4003-8003-00000000000b', 'การกำจัดขยะมูลฝอยชุมชนแบบเทกอง', 'กลุ่มการจัดการขยะ (Landfills)', 'kg', 1.0387, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-4bc7c98351f1', 342, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('73f49066-8fa9-5cbb-a27f-cd952c0a0fd2', 'a1000003-0003-4003-8003-00000000000b', 'การคัดแยกขยะมูลฝอยชุมชน', 'กลุ่มการจัดการขยะ (Landfills)', 'kg', 0.0158, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-5123cc5a23f5', 343, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d106f5dd-5522-566c-b67d-5fe32dd9739b', 'a1000003-0003-4003-8003-00000000000b', 'การจัดการมูลฝอยสด (การหมักแบบไร้อากาศ)', 'กลุ่มการจัดการขยะ (Landfills)', 'kg', 0.1055, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d5d67d5d9f8a', 344, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('906998a0-ac7a-5626-bb65-3f5d76deccef', 'a1000003-0003-4003-8003-00000000000b', 'การจัดเก็บ รวบรวม และขนถ่ายขยะมูลฝอยชุมชน', 'กลุ่มการจัดการขยะ (Landfills)', 'kg', 0.0142, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-6f5e45869fe0', 345, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('707a9b28-5501-5a3a-a0da-4b89d6be9d6d', 'a1000003-0003-4003-8003-00000000000b', 'การฝังกลบขยะมูลฝอยชุมชนแบบติดตั้งระบบนำก๊าซมีเทนมาใช้ประโยชน์', 'กลุ่มการจัดการขยะ (Landfills)', 'kg', 0.0175, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-37fd5a1843a8', 346, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0e8b00f6-c9cf-5d40-8e71-ab6171e55207', 'a1000003-0003-4003-8003-00000000000b', 'การฝังกลบขยะมูลฝอยชุมชนแบบถูกหลักสุขาภิบาล', 'กลุ่มการจัดการขยะ (Landfills)', 'kg', 0.7933, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-ae175755b282', 347, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e65c9e66-c893-5b13-80e4-8038fb45aee4', 'a1000003-0003-4003-8003-00000000000b', 'ปุ๋ยหมักอินทรีย์จากการจัดการมูลฝอยสด', 'กลุ่มการจัดการขยะ (Landfills)', 'kg', 0.3323, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-5904d8ccc5e8', 348, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('753fbb67-d2c2-5b26-8ee1-cb84356dc01f', 'a1000003-0003-4003-8003-00000000000b', 'ปุ๋ยหมักอินทรีย์น้ำจากการจัดการมูลฝอยสด', 'กลุ่มการจัดการขยะ (Landfills)', 'm3', 0.3335, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-b9abbc4eb450', 349, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8d0ac0af-45d6-5e33-bcca-d82430cf3494', 'a1000003-0003-4003-8003-00000000000b', 'การปรับปรุงคุณภาพน้ำเสียชุมชนของประเทศ', 'กลุ่มการปรับปรุงน้ำเสียชุมชน (Municipal Wastewater Treatment)', 'm3', 0.1119, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-68a6f295538a', 350, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('25f0b778-c611-5d62-a741-8cd673d48e09', 'a1000003-0003-4003-8003-00000000000b', 'การปรับปรุงคุณภาพน้ำเสียชุมชนของเมืองขนาดกลาง', 'กลุ่มการปรับปรุงน้ำเสียชุมชน (Municipal Wastewater Treatment)', 'm3', 0.0849, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-ba947792e100', 351, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('275e532d-d448-5b0a-adc2-93e3f22c74a5', 'a1000003-0003-4003-8003-00000000000b', 'การปรับปรุงคุณภาพน้ำเสียชุมชนของเมืองขนาดใหญ่', 'กลุ่มการปรับปรุงน้ำเสียชุมชน (Municipal Wastewater Treatment)', 'm3', 0.1199, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-f63fc92e7813', 352, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3ef8df94-c446-5e09-af8a-fbb4967db84b', 'a1000003-0003-4003-8003-00000000000b', 'การรวบรวมน้ำเสียชุมชนของประเทศ, ค่าเฉลี่ยประเทศไทย', 'กลุ่มการปรับปรุงน้ำเสียชุมชน (Municipal Wastewater Treatment)', 'm3', 0.0094, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-e6ab25a37493', 353, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('51fbd8d1-5cb0-59d2-ac41-cf46286751d1', 'a1000003-0003-4003-8003-00000000000b', 'การรวบรวมน้ำเสียชุมชนของเมือง ขนาดกลาง', 'กลุ่มการปรับปรุงน้ำเสียชุมชน (Municipal Wastewater Treatment)', 'm3', 0.0347, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-92aa412c6cdc', 354, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('39cf6d50-f717-53c5-8fa4-4b7b01811a22', 'a1000003-0003-4003-8003-00000000000b', 'การรวบรวมน้ำเสียชุมชนของเมือง ขนาดใหญ่', 'กลุ่มการปรับปรุงน้ำเสียชุมชน (Municipal Wastewater Treatment)', 'm3', 0.0018, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-dc6ef7a85995', 355, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('afc75e5a-fc32-5bc9-ab33-fb7762945c7c', 'a1000003-0003-4003-8003-00000000000b', 'การรวบรวมและการปรับปรุงคุณภาพน้ำเสียชุมชนของประเทศ', 'กลุ่มการปรับปรุงน้ำเสียชุมชน (Municipal Wastewater Treatment)', 'm3', 0.1212, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-e012210e3892', 356, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e9fa1a46-65e1-5e18-83a0-52839f534cfc', 'a1000003-0003-4003-8003-00000000000b', 'การรวบรวมและการปรับปรุงคุณภาพน้ำเสียชุมชนของเมืองขนาดกลาง', 'กลุ่มการปรับปรุงน้ำเสียชุมชน (Municipal Wastewater Treatment)', 'm3', 0.1196, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-aaed1f8cf843', 357, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0342b124-d5b0-5377-9339-bc5b5734c5dc', 'a1000003-0003-4003-8003-00000000000b', 'การรวบรวมและการปรับปรุงคุณภาพน้ำเสียชุมชนของเมืองขนาดใหญ่', 'กลุ่มการปรับปรุงน้ำเสียชุมชน (Municipal Wastewater Treatment)', 'm3', 0.1217, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-8932fb238d78', 358, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('23b905eb-ff36-5e31-a834-0ffd5f37dc5f', 'a1000003-0003-4003-8003-000000000007', 'น้ำประปา-การนิคมอุตสาหกรรม', 'กลุ่มน้ำประปาและน้ำอุตสาหกรรม (Tap Water and Industrial Water)', 'm3', 0.2512, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d67bdecd2afb', 359, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a16e075d-af5b-5d7d-a53f-3d64fbdaf665', 'a1000003-0003-4003-8003-000000000007', 'น้ำประปา-การประปานครหลวง', 'กลุ่มน้ำประปาและน้ำอุตสาหกรรม (Tap Water and Industrial Water)', 'm3', 0.7836, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-383479fe7e71', 360, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('67a7a0c0-d06d-5878-bd3e-c05155229883', 'a1000003-0003-4003-8003-000000000007', 'น้ำประปา-การประปาส่วนภูมิภาค', 'กลุ่มน้ำประปาและน้ำอุตสาหกรรม (Tap Water and Industrial Water)', 'm3', 0.5167, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-4cbc785d5953', 361, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('fdb40582-56bb-55ce-b439-636d22ac9a6b', 'a1000003-0003-4003-8003-000000000007', 'น้ำปราศจากไอออน ที่ผลิตโดยเทคโนโลยี Ion Exchange', 'กลุ่มน้ำประปาและน้ำอุตสาหกรรม (Tap Water and Industrial Water)', 'm3', 1.9851, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-8ed163c2d768', 362, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1c1af2d3-373b-56b5-be8d-ae6055e49cfe', 'a1000003-0003-4003-8003-000000000007', 'น้ำปราศจากไอออน ที่ผลิตโดยเทคโนโลยี Reverse Osmosis', 'กลุ่มน้ำประปาและน้ำอุตสาหกรรม (Tap Water and Industrial Water)', 'm3', 2.0141, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-4ef5223f06c5', 363, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('caa2063e-b8d3-5ae8-a525-509ab6fa1a9a', 'a1000003-0003-4003-8003-000000000007', 'น้ำอ่อนสำหรับหม้อไอน้ำ', 'กลุ่มน้ำประปาและน้ำอุตสาหกรรม (Tap Water and Industrial Water)', 'm3', 0.9442, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-a45ec36f7305', 364, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('57d802ad-d1b4-5f06-9578-7e940f1f570f', 'a1000003-0003-4003-8003-000000000007', 'น้ำนมดิบจากศูนย์รวบรวมน้ำนม', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 2.4337, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-a47a7e9cc2c7', 365, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a64226f0-9fb1-52f6-b6a5-50da2f1b082a', 'a1000003-0003-4003-8003-000000000007', 'น้ำนมดิบจากโค', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 1.5896, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-71d266bb864f', 366, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('699f253f-76af-50a8-b716-e91e70ab3fbe', 'a1000003-0003-4003-8003-000000000007', 'ปลาดุก (เลี้ยงในบ่อดิน)', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 3.7776, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-e1a5c65674c1', 367, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('022bd0eb-34d7-564f-8976-289b119e21e4', 'a1000003-0003-4003-8003-000000000007', 'ปลาทับทิม (เลี้ยงในบ่อดิน)', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 0.4318, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-7863e93a30d0', 368, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('14cf0834-5a37-54b0-bb4f-c5a78a8a93cd', 'a1000003-0003-4003-8003-000000000007', 'สุกรขุนชำแหละ', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 4.2045, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d250467a6ce4', 369, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7ca8dc1d-e334-58a7-97de-f94aaf3b3e35', 'a1000003-0003-4003-8003-000000000007', 'สุกรขุนชำแหละอื่นๆ', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 4.2045, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-60e4df8b9d08', 370, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('73542d7e-3456-5753-9ffb-27a6b44e2821', 'a1000003-0003-4003-8003-000000000007', 'สุกรขุนมีชีวิต', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 3.2026, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-3df0ea716f59', 371, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3f850b7c-a8e3-5e48-88a1-342f8ef2b789', 'a1000003-0003-4003-8003-000000000007', 'หนังโคสด', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 13.8206, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-33e5ba8e9628', 372, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c78a3bbc-1e7d-58a8-95cf-171d84e2327f', 'a1000003-0003-4003-8003-000000000007', 'เนื้อโคชำแหละ', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 13.8206, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-1a1ae8e077f6', 373, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('abdbd754-3cec-5b1a-85e4-40892581ba3c', 'a1000003-0003-4003-8003-000000000007', 'เนื้อโคชำแหละอื่นๆ', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 13.8206, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-38989e4dc0f2', 374, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3f7d6f8e-0a4c-5a37-a41f-3e8ab07b6acd', 'a1000003-0003-4003-8003-000000000007', 'โคเนื้อมีชีวิต: ระยะเวลาขุน 6-12 เดือน', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 10.0143, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-f7b300cb60af', 375, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('56ad43f1-5c9e-57fc-9444-58d9b312a780', 'a1000003-0003-4003-8003-000000000007', 'โคเนื้อมีชีวิต: ระยะเวลาขุนมากกว่า 12 เดือน', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 12.5479, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-98feca115234', 376, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('96aba75d-bf1f-5159-bfd6-146c823f35e8', 'a1000003-0003-4003-8003-000000000007', 'โคเนื้อมีชีวิต: ระยะเวลาขุนไม่เกิน 6 เดือน', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 8.7657, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-ca5d5f4a021e', 377, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0d18c7bb-eeda-5cba-8091-219a46b8caf1', 'a1000003-0003-4003-8003-000000000007', 'ไก่สดชำแหละ', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 4.4988, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-62586155bd5a', 378, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b31d26aa-63a6-588f-8d9b-081b27693baa', 'a1000003-0003-4003-8003-000000000007', 'ไก่สดชำแหละอื่นๆ', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 4.4988, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-9d26acfaa2ce', 379, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4c9e9f69-c32b-5bbe-be1a-1cefc6834d53', 'a1000003-0003-4003-8003-000000000007', 'ไก่สดทั้งตัว', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 4.4201, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-f4b027ef215e', 380, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e3d4c885-a730-5311-b0de-aa4536c0df15', 'a1000003-0003-4003-8003-000000000007', 'ไก่เนื้อมีชีวิตจากฟาร์ม', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 3.2504, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-13d8425df2e0', 381, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7b05936f-7af6-5d24-b3a8-53f62683d3d2', 'a1000003-0003-4003-8003-000000000007', 'ไก่เนื้อมีชีวิตจากฟาร์มที่เลี้ยงโดยใช้อาหารที่ไม่มีโปรตีนจากเนื้อสัตว์เป็นองค์ประกอบ', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 2.6518, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-753cd9a771cd', 382, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6b06c940-f729-5549-9f7d-13ea2411b2c0', 'a1000003-0003-4003-8003-000000000007', 'ไข่ไก่', 'กลุ่มปศุสัตว์ (Livestock and Products)', 'kg', 8.8497, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-0bd848144f19', 383, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d34d8625-be8e-5cca-a512-9165b79f1fae', 'a1000003-0003-4003-8003-000000000007', 'Acrylonitrile Butadiene Styrene (ABS)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 4.5845, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-1f02552738dd', 384, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3b5caab7-1175-5966-92b1-0e74d10e2f27', 'a1000003-0003-4003-8003-000000000007', 'Benzene', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 1.6128, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-fc02b55d818a', 385, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4582ed08-378c-5ba4-b674-c316b73af93c', 'a1000003-0003-4003-8003-000000000007', 'Bisphenol A (BPA)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 3.5411, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-7367485378fa', 386, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5c472c77-e7bd-54f0-b305-9e0c042c8f2c', 'a1000003-0003-4003-8003-000000000007', 'Caprolactam (CPL)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 2.784, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-2eacc295022d', 387, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('648c5230-f157-5d77-91b2-9ceba644cf3e', 'a1000003-0003-4003-8003-000000000007', 'Cumene', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 1.7067, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-a2cf4f519df3', 388, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f087c26f-24c8-5916-afda-954dfe8a1a5a', 'a1000003-0003-4003-8003-000000000007', 'Cyclohexane (CX)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 2.0625, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-bc6a26663fff', 389, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4a556cdb-f172-56ca-be0e-b979e44f62a1', 'a1000003-0003-4003-8003-000000000007', 'Ethylbenzene', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 2.3828, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-af0a7c61e1d8', 390, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('93fd04ba-a502-5925-9a10-1c8f07c50130', 'a1000003-0003-4003-8003-000000000007', 'Ethylene', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 1.9671, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-4a0285b4e2b4', 391, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('dcabc1c0-3b7c-55f2-8fba-3621a739cee7', 'a1000003-0003-4003-8003-000000000007', 'Ethylene glycol', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 1.71, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-9912dcbdd517', 392, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9db92bb3-d51e-5b78-ac46-9a7cb321bc1d', 'a1000003-0003-4003-8003-000000000007', 'Ethylene oxide', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 2.7986, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-2e25bbe4498a', 393, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9b736739-5cd3-55fe-b7d6-8c7babab994b', 'a1000003-0003-4003-8003-000000000007', 'General Purposed Polystyrene (GPPS)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 2.1815, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-fa4a76b2f75c', 394, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('53157093-b15b-59cc-8da0-9aca560c62ab', 'a1000003-0003-4003-8003-000000000007', 'High Density Polyethylene (HDPE)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 2.4664, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-17b6f6273c4b', 395, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a6c80b3c-a410-5da4-97d4-a6149c0f59d1', 'a1000003-0003-4003-8003-000000000007', 'High Impact Polystyrene (HIPS)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 3.393, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-46eeff33cfb6', 396, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('91e0be9e-f7f6-5fa3-886d-04baf98e1630', 'a1000003-0003-4003-8003-000000000007', 'Linear Low Density Polyethylene (LLDPE)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 2.3995, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-ab77e97aed32', 397, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('caaf2ab0-b0c6-51ef-a539-55eb9e7fa89d', 'a1000003-0003-4003-8003-000000000007', 'Low Density Polyethylene (LDPE)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 2.4345, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-bc3f4ea826e5', 398, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8e4a8a5a-bace-5fab-ab48-f026cb710123', 'a1000003-0003-4003-8003-000000000007', 'Mixed C4', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 1.1263, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-8e72c7dcf853', 399, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('670630b4-04b5-5771-a79c-9755033651ce', 'a1000003-0003-4003-8003-000000000007', 'P-xylene', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 1.3021, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-428e1e878df6', 400, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1f703de0-4656-59c1-9101-0fb3a5b6dfbc', 'a1000003-0003-4003-8003-000000000007', 'Phenol', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 2.5856, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-c86fddbbb86e', 401, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1cd9cd7d-ba18-5667-bd66-6f17d1994a31', 'a1000003-0003-4003-8003-000000000007', 'Polyethylene Terephthalate (PET)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 2.9389, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-223f6a76ed3d', 402, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('402e7f50-4bbf-5bf8-8823-7c09df2d4b3d', 'a1000003-0003-4003-8003-000000000007', 'Polypropylene (PP)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 2.0366, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-0028d4d23c59', 403, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('aa9f7906-8226-54b2-abc8-0ab56e503b0f', 'a1000003-0003-4003-8003-000000000007', 'Polyvinyl Chloride (PVC)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 3.0658, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-01ffe1979238', 404, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f4fae8b7-a71c-5638-848a-25a2e7fb7656', 'a1000003-0003-4003-8003-000000000007', 'Propylene', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 1.7096, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-44edc2638565', 405, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('cbeda6ff-b5d7-5ac1-b7bc-ac7075ea1576', 'a1000003-0003-4003-8003-000000000007', 'Purified Terephthalic Acid', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 1.8081, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-b8420478c9b9', 406, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0e9b199d-c76f-5928-ba9b-10b87dcbe5d3', 'a1000003-0003-4003-8003-000000000007', 'Styrene Acrylonitrile (SAN)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 3.8395, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-5520c85900d5', 407, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d23035d5-144d-5b15-9c19-b69d9d0765ff', 'a1000003-0003-4003-8003-000000000007', 'Styrene Monomer (SM)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 2.0597, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-03ce0ad721ba', 408, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('59e253ef-4a85-5545-ac01-7e72df357856', 'a1000003-0003-4003-8003-000000000007', 'Toluene', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 1.336, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-a91f9249615f', 409, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('770bb9b6-2612-5b4a-8ddc-7540a4baa2dd', 'a1000003-0003-4003-8003-000000000007', 'Vinyl Chloride Monomer (VCM)', 'กลุ่มปิโตรเคมี (Petrochemicals)', 'kg', 2.7456, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-f56141032c7b', 410, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4983dd33-7d9b-5f6a-b222-e04248867527', 'a1000003-0003-4003-8003-000000000007', 'ก๊าซคาร์บอนไดออกไซด์', 'กลุ่มผลิตภัณฑ์จากก๊าซธรรมชาติ (Natural Gas)', 'kg', 1.0017, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-37fd7f16b843', 411, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('12599abc-fc0e-55f6-9e82-8b20341c40bb', 'a1000003-0003-4003-8003-000000000007', 'ก๊าซธรรมชาติ/มีเทน', 'กลุ่มผลิตภัณฑ์จากก๊าซธรรมชาติ (Natural Gas)', 'kg', 1.0815, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-9eeeadd8d772', 412, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ada3a404-70b4-50c1-b19b-008d194d8ee5', 'a1000003-0003-4003-8003-000000000007', 'ก๊าซธรรมชาติเหลว', 'กลุ่มผลิตภัณฑ์จากก๊าซธรรมชาติ (Natural Gas)', 'kg', 1.1083, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-b174bb84bc39', 413, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d712b1f6-374c-51c2-88d6-6ffd18b756b9', 'a1000003-0003-4003-8003-000000000007', 'ก๊าซธรรมชาติแบบผสม', 'กลุ่มผลิตภัณฑ์จากก๊าซธรรมชาติ (Natural Gas)', 'kg', 0.7238, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-ca8f765f818d', 414, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3f50613e-827b-571b-b617-6c309932844a', 'a1000003-0003-4003-8003-000000000007', 'ก๊าซธรรมชาติแบบผสม', 'กลุ่มผลิตภัณฑ์จากก๊าซธรรมชาติ (Natural Gas)', 'm3', 0.5534, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-2a7897cce63a', 415, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4f44ebc3-4fc8-5b27-be4d-f3142b9de5ad', 'a1000003-0003-4003-8003-000000000007', 'ก๊าซหุงต้ม', 'กลุ่มผลิตภัณฑ์จากก๊าซธรรมชาติ (Natural Gas)', 'kg', 1.1366, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-176fdb2afe25', 416, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('90d9343f-7599-5ebb-a714-33e2e879d39e', 'a1000003-0003-4003-8003-000000000007', 'อีเทน', 'กลุ่มผลิตภัณฑ์จากก๊าซธรรมชาติ (Natural Gas)', 'kg', 1.1142, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-fdcc63320682', 417, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9e0c65f7-27e8-59e8-950f-57e6d4fd131e', 'a1000003-0003-4003-8003-000000000007', 'โพรเพน', 'กลุ่มผลิตภัณฑ์จากก๊าซธรรมชาติ (Natural Gas)', 'kg', 1.1254, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-11f8d04bfb83', 418, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e928d33a-bd8c-55d2-8e2c-549b85a42fbe', 'a1000003-0003-4003-8003-000000000007', 'นมผึ้ง (Royal jelly)', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร (Food and Agricultural Products)', 'kg', 0.9413, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-e84d99afaa3f', 419, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2f63bba1-2164-5cd9-a929-2e018994df2f', 'a1000003-0003-4003-8003-000000000007', 'น้ำผึ้งกรอง', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร (Food and Agricultural Products)', 'kg', 0.9401, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-dfcc3811c260', 420, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4cb9902b-314d-54ce-b60c-ffe75de4dc65', 'a1000003-0003-4003-8003-000000000007', 'น้ำมันงาสกัดเย็นแบบครัวเรือน', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร (Food and Agricultural Products)', 'kg', 1.161, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-de4f0fe1f627', 421, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c5b3423f-1dcc-5294-8a5a-25673cfe5f69', 'a1000003-0003-4003-8003-000000000007', 'หอยหวาน (Spotted Babylon)', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร (Food and Agricultural Products)', 'kg', 0.0237, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-7fddc064c547', 422, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a4a14866-bf1d-568a-b14c-beb086c4858f', 'a1000003-0003-4003-8003-000000000007', 'หอยแครง (Ark shell)', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร (Food and Agricultural Products)', 'kg', 0.0064, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-75de600139ae', 423, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('bb387942-aa02-5696-a312-d2d0b6282acd', 'a1000003-0003-4003-8003-000000000007', 'หอยแมลงภู่ (Asian green mussel)', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร (Food and Agricultural Products)', 'kg', 5.9788, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-0ffdfc3cf2fa', 424, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('14ac39ec-8ecb-5013-b0cd-b19ce16515e8', 'a1000003-0003-4003-8003-000000000007', 'เกลือทะเล', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร (Food and Agricultural Products)', 'kg', 0.0056, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-760f153316d5', 425, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('40ce1128-32b1-5fde-bb52-16f24ec94317', 'a1000003-0003-4003-8003-000000000007', 'เกลือสินเธาว์แบบตากลานดิน', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร (Food and Agricultural Products)', 'kg', 0.0049, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-4dc83cbb3a98', 426, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('cda79643-67e3-5d96-8dff-427e50680db4', 'a1000003-0003-4003-8003-000000000007', 'เกสรผึ้ง', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร (Food and Agricultural Products)', 'kg', 0.9378, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-9dc94582acab', 427, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('06f377ed-4bb3-55d6-838b-4db9d43cdc21', 'a1000003-0003-4003-8003-000000000007', 'เป็ดเนื้อ', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร (Food and Agricultural Products)', 'kg', 4.7585, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-b6ba3bebffac', 428, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('661ce272-a94c-5a14-89de-be871cbac065', 'a1000003-0003-4003-8003-000000000007', 'ไขผึ้ง', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร (Food and Agricultural Products)', 'kg', 0.9412, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-2e578fbc7df1', 429, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('52e85970-c7dc-528d-b76d-a1658083d196', 'a1000003-0003-4003-8003-000000000009', 'ก๊าซหุงต้ม', 'กลุ่มพลังงานและเชื้อเพลิง (Energy and Fuels)', 'kg', 0.4304, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-cdd19046d61d', 430, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e22f0d45-a4b5-5c7a-9a8a-919eb140e2f1', 'a1000003-0003-4003-8003-000000000009', 'ก๊าซหุงต้มแบบผสม', 'กลุ่มพลังงานและเชื้อเพลิง (Energy and Fuels)', 'kg', 0.9458, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-35b57c1f4a99', 431, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c7556abe-a910-5336-a610-13d957679a5e', 'a1000003-0003-4003-8003-000000000009', 'ซัลเฟอร์', 'กลุ่มพลังงานและเชื้อเพลิง (Energy and Fuels)', 'kg', 0.2374, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-5aae800b4938', 432, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ee879ab5-3c63-5c49-ad57-de7ea26af933', 'a1000003-0003-4003-8003-000000000009', 'น้ำมันก๊าดหรือน้ำมันเครื่องบิน', 'กลุ่มพลังงานและเชื้อเพลิง (Energy and Fuels)', 'kg', 0.325, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-8105ccacf52c', 433, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d5e2ba65-e8e5-5ff0-b895-bfe9c288a15d', 'a1000003-0003-4003-8003-000000000009', 'น้ำมันดีเซล / น้ำมันโซล่าร์', 'กลุ่มพลังงานและเชื้อเพลิง (Energy and Fuels)', 'kg', 0.3503, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d70833813bfc', 434, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d57a7fab-7a39-5d07-8b38-7197a24c5a8e', 'a1000003-0003-4003-8003-000000000009', 'น้ำมันเตา', 'กลุ่มพลังงานและเชื้อเพลิง (Energy and Fuels)', 'kg', 0.3708, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-1bcea92f16a9', 435, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a699c042-4c7e-5542-893c-1f6e824a6a39', 'a1000003-0003-4003-8003-000000000009', 'แก๊สโซลีน', 'กลุ่มพลังงานและเชื้อเพลิง (Energy and Fuels)', 'kg', 0.4006, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d0f8ee7406f5', 436, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('59245587-6276-5c03-96a0-45fb1a2b5b6b', 'a1000003-0003-4003-8003-000000000009', 'แนฟทา', 'กลุ่มพลังงานและเชื้อเพลิง (Energy and Fuels)', 'kg', 0.2941, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-e5e5fa9539de', 437, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3751f9f2-5bdb-59f3-96f1-26ecf52c483f', 'a1000003-0003-4003-8003-000000000007', 'กระเจี๊ยบเขียว', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.1528, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-9d4c41a2814a', 438, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6d705959-807e-5e2c-80ea-59ee8c4178b6', 'a1000003-0003-4003-8003-000000000007', 'กระเทียม', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.4783, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-06d07bfc1546', 439, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('dfe9eed7-5ab9-5a9a-972f-90f2f61ea290', 'a1000003-0003-4003-8003-000000000007', 'กระเทียม (อินทรีย์)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.1312, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-aa43180b5d66', 440, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c25d5622-dbc4-58bc-86c5-285f14aea527', 'a1000003-0003-4003-8003-000000000007', 'กระเพรา', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.5021, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-1c89123eb9f0', 441, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('54cd59e8-1470-53ea-8031-fc4c649fae5e', 'a1000003-0003-4003-8003-000000000007', 'กล้วยหอม', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.6116, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-a36344d85681', 442, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4e891cb5-6d8d-591e-93fa-86b728b5a1b4', 'a1000003-0003-4003-8003-000000000007', 'กล้วยไข่', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.5737, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-5b7237fe4a2c', 443, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6316e152-ee1b-550b-80c7-3e72740f7d83', 'a1000003-0003-4003-8003-000000000007', 'กะหล่ำดอก', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.2502, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-0828baff0745', 444, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1496e674-06ee-5d4c-b40a-5450af950f7e', 'a1000003-0003-4003-8003-000000000007', 'กะหล่ำปลี', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.3425, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-90bf5a69e6ab', 445, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('72439a86-adb7-5cc2-b540-e7f56924f48f', 'a1000003-0003-4003-8003-000000000007', 'กะหล่ำปลี (อินทรีย์)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.3146, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-eaacb22983aa', 446, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('aea6f9f5-fdf7-5067-80c4-b4db4b826b5f', 'a1000003-0003-4003-8003-000000000007', 'กาแฟสารอราบิก้า (ปลูกร่วม)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 5.1991, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-8bd93865cd9e', 447, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('faf89bd8-0e64-50b5-a5ed-e5650c342433', 'a1000003-0003-4003-8003-000000000007', 'กาแฟสารอราบิก้า (ปลูกเชิงเดี่ยว)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 4.9152, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-dfb1cb75eb2e', 448, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('560c2673-a5d2-5214-a399-78829c26f9a2', 'a1000003-0003-4003-8003-000000000007', 'กาแฟอราบิก้า (ค่าเฉลี่ย)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 5.6839, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-5a8369f595f9', 449, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6a75aa7d-ada6-5f5d-be9b-70638ee7d850', 'a1000003-0003-4003-8003-000000000007', 'กาแฟอราบิก้าคั่วบด', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 7.8091, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-c8f98a82835f', 450, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a44dcdae-2316-53c1-864b-4711521062f6', 'a1000003-0003-4003-8003-000000000007', 'กาแฟอาราบิกา (อินทรีย์)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.904, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-18a6676a514e', 451, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7283348b-d6ff-5d02-a1a5-6b97fd2e55ea', 'a1000003-0003-4003-8003-000000000007', 'กาแฟโรบัสตา', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 8.0783, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-85e9904dbc9f', 452, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('11f9da8d-720a-59e4-bf67-48d775d60f5f', 'a1000003-0003-4003-8003-000000000007', 'ข่า', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.2085, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-287052eb99c7', 453, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('98e91b9b-3e91-5bb3-9b25-49ad62889686', 'a1000003-0003-4003-8003-000000000007', 'ข้าวฟ่างหวาน', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.0531, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-3972732162b0', 454, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('53c28e1b-31cb-5b4c-9494-4b42ca72d290', 'a1000003-0003-4003-8003-000000000007', 'ข้าวฟ่างเลี้ยงสัตว์', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.6623, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-27b06f7e0383', 455, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f708196c-2b58-57d7-9c2a-5fd6a951d919', 'a1000003-0003-4003-8003-000000000007', 'ข้าวโพดฝักอ่อน', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.421, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-16826e281b2d', 456, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a3535c99-88c7-5c2e-907e-91919830671a', 'a1000003-0003-4003-8003-000000000007', 'ข้าวโพดหวาน', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.4042, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-7fcb25e9784c', 457, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('df39fcfa-2f58-5ef0-bf00-1e7a0279d32f', 'a1000003-0003-4003-8003-000000000007', 'ขิง', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.1185, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-43b3f4bbd340', 458, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('813211a9-fdfb-5be6-af9e-d664e4f25574', 'a1000003-0003-4003-8003-000000000007', 'งา', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.3456, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-610555b293b4', 459, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ef01ce82-9ba3-5ff9-8f9d-764c58d32bb2', 'a1000003-0003-4003-8003-000000000007', 'ชาอูหลง (สด)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 1.5107, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-138f22b33a62', 460, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('41bcf67b-ae92-5699-8c30-0dc83e9a0772', 'a1000003-0003-4003-8003-000000000007', 'ชาอูหลง (สด) (อินทรีย์)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 2.2855, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-6988a6c41905', 461, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ca5e05d3-78a3-5a25-9a9b-423137dd2a4c', 'a1000003-0003-4003-8003-000000000007', 'ชาอูหลง (แห้ง)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 11.6152, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-82e65198225b', 462, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5c3a86e7-1708-53a4-a1fb-724fd0778a85', 'a1000003-0003-4003-8003-000000000007', 'ชาอูหลง (แห้ง) (อินทรีย์)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 5.0252, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-8fd531252f01', 463, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e02066a4-71f0-58cf-9b60-75c735a6f08a', 'a1000003-0003-4003-8003-000000000007', 'ตะไคร้', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.1707, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-b038806076a7', 464, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('72ddab8d-8890-5b42-92dd-4decef25e684', 'a1000003-0003-4003-8003-000000000007', 'ถั่วดำ', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.4151, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-6962aea293a5', 465, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6c39e1ae-80de-59ec-a021-a28190f0e2d0', 'a1000003-0003-4003-8003-000000000007', 'ถั่วฝักยาว', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.3234, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-7606a6c73263', 466, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4e7660b5-c40c-54f8-bc70-fff7f3a436f5', 'a1000003-0003-4003-8003-000000000007', 'ถั่วลิสง', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.7544, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-dca6c20b1334', 467, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8cc9c3e1-911b-5a36-9c69-dae8bc58f758', 'a1000003-0003-4003-8003-000000000007', 'ถั่วเขียว', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.8806, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-ef8114345238', 468, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d7aaf396-070a-5011-b059-8f19bfa95fed', 'a1000003-0003-4003-8003-000000000007', 'ถั่วเหลืองฝักสด', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.535, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-f21592f92d7f', 469, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a5c9f420-270e-546d-b597-3903130e2639', 'a1000003-0003-4003-8003-000000000007', 'ถั่วแขก', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.3, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-5746a474574a', 470, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6559e098-dfef-5deb-9db8-0957759705c7', 'a1000003-0003-4003-8003-000000000007', 'ถั่วแขก (อินทรีย์)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.1581, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-20dd9754b549', 471, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('bfe2d42f-dbf9-5754-9a12-8ca132e1c78f', 'a1000003-0003-4003-8003-000000000007', 'ทุเรียน', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.2412, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-43df11ee2ace', 472, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6408697e-6b27-5161-b129-1f35151a0bb7', 'a1000003-0003-4003-8003-000000000007', 'ผลมะกรูด', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.2848, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-29b9a5723f97', 473, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('13555367-eb10-5ba0-96cc-09564720f3c1', 'a1000003-0003-4003-8003-000000000007', 'ผักกาดหอม', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.922, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-89c0b480453d', 474, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4066cc1c-8321-5682-8479-75c1493dfe17', 'a1000003-0003-4003-8003-000000000007', 'ผักกาดหัว (อินทรีย์)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.2612, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-a558cfeb398e', 475, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('53f029e7-e9e5-5af8-a1ed-7bbb08a6c060', 'a1000003-0003-4003-8003-000000000007', 'ผักกาดเขียวกวางตุ้ง', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.193, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-29da5b1ee524', 476, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('28e70073-4d58-5cba-ad4d-78ca5bd6699b', 'a1000003-0003-4003-8003-000000000007', 'ผักกาดเขียวกวางตุ้ง (อินทรีย์)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.2585, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-0be1266916ba', 477, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e0054d8d-33d9-5855-8cbf-f9ff045559ee', 'a1000003-0003-4003-8003-000000000007', 'ผักคะน้า', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.2401, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-701650495774', 478, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f2f19c60-8854-5381-ac40-fa47433595e7', 'a1000003-0003-4003-8003-000000000007', 'ฝรั่ง', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.4724, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-8af16b2265de', 479, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ba6a159d-fc8f-5599-9604-aebefa8058b3', 'a1000003-0003-4003-8003-000000000007', 'พริกขี้หนู', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.4138, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-f3a9bb352517', 480, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2e50ce28-c937-536f-a130-8b6f6d831db2', 'a1000003-0003-4003-8003-000000000007', 'พริกชี้ฟ้า', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.4668, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-668f779eca2e', 481, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('fddf49dc-ab41-5376-8afb-912133040899', 'a1000003-0003-4003-8003-000000000007', 'พริกหวาน', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.544, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-3cb7ab011ab6', 482, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('76797ff6-cdf5-5a8b-bb50-e1e43dcc5a76', 'a1000003-0003-4003-8003-000000000007', 'พริกไทย', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 1.3891, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-6670e52aa65a', 483, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8d79bab1-1493-527a-936f-848bb5e09f92', 'a1000003-0003-4003-8003-000000000007', 'มะนาว', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.2043, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-3fac88695930', 484, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('da86d6ae-c8f2-5070-812f-15f882909d57', 'a1000003-0003-4003-8003-000000000007', 'มะพร้าว', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.8392, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-781c2410814c', 485, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c5b0e587-8b96-5021-ae17-2e0112d59f82', 'a1000003-0003-4003-8003-000000000007', 'มะพร้าวน้ำหอม', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 1.3039, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d734289f36da', 486, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c2302213-4bcf-56a9-b814-593b56f67353', 'a1000003-0003-4003-8003-000000000007', 'มะม่วง', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.2977, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-4d473931b1c0', 487, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('436f5f03-cfbb-5f4c-8b3f-9a1dd69c365d', 'a1000003-0003-4003-8003-000000000007', 'มะเขือเทศ', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.4633, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-75e8f8e82cd9', 488, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e2076795-59b6-59ed-9a56-33da10d34aaa', 'a1000003-0003-4003-8003-000000000007', 'มังคุด', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.9287, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-7a96bf870f06', 489, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('83b46227-df02-5c3a-ba5d-d68cfffdb27b', 'a1000003-0003-4003-8003-000000000007', 'มันฝรั่ง', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.1463, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-359db0ef4707', 490, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('bef1c524-0ce9-5eaf-887b-75c5ccc8a068', 'a1000003-0003-4003-8003-000000000007', 'มันสำปะหลัง', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.0387, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-34558e04bdb9', 491, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a2831267-a880-592d-ab00-06dbc1535048', 'a1000003-0003-4003-8003-000000000007', 'ลองกอง', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.6104, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-ba317457f3c7', 492, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('29dd2b6b-690a-5583-a95b-067e37f52e91', 'a1000003-0003-4003-8003-000000000007', 'ลำไยนอกฤดู', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.9755, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-106175813b86', 493, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('37d2323c-943d-5479-8c87-645dbfd5acbc', 'a1000003-0003-4003-8003-000000000007', 'ลำไยในฤดู', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.5895, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-9df24bb0b15e', 494, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('526b1467-e1c8-5c4a-b746-c22f6c32056e', 'a1000003-0003-4003-8003-000000000007', 'ลิ้นจี่', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 1.1649, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-9e707b9c1132', 495, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('51146d7e-fb43-5c0e-b5a6-e9a722e7e388', 'a1000003-0003-4003-8003-000000000007', 'สตรอเบอรี่', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.606, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-c2c4a54d17d6', 496, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e5b3dabc-8874-5f92-90a3-c7447407e37f', 'a1000003-0003-4003-8003-000000000007', 'ส้มเขียวหวาน', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.7169, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-081a029ac28f', 497, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7f64d1c3-98b9-5c7a-ab14-4892c3bc632a', 'a1000003-0003-4003-8003-000000000007', 'ส้มโอ', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.2558, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-573c9829b53e', 498, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a978ae74-d7e7-542f-89e2-be7af81b46f2', 'a1000003-0003-4003-8003-000000000007', 'สับปะรดผลสด', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.125, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-553fca206f6b', 499, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('49f50a59-38c4-57ef-8360-d11a9ac77376', 'a1000003-0003-4003-8003-000000000007', 'สับปะรดโรงงาน', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.3295, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d7ac098da450', 500, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5448d2d2-3193-54d9-94ce-d8075f768ad5', 'a1000003-0003-4003-8003-000000000007', 'หน่อไม้', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 1.0726, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-216c8e6d9a2f', 501, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('875d04f1-590d-5a66-8e28-2ef78e4978fd', 'a1000003-0003-4003-8003-000000000007', 'หน่อไม้ฝรั่ง (อินทรีย์)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 1.2537, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-a6c3eb88ef6a', 502, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c778cd34-dbc5-54d7-9ad6-ad68a55bbb86', 'a1000003-0003-4003-8003-000000000007', 'หอมหัวใหญ่', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.3188, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-caa4dfecad2f', 503, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('84ae936d-076d-5956-91c5-f5d190b9b7c4', 'a1000003-0003-4003-8003-000000000007', 'หอมแดง', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.3907, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-ba3708d1680a', 504, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('748bac85-5e4e-50de-848e-826dcc8a5806', 'a1000003-0003-4003-8003-000000000007', 'องุ่น (ปลูกแบบมีหลังคา)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.2147, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-9fa61481213a', 505, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('307e4dc2-9e01-5cb4-a224-282202306691', 'a1000003-0003-4003-8003-000000000007', 'องุ่น (ปลูกแบบไม่มีหลังคา)', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.3289, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-4f4cf0eb7f68', 506, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5066de82-4e32-552b-b866-d22cd03dac61', 'a1000003-0003-4003-8003-000000000007', 'อ้อยคั้นน้ำ', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.063, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-06a5cf0f6024', 507, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6d2f2bd4-5b32-5133-86cd-0e98a3569ba0', 'a1000003-0003-4003-8003-000000000007', 'เงาะ', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.205, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-4931d7cd2dd1', 508, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('837d6da1-bfb1-5f9b-b10b-149dd4ea14e4', 'a1000003-0003-4003-8003-000000000007', 'เห็ดฟาง', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.2295, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-3ed807058662', 509, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('beb01be7-ab63-5447-a8c5-defb2563822c', 'a1000003-0003-4003-8003-000000000007', 'แครอท', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.2661, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-2474de22dd28', 510, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('763a214f-dc3d-5fb8-87d9-e9f366873bef', 'a1000003-0003-4003-8003-000000000007', 'แตงกวา', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.3441, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-8d611c7eeacf', 511, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0f191b12-a847-5ed8-adfe-58af23a54e9c', 'a1000003-0003-4003-8003-000000000007', 'แตงโม', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.4844, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-bbd6de290b86', 512, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0f604cd6-2d93-5261-bb07-a96b875af313', 'a1000003-0003-4003-8003-000000000007', 'ใบมะกรูด', 'กลุ่มพืชไร่และพืชสวน (Plantation of Plants; Literature)', 'kg', 0.4973, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-43fe002976f0', 513, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3d7dc594-6487-56b9-964b-311e90faf8f2', 'a1000003-0003-4003-8003-000000000007', 'ผ้าถักจากเส้นด้ายฝ้าย', 'กลุ่มสิ่งทอ (Textile)', 'kg', 8.2794, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-947c1b21a878', 514, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e305ddea-fff2-5095-a47c-297ce1d0e992', 'a1000003-0003-4003-8003-000000000007', 'ผ้าถักจากเส้นด้ายฝ้าย; จากกระบวนการฟอกย้อมและตกแต่งสำเร็จ', 'กลุ่มสิ่งทอ (Textile)', 'kg', 12.2313, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-97224caad0ae', 515, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8948221c-d820-5bf3-b044-1a9ad36ae891', 'a1000003-0003-4003-8003-000000000007', 'ผ้าถักจากเส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ CVC', 'กลุ่มสิ่งทอ (Textile)', 'kg', 4.9192, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-f7c0b09f34b8', 516, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('596e2999-7304-56ff-9cab-5d33d178cd92', 'a1000003-0003-4003-8003-000000000007', 'ผ้าถักจากเส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ CVC; จากกระบวนการฟอกย้อมและตกแต่งสำเร็จ', 'กลุ่มสิ่งทอ (Textile)', 'kg', 8.646, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-986bcf9d0012', 517, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('92b94b3e-3c18-561d-9abd-e70799132ba5', 'a1000003-0003-4003-8003-000000000007', 'ผ้าถักจากเส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ TC', 'กลุ่มสิ่งทอ (Textile)', 'kg', 5.5651, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-4d72e2c9fb5f', 518, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('20c938d9-5793-5cfa-906d-0fee820981d5', 'a1000003-0003-4003-8003-000000000007', 'ผ้าถักจากเส้นด้ายโพลีเอสเตอร์', 'กลุ่มสิ่งทอ (Textile)', 'kg', 4.4169, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-58dc59bff748', 519, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ffa2f33c-0c72-53c1-8b2a-6034cd9a7f45', 'a1000003-0003-4003-8003-000000000007', 'ผ้าถักจากเส้นด้ายโพลีเอสเตอร์; จากกระบวนการฟอกย้อมและตกแต่งสำเร็จ', 'กลุ่มสิ่งทอ (Textile)', 'kg', 6.8223, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-bcc22e377475', 520, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b5ed6b53-6440-5a1d-affe-3cc98448e8a8', 'a1000003-0003-4003-8003-000000000007', 'ผ้าทอจากเส้นด้ายฝ้าย', 'กลุ่มสิ่งทอ (Textile)', 'kg', 12.0915, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-c0f60ea1be1e', 521, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('37844472-8c4e-5412-91bf-cebc7512fd63', 'a1000003-0003-4003-8003-000000000007', 'ผ้าทอจากเส้นด้ายฝ้าย; จากกระบวนการฟอกย้อมและตกแต่งสำเร็จ', 'กลุ่มสิ่งทอ (Textile)', 'kg', 16.054, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-2a3a5680a259', 522, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('55db86a9-9edc-590b-b5b1-c4f1bf26ef08', 'a1000003-0003-4003-8003-000000000007', 'ผ้าทอจากเส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ CVC', 'กลุ่มสิ่งทอ (Textile)', 'kg', 6.6296, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-e742d6de6761', 523, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('69b18b96-3c84-56e8-9e99-5cd806a86fb7', 'a1000003-0003-4003-8003-000000000007', 'ผ้าทอจากเส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ CVC; จากกระบวนการฟอกย้อมและตกแต่งสำเร็จ', 'กลุ่มสิ่งทอ (Textile)', 'kg', 9.1462, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-992555e41510', 524, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('817ba25d-7fcb-549b-a20e-5a41f7b8d230', 'a1000003-0003-4003-8003-000000000007', 'ผ้าทอจากเส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ TC', 'กลุ่มสิ่งทอ (Textile)', 'kg', 8.3837, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d48775fd5636', 525, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8e6c61cf-a245-5226-9dda-cb887801e0d7', 'a1000003-0003-4003-8003-000000000007', 'ผ้าทอจากเส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ TC; จากกระบวนการฟอกย้อมและตกแต่งสำเร็จ', 'กลุ่มสิ่งทอ (Textile)', 'kg', 14.1111, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-dabd858b92d0', 526, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3fb64237-c1ec-59de-bd05-14ccb0f87d66', 'a1000003-0003-4003-8003-000000000007', 'ผ้าทอจากเส้นด้ายโพลีเอสเตอร์', 'กลุ่มสิ่งทอ (Textile)', 'kg', 6.1192, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-1b52f7255ff6', 527, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7ab4e88d-3dc1-593e-85e2-98287b433be5', 'a1000003-0003-4003-8003-000000000007', 'ผ้าทอจากเส้นด้ายโพลีเอสเตอร์;จากกระบวนการฟอกย้อมและตกแต่งสำเร็จ', 'กลุ่มสิ่งทอ (Textile)', 'kg', 9.5714, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-02ef6b35c411', 528, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('175308b9-7b8d-5bfa-ac55-77554e0d2b31', 'a1000003-0003-4003-8003-000000000007', 'เส้นด้ายฝ้าย', 'กลุ่มสิ่งทอ (Textile)', 'kg', 11.0609, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-0d3aadb40cd1', 529, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('60a20d2f-33bf-5def-a6b4-3c1a79f40c4d', 'a1000003-0003-4003-8003-000000000007', 'เส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ CVC', 'กลุ่มสิ่งทอ (Textile)', 'kg', 4.1388, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-656da0bdf475', 530, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('137deac2-47c9-50e2-900e-b9098f9989bc', 'a1000003-0003-4003-8003-000000000007', 'เส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ CVC', 'กลุ่มสิ่งทอ (Textile)', 'kg', 9.4051, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-685de924688c', 531, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('56bb9524-cf81-5cf5-96f7-18d132d923f7', 'a1000003-0003-4003-8003-000000000007', 'เส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ TC', 'กลุ่มสิ่งทอ (Textile)', 'kg', 5.0407, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-2b2bb8f06579', 532, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('40e12472-c389-5a32-a6a9-bf8a17d89fa1', 'a1000003-0003-4003-8003-000000000007', 'เส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ TC', 'กลุ่มสิ่งทอ (Textile)', 'kg', 9.6122, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-6dfee4e8967d', 533, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('616ef04b-c247-5993-a3e4-002ba9a8e51d', 'a1000003-0003-4003-8003-000000000007', 'เส้นด้ายฝ้ายสาง', 'กลุ่มสิ่งทอ (Textile)', 'kg', 7.191, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-271e60df6366', 534, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b5ee356e-1179-5d84-b001-3c2ba0931488', 'a1000003-0003-4003-8003-000000000007', 'เส้นด้ายฝ้ายหวี', 'กลุ่มสิ่งทอ (Textile)', 'kg', 7.8285, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-965cd64c1943', 535, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0de049ac-2202-52fe-ace3-a2dd6547fc94', 'a1000003-0003-4003-8003-000000000007', 'เส้นด้ายโพลีเอสเตอร์; จากกระบวนการปั่นเส้นด้าย', 'กลุ่มสิ่งทอ (Textile)', 'kg', 3.6928, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-c1aee455fa71', 536, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('559e952a-6ccf-5dcd-97d8-2703350bf983', 'a1000003-0003-4003-8003-000000000007', 'เส้นด้ายโพลีเอสเตอร์; จากกระบวนการย้อมสี', 'กลุ่มสิ่งทอ (Textile)', 'kg', 6.2029, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-e96a954baa66', 537, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7d36e110-5374-507e-82f2-f7257eeb5f55', 'a1000003-0003-4003-8003-000000000007', 'กากถั่วเหลือง', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 0.7751, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-36bf0a98ccf7', 538, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ad01beb5-0690-5189-9e22-69301a4d0000', 'a1000003-0003-4003-8003-000000000007', 'การปลูกข้าวโพดเลี้ยงสัตว์', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 0.2575, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-96cf321fcad0', 539, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ac911c2c-2fe5-5e66-aa23-80b423f00ed7', 'a1000003-0003-4003-8003-000000000007', 'ถั่วเหลือง', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 0.5384, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-bc2e03a7d404', 540, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9d012190-7f26-52a3-9202-77ed08348476', 'a1000003-0003-4003-8003-000000000007', 'ปลาป่นที่ผลิตจากปลาเป็ด', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 1.7498, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-ef6ff1cd73c0', 541, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6e864133-b946-552c-b6f8-810df3da201c', 'a1000003-0003-4003-8003-000000000007', 'ปลาป่นที่ผลิตจากเศษปลาซูริมิ', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 1.1111, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-5a1aea352ece', 542, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('17c61f26-edfb-5da4-be13-59c45ca500a7', 'a1000003-0003-4003-8003-000000000007', 'ปลาป่นที่ผลิตจากเศษปลาทูน่า', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 3.6894, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-f2be171e4733', 543, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('fe55bc8a-d784-5f67-aa77-b217ba70abfd', 'a1000003-0003-4003-8003-000000000007', 'ปลาเป็ด', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 0.0009, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-a2beeaff8f44', 544, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('84518039-d36c-5234-9fff-8ab6176d6d36', 'a1000003-0003-4003-8003-000000000007', 'อาหารสุกรขุน', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 0.8728, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-8f2a60689544', 545, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d6ecb606-cb61-5140-b3ba-305d099c3f93', 'a1000003-0003-4003-8003-000000000007', 'อาหารไก่เนื้อที่มีโปรตีนจากเนื้อสัตว์เป็นองค์ประกอบ', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 0.8256, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-f5bbf1fcb8ff', 546, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('39586e17-6471-535a-a394-121c95a70ca0', 'a1000003-0003-4003-8003-000000000007', 'อาหารไก่เนื้อที่ไม่มีโปรตีนจากเนื้อสัตว์เป็นองค์ประกอบ', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 0.922, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-b366073be336', 547, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d8e0d590-27a9-5540-9aee-c8ccb35e4035', 'a1000003-0003-4003-8003-000000000007', 'อาหารไก่ไข่', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 0.7367, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-550d0e645066', 548, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('bc8aa326-854e-51ea-be5b-729d6f00015c', 'a1000003-0003-4003-8003-000000000007', 'เมล็ดข้าวโพดเลี้ยงสัตว์', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 0.298, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-215a4f5ce4f0', 549, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0a8044f3-cc0b-5d7a-9177-b661b2c35132', 'a1000003-0003-4003-8003-000000000007', 'เมล็ดข้าวโพดเลี้ยงสัตว์', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 0.3412, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-5a094b43f652', 550, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d0e00e08-509a-570e-8786-e2f57ac17e86', 'a1000003-0003-4003-8003-000000000007', 'เศษปลาจากซูริมิ', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 0.0292, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-fdab80af1d8d', 551, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0380765a-e042-5807-9d1e-421dc8e5f4c4', 'a1000003-0003-4003-8003-000000000007', 'เศษปลาจากทูน่า', 'กลุ่มอาหารสัตว์ (Feed)', 'kg', 1.2656, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-1d25508b52ec', 552, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6623e5b8-dddf-5633-bb41-055999fc35dc', 'a1000003-0003-4003-8003-000000000007', 'กรดไขมันปาล์ม (PFAD), ค่าเฉลี่ยประเทศไทย', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.9406, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-0cd356347afe', 553, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3cf72837-30e5-5c30-aa44-0fd78e4559a8', 'a1000003-0003-4003-8003-000000000007', 'กลีเซอรีน, ค่าเฉลี่ยประเทศไทย', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.6605, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-5f6981201e34', 554, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4173b31c-d87a-526c-91ea-05f442dd9fb7', 'a1000003-0003-4003-8003-000000000007', 'กะลาปาล์ม, ค่าเฉลี่ยประเทศไทย', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.3647, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-6fe0638caef1', 555, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d4647890-31dc-5706-b616-ae7f5ada8e87', 'a1000003-0003-4003-8003-000000000007', 'กะลาปาล์ม, จากโรงงานที่มีระบบผลิตก๊าซชีวภาพ', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.2951, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-9a9c7bf37f76', 556, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5069fccc-0fe4-58bc-b469-49e7ca92932a', 'a1000003-0003-4003-8003-000000000007', 'กะลาปาล์ม, จากโรงงานที่ไม่มีระบบผลิตก๊าซชีวภาพ', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.4854, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-ab29ec1f8394', 557, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4ac86131-f4f1-532f-92b0-a22703861228', 'a1000003-0003-4003-8003-000000000007', 'น้ำมันปาล์มดิบ, ค่าเฉลี่ยประเทศไทย', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.8339, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-a80ef914177c', 558, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0936929c-f86a-5f2f-8f1e-2a2c424c12f9', 'a1000003-0003-4003-8003-000000000007', 'น้ำมันปาล์มดิบ, จากโรงงานที่มีระบบผลิตก๊าซชีวภาพ', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.6955, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-19f8767d711f', 559, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('872331fc-c307-5571-a5b9-e689509487b1', 'a1000003-0003-4003-8003-000000000007', 'น้ำมันปาล์มดิบ, จากโรงงานที่ไม่มีระบบผลิตก๊าซชีวภาพ', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 1.1445, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d8c4f3b33e56', 560, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0136422f-736d-56e4-8a38-b6212e958211', 'a1000003-0003-4003-8003-000000000007', 'น้ำมันปาล์มบริสุทธิ์ (RBDPO), ค่าเฉลี่ยประเทศไทย', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.9069, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-e602a3d7449b', 561, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('aa1333d2-09df-5526-913a-9bbe581ff103', 'a1000003-0003-4003-8003-000000000007', 'น้ำมันปาล์มโอเลอิน (Olein), ค่าเฉลี่ยประเทศไทย', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.9275, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-06eafd73173e', 562, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5ffb870d-87c2-53ea-b27a-4dd644c0ba18', 'a1000003-0003-4003-8003-000000000007', 'ผลปาล์มทะลายสด ค่าเฉลี่ยประเทศไทย', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.0678, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-e75305311a05', 563, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c4a325e9-5d82-57ad-a8b7-285fa6a603f0', 'a1000003-0003-4003-8003-000000000007', 'ผลปาล์มทะลายสด ภาคตะวันออก (สวนขนาดเล็ก)', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.0679, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-7f30a02cec0b', 564, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d2a94a7c-2b17-5d18-8662-82b4d2586484', 'a1000003-0003-4003-8003-000000000007', 'ผลปาล์มทะลายสด ภาคตะวันออก (สวนขนาดใหญ่)', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.0821, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-bef932f9dd03', 565, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b6c8953a-2701-5804-a6a9-9f9d6362db55', 'a1000003-0003-4003-8003-000000000007', 'ผลปาล์มทะลายสด ภาคใต้ตอนบน (สวนขนาดเล็ก)', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.0568, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-03aeebd3afe5', 566, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('85b5ec3e-b085-5899-a0e2-d1d9ad87032e', 'a1000003-0003-4003-8003-000000000007', 'ผลปาล์มทะลายสด ภาคใต้ตอนบน (สวนขนาดใหญ่)', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.0605, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-a263a783c7cd', 567, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5cacf514-5a44-58fd-a293-e0c9c216872b', 'a1000003-0003-4003-8003-000000000007', 'ผลปาล์มทะลายสด ภาคใต้ตอนล่างฝั่งตะวันตก (สวนขนาดเล็ก)', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.0681, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-3eb03124d0d5', 568, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9686c0c4-051b-50f8-b01c-0a1401691907', 'a1000003-0003-4003-8003-000000000007', 'ผลปาล์มทะลายสด ภาคใต้ตอนล่างฝั่งตะวันตก (สวนขนาดใหญ่)', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.0784, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-22478e8396e8', 569, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('bf1d89f2-88bb-5f0f-bdb6-bccfc5b466f1', 'a1000003-0003-4003-8003-000000000007', 'ผลปาล์มทะลายสด ภาคใต้ตอนล่างฝั่งตะวันออก (สวนขนาดเล็ก)', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.0737, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-92a3342866fb', 570, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4ad6323f-097e-556a-a79a-9fe3f1929e9c', 'a1000003-0003-4003-8003-000000000007', 'ผลปาล์มทะลายสด ภาคใต้ตอนล่างฝั่งตะวันออก (สวนขนาดใหญ่)', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.0695, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-62e6a7d921fc', 571, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('80e27025-eca5-50b7-9478-dd84d2cfff17', 'a1000003-0003-4003-8003-000000000007', 'เมล็ดในปาล์ม, ค่าเฉลี่ยประเทศไทย', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.5672, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-51a6881180ac', 572, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('23e36e9c-9727-53c0-a64b-fffef874b9de', 'a1000003-0003-4003-8003-000000000007', 'เมล็ดในปาล์ม, จากโรงงานที่มีระบบผลิตก๊าซชีวภาพ', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.4602, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-434852ec64cb', 573, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8dbf5398-e332-5076-a8eb-3bc584cbe19a', 'a1000003-0003-4003-8003-000000000007', 'เมล็ดในปาล์ม, จากโรงงานที่ไม่มีระบบผลิตก๊าซชีวภาพ', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 0.7573, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-125eaa31df61', 574, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d8e05461-96d9-50e4-ba5f-ef494c18c06e', 'a1000003-0003-4003-8003-000000000007', 'ไขมันปาล์ม (Stearin) ค่าเฉลี่ยประเทศไทย', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 1.0066, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-849a5bd5c9c7', 575, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('682ace64-a74f-5720-ad12-5a825c7797e3', 'a1000003-0003-4003-8003-000000000007', 'ไบโอดีเซล, ค่าเฉลี่ยประเทศไทย', 'กลุ่มอุตสาหกรรมปาล์มน้ำมัน (Oil Palm)', 'kg', 1.0372, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-6daf2237322b', 576, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f4ffa2b9-83d6-50db-9592-53abddb9296e', 'a1000003-0003-4003-8003-000000000007', 'กล้ายางชำถุง', 'กลุ่มอุตสาหกรรมยางธรรมชาติ (Natural rubber)', 'p', 0.352, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-4674b072ea28', 577, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('33910dc8-d78f-50a5-b64d-efb35fa0f767', 'a1000003-0003-4003-8003-000000000007', 'น้ำยางข้น (DRC 60%)', 'กลุ่มอุตสาหกรรมยางธรรมชาติ (Natural rubber)', 'kg', 0.1787, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-2899e067c71e', 578, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e340b36a-0c7a-5bb8-8c6a-cd2fbc860a9f', 'a1000003-0003-4003-8003-000000000007', 'ยางก้อนถ้วย (DRC 55%)', 'กลุ่มอุตสาหกรรมยางธรรมชาติ (Natural rubber)', 'kg', 0.0494, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-8db19bec49a7', 579, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('93e54ce5-db08-5109-ada3-e51e1b525a9f', 'a1000003-0003-4003-8003-000000000007', 'ยางสกิม', 'กลุ่มอุตสาหกรรมยางธรรมชาติ (Natural rubber)', 'kg', 0.3443, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d1f239ff9c2c', 580, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a06fabaf-de84-5837-a03e-1518488a586d', 'a1000003-0003-4003-8003-000000000007', 'ยางแท่ง STR 10/20', 'กลุ่มอุตสาหกรรมยางธรรมชาติ (Natural rubber)', 'kg', 0.2479, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-5a9651331592', 581, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('340ccd8c-c95b-5d91-891c-ebf241ca54f8', 'a1000003-0003-4003-8003-000000000007', 'ยางแท่ง STR KL/5L/5CV', 'กลุ่มอุตสาหกรรมยางธรรมชาติ (Natural rubber)', 'kg', 0.2205, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-8c5cd41e9ae4', 582, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2ce15ff8-3e44-55cd-9aa5-e9e8f1fc6d9c', 'a1000003-0003-4003-8003-000000000007', 'กิ่งไม้ยางพารา', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0372, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-03c2bcc3f218', 583, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8df0633a-58a8-53fd-938d-8f2b678acce3', 'a1000003-0003-4003-8003-000000000007', 'ขี้เลื่อยจากพาเลทไม้ยางพารา', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0804, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-1dfeab804da2', 584, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9b0a4ba0-bcbf-56d5-8857-61ae9397713c', 'a1000003-0003-4003-8003-000000000007', 'ขี้เลื่อยจากไม้ยางพาราประสาน', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.2191, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-2f5e6c76f8f6', 585, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('aac38ac4-df5d-57bd-ace4-9ddbc884cd34', 'a1000003-0003-4003-8003-000000000007', 'ขี้เลื่อยจากไม้ยางพาราอัดประสาน', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.3372, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-88462860a556', 586, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a8a791b7-0a96-5d63-a4b3-7f564912f1f7', 'a1000003-0003-4003-8003-000000000007', 'ขี้เลื่อยจากไม้ยางพาราแปรรูป', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0706, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-a276309fcd83', 587, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d6e3214b-dabe-53ef-b382-cd1a4af3485c', 'a1000003-0003-4003-8003-000000000007', 'น้ำยางสด', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0264, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-a1432820f7b8', 588, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9fd85619-fc09-5d0b-bf89-0a4ea1dac451', 'a1000003-0003-4003-8003-000000000007', 'ปีกไม้ยางพารา', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0706, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-b1636297d43d', 589, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('cbc99311-b4ad-5d5e-95c3-fa2a79a2fe8e', 'a1000003-0003-4003-8003-000000000007', 'พาเลทไม้ยางพารา', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0804, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-03e5e254bc47', 590, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('287af011-24fa-5f44-a5a7-acb101bce5a9', 'a1000003-0003-4003-8003-000000000007', 'เศษยาง', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0265, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-0ad346220d4f', 591, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('464dd60b-59db-5779-bcec-0ebc31725fa0', 'a1000003-0003-4003-8003-000000000007', 'ไม้ยางพาราท่อนสด', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0372, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-058ddf12ebb7', 592, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c4bdc548-de7d-5b9a-ba0c-1fcd3762e9cd', 'a1000003-0003-4003-8003-000000000007', 'ไม้ยางพาราประสาน เกรด AB', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.2191, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-643de4aae359', 593, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4c593ba7-b1b2-5763-9e3e-54a5db70122e', 'a1000003-0003-4003-8003-000000000007', 'ไม้ยางพาราประสาน เกรด C', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.2191, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-37184bd3b63c', 594, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b4dae856-dfed-52a9-9eb0-0965b9961f1c', 'a1000003-0003-4003-8003-000000000007', 'ไม้ยางพาราสด', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0264, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-66e755634130', 595, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('df5bb1ac-3e27-5719-bb2f-17d3fe759624', 'a1000003-0003-4003-8003-000000000007', 'ไม้ยางพาราอัดประสาน เกรด AB', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.3372, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d3e42f2fdd98', 596, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('4e968e87-2a18-5cdd-aa98-c30e4c5fe1fa', 'a1000003-0003-4003-8003-000000000007', 'ไม้ยางพาราอัดประสาน เกรด C', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.3372, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-4911178ad4c0', 597, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0b1679ed-a8cf-5bc8-a9e5-79fb9f2cc26f', 'a1000003-0003-4003-8003-000000000007', 'ไม้ยางพาราแปรรูป เกรด AB', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0706, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-ab053019cc77', 598, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('949a4d77-7508-5858-9995-202383dcbcc4', 'a1000003-0003-4003-8003-000000000007', 'ไม้ยางพาราแปรรูป เกรด C', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0706, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-8decc6660e2a', 599, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c6eb7705-780f-5915-9004-0b0aa78d9689', 'a1000003-0003-4003-8003-000000000007', 'การพรวนจานโดยแทรกเตอร์ขนาด 90 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.004, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-0482107b6393', 600, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5179395d-793d-5c52-8f58-15433df0b8fe', 'a1000003-0003-4003-8003-000000000007', 'การพรวนซี่สริงโดยแทรกเตอร์ขนาด 90 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0031, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-0ac36cedacb0', 601, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('85976acb-0c02-5e5b-b085-2f3fec1f460a', 'a1000003-0003-4003-8003-000000000007', 'การใช้รถแทรกเตอร์สองล้อ (รถไถเดินตาม) (&lt; 18 แรงม้า) ขับเคลื่อนด้วยน้ำมันดีเซล', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'hr', 6.3752, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d3f48346a3cb', 602, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('74b97dee-5329-5447-b574-01181948f60d', 'a1000003-0003-4003-8003-000000000007', 'การใช้รถแทรกเตอร์สองล้อ (รถไถเดินตาม) (&lt; 18 แรงม้า) ขับเคลื่อนด้วยน้ำมันเบนซิน', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'hr', 7.1084, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-ac2e3770e1e1', 603, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ba2ab306-5c05-5fc2-b848-094206843fb2', 'a1000003-0003-4003-8003-000000000007', 'การใช้รถแทรกเตอร์สี่ล้อขนาด 15 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'hr', 10.6537, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d66181cc777e', 604, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('16862a79-3c27-514c-97a0-3cb0d903e0ab', 'a1000003-0003-4003-8003-000000000007', 'การใช้รถแทรกเตอร์สี่ล้อขนาด 35 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'hr', 23.9727, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-3b6109cd9446', 605, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('225c204a-e91b-5138-8ae2-aae4b44da74f', 'a1000003-0003-4003-8003-000000000007', 'การใช้รถแทรกเตอร์สี่ล้อขนาด 45 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'hr', 30.7268, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-1d6b709c80d3', 606, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f7fb8c26-99c5-5bc6-ac0a-d11f72375ce0', 'a1000003-0003-4003-8003-000000000007', 'การใช้รถแทรกเตอร์สี่ล้อขนาด 70 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'hr', 47.7623, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d07d001be52e', 607, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f2f769be-95e0-5823-b48c-4ff11fd04fa6', 'a1000003-0003-4003-8003-000000000007', 'การใช้รถแทรกเตอร์สี่ล้อขนาด 80 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'hr', 54.6728, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-9db6510ca642', 608, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f67798f9-6a7c-5a83-b683-123137fbc849', 'a1000003-0003-4003-8003-000000000007', 'การใช้รถแทรกเตอร์สี่ล้อขนาด 90 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'hr', 61.2466, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-67dd76034e5d', 609, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a4672738-6dd3-5cf2-b829-0fedb2c44d55', 'a1000003-0003-4003-8003-000000000007', 'การใช้รถไถตอซังขนาด 35 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0029, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-174b9148cf1a', 610, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f475c86c-aed9-5aaf-80bf-af1102e05839', 'a1000003-0003-4003-8003-000000000007', 'การใช้เครื่องปลูกหัวมันสำปะหลัง ขนาด 90 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0022, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-0ae7d9a5fb6d', 611, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('08febdaa-6477-5066-b149-d7361eb9f01c', 'a1000003-0003-4003-8003-000000000007', 'การใช้เครื่องพ่นยาแบบติดท้ายรถแทรคเตอร์ขนาด 35 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0008, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-f11034f4023a', 612, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a9c09088-3c73-50dc-9e85-6f75203bdeee', 'a1000003-0003-4003-8003-000000000007', 'การใช้เครื่องพ่นยาแบบสูบโยกสะพายหลัง ขนาด 2-5 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 5.5897377e-10, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-022b0767f878', 613, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('187fa537-56c4-576d-9d20-12a0e03bb700', 'a1000003-0003-4003-8003-000000000007', 'การใช้เครื่องพรวนระหว่างแถว (การไถย่อยดิน) ขนาด 35 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0016, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-bd194d5224e8', 614, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a8e29a1d-1ac1-5546-b111-4ac6a6e67e5c', 'a1000003-0003-4003-8003-000000000007', 'การใช้เครื่องพรวนเพื่อกำจัดวัชพืชขนาด 35 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0013, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-2ab68bc52299', 615, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d7bc14e1-aca7-5b2d-8de3-12c143f6e914', 'a1000003-0003-4003-8003-000000000007', 'การใช้เครื่องสูบน้ำสำหรับการเกษตรขนาด 15 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm3', 0.0551, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-e2f9e8f54394', 616, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ef1ee71b-b89b-5df1-b24b-868af5832f60', 'a1000003-0003-4003-8003-000000000007', 'การใช้เครื่องหว่านปุ๋ยเม็ด ขนาด 35 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0012, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-b767aabb9b31', 617, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a22ca0a6-717a-56ff-93d8-b008ab8ff90b', 'a1000003-0003-4003-8003-000000000007', 'การใช้เครื่องหว่านเมล็ดขนาด 35 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0021, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-2c1f7ccb8ca6', 618, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2533bc3b-5feb-5ac4-9525-54df24a1e29a', 'a1000003-0003-4003-8003-000000000007', 'การใช้เครื่องเกี่ยวนวดข้าว', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0071, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-0b659da576dd', 619, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e7b2523d-376a-5275-9dc7-8f9feb8b7011', 'a1000003-0003-4003-8003-000000000007', 'การใช้เครื่องเกี่ยวนวดข้าวโพด', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0083, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-8ca9d378fc5e', 620, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('31fcce95-b367-59a9-8601-26594add8ed4', 'a1000003-0003-4003-8003-000000000007', 'การใช้เครื่องเติมอากาศขนาด 2-3 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'hp-hr', 1.1821, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-afc55f5baa35', 621, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0c2eb4a1-93d4-593d-a3d7-255ed7f31d0a', 'a1000003-0003-4003-8003-000000000007', 'การใช้เครื่องใส่ปุ๋ยมูลสัตว์ขนาด 90 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0024, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-14fdfb66da91', 622, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('60d237f8-2a20-57e9-9f00-d54241350e40', 'a1000003-0003-4003-8003-000000000007', 'การใช้เครื่องใส่ปูนขาวขนาด 90 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0031, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-89ce484698cd', 623, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('e26ae809-329e-5688-b31c-8085baad89bf', 'a1000003-0003-4003-8003-000000000007', 'การใช้เลื่อยขนาด 2-3 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'hp-hr', 1.3476, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-e49eeb3519a6', 624, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c8fe0b46-4c31-5c77-825e-40884ff5a764', 'a1000003-0003-4003-8003-000000000007', 'การใช้ไถหัวหมูโดยแทรกเตอร์ขนาด 90 แรงม้า (คิดรวมการใช้รถแทรกเตอร์แล้ว)', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0075, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-91df29cc237f', 625, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('a4714b49-6eb2-5488-b61a-50f6aaaec806', 'a1000003-0003-4003-8003-000000000007', 'การไถด้วยจานโดยแทรกเตอร์ขนาด 90 แรงม้า (คิดรวมการใช้รถแทรกเตอร์แล้ว)', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0049, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-8488d0c45a8f', 626, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('91f6c6f5-302c-5999-a6f1-41d56122d60d', 'a1000003-0003-4003-8003-000000000007', 'การไถดินดานโดยแทรกเตอร์ขนาด 90 แรงม้า (คิดรวมการใช้รถแทรกเตอร์แล้ว)', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0065, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-046954f97da9', 627, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('735eeb0a-efc4-54d7-8b71-3f7807921544', 'a1000003-0003-4003-8003-000000000007', 'การไถพรวนด้วยเหล็กแหลมโดยแทรกเตอร์ขนาด 90 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0046, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-e339f682b0df', 628, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9580012a-9bfa-58b4-911a-7d57e7366a9e', 'a1000003-0003-4003-8003-000000000007', 'การไถยกร่องโดยแทรกเตอร์ขนาด 90 แรงม้า (คิดรวมการใช้รถแทรกเตอร์แล้ว)', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0042, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-17e2ba0a85f8', 629, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('600fb3e6-92c2-50e0-b09d-bcb85e487774', 'a1000003-0003-4003-8003-000000000007', 'การไถลูกกลิ้งโดยแทรกเตอร์ขนาด 90 แรงม้า', 'กลุ่มเครื่องจักรกลทางการเกษตร (Agricultural Machinery)', 'm2', 0.0016, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-90525fd14fcd', 630, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('51f642d2-eeef-5439-a91f-f6517a7cc434', 'a1000003-0003-4003-8003-000000000007', 'กระดาษกล่องขาวเคลือบแป้ง/กระดาษกล่องแป้งหลังเทา', 'กลุ่มเยื่อและกระดาษ (Pulp and Paper)', 'kg', 1.8679, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-e62bda3c4cf1', 631, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('037e2ea6-5e46-5517-9ee0-9acf8e0f6cf5', 'a1000003-0003-4003-8003-000000000007', 'กระดาษคราฟท์ ชนิดทำผิวกล่อง', 'กลุ่มเยื่อและกระดาษ (Pulp and Paper)', 'kg', 1.6324, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-5206ef57c10c', 632, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b91ddd0c-f9b4-58c6-8f69-beaaee21ae92', 'a1000003-0003-4003-8003-000000000007', 'กระดาษคราฟท์ ชนิดทำลอน', 'กลุ่มเยื่อและกระดาษ (Pulp and Paper)', 'kg', 1.6184, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-e755ff677f79', 633, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b4218d90-9707-50bb-a6ff-60bc6b7265d3', 'a1000003-0003-4003-8003-000000000007', 'กระดาษพิมพ์เขียนแบบเคลือบผิว', 'กลุ่มเยื่อและกระดาษ (Pulp and Paper)', 'kg', 2.1639, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-7624c592ab40', 634, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('da0b7448-8d29-51c7-9ff9-2756e78e8bc9', 'a1000003-0003-4003-8003-000000000007', 'กระดาษพิมพ์เขียนแบบไม่เคลือบผิว', 'กลุ่มเยื่อและกระดาษ (Pulp and Paper)', 'kg', 2.102, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-e2f8b0975909', 635, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f2c2c07e-9fe9-5f9d-adae-ac5d2709536d', 'a1000003-0003-4003-8003-000000000007', 'กระดาษหนังสือพิมพ์', 'กลุ่มเยื่อและกระดาษ (Pulp and Paper)', 'kg', 1.3589, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-dc9fb54206cb', 636, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('150c1d61-2ade-5bc2-bbc8-557611230962', 'a1000003-0003-4003-8003-000000000007', 'เยื่อกระดาษชนิดฟอกขาวจากชานอ้อย', 'กลุ่มเยื่อและกระดาษ (Pulp and Paper)', 'kg', 4.3924, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-3520a504e79e', 637, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1f793d69-7221-5e41-a9c3-5f574eef57c4', 'a1000003-0003-4003-8003-000000000007', 'เยื่อกระดาษชนิดฟอกขาวจากยูคาลิปตัส', 'กลุ่มเยื่อและกระดาษ (Pulp and Paper)', 'kg', 0.6677, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-7f7fc9e0eeb8', 638, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('709ef222-726a-5486-af6b-b9adb4508adc', 'a1000003-0003-4003-8003-000000000007', 'เยื่อกึ่งเคมี', 'กลุ่มเยื่อและกระดาษ (Pulp and Paper)', 'kg', 0.2994, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-836f59a146dd', 639, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9fe951d7-3787-5efd-8b0e-629c5de9762b', 'a1000003-0003-4003-8003-000000000007', 'กระจกฉนวนความร้อน', 'กลุ่มแก้วและกระจก (Glass and Mirror)', 'kg', 1.7043, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-f4c6d5b35bcf', 640, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3c5892fd-322d-50fb-b7fc-65963717f10c', 'a1000003-0003-4003-8003-000000000007', 'กระจกนิรภัยชั้นเดียว', 'กลุ่มแก้วและกระจก (Glass and Mirror)', 'kg', 3.1358, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-53347687a04f', 641, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c11998ad-0731-52c1-8526-344c8f858d30', 'a1000003-0003-4003-8003-000000000007', 'กระจกนิรภัยหลายชั้น', 'กลุ่มแก้วและกระจก (Glass and Mirror)', 'kg', 2.4449, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d5fd2b24e497', 642, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b006fddb-1497-5490-9bb8-7c67121082bc', 'a1000003-0003-4003-8003-000000000007', 'กระจกแผ่นเรียบ', 'กลุ่มแก้วและกระจก (Glass and Mirror)', 'kg', 1.2709, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-ebcfbcfdb6e1', 643, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9742ae93-4e3b-5318-b281-22daaffd31fe', 'a1000003-0003-4003-8003-000000000007', 'ขวดแก้วสีชา', 'กลุ่มแก้วและกระจก (Glass and Mirror)', 'kg', 0.8305, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-aae9e33975bb', 644, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0712c84d-e6a5-5ae5-90bf-bf7f98bfa888', 'a1000003-0003-4003-8003-000000000007', 'ขวดแก้วใส', 'กลุ่มแก้วและกระจก (Glass and Mirror)', 'kg', 0.8075, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-2693a1923892', 645, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('505ced34-07bd-5488-89f3-eba8a164639d', 'a1000003-0003-4003-8003-000000000007', 'ฉนวนใยแก้ว', 'กลุ่มแก้วและกระจก (Glass and Mirror)', 'kg', 2.5612, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-574add77fc58', 646, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('bc1957ff-2ff7-5141-9dd1-9a6ff17f4c69', 'a1000003-0003-4003-8003-000000000007', 'ลวดเหล็กกล้าดึงเย็นเสริมคอนกรีต (ลวดปลอก) (Steel Wire: Cold drawn Product)', 'กลุ่มโลหะและอโลหะ (Ferrous and Non-Ferrous)', 'kg', 2.5748, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-0e317e5c7245', 647, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('225bf0ae-f628-5d7f-ab00-bf9d7db2ed6c', 'a1000003-0003-4003-8003-000000000007', 'ลวดเหล็กกล้าตีเกลียว 7 เส้น สำหรับคอนกรีตอัดแรง (Steel Wire: PC Strand)', 'กลุ่มโลหะและอโลหะ (Ferrous and Non-Ferrous)', 'kg', 2.8726, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-024bb427c113', 648, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('879be326-095f-53d5-93ea-e2277e71c890', 'a1000003-0003-4003-8003-000000000007', 'ลวดเหล็กกล้าสำหรับคอนกรีตอัดแรง (Steel Wire: PC Single Wire)', 'กลุ่มโลหะและอโลหะ (Ferrous and Non-Ferrous)', 'kg', 2.7911, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-1d5b1c5f1073', 649, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9137821d-3624-594f-bfa8-54c7d0568804', 'a1000003-0003-4003-8003-000000000007', 'อะลูมิเนียมเส้นหน้าตัด ชุบเคลือบสีอโนไดซ์ ซีรีย์ 6063 (Aluminium extrusion, Anodized 6063)', 'กลุ่มโลหะและอโลหะ (Ferrous and Non-Ferrous)', 'kg', 15.1848, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-2d76a773eaf9', 650, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1c15fca9-235c-558b-b6e0-2ee7e3c52549', 'a1000003-0003-4003-8003-000000000007', 'อะลูมิเนียมเส้นหน้าตัด พ่นสีฝุ่น ซีรีย์ 6063 (Aluminium extrusion, Powder-coated 6063)', 'กลุ่มโลหะและอโลหะ (Ferrous and Non-Ferrous)', 'kg', 22.9605, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-899c150609f4', 651, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('d0c3721f-729d-5bcc-b2cd-704cd77652d8', 'a1000003-0003-4003-8003-000000000007', 'อะลูมิเนียมเส้นหน้าตัดซีรีย์ MF 6061/6063 (Aluminium extrusion, Mill Finish 6061/6063)', 'กลุ่มโลหะและอโลหะ (Ferrous and Non-Ferrous)', 'kg', 17.2254, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-bfb89fd3ea15', 652, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('77ff7b05-a1ef-527b-a1d4-7d68c5c1430b', 'a1000003-0003-4003-8003-000000000007', 'อะลูมิเนียมแท่งบิลเลท (Aluminium, billet)', 'กลุ่มโลหะและอโลหะ (Ferrous and Non-Ferrous)', 'kg', 11.9048, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-b2286e3e9bc5', 653, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('17d5fd9e-6344-5d1d-aad9-af8b9fb29924', 'a1000003-0003-4003-8003-000000000007', 'อะลูมิเนียมแผ่นชนิดม้วน (Aluminium, flat-rolled)', 'กลุ่มโลหะและอโลหะ (Ferrous and Non-Ferrous)', 'kg', 5.8236, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-c62491d81770', 654, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7f7f1795-54ff-5fe8-b3f2-f581d8b41a29', 'a1000003-0003-4003-8003-000000000007', 'เหล็กแผ่นรีดร้อนชนิดม้วน (Hot Rolled Coil Steel)', 'กลุ่มโลหะและอโลหะ (Ferrous and Non-Ferrous)', 'kg', 1.8578, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-bd41e003018f', 655, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('9ae17405-ea91-5ba8-9f08-69e76601d2b9', 'a1000003-0003-4003-8003-000000000007', 'เหล็กแผ่นรีดร้อนชนิดแผ่นหนา (Hot Rolled Steel Plate)', 'กลุ่มโลหะและอโลหะ (Ferrous and Non-Ferrous)', 'kg', 2.8307, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-3010fc005209', 656, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('5a3f16f4-14d4-5be1-961b-740a0d33df94', 'a1000003-0003-4003-8003-000000000007', 'เหล็กแผ่นรีดเย็นชนิดม้วน (Cold-rolled Steel Coil)', 'กลุ่มโลหะและอโลหะ (Ferrous and Non-Ferrous)', 'kg', 2.031, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-f02b0623b5d0', 657, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('dc46f7a1-fad8-56cf-891a-57b03b56d833', 'a1000003-0003-4003-8003-000000000007', 'เหล็กแผ่นเคลือบสี (Pre-Painted Steel Coil)', 'กลุ่มโลหะและอโลหะ (Ferrous and Non-Ferrous)', 'kg', 3.4776, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-bf93a2b4d492', 658, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('24503495-5d77-57a3-88dd-0b38084fc396', 'a1000003-0003-4003-8003-000000000007', 'เหล็กแผ่นเคลือบโลหะ (Metal Coated Steel Coil)', 'กลุ่มโลหะและอโลหะ (Ferrous and Non-Ferrous)', 'kg', 3.1732, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-bd00c894d547', 659, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2fc7850e-ff9f-55de-8a4c-404ba493454f', 'a1000003-0003-4003-8003-000000000009', 'ไฟฟ้า', 'กลุ่มไฟฟ้า (Electricity)', 'kWh', 0.5562, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-b06ea04b1200', 660, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b552f303-3868-5037-a109-e3abe32a61e3', 'a1000003-0003-4003-8003-000000000007', 'ต้นกล้าหม่อนชำถุง (Mulberry nursery)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 0.0705, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-dc57f9342ece', 661, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('20702bb5-5c04-5fd6-b12b-925f1ae0f58c', 'a1000003-0003-4003-8003-000000000007', 'รังไหม (Silkworm cocoon)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 6.712, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d7a5ca4fe4e6', 662, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f365190d-cca4-535f-8173-66a47f977379', 'a1000003-0003-4003-8003-000000000007', 'สีธรรมชาติ จากต้นคราม (Natural color, from indigo blue)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 0.1811, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-9bee86159daa', 663, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ed0f31f9-a1e3-5815-a2d6-07fcde69e266', 'a1000003-0003-4003-8003-000000000007', 'หม่อนผลสด - การปลูกแบบทั่วไป  (Non-GAP) (Mulberry fruit; Non-GAP)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 0.3922, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-e3dcb7e53a18', 664, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('470907ae-d719-5ef6-b7c5-fd0f6154ed62', 'a1000003-0003-4003-8003-000000000007', 'หม่อนผลสด - การปลูกแบบมีระบบปฏิบัติทางการเกษตรที่ดีสำหรับหม่อนเพื่อผลิตหม่อนผล (GAP) (Mulberry fruit; GAP)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 0.1853, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-fb1f99ac852b', 665, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('220dfc71-fe67-5ccb-9c56-189d3380ceae', 'a1000003-0003-4003-8003-000000000007', 'เส้นไหม ย้อมสีธรรมชาติ (Dyed Silks, with chemical color)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 75.687, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-1f5a172fc479', 666, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('91a95e5d-0b39-545c-9965-af2ef58ca9cc', 'a1000003-0003-4003-8003-000000000007', 'เส้นไหม ย้อมสีเคมี (Dyed Silks, with chemical color)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 76.812, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-891335342cf6', 667, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b629c88d-c99c-5fe8-a7ee-45754e8c7a98', 'a1000003-0003-4003-8003-000000000007', 'เส้นไหม ไม่ย้อมสี &ndash; ลอกกาวธรรมชาติ (Degummed silk, natural production)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 69.2072, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-81000808c28e', 668, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c0c03df1-fb6a-54a9-833a-68feb3b1e23f', 'a1000003-0003-4003-8003-000000000007', 'เส้นไหม ไม่ย้อมสี &ndash; ลอกกาวเคมี (Degummed silk, chemical production)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 77.223, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-6ba2c78d49a1', 669, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('bbeaeac4-2c26-508a-bcd7-339c00c3420b', 'a1000003-0003-4003-8003-000000000007', 'ใบหม่อนสำหรับผลิตชา - การปลูกแบบทั่วไป (Non-GAP) (Mulberry leave, for tea production; Non-GAP)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 0.2218, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-28d3d3eda07d', 670, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('661933aa-bf3c-5ee0-a693-dd682c9b6c13', 'a1000003-0003-4003-8003-000000000007', 'ใบหม่อนสำหรับผลิตชา &ndash; การปลูกแบบมีระบบปฏิบัติทางการเกษตรที่ดีสำหรับหม่อนเพื่อผลิตใบ (GAP) (Mulberry leave, for tea production; GAP)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 0.5575, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-d300edfd6941', 671, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('dc3ac0e6-d866-59db-9bcf-c07a351ad60e', 'a1000003-0003-4003-8003-000000000007', 'ใบหม่อนสำหรับเลี้ยงไหม - การปลูกแบบทั่วไป (Non-GAP) (Mulberry leave, for silk worm production; Non-GAP)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 0.2247, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-0df1dfed88ee', 672, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('f8c9af33-94a5-573f-a448-268f5c12d5ed', 'a1000003-0003-4003-8003-000000000007', 'ใบหม่อนสำหรับเลี้ยงไหม &ndash; การปลูกแบบมีระบบปฏิบัติทางการเกษตรที่ดีสำหรับหม่อนเพื่อผลิตใบ (GAP) (Mulberry leave, for silk woarm production; GAP)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 0.5574, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-661747dbf8be', 673, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('361afdf8-d148-5b91-b339-938d30f93928', 'a1000003-0003-4003-8003-000000000007', 'ไข่ไหม (Silkworm eggs)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'p (แผ่น)', 7.3956, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-ca3d3bf3d31c', 674, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('25158fca-5062-5312-8b15-e1dfa5f84377', 'a1000003-0003-4003-8003-000000000007', 'ไหม 1 หรือไหมน้อย (Raw silk, Mai 1 (Mai noi))', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 56.94, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-4152f7ad04db', 675, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('13089c50-b935-57d7-bac0-1af31d5a2251', 'a1000003-0003-4003-8003-000000000007', 'ไหม 3 หรือไหมลืบ ( (Raw silk, Mai 3 (Mai lueb))', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 57.1762, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-18c56106185c', 676, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('40808b8e-cdf0-58db-b9b1-71f5bf91f18a', 'a1000003-0003-4003-8003-000000000007', 'กระถินสดอินทรีย์', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.0018, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-827cefa7b67d', 677, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('b695113a-0756-5d68-b384-08913bba6774', 'a1000003-0003-4003-8003-000000000007', 'ถั่วฮามาต้าสดอินทรีย์', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.0044, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-fb13cce1a6bf', 678, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('dbb140e9-595c-5108-a31e-84c0be9ea093', 'a1000003-0003-4003-8003-000000000007', 'ถั่วเหลืองอินทรีย์', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.0664, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-5fb69d574d53', 679, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c58b4ca4-4378-5e2b-8ed1-0d513ee31e53', 'a1000003-0003-4003-8003-000000000007', 'มันสำปะหลัง (ปลูกแบบปลอดภัย; อินทรีย์)', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.0562, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-165579f69872', 680, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('81844815-b40d-5cde-85bd-f9e4641356de', 'a1000003-0003-4003-8003-000000000007', 'มันสำปะหลังหมักอินทรีย์', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.0827, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-397ab1139a17', 681, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('30b314fa-6cef-5909-8016-a1622e1b6222', 'a1000003-0003-4003-8003-000000000007', 'หญ้ากินนีสดอินทรีย์', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.0021, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-8b72b057204a', 682, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7befaf36-24e9-53b8-b675-538d845cecb7', 'a1000003-0003-4003-8003-000000000007', 'หญ้ากินนีอินทรีย์ หมักด้วยไซโล', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.0034, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-424033b769d6', 683, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('2d2f0410-64d6-545c-89bb-73fd41453228', 'a1000003-0003-4003-8003-000000000007', 'หญ้ากินนีแห้งอินทรีย์ (ความชื้น 10%)', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.017, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-627846c79cfb', 684, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('1f173885-b79c-53b6-8917-f419f64147f8', 'a1000003-0003-4003-8003-000000000007', 'หญ้ารูซี่สดอินทรีย์', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.0041, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-9c673c12c7b6', 685, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('3d2b8910-7c4b-5383-bb68-d4278a4eaf7a', 'a1000003-0003-4003-8003-000000000007', 'หญ้าเนเปียร์สดอินทรีย์', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.0016, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-5a1cec347e54', 686, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('c7b58295-43e7-5bf1-8503-0370ef65091e', 'a1000003-0003-4003-8003-000000000007', 'หญ้าเนเปียร์อินทรีย์ หมักด้วยถุงพลาสติก', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.0047, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-bf57c502a535', 687, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('8965bfcc-c259-5708-b056-2d43d3583fb8', 'a1000003-0003-4003-8003-000000000007', 'หญ้าแพงโกล่าสดอินทรีย์', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.0038, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-b5435a9c5817', 688, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('ff1ccea9-bd7a-5b3a-a1c9-12877d094a57', 'a1000003-0003-4003-8003-000000000007', 'อาหารข้นโคนมอินทรีย์ (16-18% โปรตีน)', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.7368, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-955feb6f1a88', 689, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('462a001b-be84-58a2-a6ca-3b6eda471d30', 'a1000003-0003-4003-8003-000000000007', 'อาหารข้นโคนมอินทรีย์ (16-18% โปรตีน) สำหรับการเลี้ยงตลอดวัฎจักรชีวิต (Life cycle)', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.3149, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-9a5a7b39ab38', 690, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('0f52d979-9565-5d4d-9f30-e1fb6c630a0f', 'a1000003-0003-4003-8003-000000000007', 'อาหารข้นโคนมอินทรีย์ (16-18% โปรตีน) สำหรับการเลี้ยงเฉพาะช่วงให้น้ำนม (Lactation)', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.4467, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-4fb0625c4423', 691, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('6a98f291-07c0-5c71-bf0f-8e690d679bb6', 'a1000003-0003-4003-8003-000000000007', 'แร่ธาตุพรีมิกซ์', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 0.2532, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-094ef860ac28', 692, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
  ref_ch4 = EXCLUDED.ref_ch4,
  ref_n2o = EXCLUDED.ref_n2o,
  ref_source = EXCLUDED.ref_source,
  version = EXCLUDED.version,
  ref_code = EXCLUDED.ref_code,
  sort_index = EXCLUDED.sort_index,
  multiplier = EXCLUDED.multiplier,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, scope_category_id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_source, version, ref_code, sort_index, multiplier, created_at, updated_at)
VALUES ('7c81b38d-e594-527f-b2a6-bc30bf115696', 'a1000003-0003-4003-8003-000000000007', 'แร่ธาตุและวิตามินพรีมิกซ์', 'อาหารสำหรับเลี้ยงโคนมอินทรีย์ (Feed for organic dairy cattle)', 'kg', 1.8369, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2022-2024)', NULL, NULL, NULL, NULL, 'TGO', 'TGO 1 กรกฎาคม 2569', 'EF006-550e169e44e5', 693, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  sub_category = EXCLUDED.sub_category,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  value1_label = EXCLUDED.value1_label,
  value1_unit = EXCLUDED.value1_unit,
  value2_label = EXCLUDED.value2_label,
  value2_unit = EXCLUDED.value2_unit,
  ref_info = EXCLUDED.ref_info,
  ref_co2 = EXCLUDED.ref_co2,
  ref_fossil_ch4 = EXCLUDED.ref_fossil_ch4,
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