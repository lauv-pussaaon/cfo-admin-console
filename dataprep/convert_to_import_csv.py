#!/usr/bin/env python3
"""
Convert Source- Fuel Resources.csv → fuel_resources_import.csv
ready for the admin console CSV import feature.

Source columns:  scope, category_th, category_en, sub_category, resource, unit, ef_value, id, ref_source
Output columns:  id, category_name_th, resource, sub_category, unit, ef_value, ref_source

The `category_name_th` field is resolved server-side to `scope_category_id`
by the /api/fuel-resources/import endpoint.

Usage:
    python3 convert_to_import_csv.py
Output:
    dataprep/fuel_resources_import.csv
"""

import csv
import collections
import sys
from pathlib import Path

SOURCE_FILE = Path(__file__).parent / "Source- Fuel Resources.csv"
OUTPUT_FILE = Path(__file__).parent / "fuel_resources_import.csv"

VALID_SCOPES = {"1", "2", "3", "4"}

# Known scope_category name_th values (must match DB exactly)
KNOWN_CATEGORIES = {
    "1) การเผาไหม้อยู่กับที่ (Stationary combustion)",
    "2.1) การเผาไหม้ที่มีการเคลื่อนที่ (Mobile combustion) (Off road)",
    "2.2) การเผาไหม้ที่มีการเคลื่อนที่ (Mobile combustion) (On road)",
    "3) กระบวนการผลิต (Process emissions)",
    "4) การรั่วไหล และอื่น ๆ (Fugitive emissions)",
    "การใช้พลังงานไฟฟ้า",
    "Category 1 การซื้อวัตถุดิบ และบริการ",
    "Category 2 สินค้าประเภททุน",
    "Category 3 กิจกรรมที่เกี่ยวข้องกับเชื้อเพลิงและพลังงาน",
    "Category 4 การขนส่งและกระจายสินค้าต้นน้ำ",
    "Category 5 การจัดการของเสียที่เกิดจากการด าเนินกิจกรรมขององค์กร",
    "Category 6 การเดินทางเพื่อธุรกิจ",
    "Category 7 การเดินทางของพนักงาน",
    "Category 8 การใช้สินทรัพย์ที่เช่า",
    "Category 9 การขนส่งและกระจายสินค้า",
    "Category 10 การแปรรูปสินค้าที่องค์กรจำหน่าย",
    "Category 11 การใช้งานของผลิตภัณฑ์ที่องค์กรจำหน่าย",
    "Category 12 การจัดการซากผลิตภัณฑ์ที่องค์กรจำหน่าย",
    "Category 13 การปล่อยเช่าสินทรัพย์ขององค์กร",
    "แยกรายงานการใช้พลังงาน",
}

OUTPUT_HEADERS = [
    "id",
    "category_name_th",
    "resource",
    "sub_category",
    "unit",
    "ef_value",
    "ref_source",
]


