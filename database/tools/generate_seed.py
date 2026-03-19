#!/usr/bin/env python3
"""Generate 03_seed_scope_categories_and_fuel_resources.sql from ideacarb 01_setup.sql.
Uses deterministic UUIDs (uuid_generate_v5) for idempotent re-seeding."""

import re
import sys
from pathlib import Path

NAMESPACE_SCOPE = "a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11"
NAMESPACE_FUEL = "b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11"

SCOPE_CATEGORIES = [
    (1, "1) การเผาไหม้อยู่กับที่ (Stationary combustion)", "1) Stationary combustion", 1),
    (1, "2.1) การเผาไหม้ที่มีการเคลื่อนที่ (Mobile combustion) (Off road)", "2.1) Mobile combustion (Off road)", 2),
    (1, "2.2) การเผาไหม้ที่มีการเคลื่อนที่ (Mobile combustion) (On road)", "2.2) Mobile combustion (On road)", 3),
    (1, "3) กระบวนการผลิต (Process emissions)", "3) Process emissions", 4),
    (1, "4) การรั่วไหล และอื่น ๆ (Fugitive emissions)", "4) Fugitive emissions", 5),
    (2, "การใช้พลังงานไฟฟ้า", "Purchased Electricity", 6),
    (3, "Category 1 การซื้อวัตถุดิบ และบริการ", "Category 1 Purchased goods and services", 7),
    (3, "Category 2 สินค้าประเภททุน", "Category 2 Capital goods", 8),
    (3, "Category 3 กิจกรรมที่เกี่ยวข้องกับเชื้อเพลิงและพลังงาน", "Category 3 Fuel and energy related activities", 9),
    (3, "Category 4 การขนส่งและกระจายสินค้าต้นน้ำ", "Category 4 Upstream transportation and distribution", 10),
    (3, "Category 5 การจัดการของเสียที่เกิดจากการด าเนินกิจกรรมขององค์กร", "Category 5 Waste generated in operations", 11),
    (3, "Category 6 การเดินทางเพื่อธุรกิจ", "Category 6 Business travel", 12),
    (3, "Category 7 การเดินทางของพนักงาน", "Category 7 Employee commuting", 13),
    (3, "Category 8 การใช้สินทรัพย์ที่เช่า", "Category 8 Upstream leased assets", 14),
    (3, "Category 9 การขนส่งและกระจายสินค้า", "Category 9 Downstream transportation and distribution", 15),
    (3, "Category 10 การแปรรูปสินค้าที่องค์กรจำหน่าย", "Category 10 Processing of sold products", 16),
    (3, "Category 11 การใช้งานของผลิตภัณฑ์ที่องค์กรจำหน่าย", "Category 11 Use of sold products", 17),
    (3, "Category 12 การจัดการซากผลิตภัณฑ์ที่องค์กรจำหน่าย", "Category 12 End-of-life treatment of sold products", 18),
    (3, "Category 13 การปล่อยเช่าสินทรัพย์ขององค์กร", "Category 13 Downstream leased assets", 19),
    (4, "แยกรายงานการใช้พลังงาน", "Energy Usage Reporting", 20),
]

def escape_sql(s: str) -> str:
    return s.replace("'", "''")

