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

## Publish + inline edit + Excel import/export

Version tabs on Emission Resources are **dynamic** from `ef_catalog_releases` (a newly imported label appears immediately). Tab labels use the stored version string (e.g. `พฤษภาคม 2569`).

**Page header:** **Import new version** (not tied to the active tab) and Manage Categories.

Under the selected **version tab**:

| Info / Action | Effect |
|---------------|--------|
| Status | `draft` or `published` for that version |
| Links | `link_count` for that version |
| Published | `published_at` when status is `published` |
| Delete version fuels | Soft-delete all fuels for the selected version only |
| Publish / Re-publish | Set `status=published`, refresh `content_hash` + `published_at` + counts |
| Export Excel | Download `fuel_resources_<version>.xlsx` (fuels only; use as import template) |

### Inline edit (EF + duo values)

Table action column → **Edit EF** modal. Editable fields:

- `ef_value`
- Duo values: `value1_label`, `value1_unit`, `value2_label`, `value2_unit`

Identity fields (resource name, category, unit, UUID) stay read-only. Saving does **not** change release status or `published_at`. For published versions, click **Re-publish** so client sync sees the new `content_hash`.

`content_hash` includes EF + duo fields so duo-only edits are detectable after re-publish.

API: `PATCH /api/fuel-resources/:id` body whitelist above only.

### Import new version only

Dialog (page-level **Import new version**):

1. Enter a **new** version label (must not already exist).
2. Upload `.xlsx` matching Export Excel columns.
3. Preview + import → creates a draft `ef_catalog_releases` row and inserts fuels.

**Replace / update-existing Excel import is disabled** (preserves fuel UUIDs). Use inline edit for EF corrections.

Import rules:

- Format: `.xlsx` only (same columns as Export Excel)
- Upsert by `id` when present; missing `id` gets a new UUID
- File `version` column is ignored; rows use the dialog-selected version
- Duo-value columns (`value1_*`, `value2_*`) are supported for manual TGO supplements
- Insert/upsert clears `deleted_at` on matching IDs
- `mode: 'replace'` is rejected by the API

API:

- `GET /api/ef-catalog/releases`
- `POST /api/ef-catalog/releases` body `{ version, action: publish | set_default | refresh_counts }`
- `GET /api/ef-catalog/export?version=...&artifact=fuel_resources` → Excel
- `GET /api/ef-catalog/export?version=...&artifact=fuel_resources_linking` → CSV (linking page)
- `POST /api/fuel-resources/import` body `{ version, mode: 'create', rows }`
- `PATCH /api/fuel-resources/:id` — EF + duo fields only
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

- `/admin-console/emission-resources` — dynamic version tabs, fuel table with Edit EF, Import new version, per-version Delete / Publish / Export
- `/admin-console/fuel-resources-linking` — per-version links table, Add linkage modal, CSV export

## Verification checklist

1. Categories count = 20 with manifest UUIDs
2. Per-version fuel counts match seeds (approx.)
3. Linking: Add linkage → row appears; factor edit persists; delete removes; total count matches
4. Publish May + TGO from version tabs
5. Client Sync catalog (empty instance) → categories/fuels/links filled; second sync → Already up to date
6. Inline edit EF on published version → UUID unchanged → Re-publish → client sync shows update
7. Inline edit duo fields only → Re-publish → content_hash changes
8. Export Excel → Import new version (new label); IDs stable across re-export when `id` present
9. New version import → tab appears; release is draft
10. Create with duplicate version name → rejected; `mode=replace` → rejected
11. Delete version fuels affects only that version
12. Templates still resolve after category align

## Out of scope (later)

- Client seed removal from default deploy
- Client sync module schedule / provision auto-sync
- Historical ID remapping on live tenants
- Live TGO HTTP ingest on admin (client TGO sync remains for now)
- Single-row fuel delete
