# EF Catalog Admin Ops

Admin-console is the **system of record** for emission-factor master data (scope categories, versioned fuel resources, and published releases). Client apps **sync published catalogs** via the Sync catalog page and via `deploy.sh` (new/update) after migrations. Default client deploy still seeds until full cutover; use `SKIP_EF_MASTER_SEEDS=1` for empty test instances (deploy auto-sync fills catalog).

Fuel-to-fuel linking UI/table is **removed**. Cross-scope emission linking on clients uses **fixed scope-category rules** + user-selected dest fuel + factor (see client guideline).

## Version labels (exact)

| Label | Meaning |
|-------|---------|
| `กุมภาพันธ์ 2569` | Feb 2569 spreadsheet catalog |
| `พฤษภาคม 2569` | May 2569 spreadsheet catalog (UUID v5 IDs) |
| `TGO API` | TGO CFO/CFP catalog rows (default selected on Emission Resources) |

Emission Resources UI keeps filters in the URL: `version`, `scope`, `category_id`, `search`, `page`, `per_page`. Default `version` is `TGO API` (omitted from the query when selected).

## Migrations

Apply in order on admin Supabase:

1. Existing fuel/category schema (if not already applied)
2. `database/migration_add_ef_catalog_versioning.sql` — `version` / `ref_code` / `sort_index` / `multiplier` on `fuel_resources`; `ef_catalog_releases` (historical; may have created `fuel_resources_linking`)
3. `database/migration_align_scope_categories_canonical.sql` — 20 fixed category UUIDs + FK remap
4. `database/migration_drop_fuel_resources_linking.sql` — drop `fuel_resources_linking` (replaced by fixed category rules on client)
5. `database/migration_update_tgo_cat4_duo_labels.sql` — optional repair for existing `TGO API` Cat 4 rows (`value1` = ระยะทาง/km for all; `value2` = น้ำหนักที่ขน/ton except names containing literal ` 0% Loading` with leading space). Prefer baking labels via `pnpm tgo-ef:build-import`. After apply, **Re-publish** `TGO API` so client sync sees the new `content_hash`.

## TGO EF refresh (offline → Import new version)

When TGO publishes updated emission factors, run from `cfo-admin-console` (set `TGO_EF_REQ_TOKEN` in `.env.local` if needed):

```bash
pnpm tgo-ef:fetch          # → dataprep/tgo-ef/raw/tgo-ef-{cfo,cfp}.json
pnpm tgo-ef:build-import   # → dataprep/tgo-ef/out/fuel_resources_tgo_import.xlsx
                           #    + dataprep/ef-catalog/generated/03_fuel_resources_tgo_api.sql
```

Then Admin UI → Emission Resources → **Import new version** → choose a **new** version label → upload `fuel_resources_tgo_import.xlsx` → Publish → clients sync.

Cat 4 transport labels are applied in the build script (not a separate SQL step for new imports): all Cat 4 get `value1`; only rows without ` 0% Loading` get `value2`.

## Generate + load seed SQL

From `cfo-admin-console` (May/Feb still may use sibling `ideacarb-client-app` seeds; TGO SQL comes from `pnpm tgo-ef:build-import`):

```bash
pnpm tgo-ef:fetch && pnpm tgo-ef:build-import   # refresh 03_ TGO SQL + Excel
npm run ef-catalog:generate-import              # 01_, 02_, 04_ (keeps existing 03_)
```

Writes under `dataprep/ef-catalog/generated/`:

1. `01_scope_categories.sql`
2. `02a_fuel_resources_may2569.sql`
3. `02b_fuel_resources_may2569.sql`
4. `02c_fuel_resources_may2569.sql`
5. `03_fuel_resources_tgo_api.sql` — from `tgo-ef:build-import`
6. `04_fuel_resources_feb2569.sql`

Apply after migrations in filename order. The May catalog is split into three independently idempotent transactions so each file fits the Supabase SQL Editor. Then publish from Emission Resources (version tab actions).

Expected rough fuel counts: Feb ~990, May ~1797, TGO ~693.

## Fixed scope-category link rules (read-only API)

`GET /api/scope-category-links` returns hardcoded rules (no DB):

| Rule | Source | Dest category UUID |
|------|--------|--------------------|
| `scope_1_2_to_cat3` | Scope 1 or 2 | Cat 3 `a1000003-0003-4003-8003-000000000009` |
| `scope_1_to_scope4` | Scope 1 | Scope 4 Energy Usage Reporting `…000014` (in addition to Cat 3) |
| `cat1_to_cat4` | Cat 1 `…000007` | Scope 3 Cat 4 `…00000a` |

