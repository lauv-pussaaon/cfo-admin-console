# EF Catalog Admin Ops

Admin-console is the **system of record** for emission-factor master data (scope categories, versioned fuel resources, linking, and published releases). Client apps can **sync published catalogs** via the Sync catalog page (Phase 1). Default client deploy still seeds until full cutover; use `SKIP_EF_MASTER_SEEDS=1` for empty test instances.

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

## Linking (table + Add modal)

UI: **Fuel Resource Linking** (`/admin-console/fuel-resources-linking`).

- Version tabs from `ef_catalog_releases`
- **Table** of links for the selected version (source, dest, factor, edit/delete)
- Toolbar: **Total: N links** and **Add linkage**
- **Add linkage** modal: source Scope → Category → Fuel (autocomplete); dest Scope → Category → Sub-category → Fuel (autocomplete); factor (default `1`)
- **Export CSV** in page header
- Interactive **Add linkage** only (no bulk CSV UI for now)

Storage: directed pairs `(source_fuel_id, dest_fuel_id, unit_conversion_factor, version)`. Formula: `dest_qty = source_qty × factor`. Not bidirectional.

API:

- `GET /api/fuel-resources-linking?version=...`
- `POST /api/fuel-resources-linking` — create pair
- `PATCH /api/fuel-resources-linking` — `{ id, unit_conversion_factor }`
- `DELETE /api/fuel-resources-linking?id=...`
- Mutations refresh `ef_catalog_releases.link_count`

## Publish + Excel import/export + version delete

Version tabs on Emission Resources are **dynamic** from `ef_catalog_releases` (a newly imported label appears immediately). Tab labels use the stored version string (e.g. `พฤษภาคม 2569`).

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
- **Client sync (machine):** Bearer `EF_CATALOG_SYNC_SECRET`
  - `GET /api/ef-catalog/sync/manifest` — published releases
  - `GET /api/ef-catalog/sync?version=` — categories + fuels + links + `content_hash`

## Client sync (Phase 1)

1. Set the same `EF_CATALOG_SYNC_SECRET` on admin and client; client needs `NEXT_PUBLIC_ADMIN_CONSOLE_URL`.
2. Publish ≥1 version on admin (Emission Resources → Publish).
3. On client: Factory Admin → **ซิงค์แคตตาล็อก EF** → **Sync catalog**.
4. Empty test deploy: `SKIP_EF_MASTER_SEEDS=1` in `deploy.env` (uses `00_seed_all_no_ef.sql`).
5. Existing client DBs: apply `database/migration/migrate_add_ef_catalog_sync.sql`.

Category CSV import is not available. TGO API live sync on client remains separate (`/admin/ef-sync`).

## Admin UI surfaces

- `/admin-console/emission-resources` — dynamic version tabs, read-only fuel table, page-level Import Excel, per-version Delete / Publish / Export
- `/admin-console/fuel-resources-linking` — per-version links table, Add linkage modal, CSV export

## Verification checklist

1. Categories count = 20 with manifest UUIDs
2. Per-version fuel counts match seeds (approx.)
3. Linking: Add linkage → row appears; factor edit persists; delete removes; total count matches
4. Publish May + TGO from version tabs
5. Client Sync catalog (empty instance) → categories/fuels/links filled; second sync → Already up to date
6. Export Excel → edit/add duo-value row → Import Excel (new or replace); IDs stable across re-export
7. New version import → tab appears; release is draft
8. Replace existing → fuels reloaded; linking for that version cleared; typed confirmation required
9. Create with duplicate version name → rejected
10. Delete version fuels affects only that version
11. Templates still resolve after category align

## Out of scope (later)

- Client seed removal from default deploy
- Client sync module schedule / provision auto-sync
- Historical ID remapping on live tenants
- Live TGO HTTP ingest on admin (client TGO sync remains for now)