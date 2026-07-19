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
| `../ef-catalog/generated/03_fuel_resources_tgo_api.sql` | Optional seed SQL (same rows) |

Env: `TGO_EF_REQ_TOKEN` (optional; script has a dataprep fallback); `TGO_EF_VERSION` (alternative to `--version`).

Cat 4 labels: all Cat 4 → `value1` ระยะทาง/km; rows **without** literal ` 0% Loading` (leading space) also get `value2` น้ำหนักที่ขน/ton.
