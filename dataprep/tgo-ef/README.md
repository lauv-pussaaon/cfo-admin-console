# TGO EF dataprep (admin SoT)

Offline pipeline to refresh TGO CFO/CFP emission factors into an Excel file for **Import new version** on Emission Resources.

```bash
# from cfo-admin-console
pnpm tgo-ef:fetch
pnpm tgo-ef:build-import -- --version "TGO พฤษภาคม 2569"
# or: TGO_EF_VERSION="TGO July 2569" pnpm tgo-ef:build-import
```

`--version` / `TGO_EF_VERSION` is required (no hardcoded product default). Use a distinct label for each import cut.

| Path | Role |
|------|------|
| `raw/tgo-ef-cfo.json`, `raw/tgo-ef-cfp.json` | API snapshots (gitignored) |
| `out/fuel_resources_tgo_import.xlsx` | Upload via Import new version |
| `../ef-catalog/generated/03a|03b|03c_fuel_resources_tgo_api.sql` | Optional seed SQL (same rows as Excel, 3 parts) |
| `../ef-catalog/generated/03d_fuel_resources_tgo_fugitive_overlay.sql` | Scope 1 Cat 4 overlay from May 2569 for both TGO version labels + soft-delete leftover EF005 refrigerants |

Env: `TGO_EF_REQ_TOKEN` (optional; script has a dataprep fallback); `TGO_EF_VERSION` (alternative to `--version`).

Cat 4 labels: all Cat 4 → `value1` ระยะทาง/km; rows **without** literal ` 0% Loading` (leading space) also get `value2` น้ำหนักที่ขน/ton.

TGO JSON `description` is stored on `description`. Cat 4 only: `น้ำหนักบรรทุกสูงสุด {n} ตัน` → `meta.maxLoadTon`. Excel `meta` is a JSON string.

Scope 1 Cat 4 fugitive: TGO API `EF005` refrigerants are dropped at build time and replaced with the 55 May 2569 rows from `02a` (duo labels, GHG columns, septic `multiplier` 0.012). Overlay ids are UUID v5 of `mayId|version` (do not reuse May ids). `R-22 (HCFC-22)` stays on Scope 4. `03d` upserts the overlay for `TGO พฤษภาคม 2569` and `TGO 1 กรกฎาคม 2569`. Do not edit `raw/` to fake API coverage. After applying `03d` on an existing admin DB, **Re-publish both** TGO versions.
