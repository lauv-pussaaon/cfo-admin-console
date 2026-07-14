-- Generated Feb 2569 fuels for admin SoT (deterministic UUID v5)
-- version = กุมภาพันธ์ 2569
BEGIN;

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('9149f25c-9d0d-53fd-8192-031d80e287c6', 'Natural Gas (NCV): SCF', 'SCF', 0.05727759, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 0.057222, 0.0, 1.02e-06, 1.02e-07, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d6142905-ee36-512f-b556-d2c7249338a2', 'Natural Gas (NCV): MJ', 'MJ', 0.0561545, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 0.0561, 0.0, 1e-06, 1e-07, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('158359c2-a2a6-56c5-888d-22d21008b1e3', 'Natural Gas (HHV): MJ', 'MJ', 0.050151666, NULL, NULL, NULL, NULL, '2021 API Compendium, Table 4.3 & Table 4.6', 0.0501, 0.0, 9.48e-07, 9.48e-08, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('37eb826f-80a2-51b4-9204-c55791f26d38', 'Natural Gas (HHV): MMBTU', 'MMBTU', 52.9545, NULL, NULL, NULL, NULL, '2021 API Compendium, Table 4.3 & Table 4.6', 52.9, 0.0, 0.001, 0.0001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('15a340ce-0f1c-5ee4-8730-870af3fb8cd5', 'LPG: litre', 'Liter', 1.68117279, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.679722, 0.0, 2.662e-05, 2.662e-06, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b7878292-51e8-540b-9ef7-c2d0e8f9c6c9', 'LPG: kg', 'kg', 3.113282944, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 3.110596296, 0.0, 4.92962963e-05, 4.92962963e-06, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a0a260d9-1b87-553a-a3b7-622601eff86d', 'Acetelyne: kg', 'kg', 3.384615385, NULL, NULL, NULL, NULL, '2C2H2+502 → 4CO2+2H2O (MWC2H2 =26, MWCO2 =44)', 3.384615385, 0.0, 0.0, 0.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('18a28b95-357a-585a-b6b7-5d0f4cc86909', 'Ethane: kg', 'kg', 3.142857143, NULL, NULL, NULL, NULL, 'C2H4 + 3O2 --> 2CO2 + 2H2O (MWC2H4 =28, MWCO2 =44)', 3.142857143, 0.0, 0.0, 0.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('88c52858-38e3-5f07-bf9a-d1cf1e098776', 'Propane: kg', 'kg', 3.0, NULL, NULL, NULL, NULL, 'C3H8+5O2→3CO2+4H2O (MWC3H8 =44, MWCO2 =44)', 3.0, 0.0, 0.0, 0.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1da3cd3f-bd1d-5858-85d2-8a1f28d59cfb', 'Butane: kg', 'kg', 3.034482759, NULL, NULL, NULL, NULL, '2C4H10+ 1302 → 8CO2+10H2O (MWC4H10 =58, MWCO2 =44)', 3.034482759, 0.0, 0.0, 0.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('fa6a8e0e-6c49-506b-9775-ffee3343e1cb', 'Fuel Oil A: L', 'Liter', 3.219775405, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 3.209698444, 0.0, 0.0001244069164, 2.488138329e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('50cbf0cd-d714-5987-9c53-0c61d39b6424', 'Fuel Oil C: L', 'Liter', 3.245497564, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 3.235340101, 0.0, 0.0001254007791, 2.508015582e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e3ccae20-3506-5729-b7bf-79db9fa5fda4', 'Jet Kerosene: L', 'Liter', 2.47728579, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.468895, 0.0, 0.00010359, 2.0718e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('375978ed-3712-57e8-a71f-971b2d3ece72', 'Other Kerosene: L', 'Liter', 2.49109779, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.482707, 0.0, 0.00010359, 2.0718e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7083cf57-19ae-527d-9bd3-6700ba05abd8', 'Diesel: L', 'Liter', 2.70757206, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.698722, 0.0, 0.00010926, 2.1852e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('28b808a5-a7ef-539a-804c-5b239b72d965', 'Gasoline: L', 'Liter', 2.18921364, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, 0.0, 9.444e-05, 1.8888e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c9069869-e259-5aab-a8b5-94494ae86ba2', 'Biodiesel: L', 'Liter', 1.64961846, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.643976, NULL, 6.966e-05, 1.3932e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d98703b0-a55e-56fb-8010-63571b9b0365', 'Biogasollne (Ethanol)', 'Liter', 1.501920063, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.4967828, NULL, 6.3423e-05, 1.26846e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('371924c3-18f8-5784-89c1-d834a5322d4b', 'Diesel B7', 'Liter', 2.518436988, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.50981146, 0.0, 0.000106488, 2.12976e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4061e098-ae18-52b2-a828-331ec830471f', 'Diesel B20', 'Liter', 2.16718614, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.1589776, 0.0, 0.00010134, 2.0268e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1a98e10e-2d33-5a06-b721-7af7714326fb', 'Gasohol: E10', 'Liter', 1.970806002, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.9634076, 0.0, 9.13383e-05, 1.826766e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a1ce16ff-7a6c-517c-a718-4a1350c3f47c', 'Gasohol: E20', 'Liter', 1.752398365, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.7452512, 0.0, 8.82366e-05, 1.764732e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('0300bb31-5c4d-587a-8eca-677db3dbebcb', 'Gasohol: E85', 'Liter', 0.3327487196, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 0.3272346, 0.0, 6.807555e-05, 1.361511e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('fd105b2f-3682-5c72-ba28-692ff30e2450', 'Lignite: kg', 'kg', 1.20996225, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.2019, 0.0, 0.000119, 1.785e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d9f241d0-40e3-5c5d-a823-edc8c1059e4d', 'Antracite: kg', 'kg', 3.1078935, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 3.08662, 0.0, 0.000314, 4.71e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a0b50e93-fb13-53bd-9891-30a561cc3dba', 'Bituminous Coal: kg', 'kg', 2.512467675, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.494602, 0.0, 0.0002637, 3.9555e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('93813452-27ff-5f80-8699-2996b4597f04', 'Coking Coal: kg', 'kg', 2.632517325, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.613798, 0.0, 0.0002763, 4.1445e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('270d7ca5-8036-5851-a1f8-34965df69e8a', 'Fuel wood', 'kg', 0.030381, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', NULL, 0.0, 0.0004797, 6.396e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ec8ed58c-cd11-5082-b5c9-6aa5aa80a6cc', 'Saw dust', 'kg', 0.020672, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', NULL, 0.0, 0.0003264, 4.352e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b4df6ddc-b71d-5d80-a068-269cd9965f46', 'Charcoal', 'kg', 0.054872, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', NULL, 0.0, 0.0008664, 0.00011552, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ca360cd0-4ebf-5876-9830-106493e9015b', 'Paddy husk', 'kg', 0.02736, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', NULL, 0.0, 0.000432, 5.76e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('61aa02f5-42bb-52df-8e07-f8cefd8c0545', 'Baggasse', 'kg', 0.014307, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', NULL, 0.0, 0.0002259, 3.012e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d6b5e429-1d5a-52ac-9bb0-f8227581bf37', 'Palm kernel shell', 'kg', 0.035207, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', NULL, 0.0, 0.0005559, 7.412e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b9e6db16-b30a-5fe3-8b73-ba7412dabdec', 'Cob', 'kg', 0.031882, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', NULL, 0.0, 0.0005034, 6.712e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('3724b6b3-696a-501c-9056-9f7729bec244', 'Biogas', 'm3', 0.001140685, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', NULL, 0.0, 2.093e-05, 2.093e-06, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000001', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('9a75691b-4254-5cfe-8ed7-3099e62284bf', 'LPG: kg', 'kg', 3.205738148, NULL, NULL, NULL, NULL, 'IPCC defaults (2006) และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 3.110596296, 0.0, 0.002464814815, 9.85925925925926e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000002', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('fcaabc78-e993-5f9f-a76b-00f85a2eaab7', 'Diesel: Aggriculture, L', 'Liter', 2.978981184, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.698722, 0.0, 0.000151143, 0.001041612, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000002', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a0e08714-b49a-5cea-a013-898830fd40d1', 'Diesel: Forestry, L', 'Liter', 2.978981184, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.698722, 0.0, 0.000151143, 0.001041612, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000002', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('67fc680f-945e-594d-819c-028b369e0631', 'Diesel: Industry, L', 'Liter', 2.978981184, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.698722, 0.0, 0.000151143, 0.001041612, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000002', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('07b67b2d-adc8-5ac2-943f-f7eea76ace0e', 'Diesel: Household, L', 'Liter', 2.978981184, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.698722, 0.0, 0.000151143, 0.001041612, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000002', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a72e283e-e98e-532b-8a07-6aa37fb46d64', 'Biodiesel: L', 'Liter', 1.643976, NULL, NULL, NULL, NULL, 'IPCC defaults (2006) และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.643976, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000002', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4904f883-61df-581c-9a54-e2d3aa44ec6c', 'Ethanol, Biogasoline: L', 'Liter', 1.4967828, NULL, NULL, NULL, NULL, 'IPCC defaults (2006) และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.4967828, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000002', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('17962e5c-a333-58a6-966e-0b6f79f7be81', 'Motor Gasoline 4-stroke: Aggriculture, L', 'Liter', 2.2687636, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, 0.0, 0.0025184, 6.296e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000002', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7663b387-4e04-5634-bbf7-620b3921dfea', 'Motor Gasoline 4-stroke:  Forestry, L', 'Liter', 2.181564, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, 0.0, 0.0, 0.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000002', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1cd0154d-e9d5-51ff-b598-e3389bf0c776', 'Motor Gasoline 4-stroke:  Industry, L', 'Liter', 2.2423204, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, 0.0, 0.001574, 6.296e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000002', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('8ed0a735-7c57-5eb7-88fc-93f7c82f5081', 'Motor Gasoline 4-stroke:  Household, L', 'Liter', 2.3040212, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, 0.0, 0.0037776, 6.296e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000002', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('09feb13f-d6c1-5813-8722-23b78669991c', 'Motor Gasoline 2-stroke: Aggriculture, L', 'Liter', 2.30830248, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, 0.0, 0.0044072, 1.2592e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000002', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4f17060f-a290-5c13-805d-ac06370871f4', 'Motor Gasoline 2-stroke:  Forestry, L', 'Liter', 2.33474568, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, 0.0, 0.0053516, 1.2592e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000002', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2d8002f0-5d53-546d-ae5a-8ba20ff9f377', 'Motor Gasoline 2-stroke:  Industry, L', 'Liter', 2.29948808, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, 0.0, 0.0040924, 1.2592e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000002', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6695f8b1-9a52-566b-8c98-094c4e33f50a', 'Motor Gasoline 2-stroke:  Household, L', 'Liter', 2.34356008, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, 0.0, 0.0056664, 1.2592e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000002', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('92d4bef4-ae89-5f38-a50e-0eda57f899b1', 'Diesel B7', 'Liter', 2.790070644, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.50981146, 0.0, 0.000151143, 0.001041612, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000002', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('98588d77-2d86-54fa-a4ea-747dd322b4a1', 'Gasohol E10,  4-stroke: Aggriculture, L', 'Liter', 2.0506072, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.9634076, 0.0, 0.0025184, 6.296e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000002', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1590b731-0c63-5681-9202-8be8cb5a521f', 'Gasohol E10,  4-stroke:  Forestry, L', 'Liter', 1.9634076, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.9634076, 0.0, 0.0, 0.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000002', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('12d6f97a-e0fd-5763-b654-4110cbde5a55', 'Gasohol E10,  4-stroke:  Industry, L', 'Liter', 2.024164, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.9634076, 0.0, 0.001574, 6.296e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000002', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d795c8e0-348e-5557-a898-0c5d0875df05', 'Gasohol E10,  4-stroke:  Household, L', 'Liter', 2.0858648, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.9634076, 0.0, 0.0037776, 6.296e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000002', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('94c9e736-9525-5aba-b6fa-98cd79977be6', 'Gasohol E10,  2-stroke: Aggriculture, L', 'Liter', 2.09014608, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.9634076, 0.0, 0.0044072, 1.2592e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000002', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('fb692ad3-4224-55f5-8864-709acea3fa24', 'Gasohol E10,   2-stroke:  Forestry, L', 'Liter', 2.11658928, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.9634076, 0.0, 0.0053516, 1.2592e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000002', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('68bf204c-da3a-5f97-a557-d462ab985e42', 'Gasohol E10,   2-stroke:  Industry, L', 'Liter', 2.08133168, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.9634076, 0.0, 0.0040924, 1.2592e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000002', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('60dcced9-f08f-5414-af06-854d93738aff', 'Gasohol E10,   2-stroke:  Household, L', 'Liter', 2.12540368, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.9634076, 0.0, 0.0056664, 1.2592e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000002', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('dba9a145-722b-594d-ba4d-77cb2a0bf199', 'CNG: kg', 'kg', 2.2539509, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 & 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.12619, 0.0, 0.0034868, 0.0001137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000003', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('af9e1f37-8ce5-5651-926d-f89b53e1fadd', 'LPG: litre', 'Liter', 1.72734518, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 & 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.679722, 0.0, 0.00165044, 5.324e-06, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000003', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('340d04b5-00ae-5f2b-a2b4-8888b8ae9e1f', 'LPG: kg', 'kg', 3.19878737, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 & 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 3.110596296, 0.0, 0.00305637037, 9.859259259e-06, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000003', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('8049dc74-a103-5e75-b44e-db2aaf044ee2', 'Diesel: L', 'Liter', 2.740339134, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 & 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.698722, 0.0, 0.000142038, 0.000142038, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000003', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7a9a9420-db5b-560f-ad0f-d3172ca979ad', 'Motor Gasoline - uncontrolled: L', 'Liter', 2.23734656, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 & 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, 0.0, 0.00103884, 0.000100736, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000003', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c64a2a15-0d38-511e-9f0f-f13dfad68a1d', 'Motor Gasoline - oxydation catalyst: L', 'Liter', 2.2703376, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 & 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, 0.0, 0.000787, 0.00025184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000003', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7a05f62f-6cae-53b5-8ae8-159431e8c8cb', 'Motor Gasoline - low mileage light duty vihicle vintage 1995 or later: L', 'Liter', 2.232464012, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 & 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.181564, 0.0, 0.000119624, 0.000179436, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000003', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('50d01aad-88c9-5373-9e7d-40130a26091e', 'Biodiesel: L', 'Liter', 1.670509494, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 & 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.643976, 0.0, 9.0558e-05, 9.0558e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000003', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4d22b9c6-c722-5773-a318-320acf8e9dfd', 'Ethanol (Biogasoline)', 'Liter', 1.507437864, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 & 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.4967828, 0.0, 0.000380538, 0.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000003', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('3a934b62-5399-5147-a15f-fc054be92cc1', 'Diesel (B7)', 'Liter', 2.550372739, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 & 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.50981146, 0.0, 0.0001384344, 0.0001384344, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000003', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('dc5bdd50-5d4c-5163-af46-297d8d1a2217', 'Diesel (20)', 'Liter', 2.197578006, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 & 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 2.1589776, 0.0, 0.000131742, 0.000131742, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000003', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a0ab8714-9a15-5867-b789-348eec913024', 'Gasohol: E10', 'Liter', 2.010283117, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 & 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.9634076, 0.0, 0.0001457154, 0.0001614924, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000003', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('fe1553a6-a8bb-52d4-b81c-6a44a3558134', 'Gasohol: E20', 'Liter', 1.788102222, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 & 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.7452512, 0.0, 0.0001718068, 0.0001435488, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000003', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('37d90a6b-8f5c-56f7-9275-12ac5b34471a', 'Gasohol: E85', 'Liter', 0.3439264062, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 & 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 0.3272346, 0.0, 0.0003414009, 2.69154e-05, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000003', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('8d8bcd57-b05a-53c8-a83e-8403d1fd1565', 'CH4 Septictank', 'kgCH4', 28.0, 'จำนวนคน', 'คน/เดือน', 'จำนวนวันทำงาน', 'วัน/เดือน', 'IPCC, AR5', NULL, NULL, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1292472c-6d63-5212-9fd1-9ae8652c378f', 'Aerobic treatment plant well managed', 'kgCO2', 0.0, 'ปริมาณน้ำเสีย', 'm3', 'ปริมาน COD ที่ออกจากระบบ', 'kg/m3', 'IPCC Vol.5 table 6.8', NULL, NULL, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e18f3c6d-f9d8-5d1b-8d58-6d6ef2f2fcaa', 'Aerobic treatment plant Not well managed', 'kgCO2', 2.1, 'ปริมาณน้ำเสีย', 'm3', 'ปริมาน COD ที่ออกจากระบบ', 'kg/m3', 'IPCC Vol.5 table 6.8', NULL, NULL, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c22c5d65-7648-5042-92ea-d818b31f55d8', 'Anaerobic digester for sludge', 'kgCO2', 5.6, 'ปริมาณน้ำเสีย', 'm3', 'ปริมาน COD ที่ออกจากระบบ', 'kg/m3', 'IPCC Vol.5 table 6.8', NULL, NULL, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('568f8cca-b45a-5344-a1a6-adf0adceebfb', 'Anaerobic reactor', 'kgCO2', 5.6, 'ปริมาณน้ำเสีย', 'm3', 'ปริมาน COD ที่ออกจากระบบ', 'kg/m3', 'IPCC Vol.5 table 6.8', NULL, NULL, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7f4f5230-b37f-5609-a8a7-78cfd73039d7', 'Anaerobic shallow lagoon', 'kgCO2', 1.4, 'ปริมาณน้ำเสีย', 'm3', 'ปริมาน COD ที่ออกจากระบบ', 'kg/m3', 'IPCC Vol.5 table 6.8', NULL, NULL, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('43d39f4c-728e-5ae9-a600-230573dae46f', 'Anaerobic deep lagoon', 'kgCO2', 5.6, 'ปริมาณน้ำเสีย', 'm3', 'ปริมาน COD ที่ออกจากระบบ', 'kg/m3', 'IPCC Vol.5 table 6.8', NULL, NULL, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4070f210-205f-53e7-9ff5-6fcfaa4691a8', 'R-32', 'kg', 677.0, NULL, NULL, NULL, NULL, 'IPCC 2013, AR5', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 677.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6d5f3f2e-1213-55c2-a8b0-03591a6adfad', 'R-125', 'kg', 3170.0, NULL, NULL, NULL, NULL, 'IPCC 2013, AR5', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 3170.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('15418c0e-6482-5377-a256-c39cca3e2665', 'R-134', 'kg', 1120.0, NULL, NULL, NULL, NULL, 'IPCC 2013, AR5', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 1120.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('bb4eb844-f118-5ef0-a920-b40823224ab4', 'R-134a', 'kg', 1300.0, NULL, NULL, NULL, NULL, 'IPCC 2013, AR5', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 1300.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d8d12c40-5aba-5fae-bac6-1e4db71b558f', 'R-143', 'kg', 328.0, NULL, NULL, NULL, NULL, 'IPCC 2013, AR5', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 328.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d7dd148c-7c29-54b0-ba72-a9725d935193', 'R-143a', 'kg', 4800.0, NULL, NULL, NULL, NULL, 'IPCC 2013, AR5', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 4800.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('49b27d70-2f32-591f-b9ce-e0960b7435bd', 'R-404a', 'kg', 3942.8, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 3, chapter 7, table 7.8,  p.7.44 (HFC-125/HFC-143a/HFC-134a)(44.0%/52.0%/4.0%)', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 3942.8, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7ae2b47d-0751-5e29-8114-c56fd49ce54c', 'R-407a', 'kg', 1923.4, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 3, chapter 7, table 7.8,  p.7.44 (HFC-32/HFC-125/HFC-134a)(20.0%/40.0%/40.0%)', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 1923.4, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5c43f449-5495-58bd-a297-2c3dfe3ff337', 'R-407C', 'kg', 1624.21, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 3, chapter 7, table 7.8,  p.7.44 (HFC-32/HFC-125/HFC-134a)(23.0%/25.0%/52.0%)', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 1624.21, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4523e816-12e6-55d1-a68d-82ec3db02d19', 'R-410a', 'kg', 1923.5, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 3, chapter 7, table 7.8,  p.7.44 (HFC-32/HFC-125)(50.0%/50.0%)', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 1923.5, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('0fe250fc-6310-58c3-a62c-4e04ff185092', 'HFC-152', 'kg', 16.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 16.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('197fd300-6eaf-5b4a-a692-705daa937489', 'HFC-152a', 'kg', 138.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 138.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('dca3351c-8eba-5ce0-a3ee-9f945d245782', 'HFC-161', 'kg', 4.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 4.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('09a0d1e5-5233-5f7a-b846-ab1e3cb1ab05', 'HFC-227ea', 'kg', 3350.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 3350.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a768f1ea-757f-5b00-86b1-99e52c93be6d', 'HFC-236cb', 'kg', 1210.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 1210.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4c45dc6f-ea7c-5f9b-831b-0207269de68f', 'HFC-236ea', 'kg', 1330.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 1330.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('703c4083-30e0-5559-aead-23327ba6a5e2', 'HFC-236fa', 'kg', 8060.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 8060.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e0fcdaea-ec25-5053-97df-a2e3bf8cf347', 'HFC-245ca', 'kg', 716.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 716.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('858a53a0-c5b1-567f-b122-2e5a22aa1a9a', 'HFC-245fa', 'kg', 858.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 858.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6c8cc308-0ddc-5a5e-a40f-eea507cba628', 'HFC-365mfc', 'kg', 804.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 804.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4f7232e5-2933-5c8b-9ef1-0e0a659bc098', 'HFC-43-10mee', 'kg', 1650.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 1650.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('09b78039-01e7-5877-96e4-6a51341ec9d9', 'R-401A', 'kg', 18.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 18.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ff023f30-c3b5-50d9-8708-89240d461f6a', 'R-401B', 'kg', 15.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 15.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('9a79382f-d696-5454-8b1e-76da2618dc2a', 'R-401C', 'kg', 21.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 21.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('def5792b-7afa-500a-926a-7631ea8ffd63', 'R-402A', 'kg', 1902.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 1902.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d028a5c0-ce53-57a8-9089-4c89ddfb24b6', 'R-402B', 'kg', 1205.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 1205.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('3dce7a52-4d05-58d9-8bb1-5017303e9679', 'R-403B', 'kg', 3471.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 3471.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f7200675-fd6f-5002-b2ec-ef6fd96f5d55', 'R-406A', 'kg', 0.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 0.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('75a4245f-de1a-5e4b-a955-1609f7fec33e', 'R-407B', 'kg', 2547.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 2547.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('aa6be429-d3bd-5472-9c06-36a7fedecfd1', 'R-407D', 'kg', 1487.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 1487.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2366c408-2086-5905-b6e6-257173d21dc1', 'R-408A', 'kg', 2430.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 2430.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('18a8f209-ee79-52f9-a29c-c8724d298cca', 'R-409A', 'kg', 0.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 0.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('51e5e3a3-7577-5f14-bd12-44598383cca6', 'R-410B', 'kg', 2048.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 2048.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6a55729b-8510-512d-807d-5038cf049497', 'R-411A', 'kg', 15.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 15.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('90e33aa6-966f-5be2-89b5-4a63f00bf034', 'R-411B', 'kg', 4.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 4.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7f8ede30-1848-5c56-ad16-346f695e3691', 'R-414A', 'kg', 0.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 0.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('209e0cad-2fe7-5cae-9489-6dd3ebd4c803', 'R-414B', 'kg', 0.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 0.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6c1a71a8-d8bd-5915-8374-ef7a2abed26f', 'R-417A', 'kg', 2127.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 2127.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('86c4e128-878d-5f30-89c8-e74155a89e4f', 'R-422A', 'kg', 2847.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 2847.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('052c3424-e986-57df-8c58-10b96d2f117e', 'R-422D', 'kg', 2473.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 2473.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('76620b1d-4788-5fab-bf11-608944015acb', 'R-424A', 'kg', 3104.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 3104.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e4f0664d-818b-5aab-bc46-00984b321565', 'R-426A', 'kg', 1371.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 1371.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('109788b2-a860-5dcb-930d-88f1db9a032e', 'R-428A', 'kg', 3417.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 3417.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('dbbbb31e-436a-5cac-a6bc-508f43a9cf17', 'R-434A', 'kg', 3075.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 3075.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ac570286-57e4-5114-9b83-ec04446d177f', 'R-507A', 'kg', 3985.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 3985.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('472093e1-7efa-5c42-aab3-5cfd20302a63', 'R-508A', 'kg', 11607.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 11607.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4f63c87e-1348-5efd-a88d-d362124488de', 'R-508B', 'kg', 11698.0, NULL, NULL, NULL, NULL, 'IPCC Vol.5 Table 8.A.1,', NULL, NULL, NULL, NULL, NULL, NULL, 1.0, NULL, 11698.0, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1c93f484-b8fd-515c-ab61-4990be66f4c4', 'SF6', 'kg', 23500.0, NULL, NULL, NULL, NULL, 'IPCC, AR5', NULL, NULL, NULL, NULL, 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000001-0001-4001-8001-000000000005', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('bcaa63aa-05bb-5703-a395-53ed5b777b5f', 'ไฟฟ้าแบบ grid mix ปี 2016-2018; LCIA method IPCC 2013 GWP 100a V1.03', 'kWh', 0.4999, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIISMTEC-NSTDA, AR5 (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000002-0002-4002-8002-000000000006', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('25a57349-1ea0-5a23-bd48-508137f731fe', 'โซลาร์เซลล์', 'kWh', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000002-0002-4002-8002-000000000006', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('de5dc977-17a0-5fe3-b27c-67e91617e48d', 'ไอน้ำ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000002-0002-4002-8002-000000000006', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('abb46958-6f14-5ac4-b9dc-09319ed4c215', 'ความร้อน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000002-0002-4002-8002-000000000006', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2830614b-bbc1-5ed7-aa21-36c1c738c2bc', 'ความเย็น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000002-0002-4002-8002-000000000006', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5602bd2f-3e5f-56bd-befb-3ea476925386', 'อากาศอัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000002-0002-4002-8002-000000000006', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e72499a6-89f5-5270-ada2-5832373e8642', 'Acrylonitrile Butadiene Styrene (ABS)', 'กลุ่มปิโตรเคมี', 'kg', 4.1597, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('58eca3b8-e9a1-5a53-8bfc-024297bfd52b', 'General Purposed Polystyrene (GPPS)', 'กลุ่มปิโตรเคมี', 'kg', 3.2281, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a4b52874-a862-529d-b786-dc4c6cfe570e', 'High Density Polyethylene (HDPE)', 'กลุ่มปิโตรเคมี', 'kg', 6.7071, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b7cca47a-f1bb-54a5-b7e3-d81c4b0b1e0e', 'High Impact Polystyrene (HIPS)', 'กลุ่มปิโตรเคมี', 'kg', 3.6843, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('19b504e7-dae9-5556-9199-699708af0ef8', 'Linear Low Density Polyethylene (LLDPE)', 'กลุ่มปิโตรเคมี', 'kg', 2.1356, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6263f889-9920-5d66-840a-19d705dde437', 'Low Density Polyethylene (LDPE)', 'กลุ่มปิโตรเคมี', 'kg', 2.6258, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ea2607e7-ce6f-5260-b9d0-2cf7be58f963', 'Polypropylene (PP)', 'กลุ่มปิโตรเคมี', 'kg', 1.8814, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('84dca03e-b4de-559f-bcc3-536f5ee55b43', 'Ployvinyl Chloride (PVC)', 'กลุ่มปิโตรเคมี', 'kg', 2.1331, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('3156e1b8-dc6c-5606-ad58-602f9af55fd4', 'P-xylene', 'กลุ่มปิโตรเคมี', 'kg', 0.9226, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('dfb4d681-150f-54e5-aa68-0d6ba831580c', 'Styrene Monomer (SM)', 'กลุ่มปิโตรเคมี', 'kg', 2.3705, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('fbd5e84c-f6cc-5a3c-a156-73103637b318', 'Styrene Acrylonitrile (SAN)', 'กลุ่มปิโตรเคมี', 'kg', 3.0008, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('8c036250-8437-5bf7-a736-e4a2a355565d', 'Vinyl Chlodie Monomer (VCM)', 'กลุ่มปิโตรเคมี', 'kg', 2.1793, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1506a1cd-2900-5d31-839f-4a09f1d5d744', 'Benzene', 'กลุ่มปิโตรเคมี', 'kg', 1.3268, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e186d028-1a58-58f8-baec-e4ae62b058f1', 'Caprolactam (CPL)', 'กลุ่มปิโตรเคมี', 'kg', 1.2916, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c276efdc-279e-5033-8b47-34b4a3aabb57', 'Cyclohexane (CX)', 'กลุ่มปิโตรเคมี', 'kg', 1.4132, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c4ceb347-e0dc-5572-85bc-8c8109c9f7e1', 'Ethylene', 'กลุ่มปิโตรเคมี', 'kg', 1.9562, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7635c69a-8cc5-5ed8-b7f1-5cd0e6042796', 'Mixed C4', 'กลุ่มปิโตรเคมี', 'kg', 1.1114, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2fbea384-7ee7-5c6d-9922-556b3bb538b6', 'Toluene', 'กลุ่มปิโตรเคมี', 'kg', 0.9551, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7485c697-47c2-5677-bda9-ffb982f97140', 'Propylene', 'กลุ่มปิโตรเคมี', 'kg', 1.4473, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c2cc0820-6bfe-5ade-b02f-8b336270af5b', 'น้ำประปา-การประปานครหลวง', 'กลุ่มน้ำประปาและน้ำอุตสาหกรรม (Tap water)', 'm3', 0.7948, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('67799b02-2ce2-54da-8893-032f232946b8', 'น้ำประปา-การประปาส่วนภูมิภาค', 'กลุ่มน้ำประปาและน้ำอุตสาหกรรม (Tap water)', 'm3', 0.541, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('180f1f9e-7020-5fe0-a6b9-c6803d9aa79f', 'น้ำประปา-การนิคมอุตสาหกรรม', 'กลุ่มน้ำประปาและน้ำอุตสาหกรรม (Tap water)', 'm3', 0.2575, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1dcaf135-e036-5caf-bb0b-42b1274dfb09', 'น้ำอ่อนสำหรับหม้อไอน้ำ', 'กลุ่มน้ำประปาและน้ำอุตสาหกรรม (Tap water)', 'm3', 1.0301, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('3dcc96fc-19e3-501a-9b10-cbf685d51452', 'น้ำปราศจากไอออน ที่ผลิตโดยเทคโนโลยี Reverse Osmosis', 'กลุ่มน้ำประปาและน้ำอุตสาหกรรม (Tap water)', 'm3', 2.1555, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('68fea437-e029-55eb-a314-56cd2d22c9f0', 'น้ำปราศจากไอออน ที่ผลิตโดยเทคโนโลยี Ion Exchange', 'กลุ่มน้ำประปาและน้ำอุตสาหกรรม (Tap water)', 'm3', 2.0432, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2e10fe75-99d8-5864-bbbc-07461bfbbf27', 'เส้นด้ายฝ้ายหวี', 'สิ่งทอ', 'kg', 8.7658, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('91dbe59a-d4e6-5edd-8cd7-6e70d73447ac', 'เส้นด้ายฝ้ายสาง', 'สิ่งทอ', 'kg', 8.0419, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d9c5468d-f5d9-558a-995d-4be816bd6a54', 'เส้นด้ายโพลีเอสเตอร์; จากกระบวนการปั่นเส้นด้าย', 'สิ่งทอ', 'kg', 3.7902, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('61231215-c295-546d-b9b5-845afbca58b3', 'เส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ CVC', 'สิ่งทอ', 'kg', 4.528, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d73a48f1-921d-5398-a3d4-c3e16f323f55', 'เส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ TC', 'สิ่งทอ', 'kg', 5.5383, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6eec121b-51a2-5d79-9f32-749ed75cc619', 'เส้นด้ายฝ้าย', 'สิ่งทอ', 'kg', 12.0474, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a7e39ad1-b363-5e04-a459-caba038b8ef5', 'เส้นด้ายโพลีเอสเตอร์; จากกระบวนการย้อมสี', 'สิ่งทอ', 'kg', 6.7552, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('47cc5904-d238-50b9-b614-4dd63a7968f0', 'เส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ CVC', 'สิ่งทอ', 'kg', 10.163, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c521c7eb-7dc7-5da1-b867-066d506823cd', 'เส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ TC', 'สิ่งทอ', 'kg', 10.3192, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('00d34c3e-b08f-5d55-9f4a-c19b305e499f', 'ผ้าทอจากเส้นด้ายฝ้าย', 'สิ่งทอ', 'kg', 12.9209, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('789122c5-eef1-54aa-b0f8-6b1da3e0a45d', 'ผ้าทอจากเส้นด้ายฝ้าย; จากกระบวนการฟอกย้อมและตกแต่งสำเร็จ', 'สิ่งทอ', 'kg', 17.1644, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('cfc560f5-d958-5e84-9f9b-67d121a5ee67', 'ผ้าทอจากเส้นด้ายโพลีเอสเตอร์', 'สิ่งทอ', 'kg', 6.5182, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('56f518bc-e68a-500b-a5af-ae6e2a407c05', 'ผ้าทอจากเส้นด้ายโพลีเอสเตอร์;จากกระบวนการฟอกย้อมและตกแต่งสำเร็จ', 'สิ่งทอ', 'kg', 12.3011, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('092dbd9c-3bee-54b3-ba15-3886dbe6d17c', 'ผ้าทอจากเส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ CVC', 'สิ่งทอ', 'kg', 7.1974, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('50b7b0ee-915e-5542-abe6-182d09353dc7', 'ผ้าทอจากเส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ CVC; จากกระบวนการฟอกย้อมและตกแต่งสำเร็จ', 'สิ่งทอ', 'kg', 11.7725, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a47a6f7e-7677-5562-bf0d-e81b4c3a368f', 'ผ้าทอจากเส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ TC', 'สิ่งทอ', 'kg', 9.0498, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('80b0f6d0-b029-5583-8c09-b82c8de01a73', 'ผ้าทอจากเส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ TC; จากกระบวนการฟอกย้อมและตกแต่งสำเร็จ', 'สิ่งทอ', 'kg', 15.4007, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('66c5ebd2-b180-50c9-9a34-21c789a982b9', 'ผ้าถักจากเส้นด้ายฝ้าย', 'สิ่งทอ', 'kg', 8.8571, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('9fda6f61-d283-58ae-ae9e-60e7f26af634', 'ผ้าถักจากเส้นด้ายฝ้าย; จากกระบวนการฟอกย้อมและตกแต่งสำเร็จ', 'สิ่งทอ', 'kg', 12.926, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('abe8b590-5178-5649-bb6b-4adeb76a1a8a', 'ผ้าถักจากเส้นด้ายโพลีเอสเตอร์', 'สิ่งทอ', 'kg', 4.5496, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('85b4d335-04b8-5fad-acd0-84eb3477151d', 'ผ้าถักจากเส้นด้ายโพลีเอสเตอร์; จากกระบวนการฟอกย้อมและตกแต่งสำเร็จ', 'สิ่งทอ', 'kg', 7.1259, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('34c13ed7-d488-53de-a292-717b452b217e', 'ผ้าถักจากเส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ CVC', 'สิ่งทอ', 'kg', 5.3651, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('cca46835-fb25-53c8-88ca-31c579ab6be0', 'ผ้าถักจากเส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ CVC; จากกระบวนการฟอกย้อมและตกแต่งสำเร็จ', 'สิ่งทอ', 'kg', 9.2033, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4dc7069b-eb27-5db0-b436-c0956797b5af', 'ผ้าถักจากเส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ TC', 'สิ่งทอ', 'kg', 5.978, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('fcf4c208-4391-55be-b7fa-64c78f21b5ea', 'ผ้าถักจากเส้นด้ายฝ้ายผสมโพลีเอสเตอร์ แบบ TC; จากกระบวนการฟอกย้อมและตกแต่งสำเร็จ', 'สิ่งทอ', 'kg', 9.4445, NULL, NULL, NULL, NULL, 'Thai National LCI Database/MTEC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('92e1ae5f-0381-5aa0-bc3c-0c9f91ae0f90', 'ผ้าถัก CVC (70/30)', 'สิ่งทอ', 'kg', 11.69, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('60803120-c533-596e-9238-193df22e84d6', 'ผ้าถัก CVC (70/30) (เฉดสีกลาง)', 'สิ่งทอ', 'kg', 17.2, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f433e4c1-1741-56af-baa8-1bb4d13ce067', 'ผ้าถัก CVC (70/30) (เฉดสีเข้ม)', 'สิ่งทอ', 'kg', 20.46, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6ab4d37d-822c-5459-a803-7eecd3c1740f', 'ผ้าถัก CVC (70/30) (เฉดสีเข้มมาก)', 'สิ่งทอ', 'kg', 23.81, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f0e0e15d-546b-58f9-aaae-cbfe8f159521', 'ผ้าถัก CVC (70/30) (เฉดสีอ่อน)', 'สิ่งทอ', 'kg', 15.36, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('482c1460-4e4e-5ea1-9983-2587cad762dc', 'ผ้าถัก TC (65/35)', 'สิ่งทอ', 'kg', 11.56, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1f4dd378-1ba0-5788-9090-728b14690ee2', 'ผ้าถัก TC (65/35) (เฉดสีกลาง)', 'สิ่งทอ', 'kg', 17.25, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('974e7cf9-d836-5552-94d8-48262cf7b78a', 'ผ้าถัก TC (65/35) (เฉดสีเข้ม)', 'สิ่งทอ', 'kg', 20.89, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ebe66847-56ec-519b-8eea-2387174627b8', 'ผ้าถัก TC (65/35) (เฉดสีเข้มมาก)', 'สิ่งทอ', 'kg', 24.61, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a2e19b43-1349-58d9-9418-76fe41f69767', 'ผ้าถัก TC (65/35) (เฉดสีอ่อน)', 'สิ่งทอ', 'kg', 15.21, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('47543746-06ec-53e8-966d-58d2c6d4be35', 'ผ้าถักฝ้าย', 'สิ่งทอ', 'kg', 12.62, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e6510c84-e5b2-52c9-a250-2d10591a39cd', 'ผ้าถักฝ้าย (เฉดสีกลาง)', 'สิ่งทอ', 'kg', 18.05, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ce8ea26c-df43-5b9b-8dc0-e8964375e870', 'ผ้าถักฝ้าย (เฉดสีเข้ม)', 'สิ่งทอ', 'kg', 21, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('aedfda86-4954-562b-b546-dff3620dcdba', 'ผ้าถักฝ้าย (เฉดสีเข้มมาก)', 'สิ่งทอ', 'kg', 24.02, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('9df13fbc-b147-504a-ad11-e2d43b1e3c0c', 'ผ้าถักฝ้าย (เฉดสีอ่อน)', 'สิ่งทอ', 'kg', 16.39, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4a9a8871-7287-5daa-a2cb-342a5175ce46', 'ผ้าถักโพลิเอสเทอร์', 'สิ่งทอ', 'kg', 5.44, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('80527fe9-690c-5e4e-88f8-23a6171feba6', 'ผ้าถักโพลิเอสเทอร์ (เฉดสีกลาง)', 'สิ่งทอ', 'kg', 11.21, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('50602b0e-d339-5226-93c2-6cb041426161', 'ผ้าถักโพลิเอสเทอร์ (เฉดสีเข้ม)', 'สิ่งทอ', 'kg', 15.22, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e9130a4d-d332-5150-a4f6-d3daf1cfd72f', 'ผ้าถักโพลิเอสเทอร์ (เฉดสีเข้มมาก)', 'สิ่งทอ', 'kg', 19.33, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b62c9e7f-5c91-52d5-9692-6d4dd47d9843', 'ผ้าถักโพลิเอสเทอร์ (เฉดสีอ่อน)', 'สิ่งทอ', 'kg', 8.96, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f28b8106-f094-5b3c-85f0-ce4592e07ce5', 'ผ้าทอ CVC (70/30)', 'สิ่งทอ', 'kg', 17.17, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('75cba8a6-a9ec-593e-8483-57dd83a83fed', 'ผ้าทอ CVC (70/30) (เฉดสีกลาง)', 'สิ่งทอ', 'kg', 23.09, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5f13d581-7e8f-5aa7-abac-2705dfc39c85', 'ผ้าทอ CVC (70/30) (เฉดสีเข้ม)', 'สิ่งทอ', 'kg', 26.35, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('70bfc554-4dc1-54ff-ba82-9a882b5eb582', 'ผ้าทอ CVC (70/30) (เฉดสีเข้มมาก)', 'สิ่งทอ', 'kg', 29.7, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('3b61cef8-ba65-5f79-90be-8eca4d3ea70f', 'ผ้าทอ CVC (70/30) (เฉดสีอ่อน)', 'สิ่งทอ', 'kg', 21.25, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('19b3db7c-a930-59b9-8ce9-30e78dc1a2a4', 'ผ้าทอ TC (65/35)', 'สิ่งทอ', 'kg', 15.91, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('699a5348-8b7a-5566-9ea3-800e524f63a3', 'ผ้าทอ TC (65/35) (เฉดสีกลาง)', 'สิ่งทอ', 'kg', 21.82, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d9fd0e0a-e40a-58d5-92b1-bfc9ba674993', 'ผ้าทอ TC (65/35) (เฉดสีเข้ม)', 'สิ่งทอ', 'kg', 25.45, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('443fd82a-566d-5178-90d5-b4ffddb2ef9e', 'ผ้าทอ TC (65/35) (เฉดสีเข้มมาก)', 'สิ่งทอ', 'kg', 29.18, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('8823ed27-0d15-5cfe-aac1-d5e968d0f584', 'ผ้าทอ TC (65/35) (เฉดสีอ่อน)', 'สิ่งทอ', 'kg', 19.77, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('15297367-4d3f-5634-b3d0-00ef6325070b', 'ผ้าทอฝ้าย', 'สิ่งทอ', 'kg', 18.24, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f0dacf8f-f82e-518f-bbeb-fc9a46e21447', 'ผ้าทอฝ้าย (เฉดสีอ่อน)', 'สิ่งทอ', 'kg', 22.58, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4e94484a-38a1-580e-b5af-179ff278fe65', 'ผ้าทอฝ้าย (เฉดสีกลาง)', 'สิ่งทอ', 'kg', 24.23, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('76435386-35b0-560c-8041-2a3e1f42d6e6', 'ผ้าทอฝ้าย (เฉดสีเข้ม)', 'สิ่งทอ', 'kg', 27.18, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4f318183-f89e-5550-a8c9-0aa615664f15', 'ผ้าทอฝ้าย (เฉดสีเข้มมาก)', 'สิ่งทอ', 'kg', 30.2, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7fd65dfd-f18b-5d43-b848-fbdd8123562e', 'ผ้าทอโพลิเอสเทอร์', 'สิ่งทอ', 'kg', 9.41, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4c00154a-6b14-5547-a4fa-0dcffd444623', 'ผ้าทอโพลิเอสเทอร์ (เฉดสีกลาง)', 'สิ่งทอ', 'kg', 15.26, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6838d975-aa4e-5290-b662-fa1cd2a28164', 'ผ้าทอโพลิเอสเทอร์ (เฉดสีเข้ม)', 'สิ่งทอ', 'kg', 19.27, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5093ad01-7a11-5d75-b307-28ea3af7820d', 'ผ้าทอโพลิเอสเทอร์ (เฉดสีเข้มมาก)', 'สิ่งทอ', 'kg', 23.37, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a3833518-b42c-5f86-89f7-56ad68d76a8d', 'ผ้าทอโพลิเอสเทอร์ (เฉดสีอ่อน)', 'สิ่งทอ', 'kg', 13.01, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('acba72ed-c451-580a-9d15-f6f1776f4fc3', 'เส้นด้าย CVC (70/30)', 'สิ่งทอ', 'kg', 11.01, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e54a9e2f-c498-56f5-a88c-a2b040734a0e', 'เส้นด้าย TC (65/35)', 'สิ่งทอ', 'kg', 9.98, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('8665dc64-16da-5a69-9911-15ab22239601', 'เส้นด้ายปอกระเจา', 'สิ่งทอ', 'Kg', 0.5161, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('0f818702-f862-5255-ad32-111bf4a0a9a4', 'เส้นด้ายฝ้าย', 'สิ่งทอ', 'kg', 11.9, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('0b5618d7-c009-5fc8-9699-ca7f8b09f648', 'เส้นด้ายโพลิเอสเทอร์', 'สิ่งทอ', 'kg', 4.13, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('11c19613-1e7e-5c2c-9681-2902dc2898f0', 'เส้นใยขนแกะ', 'สิ่งทอ', 'kg', 41.3, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e1ca150f-2a96-5b91-b000-e5118a3aaf45', 'เส้นใยไนล่อน 6 ใยยาว (SDY)', 'สิ่งทอ', 'kg', 5.65, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('9ebcf848-79d8-5d12-9f1e-73fc443ee232', 'เส้นใยฝ้าย (เฉลี่ย) การนำเข้าการผลิตแบบดั้งเติม', 'สิ่งทอ', 'kg', 5.79, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('02766105-2edb-5ca5-a760-87b97597bb9f', 'เส้นใยฝ้าย US การผลิตแบบดั้งเดิม', 'สิ่งทอ', 'kg', 6.05, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('39b29b5d-dfbf-5c8b-b249-49bf8e86c7d8', 'เส้นใยฝ้าย US การผลิตแบบออร์แกนนิกส์', 'สิ่งทอ', 'kg', 2.45, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('302db65e-a632-5ac2-af75-1ba43b10386b', 'เส้นใยโพลีเอสเตอร์ใยยาว (SDY)', 'สิ่งทอ', 'kg', 5.47, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b7b58bfa-8cc2-5ecd-bf0e-5b0e539ac73a', 'เส้นใยโพลีเอสเตอร์ใยสั้น (PSF)', 'สิ่งทอ', 'kg', 3.49, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4d0b6487-c9da-5804-8eb2-807df755d7cc', 'เส้นใยเรยอนใยสั้น', 'สิ่งทอ', 'kg', 7.28, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5cb39e01-ceac-5194-bf34-ddff69eaee42', 'เส้นใยอะคริลิคใยสั้น (ASF)', 'สิ่งทอ', 'kg', 10.1, NULL, NULL, NULL, NULL, 'โครงการพัฒนาข้อกำหนดรายผลิตภัณฑ์สิ่งทอ, 2554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e89645a3-eb5b-5fad-bed1-6bc22d8e8161', 'ยางก้อนถ้วย (DRC 55%)', 'กลุ่มอุตสาหกรรมยางธรรมชาติ (Natural rubber)', 'kg', 0.0863, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a5da7106-5106-5179-945d-3063d7cb864f', 'น้ำยางข้น (DRC 60%)', 'กลุ่มอุตสาหกรรมยางธรรมชาติ (Natural rubber)', 'kg', 0.2059, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('0b3c847b-8fd2-5fb2-8578-19483e7b41e7', 'ยางสกิม', 'กลุ่มอุตสาหกรรมยางธรรมชาติ (Natural rubber)', 'kg', 0.3903, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e8c55889-cced-5577-ba07-94706be2eb4d', 'ยางแท่ง STR 10/20', 'กลุ่มอุตสาหกรรมยางธรรมชาติ (Natural rubber)', 'kg', 0.2966, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2b73a371-5a08-51f6-b3b8-597c28110517', 'ยางแท่ง STR XL/5L/5CV', 'กลุ่มอุตสาหกรรมยางธรรมชาติ (Natural rubber)', 'kg', 0.2071, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2d0dcee2-32e1-5321-a175-8f6b25284cd0', 'กล้ายางชำถุง', 'กลุ่มอุตสาหกรรมยางธรรมชาติ (Natural rubber)', 'p', 0.347, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6c4c158d-aa0b-51de-a2d4-381f44ae8329', 'ไม้ยางพาราสด', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0363, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('186552b6-fe6a-5fc6-932e-0595227576b3', 'ไม้ยางพาราท่อนสด', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0471, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('41d18418-01e5-54ab-bdef-59d3ee08f6bc', 'กิ่งไม้ยางพารา', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0471, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7246f294-1b75-593e-b732-36e73d357180', 'ไม้ยางพาราแปรรูปเกรด AB', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0829, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('25057cb6-1982-5629-88d5-a805927a6239', 'ไม้ยางพาราแปรรูปเกรด C', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0829, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('371d5025-7285-5005-9cc7-676b8a79830f', 'ปีกไม้ยางพารา', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0829, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d73c5a42-232d-5ff6-a3e0-a68f5b013c7f', 'ไม้ยางพาราประสานเกรด AB', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.2309, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('9fea4afe-764d-5436-a086-e8f9f566d911', 'ไม้ยางพาราประสานเกรด C', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.2309, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a0d4efd5-96ba-55cc-928f-c3203651211c', 'ไม้ยางพาราอัดประสานเกรด AB', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.3841, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('60962c52-c192-5e51-90f3-5669694069bc', 'ไม้ยางพาราอัดประสานเกรด C', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.3841, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('03d72fb2-9b37-57c1-9e84-e71f97f5ec45', 'พาเลทไม้ยางพารา', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.093, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d8377e63-e198-5db9-adb9-1892bf41c489', 'ขี้เลื่อยจากไม้ยางพาราแปรรูป', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0829, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('0ee14670-2683-57b9-9e61-b05d546301fb', 'ขี้เลื่อยจากไม้ยางพาราประสาน', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.2309, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('44236093-b0ea-5d4c-bc71-bd53efdfd97e', 'ขี้เลื่อยจากไม้ยางพาราอัดประสาน', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.3841, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('70e13ac5-10dd-58e1-8e25-fc2ba0b29cca', 'ขี้เลื่อยจากพาเลทไม้ยางพารา', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.093, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4f52898b-0feb-59e4-983b-7eff736d8a48', 'น้ำยางสด', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0363, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('526d87f6-aef4-5194-882f-8378acd678f4', 'เศษยาง', 'กลุ่มอุตสาหกรรมโรงเลื่อยและโรงอบไม้ยางพารา (Wood Processing : Para-wood)', 'kg', 0.0364, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('fa84e777-b320-5e9d-a229-d9b123d6543b', 'ผลปาล์มทะลายสด ค่าเฉลี่ยประเทศไทย', 'ปาล์มน้ำมัน', 'kg', 0.0717, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f737fae0-96f6-5650-b44e-199b34db8d9b', 'ผลปาล์มทะลายสดภาคตะวันออก (สวนขนาดเล็ก)', 'ปาล์มน้ำมัน', 'kg', 0.0713, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('8b71f38b-0c07-5457-bb6c-e2e93b3f0d53', 'ผลปาล์มทะลายสดภาคตะวันออก (สวนขนาดใหญ่)', 'ปาล์มน้ำมัน', 'kg', 0.0848, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('8e6a94a7-817e-5f25-9f81-ce3a4ff0483c', 'ผลปาล์มทะลายสดภาคใต้ตอนบน (สวนขนาดเล็ก)', 'ปาล์มน้ำมัน', 'kg', 0.061, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('34251af7-b10f-5a50-ab25-c605770010a3', 'ผลปาล์มทะลายสดภาคใต้ตอนบน (สวนขนาดใหญ่)', 'ปาล์มน้ำมัน', 'kg', 0.0626, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('592925c9-34cf-52f2-912f-2e72b08fbf80', 'ผลปาล์มทะลายสดภาคใต้ตอนล่างฝั่งตะวันออก (สวนขนาดเล็ก)', 'ปาล์มน้ำมัน', 'kg', 0.0808, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('52b2213f-2afd-553c-9d59-d99d1e3a7668', 'ผลปาล์มทะลายสดภาคใต้ตอนล่างฝั่งตะวันออก (สวนขนาดใหญ่)', 'ปาล์มน้ำมัน', 'kg', 0.0738, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('bfaa1d62-f88c-53f9-8d90-c6c55e0312eb', 'ผลปาล์มทะลายสดภาคใต้ตอนล่างฝั่งตะวันตก (สวนขนาดเล็ก)', 'ปาล์มน้ำมัน', 'kg', 0.0729, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('8171d585-07d8-5670-af81-d7845299b051', 'ผลปาล์มทะลายสดภาคใต้ตอนล่างฝั่งตะวันตก (สวนขนาดใหญ่)', 'ปาล์มน้ำมัน', 'kg', 0.0841, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('197fe7b7-9924-504f-9616-256a9a195fc8', 'น้ำมันปาล์มดิบค่าเฉลี่ยประเทศไทย', 'ปาล์มน้ำมัน', 'kg', 0.9067, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4674d9c8-ceb0-5418-a3a0-b3b2a55657c5', 'น้ำมันปาล์มดิบ; จากโรงงานที่มีระบบผลิตก๊าซชีวภาพ', 'ปาล์มน้ำมัน', 'kg', 0.7564, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2e4490d8-1733-5542-bbae-838635d2b551', 'น้ำมันปาล์มดิบ; จากโรงงานที่ไม่มีระบบผลิตก๊าซชีวภาพ', 'ปาล์มน้ำมัน', 'kg', 1.2482, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5bd1b719-46dc-5fd1-a989-11cdf3a102b9', 'กะลาปาล์มค่าเฉลี่ยประเทศไทย', 'ปาล์มน้ำมัน', 'kg', 0.3965, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('9f1eab34-29b4-5a0c-9342-7ce42e38d0f8', 'กะลาปาล์ม; จากโรงงานที่มีระบบผลิตก๊าซชีวภาพ', 'ปาล์มน้ำมัน', 'kg', 0.321, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4482c432-9dec-5284-8c23-4d41f3bf4a61', 'กะลาปาล์ม; จากโรงงานที่ไม่มีระบบผลิต', 'ปาล์มน้ำมัน', 'kg', 0.5294, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('af6669e5-0186-5618-9fce-643ca9f968d8', 'เมล็ดในปาล์มค่าเฉลี่ยประเทศไทย', 'ปาล์มน้ำมัน', 'kg', 0.6167, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('8bf159a5-e5bb-51c0-8d7f-bcc8da96169f', 'เมล็ดในปาล์ม; จากโรงงานที่มีระบบผลิตก๊าซชีวภาพ', 'ปาล์มน้ำมัน', 'kg', 0.5006, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('8c3cda8c-a38f-5285-899d-171d4d748479', 'เมล็ดในปาล์ม; จากโรงงานที่ไม่มีระบบผลิตก๊าซชีวภาพ', 'ปาล์มน้ำมัน', 'kg', 0.8259, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('98295f91-63f2-5e74-b421-936628cc5711', 'น้ำมันปาล์มบริสุทธิ์ (RBDPO) ค่าเฉลี่ยประเทศไทย', 'ปาล์มน้ำมัน', 'kg', 1.399, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d79711a7-2f1d-5dfa-944e-a64aacda2fd4', 'กรดไขมันปาล์ม (PFAD) ค่าเฉลี่ยประเทศไทย', 'ปาล์มน้ำมัน', 'kg', 1.4511, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('41418b0f-fed1-5511-97d3-26010f5a33e0', 'น้ำมันปาล์มโอเลอิน (Olein) ค่าเฉลี่ยประเทศไทย', 'ปาล์มน้ำมัน', 'kg', 1.4124, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('8a15aedb-77b1-5a68-8e91-7cdf52c57c67', 'ไขมันปาล์ม (Strearin) ค่าเฉลี่ยประเทศไทย', 'ปาล์มน้ำมัน', 'kg', 1.5328, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('fa339874-8aab-5184-b753-8bec7c3959a6', 'ไบโอดีเซลค่าเฉลี่ยประเทศไทย', 'ปาล์มน้ำมัน', 'kg', 1.3571, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d0a44b56-2e53-5104-8a4e-2ac157e09c0d', 'กลีเซอรีนค่าเฉลี่ยประเทศไทย', 'ปาล์มน้ำมัน', 'kg', 0.8642, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5aaa29d4-4ec8-5c86-a3ab-2bd4bf22386f', 'อาหารสุกรขุน', 'กลุ่มอาหารสัตว์', 'kg', 0.8659, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('bd46ffd6-4584-5c0b-8c50-4f8e95b3f6a4', 'อาหารไก่เนื้อที่มีโปรตีนจากเนื้อสัตว์เป็นองค์ประกอบ', 'กลุ่มอาหารสัตว์', 'kg', 0.8132, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2de51a74-f1a7-5518-930d-ec3fd0ce7508', 'อาหารไก่เนื้อที่ไม่มีโปรตีนจากเนื้อสัตว์เป็นองค์ประกอบ', 'กลุ่มอาหารสัตว์', 'kg', 0.9183, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('91ba5160-61fb-5dd1-be2b-cccbfc929af8', 'อาหารไก่ไข่', 'กลุ่มอาหารสัตว์', 'kg', 0.7083, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('645c5832-31cb-51e8-954f-01423c483e30', 'ถั่วเหลือง', 'กลุ่มอาหารสัตว์', 'kg', 0.728, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('797b5d5b-4a54-5550-8d1e-ffac7c7b8a7b', 'ถั่วเหลืองอินทรีย์', 'กลุ่มอาหารสัตว์', 'kg', 0.0969, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4f1cb2b8-fa96-5759-b6b6-67507f8316de', 'มันสำปะหลัง', 'กลุ่มอาหารสัตว์', 'kg', 0.0489, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f952847f-a45f-5a13-90a4-b3242cf3b2b6', 'มันสำปะหลัง (ปลูกแบบปลอดภัย; อินทรีย์)', 'กลุ่มอาหารสัตว์', 'kg', 0.053, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('cc34a06f-c63f-515b-98ed-02ded88efba5', 'มันสำปะหลังหมักอินทรีย์', 'กลุ่มอาหารสัตว์', 'kg', 0.0833, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('3a451adf-3d7e-50da-a91e-6cb74c3e810a', 'กากถั่วเหลือง', 'กลุ่มอาหารสัตว์', 'kg', 1.024, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e0efbebb-ca45-54c4-93aa-bf273a9ed414', 'เศษปลาจากซูริมิ', 'กลุ่มอาหารสัตว์', 'kg', 0.2071, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('61874801-5be7-5234-9a3a-b8d8e7884865', 'เศษปลาจากทูน่า', 'กลุ่มอาหารสัตว์', 'kg', 1.2702, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('43b92b83-2440-5025-9e2e-f47cb9fb6559', 'ปลาเป็ด', 'กลุ่มอาหารสัตว์', 'kg', 0.2071, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('079662cf-83be-5d59-9a8f-f9d5c29159c4', 'ปลาป่นที่ผลิตจากเศษปลาซูริมิ', 'กลุ่มอาหารสัตว์', 'kg', 1.7598, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('10543a75-610e-5af2-8aec-14214a07dab3', 'ปลาป่นที่ผลิตจากเศษปลาทูน่า', 'กลุ่มอาหารสัตว์', 'kg', 3.7187, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7c0f788a-4dc8-52a1-9c75-9f4164b4a92a', 'ปลาป่นที่ผลิตจากปลาเป็ด', 'กลุ่มอาหารสัตว์', 'kg', 5.1364, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4fb7774f-aec1-5ef6-a855-f6f32daa87b1', 'แร่ธาตุพรีมิกซ์', 'กลุ่มอาหารสัตว์', 'kg', 0.1748, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('332e4311-4620-5be4-8a15-232832273012', 'แร่ธาตุและวิตามินพรีมิกซ์', 'กลุ่มอาหารสัตว์', 'kg', 1.7246, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ecedced8-52f7-52e9-8d22-1d8fa02b8172', 'หญ้ารูซี่สดอินทรีย์', 'กลุ่มอาหารสัตว์', 'kg', 0.0045, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d9c2876e-2316-5884-b55b-711535c4aca0', 'หญ้ากินนีสดอินทรีย์', 'กลุ่มอาหารสัตว์', 'kg', 0.0018, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4f811175-a52a-532f-ac4d-7fcdd971fd93', 'หญ้าเนเปียร์สดอินทรีย์', 'กลุ่มอาหารสัตว์', 'kg', 0.0014, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('10aba42d-5136-5486-ae97-efbdb88530dd', 'หญ้าแพงโกล่าสดอินทรีย์', 'กลุ่มอาหารสัตว์', 'kg', 0.0034, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('94671e6a-66d6-5687-ba0e-4d292a1a6903', 'กระถินสดอินทรีย์', 'กลุ่มอาหารสัตว์', 'kg', 0.0014, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ca45202f-d136-5a66-aeb0-38de3f1c590a', 'ถั่วฮามาต้าสดอินทรีย์', 'กลุ่มอาหารสัตว์', 'kg', 0.0043, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5a79f5cb-6244-5d0a-8407-9dbf61732bd8', 'หญ้ากินนีแห้งอินทรีย์ (ความชื้น 10%)', 'กลุ่มอาหารสัตว์', 'kg', 0.018, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('18f3a2cd-5df7-53a8-afdc-6f459287ce98', 'หญ้ากินนีอินทรีย์ หมักด้วยไซโล', 'กลุ่มอาหารสัตว์', 'kg', 0.0031, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c0b744a9-4700-537d-9229-dc60f76aabfa', 'หญ้าเนเปียร์อินทรีย์ หมักด้วยถุงพลาสติก', 'กลุ่มอาหารสัตว์', 'kg', 0.004, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('9f1558fc-6e94-5c75-a5ab-cbdc3078668c', 'อาหารข้นโคนมอินทรีย์ (16-18% โปรตีน)', 'กลุ่มอาหารสัตว์', 'kg', 0.6715, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('99cc99ad-7187-5c5e-9a56-d4d1cc5073fc', 'อาหารข้นโคนมอินทรีย์ (16-18% โปรตีน) สำหรับการเลี้ยงเฉพาะช่วงให้น้ำนม (Lactation)', 'กลุ่มอาหารสัตว์', 'kg', 0.4148, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d4ad997a-88fa-51e5-82ce-9f4859afaad1', 'อาหารข้นโคนมอินทรีย์ (16-18% โปรตีน) สำหรับการเลี้ยงตลอดวัฎจักรชีวิต (Life cycle)', 'กลุ่มอาหารสัตว์', 'kg', 0.3056, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('13fdbc9b-f000-59a1-b1ac-17c35d62894c', 'การปลูกข้าวโพดเลี้ยงสัตว์', 'กลุ่มอาหารสัตว์', 'kg', 0.2441, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7997b651-833f-53e4-b174-50e320d00076', 'เมล็ดข้าวโพดเลี้ยงสัตว์', 'กลุ่มอาหารสัตว์', 'kg', 0.2827, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f73d3d5e-7cf5-5074-bd36-6cfc66dcebbc', 'เมล็ดข้าวโพดเลี้ยงสัตว์', 'กลุ่มอาหารสัตว์', 'kg', 0.3235, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ca693c6c-8310-5f48-9e73-8db0db1b9a4b', 'ถั่วเขียว', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.8808, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a500848b-45f8-5ef8-842a-2ebe4f61a6d7', 'ถั่วดำ', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.4078, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c1a474de-ae65-5947-9d7f-4884c230520e', 'ถั่วลิสง', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.7686, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('aa739687-478c-5f48-92ec-676413ea6e16', 'ถั่วเหลืองฝักสด', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.5724, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4723a4f5-0be7-5807-80c3-79902082ef59', 'ข้าวโพดหวาน', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.4156, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d7aba751-5a25-5360-a162-ceaac18590a0', 'อ้อยคั้นน้ำ', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.0622, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('470b92aa-5d82-5e29-8afd-90130b630d33', 'อ้อยโรงงาน', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.025, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('60a4a6c7-44c4-52f5-91c1-203e8c93e583', 'ข้าวฟ่างเลี้ยงสัตว์', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.6614, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7ee8a8e6-dbe4-5235-b57c-6bb4be4206c0', 'ข้าวฟ่างหวาน', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.0551, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e155e842-097a-5824-baaa-229dbda7c848', 'สับปะรดโรงงาน', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.3277, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('13565bd7-6c80-5ad8-8c6f-6851ac5c8dbc', 'สับปะรดผลสด', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.125, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('725f2f83-b0cc-5187-8a8f-78d3aa555a2d', 'ขิง', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.1249, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d4d3514a-4025-5c6e-bf7c-4e2f383e8fc5', 'กะหล่ำปลี', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.3538, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('17f9435a-f8b9-55c5-9130-eba135e4d16f', 'ข้าวโพดฝักอ่อน', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.4324, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('762e1980-dcb6-5695-a8fa-c2a3a1503020', 'หอมหัวใหญ่', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.3441, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('186509c6-0ee0-5cf1-8795-4a622d271a35', 'หอมแดง', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.4207, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a3a0c663-1410-5cb7-b571-e56d60df5045', 'กระเทียม', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.4754, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('36a562ca-0c4e-5403-bc92-14c5971b36a4', 'มันฝรั่ง', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.1447, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('04fb48d6-87a8-514c-a95d-8d901d5b76bd', 'ถั่วฝักยาว', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.3497, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1ee32a12-7d88-5bad-b229-8b29af3811b2', 'แตงกวา', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.3438, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2fd290e5-e112-5491-94ca-72b6e285f710', 'มะนาว', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.2023, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f5e63890-3348-5028-b5d7-ff9c8c791ec9', 'ใบมะกรูด', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.4912, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('508caa74-bc9f-525e-88f0-159bef3568d2', 'ผลมะกรูด', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.2812, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('055f1607-689b-53ee-bb89-f1ae307183b6', 'กะเพรา', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.497, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ea74fd74-30ff-5240-bd81-0b8d6d860733', 'แครอท', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.2637, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('438a258c-760d-58b7-a66c-ad2fe27e76cb', 'มะเขือเทศ', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.4785, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('0c5e2a83-6873-5634-844d-1c2e5e88e26d', 'ผักกาดหอม', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.9417, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('aa05b10f-a70f-573d-8a00-30f874e506bf', 'พริกขี้หนู', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.4299, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a970efa4-4e80-55d6-9f2b-08cd9a901806', 'พริกหวาน', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.5714, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a57b99a5-40a9-51fe-8876-a3e130a508c6', 'พริกชี้ฟ้า', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.461, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('cc50bf20-1ffc-502b-af8b-e529482693e2', 'หน่อไม้', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 1.0758, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('959ef268-9175-5d90-98aa-b3cb810e882a', 'ตะไคร้', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.1706, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('9ec5d272-a866-58d7-909c-5393e2154987', 'ข่า', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.2355, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('032974fb-be09-5bfe-9def-c02316bff7e3', 'กะหล่ำดอก', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.275, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('99aa8b29-19c4-5ba2-a552-821d537a82b7', 'เห็ดฟาง', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.3036, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ac50dacf-6b58-5892-8609-eb681b5e7ac9', 'งา', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.3438, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5c29262d-f39a-53a1-b332-2b008f227e0e', 'ผักคะน้า', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.2554, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('fb5d5767-a668-572e-8feb-82c49654b6c0', 'ผักกาดเขียวกวางตุ้ง', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.2062, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('34d2226c-d151-5104-b78f-5a555f1ab331', 'พริกไทย', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 1.3779, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4c52fb72-8131-5b83-aa26-77034cc32746', 'ถั่วแขก', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.3265, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1171eba5-f2c7-5655-ba03-6afc8c2bdd7f', 'ชาอูหลง (แห้ง)', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 12.574, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('49f22dfa-ac47-5480-b0b6-9fc0b477d89f', 'ชาอูหลง (สด)', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 1.6167, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c4836b9d-1723-5193-9a30-d453360d587a', 'กระเจี๊ยบเขียว', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.1699, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b79e1b16-62c9-54e0-b5ed-fe1dcc7e4d87', 'แตงโม', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.5224, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('02b3aa28-9fcc-5422-8d19-fe865b41e35a', 'กระเทียม (อินทรีย์)', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.1376, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('fcf90b83-0770-563e-8ed7-c1d36218b022', 'ถั่วแขก (อินทรีย์)', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.1661, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5782d2a2-8371-515c-9925-efe90ffc1c43', 'กะหล่ำปลี (อินทรีย์)', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.3306, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('71946825-d0be-55aa-b452-34b7c87c6768', 'ผักกาดเขียวกวางตุ้ง (อินทรีย์)', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.2745, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5d9f373b-653b-5a66-9a14-b476b0a2241a', 'ชาอูหลง (แห้ง) (อินทรีย์)', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 5.0743, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('49efc927-fd5e-5295-85f1-7fdaea5170b8', 'ชาอูหลง (สด) (อินทรีย์)', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 2.4384, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d6033b7d-680b-5e26-b4f9-4007d403446f', 'กาแฟอาราบิกา (อินทรีย์)', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.9297, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d62378f9-9133-531b-9987-479f4433f18a', 'หน่อไม้ฝรั่ง (อินทรีย์)', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 1.2759, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('98c91dc9-266d-5da3-9d09-1589f0e2feff', 'ผักกาดหัว (อินทรีย์)', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.2673, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('8e6a873a-9bb1-5861-965d-3900eb4aefdd', 'ทุเรียน', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.2387, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('df5a860a-3ade-5824-9228-e88785017952', 'ลำไยในฤดู', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.6027, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5cd57099-b83e-5a18-8b47-e6ece43449b2', 'ลำไยนอกฤดู', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.9772, NULL, NULL, NULL, NULL, 'Thai National LCI Database,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('50cca4e5-f096-5dec-bbe0-59f4b1af4fe0', 'ลิ้นจี่', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 1.2014, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('3864b8cf-bbfd-57b1-a46a-9806c48c8127', 'มังคุด', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.8683, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2f4f054f-2215-556b-9eac-5ff9dbce31cd', 'ส้มเขียวหวาน', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.7289, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e7bb2d6d-c8a6-531d-ba6a-4c92ecf89ec1', 'ส้มโอ', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.2547, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b53cd36f-19b5-5d5e-9a08-7786fc7fdcb1', 'เงาะ', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.203, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('00c86d49-61ce-5342-8147-de80b71916f8', 'มะม่วง', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.3005, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('edba9255-89a6-5ac2-ae33-3d8126d2f1df', 'ลองกอง', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.6528, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('44c3bf3a-9ea0-52b8-8d00-85ef5239d608', 'มะพร้าวน้ำหอม', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 1.3236, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('49f1bd2c-3752-55bf-b748-3f247576173f', 'มะพร้าว', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.8535, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('22efc9c7-b7aa-5d03-a5c2-3f4cf202bff9', 'สตรอเบอรี่', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.6323, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6b509de3-a197-5fb4-af53-6fe18e72f667', 'กล้วยไข่', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.5859, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a75fe5f9-361f-5092-9124-c96d1984a117', 'กล้วยหอม', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.6241, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('68367700-a600-5a43-86fb-ad301bf9af6f', 'ฝรั่ง', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.4892, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('576648ee-ad9d-5d82-a614-504bbf810116', 'องุ่น (ปลูกแบบไม่มีหลังคา)', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.3455, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('96f57898-6b07-54b8-915b-ba3af1b25312', 'องุ่น (ปลูกแบบมีหลังคา)', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.2488, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6469d015-ec46-57ea-b31f-52df93b1ca03', 'กาแฟอราบิกา', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 11.0291, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2f20ed91-aaea-50ec-9ba3-71efa435ad9a', 'กาแฟโรบัสตา', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 8.0986, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2fa401e0-4cf1-5293-8b71-35a95b3e7302', 'กาแฟสารอราบิก้า (ปลูกเชิงเดี่ยว)', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 7.3396, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6f5dbb6b-f7ce-5dfb-8bf4-61da4907bb91', 'กาแฟสารอราบิก้า (ปลูกร่วม)', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 7.7669, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('8af0c30c-bd74-5df4-a2eb-8e25653f50f3', 'กาแฟสารอราบิก้า (ค่าเฉลี่ย)', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 7.2511, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f3972c05-1332-5a18-9434-601f145db2ed', 'กาแฟอราบิก้าคั่วบด', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 10.2087, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('faeab035-8627-5dd4-9f49-16a88fb059fd', 'น้ำกะทิ', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.0109, NULL, NULL, NULL, NULL, 'ข้อมูลกรมวิชาการเกษตรและมหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('495ccb38-961a-51c5-9a81-583ac0302285', 'น้ำตาล', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 1.08, NULL, NULL, NULL, NULL, 'วิทยา กันยา. 2551. การประเมินวัฏจักรชีวิตของกระบวนการผลิตน้ำตาลทรายแดง. มหาวิทยาลัยธรรมศาสตร์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('62d60a50-6bee-539d-8b07-208851f9c271', 'ใบโหระพา', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.0443, NULL, NULL, NULL, NULL, 'ข้อมูลกรมวิชาการเกษตร สำนักส่งเสริมเศรษฐกิจและการเกษตรกรมวิชาการเกษตร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5ce5e1d0-b6ae-5bd9-9a91-84ff07f871ab', 'ผิวมะกรูด', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.0812, NULL, NULL, NULL, NULL, 'ข้อมูลกรมวิชาการเกษตร สำนักส่งเสริมเศรษฐกิจและการเกษตรกรมวิชาการเกษตร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c9959bc5-439c-56ef-bafd-66eceb66daa0', 'พริกชี้ฟ้าแดง', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.12, NULL, NULL, NULL, NULL, 'ข้อมูลกรมวิชาการเกษตร สำนักส่งเสริมเศรษฐกิจและการเกษตรกรมวิชาการเกษตร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e4312bb3-d9f8-5ff8-a27d-e0f31bd8f7b1', 'มะเขือพวง', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.246, NULL, NULL, NULL, NULL, 'ข้อมูลกรมวิชาการเกษตร สำนักส่งเสริมเศรษฐกิจและการเกษตรกรมวิชาการเกษตร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('59bada5e-1e76-5760-ab25-3a5f81e01d4e', 'รากผักชี', 'กลุ่มผลิตภัณฑ์ทางการเกษตรและอาหาร', 'kg', 0.0868, NULL, NULL, NULL, NULL, 'ข้อมูลกรมวิชาการเกษตร สำนักส่งเสริมเศรษฐกิจและการเกษตรกรมวิชาการเกษตร', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5caedd91-d817-532a-968e-bb7b3b1fd056', 'ไก่เนื้อมีชีวิตจากฟาร์ม', 'กลุ่มปศุสัตว์', 'kg', 3.2654, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('faae42b3-8afe-564c-8b1f-336cb9e2a8b5', 'ไก่เนื้อมีชีวิตจากฟาร์มที่เลี้ยงโดยใช้อาหารที่ไม่มีโปรตีนจากเนื้อสัตว์เป็นองค์ประกอบ', 'กลุ่มปศุสัตว์', 'kg', 2.6899, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b8aa4691-92c4-5706-9489-baa664cf542f', 'ไก่สดทั้งตัว', 'กลุ่มปศุสัตว์', 'kg', 4.7638, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('3dfdc669-270a-52af-8146-5b304b8c9e50', 'ไก่สดชำแหละ', 'กลุ่มปศุสัตว์', 'kg', 4.8449, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('9c14ec00-8dd5-5ecd-9c85-4ed8bbf87985', 'ไก่สดชำแหละอื่นๆ', 'กลุ่มปศุสัตว์', 'kg', 4.8449, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('da065c8b-b0ad-56c8-8c5d-8feffd5f1b4f', 'ไข่ไก่', 'กลุ่มปศุสัตว์', 'kg', 8.4761, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('338fb76c-6fa8-5bf3-8558-dfe29f1c5be9', 'เป็ดเนื้อ', 'กลุ่มปศุสัตว์', 'kg', 5.1068, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('dc488a66-3364-5555-9909-9a46d8ee4eb4', 'สุกรขุนมีชีวิต', 'กลุ่มปศุสัตว์', 'kg', 3.1826, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('26ae5456-589c-5f79-acfb-fb0d91ae9f13', 'สุกรขุนชำแหละ', 'กลุ่มปศุสัตว์', 'kg', 3.9027, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ffb59aa7-cf29-5ab6-8127-5c26aafafc6f', 'สุกรขุนชำแหละอื่นๆ', 'กลุ่มปศุสัตว์', 'kg', 3.9027, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('cf381147-f5e0-5edc-8820-4c24ead2c849', 'โคเนื้อมีชีวิต: ระยะเวลาขุนไม่เกิน 6 เดือน', 'กลุ่มปศุสัตว์', 'kg', 8.7324, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ff1dfe5d-6593-56b7-a770-4dc377344c32', 'โคเนื้อมีชีวิต: ระยะเวลาขุน 6-12 เดือน', 'กลุ่มปศุสัตว์', 'kg', 9.9181, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ec6256a3-00e2-5e9d-bdb1-84a062b5a945', 'โคเนื้อมีชีวิต: ระยะเวลาขุนมากกว่า 12 เดือน', 'กลุ่มปศุสัตว์', 'kg', 12.6521, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2dfaa378-97cf-5345-ad83-92eb44526860', 'เนื้อโคชำแหละ', 'กลุ่มปศุสัตว์', 'kg', 13.4269, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a7cecec9-619e-581f-848f-0b37891afe43', 'เนื้อโคชำแหละอื่นๆ', 'กลุ่มปศุสัตว์', 'kg', 13.4269, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1556d7f1-54d6-57d6-be3e-f9e31f32484a', 'หอยแครง (Ark shell)', 'กลุ่มปศุสัตว์', 'kg', 0.0064, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7bbab586-f062-57bb-b51e-645429374ac7', 'หอยแมลงภู่ (Asian green mussel)', 'กลุ่มปศุสัตว์', 'kg', 6.2945, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f05b1100-0867-5a28-baed-b531ac201691', 'หอยหวาน (Spotted Babylon)', 'กลุ่มปศุสัตว์', 'kg', 0.0249, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b3f18731-9c86-5717-a93e-f54d7eca8754', 'หอยหลอด', 'กลุ่มปศุสัตว์', 'kg', 0.6507, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c0e666f7-3b66-5236-a97f-73233da85726', 'ปลาดุก (เลี้ยงในบ่อดิน)', 'กลุ่มปศุสัตว์', 'kg', 3.9594, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1fdc78f2-d806-5cf1-8d49-d37dce4cda60', 'ปลาทับทิม (เลี้ยงในบ่อดิน)', 'กลุ่มปศุสัตว์', 'kg', 0.5194, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('8810f5d8-7bbb-561f-951f-fee4bf1366ee', 'ปลานิล (เลี้ยงในบ่อดิน)', 'กลุ่มปศุสัตว์', 'kg', 0.3678, NULL, NULL, NULL, NULL, 'Thai National LCI Database/MTEC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('aaabc0bc-c172-5171-ad9a-9f44d3cc3e59', 'น้ำนมดิบจากโค', 'กลุ่มผลิตภัณฑ์ที่ได้จากสัตว์และกลุ่มผลิตภัณฑ์ทางการเกษตร', 'kg', 1.6298, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('735202c7-79c7-5625-89d7-5cbdcb9efe53', 'น้ำนมดิบจากศูนย์รวบรวมน้ำนม', 'กลุ่มผลิตภัณฑ์ที่ได้จากสัตว์และกลุ่มผลิตภัณฑ์ทางการเกษตร', 'kg', 2.5233, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('68ef8289-7732-5d34-9cb3-86d2baf7a996', 'น้ำผึ้งกรอง', 'กลุ่มผลิตภัณฑ์ที่ได้จากสัตว์และกลุ่มผลิตภัณฑ์ทางการเกษตร', 'kg', 1.4546, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('cef1c399-c5ee-5021-b735-ae648bf75ab0', 'นมผึ้ง (Royal jelly)', 'กลุ่มผลิตภัณฑ์ที่ได้จากสัตว์และกลุ่มผลิตภัณฑ์ทางการเกษตร', 'kg', 1.4564, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c73baee7-f89d-580e-aef2-4fc9a202e480', 'ไขผึ้ง', 'กลุ่มผลิตภัณฑ์ที่ได้จากสัตว์และกลุ่มผลิตภัณฑ์ทางการเกษตร', 'kg', 1.4564, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('eb8e9a9c-3a97-5d3a-8f98-2709ead4f2ab', 'เกสรผึ้ง', 'กลุ่มผลิตภัณฑ์ที่ได้จากสัตว์และกลุ่มผลิตภัณฑ์ทางการเกษตร', 'kg', 1.451, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f7b83fa7-9320-58da-b3b0-d49fe2f14294', 'หนังโคสด', 'กลุ่มผลิตภัณฑ์ที่ได้จากสัตว์และกลุ่มผลิตภัณฑ์ทางการเกษตร', 'kg', 13.4269, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a4583309-a19d-55a3-ae3b-a96278b21cb8', 'น้ำมันงาสกัดเย็นแบบครัวเรือน', 'กลุ่มผลิตภัณฑ์ที่ได้จากสัตว์และกลุ่มผลิตภัณฑ์ทางการเกษตร', 'kg', 1.2495, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6ba66245-5bd8-5e83-b4da-5a971e724d8c', 'เกลือทะเล', 'กลุ่มผลิตภัณฑ์ที่ได้จากสัตว์และกลุ่มผลิตภัณฑ์ทางการเกษตร', 'kg', 0.0056, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a0146668-0339-5f42-b062-957504c68510', 'เกลือสินเธาว์แบบตากลานดิน', 'กลุ่มผลิตภัณฑ์ที่ได้จากสัตว์และกลุ่มผลิตภัณฑ์ทางการเกษตร', 'kg', 0.0051, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ca0e8d95-b3da-5849-9d09-406d063c4653', 'เยื่อกระดาษชนิดฟอกขาวจากชานอ้อย', 'กลุ่มเยื่อและกระดาษ', 'kg', 4.3925, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c6be90e9-d1ab-59e0-8988-3b7d984c29e0', 'เยื่อกระดาษชนิดฟอกขาวจากยูคาลิปตัส', 'กลุ่มเยื่อและกระดาษ', 'kg', 0.6677, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('50e7acf0-280b-5382-914e-f0766abc938e', 'เยื่อกึ่งเคมี', 'กลุ่มเยื่อและกระดาษ', 'kg', 0.2994, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a7e4c567-cbbd-56c9-ad4c-76540d7b2b18', 'กระดาษพิมพ์เขียนแบบไม่เคลือบผิว', 'กลุ่มเยื่อและกระดาษ', 'kg', 2.102, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('3b0fc76c-4a63-57bc-a3d2-bbb09ca7a116', 'กระดาษพิมพ์เขียนแบบเคลือบผิว', 'กลุ่มเยื่อและกระดาษ', 'kg', 2.1639, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('82d30cf7-d9ca-599a-859a-ab803155ac81', 'กระดาษหนังสือพิมพ์', 'กลุ่มเยื่อและกระดาษ', 'kg', 1.3589, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('bdc25a94-3bc5-51e0-a062-fbdc27b49c25', 'กระดาษคราฟท์ ชนิดทำผิวกล่อง', 'กลุ่มเยื่อและกระดาษ', 'kg', 1.6324, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('343cf389-d4a9-522c-9853-cf5e98572c4d', 'กระดาษคราฟท์ ชนิดทำลอน', 'กลุ่มเยื่อและกระดาษ', 'kg', 1.6184, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('9a27094d-64eb-5a5f-abbe-9978280c9003', 'กระดาษกล่องขาวเคลือบแป้ง/กระดาษกล่องแป้งหลังเทา', 'กลุ่มเยื่อและกระดาษ', 'kg', 1.8679, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('299a3ac8-8fed-5fda-8410-297a06d11ae0', 'Sulfur', 'กลุ่มเคมีภัณฑ์ (Chemicals)', 'kg', 0.4529, NULL, NULL, NULL, NULL, 'Thai National LCI Database/MTEC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('06f6d4f8-62ab-5b50-a1b0-d1825a4c9782', 'ขวดแก้วใส', 'กลุ่มแก้วและกระจก', 'kg', 0.8075, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('09c53b74-a5ba-5300-9870-1a0ec814c8b9', 'ขวดแก้วสีชา', 'กลุ่มแก้วและกระจก', 'kg', 0.8305, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7ab92b8a-9208-5596-914f-82492cc0e348', 'ฉนวนใยแก้ว', 'กลุ่มแก้วและกระจก', 'kg', 2.5612, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1f356251-1100-5c1e-8ebe-af40df8c6d65', 'กระจกแผ่นเรียบ', 'กลุ่มแก้วและกระจก', 'kg', 1.271, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7ab7d0ee-da6e-532a-813a-c81a4031826a', 'กระจกนิรภัยชั้นเดียว', 'กลุ่มแก้วและกระจก', 'kg', 3.1359, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4fd885a4-0e29-5587-ac8f-2f98766a189f', 'กระจกนิรภัยหลายชั้น', 'กลุ่มแก้วและกระจก', 'kg', 2.4449, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('891d0d83-a5ad-5e89-8542-3368ee34a034', 'กระจกฉนวนความร้อน', 'กลุ่มแก้วและกระจก', 'kg', 1.7043, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('3268b746-c5bf-5c80-be59-228143c76e6e', 'ต้นกล้าหม่อนชำถุง', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 0.0751, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('709dbca2-d1f9-5adc-a997-7f46c8225cf4', 'ใบหม่อนสด สำหรับเลี้ยงไหม ปลูกแบบทั่วไป (Non-GAP)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 0.2382, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2da68967-7488-574a-9966-d7ca537afa91', 'ใบหม่อนสด สำหรับผลิตชา ปลูกแบบทั่วไป (Non-GAP)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 0.2351, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('13f368bc-6ffd-5e8b-9a33-52101f14b092', 'ใบหม่อนสด สำหรับเลี้ยงไหม ปลูกแบบมีระบบปฏิบัติทางการเกษตรที่ดีสำหรับหม่อนใบ (GAP)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 0.5707, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('10107f87-c793-593b-8e79-6f4208a763f7', 'ใบหม่อนสด สำหรับผลิตชา ปลูกแบบมีระบบปฏิบัติทางการเกษตรที่ดีสำหรับหม่อนใบ (GAP)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 0.5707, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1f386539-450f-5469-80b9-15652d241952', 'หม่อนผลสด ปลูกแบบทั่วไป (Non-GAP)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 0.4184, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ba3df8c1-ff04-5468-b2ae-f5a9c01aa252', 'หม่อนผลสด ปลูกแบบมีระบบปฏิบัติทางการเกษตรที่ดีสำหรับหม่อนผลสด (GAP)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 0.1976, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('cf819900-d2c6-5562-b7e5-b0623750dd7e', 'ไข่ไหม', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'p (แผ่น)', 7.8905, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('dd8dc178-0bdb-5359-b982-4f8a8d5264b7', 'รังไหม', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 6.3547, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d9eb3cee-d4fd-5ca0-bf9c-30316fc15ceb', 'ไหม 1 หรือไหมน้อย', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 54.0409, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('86ba784a-3c33-5317-b295-daa5af225241', 'ไหม 3 หรือไหมลืบ', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 54.2651, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c4ec5ea0-ad02-50a8-a23f-aa492d7dc501', 'เส้นไหม ไม่ย้อมสี – ลอกกาวเคมี', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 73.4216, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('db7be1d6-333f-5a23-aa36-4dd81c77ce90', 'เส้นไหม ไม่ย้อมสี – ลอกกาวธรรมชาติ', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 65.3251, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('572f907c-e53a-5b5f-9d6c-fbc4817bb6e7', 'เส้นไหม ย้อมสีเคมี', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 72.8443, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c2baad10-35ca-5980-ab19-b9b175326575', 'เส้นไหม ย้อมสีธรรมชาติ', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 71.8694, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('0dea1a84-474b-5ba8-a71b-6a111b626a27', 'สีธรรมชาติ (สีคราม)', 'กลุ่มไหมหัตถกรรม (Sericulture)', 'kg', 0.1831, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000007', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f746f6a7-d632-5515-8701-9c3a283e0e64', 'Carbon dioxide (ก๊าซคาร์บอนไดออกไซด์)', NULL, 'kg', 1.0506, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000009', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('218ae6a1-9700-5b22-8474-a69d35085d64', 'Propane (โพรเพน)', NULL, 'kg', 1.1692, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000009', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5ac43d6f-f7cf-575e-96ad-f90c6229e3b5', 'Methane (ก๊าซธรรมชาติ / มีเทน)', NULL, 'kg', 1.1283, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000009', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7b3da4b4-9276-59bb-bf69-5f41926332ca', 'Ethane (อีเทน)', NULL, 'kg', 1.1608, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000009', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('53b92141-c25e-57b8-a84b-cd35a9b8af78', 'Natural Gas Liquid (ก๊าซธรรมชาติเหลว)', NULL, 'kg', 1.156, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000009', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b9da83c0-5cc0-5646-a2a7-eeaa536e4e43', 'ก๊าซหุงต้มที่ได้จากกระบวนการแยกก๊าซธรรมชาติ', NULL, 'kg', 1.1839, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000009', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('34bf34a5-fa80-5c18-8c1c-ba3016e4518c', 'ก๊าซธรรมชาติแบบผสม', NULL, 'kg', 0.7544, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000009', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7c1df0a5-cc12-5879-9658-035c71e6badd', 'ก๊าซธรรมชาติแบบผสม', NULL, 'm3', 0.5767, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000009', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2d2c0095-1451-506c-ab82-fa2a3ea4e278', 'Liquefied Petroleum Gas, LPG Mixed (ก๊าซหุงต้มแบบผสม)', NULL, 'kg', 0.8582, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000009', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('78231b88-49f6-5deb-84b5-545184d75c23', 'Naphtha (แนฟทา)', NULL, 'kg', 0.2972, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000009', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('0107360a-0647-535f-b6ca-9d98dd1af117', 'ก๊าซหุงต้มที่ได้จากกระบวนการกลั่นน้ำมันดิบ', NULL, 'kg', 0.4267, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000009', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('cbd92a37-b3a0-53a7-af0b-df3f6b77408e', 'Gasoline (แก๊สโซลีน)', NULL, 'kg', 0.4024, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000009', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6322d992-aeb7-5414-a0b4-ce628e7cc074', 'Kerosene / Jet oil (น้ำมันก๊าดหรือน้ำมันเครื่องบิน)', NULL, 'kg', 0.3284, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000009', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d2a9e3c8-94f4-569c-a0af-7ff07aa26ee2', 'Fuel oil (น้ำมันเตา)', NULL, 'kg', 0.3743, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000009', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('242ff638-d30e-5277-a637-e3f8a7a079a5', 'Diesel (น้ำมันดีเซล / น้ำมันโซล่าร์)', NULL, 'kg', 0.3522, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000009', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f18c5f3d-1f84-5658-af9a-353c8d1c309f', 'ซัลเฟอร์', NULL, 'kg', 0.239, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000009', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('fe9a16ba-f7fd-5b54-8537-4510072a0277', 'Electricity, grid mix (ไฟฟ้า)', NULL, 'kWh', 0.0812, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-000000000009', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('31200fcd-fddc-50d1-9a40-a9eee4ccf5cd', 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบปกติ 0% Loading', 'Road transport', 'km', 0.2415, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('685caedc-a3ac-5bf1-9205-ebf1c56ab02d', 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบปกติ 50% Loading', 'Road transport', 'tkm', 0.3805, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('0e4bb502-5152-5812-afbc-eb352ea45819', 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบปกติ 75% Loading', 'Road transport', 'tkm', 0.2706, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c858b7b2-2234-53b7-91c6-d8c82d7da6a1', 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบปกติ 100% Loading', 'Road transport', 'tkm', 0.2154, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('542dab40-3254-57e9-9dd2-2da3e6f28097', 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.3091, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6ecfe137-ddcc-5033-9864-1379c4c96442', 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.4695, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('fad9c7fd-1520-507e-a7dd-37f291dcd236', 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.3275, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4759da01-d9fd-595a-9656-44590b85f0ca', 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.2556, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('9067900a-f348-574d-8479-d92b0da2c0ef', 'รถตู้บรรทุก 4 ล้อ วิ่งแบบปกติ 0% Loading', 'Road transport', 'km', 0.3345, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('203578da-c8c6-5c92-9b64-420890ef5513', 'รถตู้บรรทุก 4 ล้อ วิ่งแบบปกติ 50% Loading', 'Road transport', 'tkm', 0.3401, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c5c2e8e0-a3fd-5ccb-8b68-ce9dcdd71ce9', 'รถตู้บรรทุก 4 ล้อ วิ่งแบบปกติ 75% Loading', 'Road transport', 'tkm', 0.2405, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('32086380-be01-590e-ab82-88c7c19f35c5', 'รถตู้บรรทุก 4 ล้อ วิ่งแบบปกติ 100% Loading', 'Road transport', 'tkm', 0.1835, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f750317d-8024-50b6-bf0b-194d885cd6c9', 'รถตู้บรรทุก 4 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.4106, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c2a5f3cb-54c6-5f63-bf3e-e6b8196df4cf', 'รถตู้บรรทุก 4 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.3672, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('12d41151-8bed-5c41-b920-8fc1a37da018', 'รถตู้บรรทุก 4 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.2551, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d77f745e-4148-54c2-81d7-8fd20b3979d2', 'รถตู้บรรทุก 4 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.1991, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('3ce6c9ff-81b8-5160-95df-7dc6056d07f1', 'รถกระบะบรรทุกขนาดเล็ก 4 ล้อ วิ่งแบบปกติ 0% Loading', 'Road transport', 'km', 0.3131, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a320ec41-1ac5-5bdd-b49f-989369bc873a', 'รถกระบะบรรทุกขนาดเล็ก 4 ล้อ วิ่งแบบปกติ 50% Loading', 'Road transport', 'tkm', 0.2698, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7f0ea46b-34f3-5018-88d9-932c5cfb08b1', 'รถกระบะบรรทุกขนาดเล็ก 4 ล้อ วิ่งแบบปกติ 75% Loading', 'Road transport', 'tkm', 0.184, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ab8c2ad3-4d10-5575-9494-cc9cea33255c', 'รถกระบะบรรทุกขนาดเล็ก 4 ล้อ วิ่งแบบปกติ 100% Loading', 'Road transport', 'tkm', 0.1411, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a4f2acd0-655e-562b-af20-05d2d352dbe0', 'รถกระบะบรรทุกขนาดเล็ก 4 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.375, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('588fa43d-3e2b-51bd-ab91-4d69cd8cef20', 'รถกระบะบรรทุกขนาดเล็ก 4 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.3165, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('fe36b9fd-e30c-538b-bc35-0962f69e4e3c', 'รถกระบะบรรทุกขนาดเล็ก 4 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.2139, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5d029a59-49c6-572f-92f2-8049d553e3aa', 'รถกระบะบรรทุกขนาดเล็ก 4 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.1627, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2a53caa1-4c7c-5aed-9c4c-b7b12880e7f2', 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.4069, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2da1e104-13da-5f8a-ba7b-959e327e941e', 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.1198, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('83600257-353a-5865-a068-072af4f7b08b', 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0843, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c287b265-e261-5dad-b2f1-63bf89e9b829', 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0653, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4413eba5-52a6-50d6-986c-365817b9245c', 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.4227, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('fb28d2b8-0ee1-55d5-a31f-09c09bada9fd', 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.1302, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('3aa2db6c-7bb6-5586-b0b4-03e24798dd0b', 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0913, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1462fc49-28ae-5c52-b2b4-1a03158aec6f', 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0691, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a646a0df-0e2e-5135-bb15-252b905a37d2', 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.4273, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('42405b86-bb59-5c06-887d-f1c03125b2a2', 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.1247, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f84387bf-84e6-55de-ad2d-90aaf4250c28', 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0875, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('860e308e-fe71-5700-aa37-3ad167b03021', 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0677, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('948b8a1d-e1d6-5696-89d1-82ce245d543f', 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.5133, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('717eb6e3-a941-5f89-bf42-f881d6abf9af', 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.1443, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('753b064c-f98b-52b6-9086-14da93cade34', 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.099, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('25fc6289-ddb6-5d21-ae29-4af9dc843aab', 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0749, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1f0ebda5-0f7e-5e3d-94bb-1a0e0309e2b4', 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.4373, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5dfaf511-e57f-59b1-b084-3243d9b96766', 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.1021, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5200ff50-1931-5145-be87-c99ca2c39320', 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0716, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('35680a24-0e5e-53e9-b7c9-154038808016', 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0547, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('29279850-c10e-57bb-b2a7-0dddecc55b39', 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.5598, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d469051e-37f6-557b-a6f1-5a12fb0ef571', 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.1228, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('011862a1-0c57-51e9-8308-5df47169769d', 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0863, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('442a63b4-1f4f-50b6-b414-8da4e7cdc6bf', 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่', 'Road transport', 'tkm', 0.0679, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('172bf489-f8b6-5b4d-97f1-6a4470e2254a', 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.4923, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('95b78234-0a37-5c8b-b04c-bfadb863976a', 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.1083, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d1b37ad6-e9a1-5c89-8979-7a4f5f75d763', 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0768, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2223c442-7b88-5d5d-9d3d-76a2186fc50f', 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0613, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a828aea6-129d-5980-ae2d-082beadd047c', 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.6082, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7fce7795-d441-5c2a-9941-14770d1598c4', 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.1345, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('79ab5fdc-c95e-5a28-be78-56687133370a', 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0942, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('affa0de6-789f-57c6-9969-c07520f21e0b', 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0734, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('40b80dac-f21c-5f33-8435-2cadfb181d9f', 'รถตู้บรรทุก 10 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.5747, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('92324e48-35f6-5ecf-8558-0582e39eb20d', 'รถตู้บรรทุก 10 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.0852, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('892a69c1-b0b8-5a8a-8b38-94c32432009e', 'รถตู้บรรทุก 10 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.059, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e7efb4d4-34c9-547f-b02b-5e9e3055afc0', 'รถตู้บรรทุก 10 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0454, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('8fedab4d-93ad-56f0-9366-6cab6dc1ae40', 'รถตู้บรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.678, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('3d651c84-1b8b-5727-a18e-5a679f9472e9', 'รถตู้บรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.1043, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d0338b50-902e-50a2-8950-a974f5f1d198', 'รถตู้บรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0725, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ba7775c5-add1-5c00-bc51-2ff2d4035962', 'รถตู้บรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0553, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e50918ac-6d72-575c-8847-f761da6573ee', 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.6053, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4ebc27fb-fff3-5351-86aa-86da60a60aeb', 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.0881, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c71a3914-3e72-589c-aeec-65394cee4e03', 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0617, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('55c3d143-3869-5c5a-b77f-7ce3aa8b5115', 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0489, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('046665ea-5359-5589-9e9e-e39771c2e5a2', 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.6674, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2660d703-f9d3-55ee-8467-4724b71cc30d', 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.1019, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c11882ad-89cf-551e-86dc-4c187780523f', 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0738, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('3af1e607-30c0-5d29-a9f9-cca9147e9a01', 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0612, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5fbe6233-e59f-5b8a-8509-51924123b678', 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.59, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ee78cf79-0c05-52b4-b43f-0d21d8e584e4', 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.0972, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('fa919fbf-7317-59ad-996f-8c2755b58190', 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0691, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d9c8a034-a2d7-5d85-b2b2-fb42609b3398', 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0533, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('35644d1a-76f8-5f6f-b909-e763aa2f556d', 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.7513, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('06c38e19-2d7c-59ad-abd1-86a73aeaaa7e', 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.1201, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b5eac201-d64b-57e8-a689-4230a306dc12', 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.084, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f64bc69e-3b56-5f98-a855-3f3bd7f59873', 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0639, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b5100f65-0c72-592b-a9f9-c35230298524', 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.8215, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('25a53ee0-3e29-56e6-934d-28cfbe73419e', 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.0803, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c7301792-c06e-5c21-8735-28f9bf708a01', 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0577, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5069c92c-220b-5260-9490-ae619199a915', 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0449, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('9ee8c9cc-360a-52d0-9889-a99568e1b144', 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.9963, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f0c92908-045a-51e8-bf25-21516e59bbee', 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.0914, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a57241df-7c4a-5979-8d54-993092315847', 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0655, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('60672c96-8c58-57cf-bd5f-9c16b6f967db', 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0523, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('59380b55-e24e-5349-8d4b-09285c424376', 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.787, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('8eefebc8-1028-58fb-bdd6-25bac01ab9ef', 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.073, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('9c4e5dbe-2e0b-5325-a0bd-4bc9057d2c59', 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0517, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('8b381a35-2208-509f-bf49-3884feba1feb', 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0404, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('cb5b8d91-61c3-5c4b-93f4-fc9c1e9abfea', 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.8657, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4d28b951-ac6c-5cb1-b883-2abe842bed99', 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.0858, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ef211b2d-1920-5edc-a40d-f3f7c88f5443', 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0628, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b9a13beb-3bd2-5381-bcbe-b44ccf9347c6', 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0502, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6cfa0a82-3440-50fa-8460-53d13895e161', 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.8684, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1aa0e47d-3a78-5e0b-b981-a4350508da42', 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.0802, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f102f44e-c366-55b8-bd0f-706d5cb2a6bb', 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0568, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d74e0699-7651-5fc6-8cf7-305fb5915894', 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0443, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5e7982f5-1b9e-54c5-ba71-8821c4fb04a7', 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 1.0657, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e9876825-cbb5-51ba-b7a8-4b63d9cf45ad', 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.0975, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('fbc55a3c-35be-5200-bb67-5785aedf78f2', 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0687, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e688161d-c2af-510b-94f5-522b3bf778fd', 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0533, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('00f9f2d9-4941-552d-9e91-58b21d5ad226', 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.2363, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('57086000-bd5c-523a-810b-300850aeeabf', 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.0761, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1c9dc4fa-dd80-5748-9694-578c946546fc', 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0529, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2263a0b8-6caf-52e5-88a1-ce36903b9f3b', 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0411, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c0c398fd-2c16-5c40-9a65-dcffd012d364', 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 1.0021, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e6863aef-cef6-5bf2-b49b-d1e3e655530d', 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.092, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6b04bf8a-cd78-5cd2-88ac-563502db3d90', 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0651, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2c30ea87-4a5e-5f6b-a4f5-0c88665c9701', 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0507, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('14f4e79a-1ed7-53aa-8852-63aedb53e3d8', 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.8404, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e022b4de-52cb-5bd7-99b9-e1e4c3fb71b0', 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.0839, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1be5e274-a946-504a-ba11-45fc93bcdca2', 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0594, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('aad563da-2fca-5eb4-b0ad-8b141d462165', 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0448, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6fd23c36-66bc-597f-91cc-21643a5c8f6f', 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 1.1441, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('371edffa-02df-5396-ad38-f52ae616579f', 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.101, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('dbf46a80-b55e-5d53-8ea2-e93b0dbe5f1a', 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0706, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b2217ac8-37ce-5318-a3b3-088faf618c37', 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0547, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5eed46da-6ec3-56d0-83d9-0f54ae4331f4', 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 1.0206, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('46f6e989-66ce-5961-a2c3-3715256e3319', 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.0866, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('085b85af-76b0-57b4-9c8e-3f6575c03b84', 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0597, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('67935089-b816-5bed-8068-f3aafcc16eb1', 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0459, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('48c2f6e2-1d58-561a-a073-a8e5e7980155', 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 1.2452, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('fb0babec-5235-5b57-854d-93691bd15124', 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.1042, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f3a27c74-ba48-5845-98f3-1d33ed515775', 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.071, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6e4805af-b603-55c4-81cb-d5cb5299dfe2', 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.054, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('0e3c33a9-3c03-5422-9556-26fcfd593f30', 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.6316, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('65686405-0df6-5c93-9c7d-653e0995862c', 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.0918, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('53cf0196-c67a-5f5f-98d8-07b17f628f84', 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0625, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('84d383a1-c1e9-5aec-94c4-aa01b08b36d3', 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0471, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f1fd0026-1a8a-5d0e-851f-bbc301378192', 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.7382, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6f655ae9-08d2-5e85-9eb2-a7da551c8c42', 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.1098, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('46c4f62e-9bc2-539a-8450-2f8c048111a8', 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0772, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c9d59cbe-b861-5f5b-ba6e-cecad0014871', 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0611, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('fa529c22-ddc3-5b2e-b40b-36bfc7b0fdce', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 10 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.464, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2af118c3-070f-59a7-88b4-7759cedf50ac', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 10 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.0834, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b6486b7e-146a-5df4-873e-734f9fb8ba26', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 10 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.061, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('bffb8a31-6f02-571d-946e-2f9950ce700e', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 10 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0475, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('bb69d33f-9f0f-5311-ac11-0e3f7f917d2c', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 10 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.4825, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('122ca9d2-a477-5fcd-b203-ab907ff171b4', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 10 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.0986, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('147ecae1-c6e2-5b47-818b-9eda6fb7fbfd', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 10 ล้อวิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0732, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('92f51ee7-94fb-52be-a6cd-8e46773aea68', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 10 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0546, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2d38d3df-c5f7-54ee-9e86-06b846545246', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 18 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.9131, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('eb0217e7-348c-5ef6-87b6-6f5bcecb6e08', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 18 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.0841, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('20d070e7-e13b-5dab-9b71-15059cf3f4ed', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 18 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0594, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4c3cb895-f45e-59e9-a4f4-25311d7f3411', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 18 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0461, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('61da39e3-a193-5409-af18-669a73947598', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 18 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 1.1214, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('00ef3eef-c4d8-5e3f-962b-6dda38388af0', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 18 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.1043, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('972bb149-a05f-5803-a13b-67929bb0446f', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 18 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0746, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f444fc89-f64d-59f3-9d8a-238d77ce2b61', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 18 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0589, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5df1fd0f-97f5-5857-b49e-3c6643f1341d', 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.946, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c0c4e504-d1f8-567b-88b8-4cd7fcb05a3f', 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.084, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d6da9fff-a7d2-5cca-a10a-5d4da3e5bba1', 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0577, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('9a7df951-8dc9-5f58-a739-372b8132688b', 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0433, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('24a446ea-afae-5de4-bfe3-996d9b91675d', 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งสมบุกสมบัน 0% Loading', 'Road transport', 'km', 1.1855, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f6e88c11-3fce-51e4-a0ab-21d722de8c8c', 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.1049, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('bc31699f-624f-59b7-9a7a-cd406e120f42', 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0745, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2c96669c-388b-5b72-862a-3624d131334d', 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0591, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e801fa26-6a7d-5bb1-b64b-856b79d6e286', 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.5977, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b61d9f11-8205-5ac5-bbb8-69c5f10452b6', 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.0956, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e62b5e93-ab6c-515b-a09a-3e84a34da03c', 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0671, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d7ce518f-7465-565b-a7b0-5a053b719b02', 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0514, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5245273f-90ca-584b-8c6d-021fd1b2aaf7', 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.643, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4fea325d-a4cd-5bc2-9840-2969211e1179', 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.1065, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('11913512-bdef-53cc-93a8-553831461f7e', 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0752, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d7fd5bea-aa65-5fec-a37f-febcf47ddfb1', 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0573, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('50830101-99a7-5242-9ec3-1d3dd81fb6f2', 'รถบรรทุกขยะ 6 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.4923, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d3a8d71c-2d53-5f5d-9bab-12c43b8c1239', 'รถบรรทุกขยะ 6 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.084, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e87d9f2b-1a12-5c9e-bd69-d54b63119264', 'รถบรรทุกขยะ 6 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0607, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('cd9d0f49-edb7-59c8-b5f7-9649fb6fcab6', 'รถบรรทุกขยะ 6 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0475, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('927af5a7-1550-538c-938e-fb21107fbd37', 'รถบรรทุกขยะ 6 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.5446, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c21f2a7f-c901-5b8e-bf30-2db79f092f3d', 'รถบรรทุกขยะ 6 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.0945, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2cf52635-e242-5701-b8ab-83a1c7ec5dbc', 'รถบรรทุกขยะ 6 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0693, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('8bbacf89-7f58-5aed-92da-ea99ea8a8a09', 'รถบรรทุกขยะ 6 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0552, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('56c21259-961b-5604-9164-d9ef41901190', 'รถกระบะบรรทุกพ่วง 18 ล้อ', 'Road transport', 'tkm', 0.2145, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('90faea6b-dcec-56e1-b7ca-ecc2a3bb4cec', 'รถกระบะบรรทุกพ่วง 18 ล้อ', 'Road transport', 'tkm', 0.1072, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a6b88da0-86c5-52c9-8748-3470748b1d0f', 'รถกระบะบรรทุกพ่วง 18 ล้อ', 'Road transport', 'tkm', 0.0715, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5b8f9779-56ce-5ad3-83ea-53d8b8c44886', 'รถกระบะบรรทุกพ่วง 18 ล้อ', 'Road transport', 'tkm', 0.0536, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('df038400-109f-5e9e-895f-e4bcbaac9dc5', 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.5344, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('06fb93ec-a1a4-57d3-900f-0072dd31ced8', 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.0786, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('158640c0-fcbe-5a1e-a9df-9779866f1a7e', 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0543, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2863f49f-fe08-549b-acad-1d8e059d2653', 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0419, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('de3dea3a-f4e3-572f-98d9-f773f8c51c54', 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.6374, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('0e6cdf79-3522-5796-8808-c613aeab8658', 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.0972, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('fec47971-3424-5666-8d60-c6d4d559f1b0', 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0684, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('07492dfb-6d60-5857-8438-aacfe46bd443', 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0536, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ba86c12d-70a9-5773-9cd4-627709c4d5b5', 'Crude tanker', 'Marine transport', 'tkm', 0.00457, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'DEFRA: Greenhouse gas reporting: conversion factors 2025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a598f5ef-ed11-51b7-8865-772cf1bebe24', 'Products tanker', 'Marine transport', 'tkm', 0.00902, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'DEFRA: Greenhouse gas reporting: conversion factors 2025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('577ef749-5283-5536-8436-7d9e583505da', 'Chemical tanker', 'Marine transport', 'tkm', 0.01031, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'DEFRA: Greenhouse gas reporting: conversion factors 2025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('8e18fa26-43a0-59ed-afad-eea5de8f03ed', 'LNG tanker', 'Marine transport', 'tkm', 0.01153, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'DEFRA: Greenhouse gas reporting: conversion factors 2025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4f6bf493-8ef3-58db-88f2-3f96d0c4bd6d', 'LPG Tanker', 'Marine transport', 'tkm', 0.01037, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'DEFRA: Greenhouse gas reporting: conversion factors 2025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c40422cb-8f1e-5b48-9147-6aeb7f405a18', 'Freight train', 'Air transport', 'tkm', 0.02779, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'DEFRA: Greenhouse gas reporting: conversion factors 2025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('033124d1-a52c-55f7-95fb-74af6248e90d', 'International, to/from non-UK', 'Rail transport', 'tkm', 0.89939, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'DEFRA: Greenhouse gas reporting: conversion factors 2025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000a', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e35a112b-7998-59b9-a08b-a04cbbf8b51d', 'การจัดเก็บรวบรวม และขนถ่ายขยะมูลฝอยชุมชน', 'กลุ่มการจัดการมูลฝอยชุมชน และการปรับปรุงน้ำเสียชุมชน', 'kg', 0.0143, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000b', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2f31f171-066d-584a-99f9-7e0281ff4b9d', 'การคัดแยกขยะมูลฝอยชุมชน', 'กลุ่มการจัดการมูลฝอยชุมชน และการปรับปรุงน้ำเสียชุมชน', 'kg', 0.0159, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000b', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('772d6474-c25e-5ebc-b6bd-df5a81444466', 'การกำจัดขยะมูลฝอยชุมชนแบบเทกอง', 'กลุ่มการจัดการมูลฝอยชุมชน และการปรับปรุงน้ำเสียชุมชน', 'kg', 1.0388, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000b', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('69aaed8d-c3cb-5d43-9334-814587fd99a6', 'การฝังกลบขยะมูลฝอยชุมชนแบบถูกหลักสุขาภิบาล', 'กลุ่มการจัดการมูลฝอยชุมชน และการปรับปรุงน้ำเสียชุมชน', 'kg', 0.7933, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000b', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('090e6d8c-5e2f-5524-aeb3-60c6ce242c02', 'การฝังกลบขยะมูลฝอยชุมชนแบบติดตั้งระบบนำก๊าซมีเทนมาใช้ประโยชน์', 'กลุ่มการจัดการมูลฝอยชุมชน และการปรับปรุงน้ำเสียชุมชน', 'kg', 0.0175, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000b', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4c5fcce0-15c6-549a-b2a1-0996e02ff18d', 'การจัดการมูลฝอยสด (การหมักแบบไร้อากาศ)', 'กลุ่มการจัดการมูลฝอยชุมชน และการปรับปรุงน้ำเสียชุมชน', 'kg', 0.1102, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000b', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('24b1835c-a341-53d9-8937-67f61fbeb916', 'ปุ๋ยหมักอินทรีย์ จากการจัดการมูลฝอยสด', 'กลุ่มการจัดการมูลฝอยชุมชน และการปรับปรุงน้ำเสียชุมชน', 'kg', 0.3326, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000b', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('71f49964-cc05-5db7-98ee-6b730531daf4', 'ปุ๋ยอินทรีย์น้ำ จากการจัดการมูลฝอยสด', 'กลุ่มการจัดการมูลฝอยชุมชน และการปรับปรุงน้ำเสียชุมชน', 'kg', 0.3338, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000b', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('99dd185b-de41-5110-9ae5-0ec7b2131724', 'การรวบรวมน้ำเสียชุมชนของประเทศ, ค่าเฉลี่ยประเทศไทย', 'กลุ่มการจัดการมูลฝอยชุมชน และการปรับปรุงน้ำเสียชุมชน', 'm3', 0.0101, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000b', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c84d56a2-ac2e-5966-96b1-48d4cc8c0ff7', 'การรวบรวมน้ำเสียชุมชนของเมืองขนาดใหญ่', 'กลุ่มการจัดการมูลฝอยชุมชน และการปรับปรุงน้ำเสียชุมชน', 'm3', 0.002, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000b', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d5a6c2b5-4432-5d78-8964-0ed7b10a832a', 'การรวบรวมน้ำเสียชุมชนของเมืองขนาดกลาง', 'กลุ่มการจัดการมูลฝอยชุมชน และการปรับปรุงน้ำเสียชุมชน', 'm3', 0.0373, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000b', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2186dc83-d4fe-5750-aed4-c8f03d02d5cc', 'การปรับปรุงคุณภาพน้ำเสียชุมชนของประเทศ', 'กลุ่มการจัดการมูลฝอยชุมชน และการปรับปรุงน้ำเสียชุมชน', 'm3', 0.1201, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000b', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('aff5c604-e1cc-5f09-8375-3485407acf5c', 'การปรับปรุงคุณภาพน้ำเสียชุมชนของเมืองขนาดใหญ่', 'กลุ่มการจัดการมูลฝอยชุมชน และการปรับปรุงน้ำเสียชุมชน', 'm3', 0.129, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000b', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('cabfdc6d-002b-5eca-91e3-dc7f34c31472', 'การปรับปรุงคุณภาพน้ำเสียชุมชนของเมืองขนาดกลาง', 'กลุ่มการจัดการมูลฝอยชุมชน และการปรับปรุงน้ำเสียชุมชน', 'm3', 0.0901, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000b', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('9ac82b84-0f45-56aa-a8c0-56edab47ce76', 'การรวบรวมและการปรับปรุงคุณภาพน้ำเสียชุมชนของประเทศ', 'กลุ่มการจัดการมูลฝอยชุมชน และการปรับปรุงน้ำเสียชุมชน', 'm3', 0.1302, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000b', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('daafc589-e2a9-56f1-b26a-061ca6d554a0', 'การรวบรวมและการปรับปรุงคุณภาพน้ำเสียชุมชนของเมืองขนาดใหญ่', 'กลุ่มการจัดการมูลฝอยชุมชน และการปรับปรุงน้ำเสียชุมชน', 'm3', 0.131, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000b', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('780ca100-3ef5-5c76-bf4e-9383da1f3e97', 'การรวบรวมและการปรับปรุงคุณภาพน้ำเสียชุมชนของเมืองขนาดกลาง', 'กลุ่มการจัดการมูลฝอยชุมชน และการปรับปรุงน้ำเสียชุมชน', 'm3', 0.1274, NULL, NULL, NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000b', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6f083e01-004a-5ee9-8da7-577ce4018a70', 'กระดาษ / กระดาษกล่อง', 'กลุ่มการฝังกลบขยะ', 'kg', 2.93, NULL, NULL, NULL, NULL, '2006 IPCC Volume 5: Waste', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000b', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d70446fb-f0c1-5716-871f-5c214692c0c7', 'ผ้า', 'กลุ่มการฝังกลบขยะ', 'kg', 2, NULL, NULL, NULL, NULL, '2006 IPCC Volume 5: Waste', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000b', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('cfeb5f5f-a53f-503f-8381-1e61f2d66eba', 'เศษอาหาร', 'กลุ่มการฝังกลบขยะ', 'kg', 2.53, NULL, NULL, NULL, NULL, '2006 IPCC Volume 5: Waste', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000b', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('891d77f4-457c-5df9-aa99-284f2c739a9a', 'เศษไม้', 'กลุ่มการฝังกลบขยะ', 'kg', 3.33, NULL, NULL, NULL, NULL, '2006 IPCC Volume 5: Waste', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000b', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('8e10a00b-843a-5da2-8744-e88fc32c56ed', 'กิ่งไม้ ต้นหญ้าจากสวน', 'กลุ่มการฝังกลบขยะ', 'kg', 3.27, NULL, NULL, NULL, NULL, '2006 IPCC Volume 5: Waste', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000b', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b5049a34-1b22-5959-a970-375f22d5ea1b', 'ผ้าอ้อมเด็กทำด้วยกระดาษ', 'กลุ่มการฝังกลบขยะ', 'kg', 4, NULL, NULL, NULL, NULL, '2006 IPCC Volume 5: Waste', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000b', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('bf1e0ccf-d65d-5523-a88f-0580f8501db5', 'ยางและหนัง', 'กลุ่มการฝังกลบขยะ', 'kg', 3.13, NULL, NULL, NULL, NULL, '2006 IPCC Volume 5: Waste', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000b', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b67093df-e66e-553f-99bc-9959d2431848', 'Motor Gasoline - uncontrolled', 'Road ทราบปริมาณเชื้อเพลิง', 'litre', 2.23942424, 'ปริมาณการใช้เชื้อเพลิง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6279ee6e-7f1b-5075-b13f-3e67b531d4a7', 'Motor Gasoline - oxydation catalyst', 'Road ทราบปริมาณเชื้อเพลิง', 'litre', 2.2719116, 'ปริมาณการใช้เชื้อเพลิง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c676735b-f672-5cd4-b664-d98ddac67752', 'Motor Gasoline - low mileage light duty vihicle vintage 1995 or later', 'Road ทราบปริมาณเชื้อเพลิง', 'litre', 2.23270326, 'ปริมาณการใช้เชื้อเพลิง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6d433779-211a-594b-9f57-f272acdb3a3a', 'Gas/ Diesel Oil', 'Road ทราบปริมาณเชื้อเพลิง', 'litre', 2.74062321, 'ปริมาณการใช้เชื้อเพลิง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f36ecec1-ef31-516c-974a-20316e2ff6b3', 'Compressed Natural Gas', 'Road ทราบปริมาณเชื้อเพลิง', 'kg', 2.2609245, 'ปริมาณการใช้เชื้อเพลิง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, PTT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a6df05f0-5378-5743-97af-d6b905e3dd2c', 'LPG', 'Road ทราบปริมาณเชื้อเพลิง', 'litre', 1.73064606, 'ปริมาณการใช้เชื้อเพลิง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('85a950ad-594c-581b-96c5-08182b259924', 'รถยนต์ขนาดเล็ก (1500 cc): เบนซิน', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.1278509623, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('04fde1a6-ab13-5c94-9c93-fe2b5adf67fa', 'รถยนต์ขนาดกลาง (1600 cc): เบนซิน', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.1490951306, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b5466c1b-55fb-59f8-b989-6affac075df3', 'รถยนต์ขนาดกลาง (1800 cc): เบนซิน', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.1646790084, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ad0cd65d-dbff-5c08-92a9-ae855ee1faa0', 'รถยนต์ขนาดใหญ่ (2000 cc): เบนซิน', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.1854924559, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e8e3c83b-f5fb-562a-b818-9d792e1f87f9', 'รถยนต์เฉลี่ยทุกขนาด: เบนซิน', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.1538922712, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5c30d93d-86c4-5d02-b0aa-83a2d5850f65', 'รถกระบะระบบขับเคลื่อนสี่ล้อ: ดีเซล', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.4303066745, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('04604418-7db2-5260-b426-2c3891520b74', 'รถกระบะขนบรรทุกขนาดตาม 1 ตัน: ดีเซล', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.2466585555, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('591bea58-a7b0-5fb1-ba40-ae0cfe039fea', 'รถ NGV: CNG', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.1899138597, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, PTT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('75477cfb-97ac-56a2-9fd1-55dda732210e', 'รถ LPG: LPG', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.1938230552, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f4b0d426-17f4-59ba-9569-e9729806fddf', 'รถโดยสาร: ดีเซล', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.09800078401, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('21bea900-95ac-5f23-a5b2-cb0958cb0c85', 'รถโดยสารประจำทาง: ดีเซล', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.9616221789, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('84ae8486-812c-583f-850b-6f6f62c5b58e', 'รถจักรยานยนต์ 4 จังหวะ เครื่องยนต์ขนาดเล็กกว่า 125 cc: เบนซิน', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.06203171604, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('23bb2dbb-8b86-5979-b479-1503ab621cac', 'รถจักรยานยนต์แบบสกู๊ตเตอร์อัตโนมัติ 125 cc: เบนซิน', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.05877406804, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('193d49b9-c6a5-5987-bb9f-5a4b4dc9387a', 'รถจักรยานยนต์เครื่องยนต์สกู๊ตเตอร์อัตโนมัติ 120 cc: เบนซิน', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.06132842759, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('884ae2af-9697-5fd1-91d7-a8085f17696b', 'รถจักรยานยนต์เครื่องยนต์อัตโนมัติขนาด 150 cc: เบนซิน', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.08224114389, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('39d59bff-d22c-5d10-bbef-13d868fd828c', 'รถจักรยานยนต์ขนาดใหญ่ (บิ๊กไบค์): เบนซิน', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.06038303256, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4c200eda-2e65-57f7-b3ce-30e9dacbc06d', 'รถจักรยานยนต์แบบเกียร์ธรรมดาเฉลี่ยทุกขนาด: เบนซิน', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.07004506243, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('457432fc-89ba-52ba-89e7-465715426eaa', 'Domestic', 'Air Travel', 'passenger.km', 0.22928, 'จำนวนคนที่เดินทาง', 'passenger', 'ระยะทางที่เดินทาง', 'km', 'DEFRA: Greenhouse gas reporting: conversion factors 2025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6aa40318-83ba-5439-a71b-bceff7b2dc8f', 'International: Average passenger', 'Air Travel', 'passenger.km', 0.14253, 'จำนวนคนที่เดินทาง', 'passenger', 'ระยะทางที่เดินทาง', 'km', 'DEFRA: Greenhouse gas reporting: conversion factors 2026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f558208a-f775-5c73-b41b-96dd551337f4', 'International: Economy class', 'Air Travel', 'passenger.km', 0.10916, 'จำนวนคนที่เดินทาง', 'passenger', 'ระยะทางที่เดินทาง', 'km', 'DEFRA: Greenhouse gas reporting: conversion factors 2027', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('37bb2a01-1597-5eb7-a39d-efdbf54499ec', 'International: Premium economy class', 'Air Travel', 'passenger.km', 0.17465, 'จำนวนคนที่เดินทาง', 'passenger', 'ระยะทางที่เดินทาง', 'km', 'DEFRA: Greenhouse gas reporting: conversion factors 2028', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('848d9534-296b-5590-920d-e3f04db535b2', 'International: Business class', 'Air Travel', 'passenger.km', 0.31656, 'จำนวนคนที่เดินทาง', 'passenger', 'ระยะทางที่เดินทาง', 'km', 'DEFRA: Greenhouse gas reporting: conversion factors 2029', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('3c7e5953-d651-5dc1-8a54-1fcbe30f46ec', 'International: First class', 'Air Travel', 'passenger.km', 0.43663, 'จำนวนคนที่เดินทาง', 'passenger', 'ระยะทางที่เดินทาง', 'km', 'DEFRA: Greenhouse gas reporting: conversion factors 2030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('450c9ec4-8782-5fe1-a8e8-9ce1e0308b66', 'Ferry: Foot passenger', 'Sea Travel', 'passenger.km', 0.01871, 'จำนวนคนที่เดินทาง', 'passenger', 'ระยะทางที่เดินทาง', 'km', 'DEFRA: Greenhouse gas reporting: conversion factors 2031', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5b946366-2acf-5d65-9cbc-cc845a1fcfe2', 'Ferry: Car passenger', 'Sea Travel', 'passenger.km', 0.12933, 'จำนวนคนที่เดินทาง', 'passenger', 'ระยะทางที่เดินทาง', 'km', 'DEFRA: Greenhouse gas reporting: conversion factors 2032', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4ce7c610-f08e-5118-ac9e-3e95d152abf4', 'Ferry: Average (all passenger)', 'Sea Travel', 'passenger.km', 0.1127, 'จำนวนคนที่เดินทาง', 'passenger', 'ระยะทางที่เดินทาง', 'km', 'DEFRA: Greenhouse gas reporting: conversion factors 2033', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000c', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c6753d75-1d41-598f-bd1e-0ac27583722c', 'Motor Gasoline - uncontrolled', 'Road ทราบปริมาณเชื้อเพลิง', 'litre', 2.23942424, 'ปริมาณการใช้เชื้อเพลิง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('463a5ac8-635d-54b1-8785-2299f371c1d2', 'Motor Gasoline - oxydation catalyst', 'Road ทราบปริมาณเชื้อเพลิง', 'litre', 2.2719116, 'ปริมาณการใช้เชื้อเพลิง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('dbf6c345-379c-5168-b201-c69d84eb8a4e', 'Motor Gasoline - low mileage light duty vihicle vintage 1995 or later', 'Road ทราบปริมาณเชื้อเพลิง', 'litre', 2.23270326, 'ปริมาณการใช้เชื้อเพลิง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('af814588-5957-55a0-a601-9c569139ee80', 'Gas/ Diesel Oil', 'Road ทราบปริมาณเชื้อเพลิง', 'litre', 2.74062321, 'ปริมาณการใช้เชื้อเพลิง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('047aab62-af72-5b54-9d81-b79c44dc691b', 'Compressed Natural Gas', 'Road ทราบปริมาณเชื้อเพลิง', 'kg', 2.2609245, 'ปริมาณการใช้เชื้อเพลิง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, PTT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7a021da6-4afc-51d8-aaae-a6a2134b714d', 'LPG', 'Road ทราบปริมาณเชื้อเพลิง', 'litre', 1.73064606, 'ปริมาณการใช้เชื้อเพลิง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('432d1a32-3abe-5361-8c8e-53ff408f7086', 'รถยนต์ขนาดเล็ก (1500 cc): เบนซิน', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.1278509623, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('321d85c2-fb4b-5b48-9f28-b8d7d6d23b48', 'รถยนต์ขนาดกลาง (1600 cc): เบนซิน', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.1490951306, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5046994c-5311-5286-a72a-2b1652767a9d', 'รถยนต์ขนาดกลาง (1800 cc): เบนซิน', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.1646790084, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d58787ba-7ed0-51b2-a5a0-164542354c64', 'รถยนต์ขนาดใหญ่ (2000 cc): เบนซิน', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.1854924559, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b6a9e64b-a52e-513f-8528-a32a450cb7d5', 'รถยนต์เฉลี่ยทุกขนาด: เบนซิน', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.1538922712, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d9f8428d-7b94-5fde-a1a7-36bb10718990', 'รถกระบะระบบขับเคลื่อนสี่ล้อ: ดีเซล', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.4303066745, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('235d09a6-ec93-537a-bc89-39e3992e6d55', 'รถกระบะขนบรรทุกขนาดตาม 1 ตัน: ดีเซล', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.2466585555, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6c5ad5a3-af6e-5ce4-a729-802184490d2c', 'รถ NGV: CNG', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.1899138597, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, PTT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('44d05a58-6a19-583b-809c-f72bbea5e559', 'รถ LPG: LPG', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.1938230552, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d840e23b-11e4-53bc-816e-6c99ca374358', 'รถโดยสาร: ดีเซล', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.09800078401, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('43b55e8c-9af0-5524-bb3f-a464ad4bb781', 'รถโดยสารประจำทาง: ดีเซล', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.9616221789, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f2e75af9-7f0c-5c42-9f8d-c95773d9577c', 'รถจักรยานยนต์ 4 จังหวะ เครื่องยนต์ขนาดเล็กกว่า 125 cc: เบนซิน', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.06203171604, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('aff7549b-98b8-5c4d-9fc7-e876a2e568ce', 'รถจักรยานยนต์แบบสกู๊ตเตอร์อัตโนมัติ 125 cc: เบนซิน', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.05877406804, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f58110f2-0ca3-50f0-bdb4-ba2ef94294b9', 'รถจักรยานยนต์เครื่องยนต์สกู๊ตเตอร์อัตโนมัติ 120 cc: เบนซิน', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.06132842759, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('74eebf42-9e5b-57ab-a516-c753e32bc998', 'รถจักรยานยนต์เครื่องยนต์อัตโนมัติขนาด 150 cc: เบนซิน', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.08224114389, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a6c5ecc8-d918-530e-adfe-f6e5b5c63736', 'รถจักรยานยนต์ขนาดใหญ่ (บิ๊กไบค์): เบนซิน', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.06038303256, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1970bb92-9d98-5ec8-b42c-f210e5118cbb', 'รถจักรยานยนต์แบบเกียร์ธรรมดาเฉลี่ยทุกขนาด: เบนซิน', 'Road ไม่ทราบปริมาณเชื้อเพลิง', 'km', 0.07004506243, 'ระยะทางที่เดินทาง', NULL, NULL, NULL, 'IPCC Vol.2 table 3.2.1, 3.2.2, DEDE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b43f2665-d577-5188-8c72-91136c37d195', 'Domestic', 'Air Travel', 'passenger.km', 0.22928, 'จำนวนคนที่เดินทาง', 'passenger', 'ระยะทางที่เดินทาง', 'km', 'DEFRA: Greenhouse gas reporting: conversion factors 2025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2d84aed0-1f24-5e67-93da-1a68fe0a2de4', 'International: Average passenger', 'Air Travel', 'passenger.km', 0.14253, 'จำนวนคนที่เดินทาง', 'passenger', 'ระยะทางที่เดินทาง', 'km', 'DEFRA: Greenhouse gas reporting: conversion factors 2026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('92efd612-6447-54a1-8d46-46f4b45a26a7', 'International: Economy class', 'Air Travel', 'passenger.km', 0.10916, 'จำนวนคนที่เดินทาง', 'passenger', 'ระยะทางที่เดินทาง', 'km', 'DEFRA: Greenhouse gas reporting: conversion factors 2027', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('12efffdf-9f15-53d8-9cc2-ebb9e0b823a2', 'International: Premium economy class', 'Air Travel', 'passenger.km', 0.17465, 'จำนวนคนที่เดินทาง', 'passenger', 'ระยะทางที่เดินทาง', 'km', 'DEFRA: Greenhouse gas reporting: conversion factors 2028', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ed38e988-8c24-58a9-9e3b-9da4df94a9f8', 'International: Business class', 'Air Travel', 'passenger.km', 0.31656, 'จำนวนคนที่เดินทาง', 'passenger', 'ระยะทางที่เดินทาง', 'km', 'DEFRA: Greenhouse gas reporting: conversion factors 2029', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b58fd7a0-dc2f-50dd-bf07-e9c9c2629af1', 'International: First class', 'Air Travel', 'passenger.km', 0.43663, 'จำนวนคนที่เดินทาง', 'passenger', 'ระยะทางที่เดินทาง', 'km', 'DEFRA: Greenhouse gas reporting: conversion factors 2030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a97963c7-f17a-58fa-ae1e-116225648d6b', 'Ferry: Foot passenger', 'Sea Travel', 'passenger.km', 0.01871, 'จำนวนคนที่เดินทาง', 'passenger', 'ระยะทางที่เดินทาง', 'km', 'DEFRA: Greenhouse gas reporting: conversion factors 2031', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6f087264-52a7-58f0-99e6-e86ef4e13cf3', 'Ferry: Car passenger', 'Sea Travel', 'passenger.km', 0.12933, 'จำนวนคนที่เดินทาง', 'passenger', 'ระยะทางที่เดินทาง', 'km', 'DEFRA: Greenhouse gas reporting: conversion factors 2032', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6e899ac0-213a-5b78-8211-bf24a3da366b', 'Ferry: Average (all passenger)', 'Sea Travel', 'passenger.km', 0.1127, 'จำนวนคนที่เดินทาง', 'passenger', 'ระยะทางที่เดินทาง', 'km', 'DEFRA: Greenhouse gas reporting: conversion factors 2033', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000d', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('0ac80bca-e2a7-5687-a7e8-12ded0ade6de', 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบปกติ 0% Loading', 'Road transport', 'km', 0.2415, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f2712309-4e96-5769-a56f-244acc4a4225', 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบปกติ 50% Loading', 'Road transport', 'tkm', 0.3805, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d4939810-8f55-57f5-a9b6-14c2d9cbc839', 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบปกติ 75% Loading', 'Road transport', 'tkm', 0.2706, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6e742087-ffde-5208-a7d7-b60b68e5ef65', 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบปกติ 100% Loading', 'Road transport', 'tkm', 0.2154, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a8c9ea37-69ca-5424-b372-5082f0437dcb', 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.3091, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6e50d6f9-d818-5746-a9f3-91e6c15a64bf', 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.4695, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b56c176e-efbe-5248-b064-229b3e37ebaf', 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.3275, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2793ceb4-bcd7-516c-b41e-0f077b500b92', 'รถตู้บรรทุก 4 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.2556, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1040c645-ff00-5d3d-bdee-5a64e8c2a9f7', 'รถตู้บรรทุก 4 ล้อ วิ่งแบบปกติ 0% Loading', 'Road transport', 'km', 0.3345, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('108c97d6-20ac-5e87-8202-0b2596ad573a', 'รถตู้บรรทุก 4 ล้อ วิ่งแบบปกติ 50% Loading', 'Road transport', 'tkm', 0.3401, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5f27b1f2-a663-50e2-8d0d-799ae409ae60', 'รถตู้บรรทุก 4 ล้อ วิ่งแบบปกติ 75% Loading', 'Road transport', 'tkm', 0.2405, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d5a9f331-b4af-52ae-8c4b-2a4f51162327', 'รถตู้บรรทุก 4 ล้อ วิ่งแบบปกติ 100% Loading', 'Road transport', 'tkm', 0.1835, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6279e239-0c74-58a7-adf6-da7d63d432c2', 'รถตู้บรรทุก 4 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.4106, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('68a2a9f5-51c8-57a1-8486-f8a09a3e19d2', 'รถตู้บรรทุก 4 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.3672, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('559235dc-5878-54cd-a29e-88d1cd6e6651', 'รถตู้บรรทุก 4 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.2551, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('cea691b8-f9c6-5814-9262-66e55109be9d', 'รถตู้บรรทุก 4 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.1991, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ac4f9aee-e29a-5e24-b0b5-e4b68ddfa592', 'รถกระบะบรรทุกขนาดเล็ก 4 ล้อ วิ่งแบบปกติ 0% Loading', 'Road transport', 'km', 0.3131, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('06e44fec-9a4f-5de5-a6dc-10f4c487929b', 'รถกระบะบรรทุกขนาดเล็ก 4 ล้อ วิ่งแบบปกติ 50% Loading', 'Road transport', 'tkm', 0.2698, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ca4f8adf-8928-5b56-addf-3c59a49e95a2', 'รถกระบะบรรทุกขนาดเล็ก 4 ล้อ วิ่งแบบปกติ 75% Loading', 'Road transport', 'tkm', 0.184, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('281bed92-02c1-5d5e-80f3-dcf58468c112', 'รถกระบะบรรทุกขนาดเล็ก 4 ล้อ วิ่งแบบปกติ 100% Loading', 'Road transport', 'tkm', 0.1411, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f6000857-1abc-5ddd-9cdf-cc18b5740bc1', 'รถกระบะบรรทุกขนาดเล็ก 4 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.375, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a4f5f79a-594a-5806-8c50-27bf529cc9d2', 'รถกระบะบรรทุกขนาดเล็ก 4 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.3165, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('9eefb23f-8afd-5fd4-bf61-952ccdd9ff1e', 'รถกระบะบรรทุกขนาดเล็ก 4 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.2139, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('174448ac-5f25-5b3d-81bd-1f5b3b7335b0', 'รถกระบะบรรทุกขนาดเล็ก 4 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.1627, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('433eeb6f-f643-52fb-89d3-7b4b0bcadef5', 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.4069, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('86ede281-0972-5b44-99de-289db6d5478c', 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.1198, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('cf10cf14-9c97-5233-826d-eeb10a6295ef', 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0843, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('8f514966-4111-5cdc-a13d-3b19c59f0bc7', 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0653, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e74dc7ae-7884-5dc7-8889-d2b398085ff6', 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.4227, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('decf1cc0-6ffa-5263-8041-ea290f373b8a', 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.1302, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('379a7d51-0a46-5691-a79c-15e6985a73fa', 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0913, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6819ab3b-48ce-5cf0-b384-6e371a751b23', 'รถตู้บรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0691, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7f716ad7-fc34-55ab-a729-e3108500d6ab', 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.4273, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('9cfacfc1-d6c0-5320-b0ba-59ddac31b4a9', 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.1247, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1725eae4-fe46-559a-8b8a-89113d66c2d1', 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0875, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('bbf7af3c-e7bd-5754-8ce7-59632e761f8d', 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0677, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f25807a5-859d-528a-9f2d-129061736687', 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.5133, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6447d194-f613-52bf-96f9-83ac7804cb15', 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.1443, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('353011db-d4e7-5a61-b7a5-db0d936ddb38', 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.099, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4b0f69f7-e19c-53f9-bfc2-e794682f1117', 'รถกระบะบรรทุก 6 ล้อ ขนาดเล็ก วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0749, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f021853c-bf27-5428-bd00-bf000ba0cbfe', 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.4373, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e84bbd82-2c0f-5c64-a2b0-ac4613594415', 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.1021, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('37a70b5e-29d4-57a8-89d2-b72e55855c05', 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0716, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('084e168f-91e4-56c2-b8b7-976e7e0abc7e', 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0547, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d33ae3d3-9935-5ed4-8afc-8d0ebb5fd599', 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.5598, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('0407d2c2-0284-5d3d-9083-917c344be5d1', 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.1228, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('da8f3234-4e5b-54a4-8693-0447551b7b90', 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0863, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e3061aea-5d29-52fb-8a01-9e334e96b2a4', 'รถตู้บรรทุก 6 ล้อ ขนาดใหญ่', 'Road transport', 'tkm', 0.0679, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c95d2f74-b63e-5f26-a125-de0ea28387fe', 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.4923, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b94cbec1-b00b-56c3-9cb2-b1370b22595e', 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.1083, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('448d9f0d-c91b-5e30-9f52-f10e92b77923', 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0768, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('463b8fd2-cd0d-577f-81ea-d0e5aee237f3', 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0613, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d6aaa8e3-5966-52f3-8f67-b891963429f0', 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.6082, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('cfb5bed7-f92f-551c-92b0-8bff385899b3', 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.1345, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a603fe0c-ef70-53fb-8511-677b9d885541', 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0942, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('bbf3cd04-9b72-501d-b399-8677149dd70a', 'รถกระบะบรรทุก 6 ล้อ ขนาดใหญ่ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0734, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c9285e57-5be3-5ceb-a5ad-a7e6b1d58aa7', 'รถตู้บรรทุก 10 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.5747, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('84052697-acbe-5ba4-b270-7401fa21bc90', 'รถตู้บรรทุก 10 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.0852, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1c2e629e-86ba-5a98-a61a-dd8c7fe763b3', 'รถตู้บรรทุก 10 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.059, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4cde7286-27a2-5db4-bba2-50143b75b2a2', 'รถตู้บรรทุก 10 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0454, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e4d25f79-426a-57cd-85a5-af2c5fe5d621', 'รถตู้บรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.678, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f91a4d8f-7306-579e-a873-70dbeb0e95bc', 'รถตู้บรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.1043, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a4066bd8-46c9-5556-b8cb-05f6e6afe611', 'รถตู้บรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0725, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5290f717-a456-5bcb-9c9e-4f43843ab398', 'รถตู้บรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0553, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('45c15678-65b5-58d1-898f-da9b780a3f92', 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.6053, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b986c59f-9237-58e0-b741-42eeae687446', 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.0881, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('fe6ba78c-805a-5f58-94ff-01fb7d5d46ce', 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0617, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4fc1dd87-7657-5a5e-8bfb-57a84e300b78', 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0489, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('8efc41fa-92c2-53e1-9499-4192d13a063f', 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.6674, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b10b52c0-bbb2-5674-8a5c-7da209b39178', 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.1019, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ddbe593e-ec6d-5f23-b000-57c9d1939a61', 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0738, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('314fc022-b9f2-50fe-a809-bde911dddb4a', 'รถตู้บรรทุกเปิด 10 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0612, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4fe8c0c9-48e0-5c05-9c19-c1572ad8de17', 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.59, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('41086d31-24fd-50b1-b283-a1cb3369f6c4', 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.0972, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7bb052dd-a97e-5f87-bff7-ba4889a6ec75', 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0691, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('084fcdf9-0f2e-5a40-b5ba-81f499ae7f13', 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0533, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('55b09aa6-74fe-5b1f-b1e4-9d80b678518e', 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.7513, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('38d2fbbd-f318-5d04-b364-8c0b9f494f5c', 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.1201, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5f33f2c7-7a30-5f35-8c6a-a862785b43af', 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.084, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d44f33ad-b5bc-5082-8b32-f9f2a8abffc3', 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0639, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c29936af-5218-5d55-aa23-fa620644cce1', 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.8215, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1fa477db-e985-5732-ae04-e05da61fcbad', 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.0803, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('0a141f4e-dc8f-5238-b2ec-b5ce680c2d5c', 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0577, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('9b6c26b7-ec64-5b22-b033-85e0b0b4d359', 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0449, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c13bcb5f-f0b8-565b-bbf0-d8ea8b62d8fd', 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.9963, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b6e8360d-1bea-52e6-86a1-c27c27ccb1c9', 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.0914, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('728e08db-2c34-5753-b672-e7a35389c487', 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0655, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c15a6b6a-45cb-5d68-9468-c6222e8ee0eb', 'รถตู้บรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0523, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('05731334-5dcf-58ac-b336-205764476500', 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.787, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6819d0c3-2054-5396-b1b5-7fef8aa16909', 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.073, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1d506b7f-f84b-5427-b2f8-7cd5d81d2d55', 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0517, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6511e7e7-b03c-5160-843f-b7dc0c47838e', 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0404, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d5f12375-6b25-516c-ab6e-7d3546e1e2de', 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.8657, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a4893129-4002-5636-8044-e77deb4d36e5', 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.0858, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('632469aa-05b1-5d9d-b7c0-56040b206a85', 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0628, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a8d104e6-c4ec-5083-80fa-21b53a9077a0', 'รถตู้บรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0502, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b0c88e16-ad1d-595c-8815-ca34f7dd3f89', 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.8684, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('91c863e4-c1be-5c57-9b64-f1797df99203', 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.0802, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5002d854-7dc3-503d-9a5b-c0895d619530', 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0568, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ada135ca-141f-5e97-a8da-a73ea0c9ccc9', 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0443, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2281cf03-35f6-5b01-9370-d81b2207851b', 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 1.0657, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c9c3af8d-40f3-5717-a23e-41cc1c0a77dd', 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.0975, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('cb31936f-b897-575d-befc-5c0bdce23416', 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0687, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f23327b0-27c7-5119-9d4e-060c10a4d08b', 'รถกระบะบรรทุกกึ่งพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0533, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('3abae936-5aa4-54b7-bc88-66505ecb6b2e', 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.2363, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('9f2bd339-6199-5f27-b67d-d8673d30d2a8', 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.0761, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('bb5e9424-ea28-587b-8e11-565079b5978d', 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0529, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e4cf81dc-2660-514a-be98-451616bf9ad2', 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0411, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2511417a-6992-5984-9116-e7a38d05d7a5', 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 1.0021, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4f860721-fc20-5455-a950-1c99bc4dfa23', 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.092, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('78ba341f-563a-5084-91bb-84bf9143be76', 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0651, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ed524cb9-4bbf-56bc-832c-fcb334de55da', 'รถกระบะบรรทุกพ่วง 18 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0507, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('02f14a96-45c1-5f4b-be54-af2e1d934b71', 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.8404, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e49b25a6-3412-5df9-9848-d309bdd73e1b', 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.0839, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('3fe9a604-c17b-5e54-91de-086d631ceb0b', 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0594, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('57eb4bca-696b-532d-b36c-8895df961ed6', 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0448, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f6a95dc6-60fa-5e45-8682-edd8e9748070', 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 1.1441, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('fb189654-cd9f-57ac-be27-c8d1fe053973', 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.101, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('0c9ed4b7-3027-5dac-bdfb-4f5d600c3fd6', 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0706, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ccc92605-c836-583f-a062-b8623053cff7', 'รถกระบะบรรทุกพ่วง 20 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0547, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b7eb5b85-d318-59c4-9e98-ff750f98f34d', 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 1.0206, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('34c82d22-217e-5cb1-bbb6-bfc998341ae5', 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.0866, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d5142197-52be-5172-9c6b-f3e39e176a91', 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0597, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('bbb19c22-16aa-59bf-bdcf-ac3f2885a124', 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0459, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('aa6b0506-c46b-5dcf-b31f-c2c279d9e3fe', 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 1.2452, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2945d93b-f3f1-568c-a431-1808318221cd', 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.1042, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('720b5c7e-3002-52b3-9563-60e72c6b2377', 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.071, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('31f153fa-00f5-57d5-84d8-22129afe6787', 'รถกระบะบรรทุกพ่วง 22 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.054, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a80e269c-3cc4-53b9-9ffe-de7bf209ac65', 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.6316, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e1a02908-2835-57ee-a15b-4e3fad3d932f', 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.0918, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('924c937a-efbd-5f3b-af26-1b1fb157b253', 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0625, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6b0a541a-66d8-5508-9952-c60a1b9d4686', 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0471, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('db224836-8d9b-5e39-abfa-8c8aba1fef40', 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.7382, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f9a60c07-3750-5827-8b5d-ab9fe67bdf29', 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.1098, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('48cd53f4-d898-5438-a20e-47094575ac45', 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0772, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('518dbe48-2d78-5ed6-a4f8-fd5300d49098', 'รถบรรทุกซีเมนต์ชนิดโม่ 10 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0611, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('67453878-3ba8-5654-b340-d4a39b66e077', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 10 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.464, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('50aed907-8336-5965-a4d8-a4f65e91c341', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 10 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.0834, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e2291b89-a1f2-5fd6-95a8-51e2817aaead', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 10 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.061, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('00083110-b093-50c3-aa2d-64d220e92426', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 10 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0475, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('aacd63e6-eeba-5408-9520-b7eff0523cbb', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 10 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.4825, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('67c57e74-0aee-55b8-a1d8-91bf05a47c99', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 10 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.0986, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5b699574-1a9b-593a-8863-15943c72ab80', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 10 ล้อวิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0732, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('d12d6dce-7e2b-5744-8583-1e91fe1a3d6d', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 10 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0546, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f8d3994c-82c6-5f6e-a0b4-a6e3c11ba0c3', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 18 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.9131, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('db1e2ed7-9bba-5180-aad6-6ffaf9a6822a', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 18 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.0841, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1d218791-4123-5b78-990d-68422e8b6cc8', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 18 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0594, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('bdc90043-f506-598e-b1b1-675219537b88', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 18 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0461, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4bec6c9b-38ef-58a5-a8f7-65d7ba9503ea', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 18 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 1.1214, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('689317ee-f3b3-51a5-a345-02376e0cc21e', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 18 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.1043, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('93b180f7-762c-537f-ba48-b97ac3a86beb', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 18 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0746, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('65cae193-799f-5af5-a200-3aabf846eede', 'รถบรรทุกซีเมนต์ผง (ชนิดเต้า/ชนิดถ้วย) 18 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0589, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a6d09434-8274-5653-8f55-60bc6ee5d467', 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.946, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('53cbaa68-19ed-5458-a717-7c6d7424407c', 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.084, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c0521781-3776-5125-9699-8fa0892f2faa', 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0577, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b94134d3-df7f-5939-957f-8700809798f8', 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0433, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b27643c5-43c3-5207-b4cf-075ab7257a0c', 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งสมบุกสมบัน 0% Loading', 'Road transport', 'km', 1.1855, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('93a5a4f8-8519-528a-b57b-e7b9c9a1e980', 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.1049, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('df795bd2-74e7-5bdf-b9bb-fd38b4d62762', 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0745, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('f5042001-dd5f-5ea3-9587-493c07d24315', 'รถบรรทุกซีเมนต์ผง (ชนิดกล้วย) 18 ล้อ วิ่งสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0591, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ce48b4b6-d4de-5be1-8c9a-c4050169ab19', 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.5977, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('da88eedc-86a5-5459-b1eb-a1a76f4b83cf', 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.0956, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6658d506-ef43-50c8-8a99-7e30c2d7bb3f', 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0671, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2ae12ab6-7a3c-5eca-a1a2-9fe98f3ddc34', 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0514, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6d109b43-e058-5923-be24-9242e753093f', 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.643, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e112e5f8-5283-5405-9603-a36b290af3b7', 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.1065, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('24ba0f5c-95eb-5a61-88ea-cf2fb269aa44', 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0752, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('73bfd018-8bd7-5ddb-b4a6-116f51ffb592', 'รถบรรทุกเฉพาะกิจ (ติดเครน) 10 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0573, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('42dce101-3390-5d1d-90e9-8426ef0ca99d', 'รถบรรทุกขยะ 6 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.4923, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1e4e2909-f2f9-528f-b78a-d7aa8897591d', 'รถบรรทุกขยะ 6 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.084, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b3ef39bd-fc3c-5d77-bfd6-41034ab94d26', 'รถบรรทุกขยะ 6 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0607, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('bc0ef22b-2fa7-52d8-a697-de836cadb6d3', 'รถบรรทุกขยะ 6 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0475, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('fdc7c42f-18bf-57db-9161-860907fbf25d', 'รถบรรทุกขยะ 6 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.5446, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('eb26360e-5564-5fa6-b6d0-84cddb16c750', 'รถบรรทุกขยะ 6 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.0945, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('23153fff-49bc-5bbe-9b13-ede3bfe878da', 'รถบรรทุกขยะ 6 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0693, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('0f5cda37-f141-5886-b58b-830d33d44c1e', 'รถบรรทุกขยะ 6 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0552, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('03338d68-edc1-54a4-b871-358469286127', 'รถกระบะบรรทุกพ่วง 18 ล้อ', 'Road transport', 'tkm', 0.2145, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7f660789-ee0b-55ed-84fc-2096a9883354', 'รถกระบะบรรทุกพ่วง 18 ล้อ', 'Road transport', 'tkm', 0.1072, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c433a5fb-fc37-5efd-9958-9b519e38236f', 'รถกระบะบรรทุกพ่วง 18 ล้อ', 'Road transport', 'tkm', 0.0715, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('445b1519-c0fe-5b04-9b0c-2ca98a1871dc', 'รถกระบะบรรทุกพ่วง 18 ล้อ', 'Road transport', 'tkm', 0.0536, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7aa4694b-4a72-559b-b152-3121756d3749', 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 0% Loading', 'Road transport', 'km', 0.5344, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a00942c8-278d-5ea0-9cbe-28ba6b0a52cf', 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 50% Loading', 'Road transport', 'tkm', 0.0786, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('48740f88-8521-550f-acda-9edfd58fd0fe', 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 75% Loading', 'Road transport', 'tkm', 0.0543, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c4cfa917-e275-5005-8d4e-3afca55f8ba6', 'รถกระบะบรรทุก 10 ล้อ วิ่งปกติ 100% Loading', 'Road transport', 'tkm', 0.0419, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('40273d4f-5275-5eb5-8a2f-4955965196e9', 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 0% Loading', 'Road transport', 'km', 0.6374, 'ระยะทาง', 'km', NULL, NULL, 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('4444b20c-4c5b-5231-a5ec-4119beb1b580', 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 50% Loading', 'Road transport', 'tkm', 0.0972, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e9a15f11-d6c3-59f5-87a1-622f8f0a1231', 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 75% Loading', 'Road transport', 'tkm', 0.0684, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('0e5a56a0-68df-54f4-997b-9fb355d64042', 'รถกระบะบรรทุก 10 ล้อ วิ่งแบบสมบุกสมบัน 100% Loading', 'Road transport', 'tkm', 0.0536, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'Thai National LCI Database, TIIS-MTEC-NSTDA (with TGO electricity 2016-2018)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5031f4d6-41cd-541c-a1af-13d9438443f3', 'Crude tanker', 'Marine transport', 'tkm', 0.00457, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'DEFRA: Greenhouse gas reporting: conversion factors 2025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2d2dbdc4-2064-5af0-8889-b537589ed007', 'Products tanker', 'Marine transport', 'tkm', 0.00902, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'DEFRA: Greenhouse gas reporting: conversion factors 2025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('59271e6a-fe8f-53f3-93e4-a7862a8d3dd8', 'Chemical tanker', 'Marine transport', 'tkm', 0.01031, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'DEFRA: Greenhouse gas reporting: conversion factors 2025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('68277d50-fb77-5e88-b1e1-a803f0b67059', 'LNG tanker', 'Marine transport', 'tkm', 0.01153, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'DEFRA: Greenhouse gas reporting: conversion factors 2025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('222bd03e-d414-519e-92ec-a7dace7fc431', 'LPG Tanker', 'Marine transport', 'tkm', 0.01037, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'DEFRA: Greenhouse gas reporting: conversion factors 2025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7c3c5394-6677-5eea-94eb-9f0d414b8952', 'Freight train', 'Air transport', 'tkm', 0.02779, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'DEFRA: Greenhouse gas reporting: conversion factors 2025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, sub_category, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('43350691-73bd-55c3-9249-d1ad0842e57b', 'International, to/from non-UK', 'Rail transport', 'tkm', 0.89939, 'ระยะทาง', 'km', 'น้ำหนักที่ขน', 'ton', 'DEFRA: Greenhouse gas reporting: conversion factors 2025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000003-0003-4003-8003-00000000000f', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('bee16660-4f48-5ec4-b156-90da8297ea3d', 'Diesel B7', 'Liter', 0.11507832, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000004-0004-4004-8004-000000000014', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('885ba7ac-bb61-511b-be90-c5463d5040f5', 'Diesel B20', 'Liter', 0.3287952, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 0.3287952, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000004-0004-4004-8004-000000000014', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('074151e3-eed6-5e31-b192-68344656aa00', 'Gasohol: E10', 'Liter', 0.14967828, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 0.14967828, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000004-0004-4004-8004-000000000014', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b997d4d5-3124-5b93-9676-3e7e38b829fd', 'Gasohol: E20', 'Liter', 0.29935656, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 0.29935656, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000004-0004-4004-8004-000000000014', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('bbc73dbb-05ed-57f9-b7d7-ab932bd89e8a', 'Gasohol: E85', 'Liter', 1.27226538, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.27226538, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000004-0004-4004-8004-000000000014', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('33ca5aa4-f68b-5826-84cb-7e2d7ffbcd1e', 'Fuel wood', 'kg', 1.79088, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.79088, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000004-0004-4004-8004-000000000014', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('c1f4df1d-5c6e-5085-993f-21c35dd60486', 'Saw dust', 'kg', 1.21856, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.21856, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000004-0004-4004-8004-000000000014', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('e8316a51-738c-5d03-b365-9b20313fefeb', 'Charcoal', 'kg', 3.23456, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 3.23456, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000004-0004-4004-8004-000000000014', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('ca36680a-f896-509e-8f50-a74192499cf5', 'Paddy husk', 'kg', 1.44, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000004-0004-4004-8004-000000000014', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('41db7c31-4ff7-565e-8556-652592715527', 'Baggasse', 'kg', 0.753, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 0.753, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000004-0004-4004-8004-000000000014', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2ea99375-502e-5eaa-bfac-7f4999d64669', 'Palm kernel shell', 'kg', 1.853, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.853, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000004-0004-4004-8004-000000000014', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('2fbb1a5d-79ce-59fe-9a7c-d50df226c7c3', 'Cob', 'kg', 1.678, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.678, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000004-0004-4004-8004-000000000014', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('5d72b2d0-01cd-579a-9aec-132bf93da0d7', 'Biogas', 'm3', 1.142778, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 2, table 2.3,  p.2.18 - 2.19  และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.142778, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000004-0004-4004-8004-000000000014', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('1006c199-a612-5c26-ad52-28fe50630983', 'Diesel B7', 'Liter', 0.11507832, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 0.11507832, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000004-0004-4004-8004-000000000014', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('6d645647-4644-5666-b77d-36a53bc6b0aa', 'Gasohol: E10 4-stroke: Aggriculture', 'Liter', 0.14967828, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 0.14967828, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000004-0004-4004-8004-000000000014', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a958cfb8-3cf2-5a8d-a083-8350863a75e4', 'Gasohol: E10 4-stroke:  Forestry', 'Liter', 0.14967828, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 0.14967828, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000004-0004-4004-8004-000000000014', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('a37e62ac-b350-54c1-aa31-72b6ca2d4519', 'Gasohol: E10 4-stroke:  Industry', 'Liter', 0.14967828, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 0.14967828, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000004-0004-4004-8004-000000000014', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('aae05adb-017f-5954-aa39-a6d23160e3cf', 'Gasohol: E10 4-stroke: Household', 'Liter', 0.14967828, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 0.14967828, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000004-0004-4004-8004-000000000014', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('de20c920-7702-5b14-b610-2db46073f72a', 'Gasohol: E10 2-stroke: Aggriculture', 'Liter', 0.14967828, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 0.14967828, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000004-0004-4004-8004-000000000014', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('de098bf4-31ca-5864-94b5-9d5602874334', 'Gasohol: E10 2-stroke: Forestry', 'Liter', 0.14967828, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 0.14967828, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000004-0004-4004-8004-000000000014', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('b9cb027e-1cdd-5cc9-adf0-34ceea0062c5', 'Gasohol: E10 2-stroke: Industry', 'Liter', 0.14967828, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 0.14967828, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000004-0004-4004-8004-000000000014', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('51af812c-2213-59ba-abeb-35bb6f637a25', 'Gasohol: E10 2-stroke: Household', 'Liter', 0.14967828, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.3.1 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 0.14967828, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000004-0004-4004-8004-000000000014', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('82769305-aa8f-551e-836c-f494cdac2906', 'Diesel (B7)', 'Liter', 0.11507832, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 & 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 0.11507832, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000004-0004-4004-8004-000000000014', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('450dd443-1917-5bbf-bb8b-71e83a866930', 'Diesel (20)', 'Liter', 0.3287952, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 & 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 0.3287952, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000004-0004-4004-8004-000000000014', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7ef13bcb-f4b1-52e7-aec3-73f6c959f93c', 'Gasohol: E10', 'Liter', 0.14967828, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 & 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 0.14967828, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000004-0004-4004-8004-000000000014', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('fdc8a995-a157-54a1-933f-67d985bb1649', 'Gasohol: E20', 'Liter', 0.29935656, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 & 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 0.29935656, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000004-0004-4004-8004-000000000014', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('fd832887-e5bd-558e-91c5-226ac5916ffc', 'Gasohol: E85', 'Liter', 1.27226538, NULL, NULL, NULL, NULL, 'IPCC defaults (2006), volume 2, chapter 3, table 3.2.1 & 3.2.2 และ Convert ค่าโดยอาศัยค่าคุณลักษณะเชื้อเพลิง', 1.27226538, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a1000004-0004-4004-8004-000000000014', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

INSERT INTO fuel_resources (id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100, scope_category_id, version, multiplier, created_at, updated_at)
VALUES ('7e76fdb4-ec4e-58da-bc3c-fbedd23c39e3', 'R-22', 'kg', 1760.0, NULL, NULL, NULL, NULL, 'IPCC 2013, AR5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1.0, 1760.0, 'a1000004-0004-4004-8004-000000000014', 'กุมภาพันธ์ 2569', 1.0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET
  scope_category_id = EXCLUDED.scope_category_id,
  resource = EXCLUDED.resource,
  unit = EXCLUDED.unit,
  ef_value = EXCLUDED.ef_value,
  version = EXCLUDED.version,
  deleted_at = NULL,
  updated_at = NOW();

COMMIT;