def main():
    if not SOURCE_FILE.exists():
        print(f"ERROR: Source file not found: {SOURCE_FILE}", file=sys.stderr)
        sys.exit(1)

    with open(SOURCE_FILE, encoding="utf-8-sig") as f:
        source_rows = list(csv.DictReader(f))

    print(f"Source rows read:  {len(source_rows)}")

    # ── Analysis ──────────────────────────────────────────────────────────────
    errors = []
    seen_ids: set[str] = set()

    scope_counts: dict[str, int] = collections.Counter()
    cat_counts: dict[tuple, int] = collections.Counter()
    key_counts: dict[tuple, int] = collections.Counter()

    for i, row in enumerate(source_rows, start=2):  # row 1 = header
        row_id = row.get("id", "").strip()
        scope = row.get("scope", "").strip()
        cat_th = row.get("category_th", "").strip()
        resource = row.get("resource", "").strip()
        unit = row.get("unit", "").strip()
        sub_cat = row.get("sub_category", "").strip()

        if not row_id:
            errors.append(f"Row {i}: missing id")
        elif row_id in seen_ids:
            errors.append(f"Row {i}: duplicate id {row_id}")
        else:
            seen_ids.add(row_id)

        if scope not in VALID_SCOPES:
            errors.append(f"Row {i}: invalid scope '{scope}'")

        if cat_th not in KNOWN_CATEGORIES:
            errors.append(f"Row {i}: unknown category_th '{cat_th[:60]}'")

        if not resource:
            errors.append(f"Row {i}: missing resource")

        scope_counts[scope] += 1
        cat_counts[(scope, cat_th)] += 1
        key_counts[(scope, cat_th, sub_cat, resource, unit)] += 1

    dup_combos = {k: v for k, v in key_counts.items() if v > 1}

    # ── Print report ──────────────────────────────────────────────────────────
    print()
    print("=== UNIQUENESS ANALYSIS ===")
    print(f"  Unique IDs:         {len(seen_ids)}")
    print(f"  Duplicate ID rows:  {sum(1 for e in errors if 'duplicate id' in e)}")
    print()
    print("=== DISTRIBUTION BY SCOPE ===")
    for scope in sorted(scope_counts):
        print(f"  Scope {scope}: {scope_counts[scope]:3d} rows")
    print()
    print("=== DISTRIBUTION BY CATEGORY ===")
    for (scope, cat), count in sorted(cat_counts.items()):
        print(f"  Scope {scope} | {count:3d} | {cat[:70]}")
    print()
    print(f"=== DUPLICATE RESOURCE+UNIT COMBOS: {len(dup_combos)} ===")
    for (scope, cat, sub, res, unit), count in sorted(dup_combos.items(), key=lambda x: x[1], reverse=True):
        cat_short = cat.split("Category")[-1].strip()[:30] if "Category" in cat else cat[:30]
        print(f"  {count}x | S{scope} | {sub[:20]:<20} | {res[:40]:<40} | {unit}")
    print()

    if errors:
        print(f"=== VALIDATION ERRORS: {len(errors)} ===")
        for err in errors[:20]:
            print(f"  {err}")
        if len(errors) > 20:
            print(f"  ... and {len(errors) - 20} more")
        print()
        print("NOTE: Rows with unknown categories will still be written to CSV.")
        print("      Server-side lookup will fail for those rows.")
        print()

    # ── Write output CSV ──────────────────────────────────────────────────────
    written = 0
    with open(OUTPUT_FILE, "w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=OUTPUT_HEADERS)
        writer.writeheader()

        for row in source_rows:
            out = {
                "id":               row.get("id", "").strip(),
                "category_name_th": row.get("category_th", "").strip(),
                "resource":         row.get("resource", "").strip(),
                "sub_category":     row.get("sub_category", "").strip(),
                "unit":             row.get("unit", "").strip(),
                "ef_value":         row.get("ef_value", "").strip(),
                "ref_source":       row.get("ref_source", "").strip(),
            }
            writer.writerow(out)
            written += 1

    print(f"=== OUTPUT ===")
    print(f"  Written to: {OUTPUT_FILE}")
    print(f"  Total rows: {written}")
    print()
    print("=== IMPORT INSTRUCTIONS ===")
    print("  1. Ensure scope_categories are seeded in the admin DB first.")
    print("     Run: database/03_seed_scope_categories_and_fuel_resources.sql")
    print("     (or import them via Admin Console → Manage Categories → Import CSV)")
    print()
    print("  2. Import the output CSV via:")
    print("     Admin Console → Emission Resources → Import CSV")
    print()
    print("  3. The server resolves category_name_th → scope_category_id automatically.")
    print("  4. Rows with existing IDs will be UPDATED; new IDs will be INSERTED.")
    print("  5. Re-running the same CSV is idempotent (upsert by UUID).")


if __name__ == "__main__":
    main()