def main():
    ideacarb_root = Path(__file__).resolve().parent.parent.parent.parent / "ideacarb-client-app"
    setup_sql = ideacarb_root / "database" / "01_setup.sql"
    if not setup_sql.exists():
        print(f"Error: {setup_sql} not found", file=sys.stderr)
        sys.exit(1)

    content = setup_sql.read_text(encoding="utf-8")

    # Extract fuel_resources INSERT blocks (from PART 3: SEED FUEL RESOURCES to PART 4 or VERIFY)
    fuel_start = content.find("-- ===========================================\n-- PART 3: SEED FUEL RESOURCES")
    fuel_end = content.find("-- ===========================================\n-- PART 3: VERIFY INSERTION", fuel_start)
    if fuel_end == -1:
        fuel_end = content.find("-- ===========================================\n-- PART 4:", fuel_start)
    if fuel_end == -1:
        fuel_end = len(content)

    fuel_section = content[fuel_start:fuel_end]

    # Parse INSERT ... SELECT blocks
    pattern = re.compile(
        r"INSERT INTO fuel_resources \(scope_category_id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100\)\s+"
        r"SELECT sc\.id, ([^,]+), ([^,]+), ([^,]+), ([^,]+), ([^,]+), ([^,]+), ([^,]+), ([^,]+), ([^,]+), ([^,]+), ([^,]+), ([^,]+), ([^,]+), ([^,]+), ([^,]+), ([^,]+), ([^,]+), ([^,]+), ([^,]+), ([^,]+), ([^,]+)\s+"
        r"FROM scope_categories sc\s+"
        r"WHERE sc\.name_th = ([^;]+);",
        re.DOTALL
    )

    out_lines = [
        "-- Admin Console - Seed scope_categories and fuel_resources",
        "-- Extracted from ideacarb-client-app/database/01_setup.sql",
        "-- Uses deterministic UUIDs for idempotent re-seeding and export/import",
        "-- Run order: 01_schema.sql, migration_add_scope_categories.sql, migration_add_fuel_resources.sql, 02_seed_master_data.sql, then this file",
        "",
        "-- ===========================================",
        "-- PART 1: SEED SCOPE CATEGORIES (upsert by id)",
        "-- ===========================================",
        "",
        "INSERT INTO scope_categories (id, scope, name_th, name_en, display_order) VALUES",
    ]

    for i, (scope, name_th, name_en, display_order) in enumerate(SCOPE_CATEGORIES):
        comma = "," if i < len(SCOPE_CATEGORIES) - 1 else ""
        out_lines.append(
            f"  (uuid_generate_v5('{NAMESPACE_SCOPE}'::uuid, 'sc_{scope}_{display_order}'), {scope}, "
            f"'{escape_sql(name_th)}', '{escape_sql(name_en)}', {display_order}){comma}"
        )

    out_lines.extend([
        "",
        "ON CONFLICT (id) DO UPDATE SET",
        "  scope = EXCLUDED.scope,",
        "  name_th = EXCLUDED.name_th,",
        "  name_en = EXCLUDED.name_en,",
        "  display_order = EXCLUDED.display_order,",
        "  updated_at = NOW();",
        "",
        "-- ===========================================",
        "-- PART 2: SEED FUEL RESOURCES (upsert by id)",
        "-- ===========================================",
        "",
    ])

    matches = pattern.findall(fuel_section)
    for idx, m in enumerate(matches):
        resource, unit, ef_value, v1l, v1u, v2l, v2u, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp_h, gwp_p, extra_ef, extra_gwp, name_th = m
        resource = resource.strip().strip("'")
        unit = unit.strip().strip("'")
        name_th = name_th.strip().strip("'")
        key = f"{escape_sql(name_th)}|{escape_sql(resource)}|{escape_sql(unit)}"
        out_lines.append(
            f"INSERT INTO fuel_resources (id, scope_category_id, resource, unit, ef_value, value1_label, value1_unit, value2_label, value2_unit, ref_info, ref_co2, ref_fossil_ch4, ref_ch4, ref_n2o, ref_sf6, ref_nf3, ref_hfcs, ref_pfcs, gwp100_hfcs, gwp100_pfcs, extraghg_ef, extraghg_gwp100)"
        )
        out_lines.append(
            f"SELECT uuid_generate_v5('{NAMESPACE_FUEL}'::uuid, sc.id::text || '|{key}'), sc.id, {m[0]}, {m[1]}, {m[2]}, {m[3]}, {m[4]}, {m[5]}, {m[6]}, {m[7]}, {m[8]}, {m[9]}, {m[10]}, {m[11]}, {m[12]}, {m[13]}, {m[14]}, {m[15]}, {m[16]}, {m[17]}, {m[18]}, {m[19]}, {m[20]}")
        )
        out_lines.append(f"FROM scope_categories sc WHERE sc.name_th = {m[21]}")
        out_lines.append(
            "ON CONFLICT (id) DO UPDATE SET scope_category_id=EXCLUDED.scope_category_id, resource=EXCLUDED.resource, "
            "unit=EXCLUDED.unit, ef_value=EXCLUDED.ef_value, value1_label=EXCLUDED.value1_label, value1_unit=EXCLUDED.value1_unit, "
            "value2_label=EXCLUDED.value2_label, value2_unit=EXCLUDED.value2_unit, ref_info=EXCLUDED.ref_info, "
            "ref_co2=EXCLUDED.ref_co2, ref_fossil_ch4=EXCLUDED.ref_fossil_ch4, ref_ch4=EXCLUDED.ref_ch4, ref_n2o=EXCLUDED.ref_n2o, "
            "ref_sf6=EXCLUDED.ref_sf6, ref_nf3=EXCLUDED.ref_nf3, ref_hfcs=EXCLUDED.ref_hfcs, ref_pfcs=EXCLUDED.ref_pfcs, "
            "gwp100_hfcs=EXCLUDED.gwp100_hfcs, gwp100_pfcs=EXCLUDED.gwp100_pfcs, extraghg_ef=EXCLUDED.extraghg_ef, "
            "extraghg_gwp100=EXCLUDED.extraghg_gwp100, updated_at=NOW();"
        )
        out_lines.append("")

    output_path = Path(__file__).resolve().parent.parent / "03_seed_scope_categories_and_fuel_resources.sql"
    output_path.write_text("\n".join(out_lines), encoding="utf-8")
    print(f"Generated {output_path} with {len(matches)} fuel_resources rows")

if __name__ == "__main__":
    main()
