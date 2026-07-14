# EF Catalog Admin Ops

Admin-console is the **system of record** for emission-factor master data (scope categories, versioned fuel resources, linking, and published releases). Fuels can be loaded via dataprep SQL seeds or **Excel import** (matching Export Excel). Client apps will later sync or bootstrap from exports; do not remove client seeds until a test instance can load from this catalog.

## Version labels (exact)

| Label | Meaning |
|-------|---------|
| `กุมภาพันธ์ 2569` | Feb 2569 spreadsheet catalog |
| `พฤษภาคม 2569` | May 2569 spreadsheet catalog (UUID v5 IDs) |
| `TGO API` | TGO CFO/CFP catalog rows |

## Migrations

Apply in order on admin Supabase:

1. Existing fuel/category schema (if not already applied)
2. `database/migration_add_ef_catalog_versioning.sql` — `version` / `ref_code` / `sort_index` / `multiplier` on `fuel_resources`; `ef_catalog_releases`; `fuel_resources_linking`
3. `database/migration_align_scope_categories_canonical.sql` — 20 fixed category UUIDs + FK remap

## Generate + load seed SQL

From `cfo-admin-console` (requires sibling `ideacarb-client-app` checkout):

```bash
npm run ef-catalog:generate-import
```

Writes under `dataprep/ef-catalog/generated/`:

1. `01_scope_categories.sql`
2. `02a_fuel_resources_may2569.sql`
3. `02b_fuel_resources_may2569.sql`
4. `02c_fuel_resources_may2569.sql`
5. `03_fuel_resources_tgo_api.sql`
6. `04_fuel_resources_feb2569.sql`

Apply after migrations in filename order. The May catalog is split into three independently idempotent transactions so each file fits the Supabase SQL Editor. Then publish from Emission Resources (version tab actions).

Expected rough fuel counts: Feb ~990, May ~1797, TGO ~691.

## Linking import

UI: **Fuel Resource Linking** (`/admin-console/fuel-resources-linking`).

- Select version
- Paste V3-style CSV with business keys: `source_category`, `source_resource`, `dest_category`, `dest_resource`, `factor` (or UUID columns)
- Replace-import fails the batch if any row is unresolved

Source CSV reference: `ideacarb-client-app/dataprep/scope-linking/Scopes Linking Data V3.csv`

## Publish + Excel import/export + version delete

Version tabs on Emission Resources are **dynamic** from `ef_catalog_releases` (a newly imported label appears immediately). Known labels use short display names (Feb / May / TGO); otherwise the raw version string is shown.

**Page header:** **Import Excel** (not tied to the active tab) and Manage Categories.

Under the selected **version tab**:

| Info / Action | Effect |
|---------------|--------|
| Status | `draft` or `published` for that version |
| Links | `link_count` for that version |
| Delete version fuels | Soft-delete all fuels for the selected version only |
| Publish | Set `status=published`, store `content_hash`, `published_at`, refresh counts |
| Export Excel | Download `fuel_resources_<version>.xlsx` (fuels only; use as import template) |

### Import Excel modes

Dialog (page-level Import Excel):

1. **New version** — free-text label; creates a draft `ef_catalog_releases` row and inserts fuels. Fails if the label already exists (release or active fuels).
2. **Update existing version** — pick a release; **soft-delete all fuels for that version**, **delete `fuel_resources_linking` for that version**, then insert from Excel. Requires typing the version label to confirm (clears existing fuels and may affect clients already using those emission factors).

Shared import rules:

- Format: `.xlsx` only (same columns as Export Excel)
- Upsert by `id` when present; missing `id` gets a new UUID
- File `version` column is ignored; rows use the dialog-selected version
- Duo-value columns (`value1_*`, `value2_*`) are supported for manual TGO supplements
- Insert/upsert clears `deleted_at` on matching IDs

API:

- `GET /api/ef-catalog/releases`
- `POST /api/ef-catalog/releases` body `{ version, action: publish | set_default | refresh_counts }`
- `GET /api/ef-catalog/export?version=...&artifact=fuel_resources` → Excel
- `GET /api/ef-catalog/export?version=...&artifact=fuel_resources_linking` → CSV (linking page)
- `POST /api/fuel-resources/import` body `{ version, mode: 'create' | 'replace', rows }`
- `DELETE /api/fuel-resources?version=...` soft-delete that version
  - Unpublished exports need `allow_draft=true` (QA)

Category CSV import is not available. TGO API live sync is planned later.

## Admin UI surfaces

- `/admin-console/emission-resources` — dynamic version tabs, read-only fuel table, page-level Import Excel, per-version Delete / Publish / Export
- `/admin-console/fuel-resources-linking` — linking table + import/export

## Verification checklist

1. Categories count = 20 with manifest UUIDs
2. Per-version fuel counts match seeds (approx.)
3. Linking import: 0 unresolved for target version
4. Publish May + TGO from version tabs
5. Export Excel → edit/add duo-value row → Import Excel (new or replace); IDs stable across re-export
6. New version import → tab appears; release is draft
7. Replace existing → fuels reloaded; linking for that version cleared; typed confirmation required
8. Create with duplicate version name → rejected
9. Delete version fuels affects only that version
10. Templates still resolve after category align

## Out of scope (later)

- Client seed removal / `new-master-data` deploy change
- Client sync module
- Historical ID remapping on live tenants
- Live TGO HTTP ingest
