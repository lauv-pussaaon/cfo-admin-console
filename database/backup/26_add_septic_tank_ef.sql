INSERT INTO emission_factors (id, activity_name_th, activity_name_en, scope, category_code, unit, co2_factor, ch4_factor, n2o_factor, co2e_factor, source, source_version, reference_year, applicable_region, is_active) VALUES
 ('062ee477-d9c0-47d8-b068-6b3924dcd86b', 'การรั่วไหลของก๊าซมีเทนจาก Septic tank', 'Fugitive CH4 from Septic tank', 1, 'S1.FUGITIVE', 'kgCH4', 28.0000, 1.0000, 0.0000, 0.0000, 'IPCC', 'AR4', 2006, 'Thailand', true);

INSERT INTO emission_activities (id, scope, code, name_th, name_en, default_unit) VALUES
('e60d80fb-0c99-4bfd-99a2-8befe1a9cf8e', 1, 'SEPTIC_TANK', 'การรั่วไหลของก๊าซมีเทนจาก Septic tank', 'Fugitive CH4 from Septic tank', 'kgCH4')
ON CONFLICT (id) DO NOTHING;

INSERT INTO emission_activity_factors (activity_id, emission_factor_id, is_default) VALUES
('e60d80fb-0c99-4bfd-99a2-8befe1a9cf8e', '062ee477-d9c0-47d8-b068-6b3924dcd86b', true)
ON CONFLICT (activity_id, emission_factor_id) DO NOTHING;

  RAISE NOTICE 'Created septic tank emission factors and activities';
END;