Constants: `src/lib/constants/scope-category-links.ts`.

Clients use the same UUIDs locally; users pick dest fuel + conversion factor when creating/editing emissions.

## Publish + inline edit + Excel import/export

Version tabs on Emission Resources are **dynamic** from `ef_catalog_releases` (a newly imported label appears immediately). Tab labels use the stored version string (e.g. `พฤษภาคม 2569`).

**Page header:** **Import new version** (not tied to the active tab) and Manage Categories.

Under the selected **version tab**:

| Info / Action | Effect |
|---------------|--------|
| Status | `draft` or `published` for that version |
| Published | `published_at` when status is `published` |
| Publish / Re-publish | Set `status=published`, refresh `content_hash` + `published_at` + counts |
| Export Excel | Download `fuel_resources_<version>.xlsx` (fuels only; use as import template) |

Per-version bulk delete is not offered in the UI (edit individual fuels via **Edit EF** instead).

### Inline edit (EF + duo values)

Table action column → **Edit EF** modal. Editable fields:

- `ef_value`
- Duo values: `value1_label`, `value1_unit`, `value2_label`, `value2_unit`

Identity fields (resource name, category, unit, UUID) stay read-only. Saving does **not** change release status or `published_at`. For published versions, click **Re-publish** so client sync sees the new `content_hash`.

`content_hash` includes EF + duo fields (no fuel-link pairs).

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
- `GET /api/ef-catalog/export?version=...&artifact=fuel_resources` → Excel (unpublished: `allow_draft=true` for QA)
- `POST /api/fuel-resources/import` body `{ version, mode: 'create', rows }`
- `PATCH /api/fuel-resources/:id` — EF + duo fields only
- `GET /api/scope-category-links` — fixed category link rules
- **Client sync (machine):** Bearer `EF_CATALOG_SYNC_SECRET`
  - `GET /api/ef-catalog/sync/manifest` — published releases
  - `GET /api/ef-catalog/sync?version=` — categories + fuels + `content_hash` (no `links` payload)

## Client sync (Phase 1)

1. Set the same `EF_CATALOG_SYNC_SECRET` on admin and client; client needs `NEXT_PUBLIC_ADMIN_CONSOLE_URL`.
2. Publish ≥1 version on admin (Emission Resources → Publish).
3. On client: Factory Admin → **ซิงค์แคตตาล็อก EF** → **Sync catalog**, or run `deploy.sh new|update` (calls `scripts/sync-ef-catalog-from-admin.ts`).
4. Empty test deploy: `SKIP_EF_MASTER_SEEDS=1` in `deploy.env` (uses `00_seed_all_no_ef.sql`); deploy syncs published releases after migrate.
5. Existing client DBs: apply `database/migration/migrate_add_ef_catalog_sync.sql` and `database/migration/migrate_drop_fuel_resources_linking.sql`.

Category CSV import is not available. Client TGO API live sync UI was removed; TGO fuels ship via published catalog sync (or seeds).

## Admin UI surfaces

- `/admin-console/emission-resources` — dynamic version tabs, fuel table with Edit EF, Import new version, per-version Publish / Export
- `/admin-console/emission-templates` — industry templates

## Verification checklist

1. Categories count = 20 with manifest UUIDs
2. Per-version fuel counts match seeds (approx.)
3. Publish May + TGO from version tabs
4. Client Sync catalog (empty instance) → categories/fuels filled; second sync → Already up to date; no links required
5. Inline edit EF on published version → UUID unchanged → Re-publish → client sync shows update
6. Inline edit duo fields only → Re-publish → content_hash changes
7. Export Excel → Import new version (new label); IDs stable across re-export when `id` present
8. New version import → tab appears; release is draft
9. Create with duplicate version name → rejected; `mode=replace` → rejected
10. Version tab has Publish / Export only (no Delete version fuels button)
11. Linking menu / `fuel_resources_linking` APIs absent; `GET /api/scope-category-links` returns three rules (Scope1/2→Cat3, Scope1→Scope4, Cat1→Cat4)
12. Templates still resolve after category align

## Out of scope (later)

- Client seed removal from default deploy
- Client sync module schedule / provision auto-sync
- Historical ID remapping on live tenants
- Live TGO HTTP ingest on admin (client TGO sync remains for now)
- Single-row fuel delete
