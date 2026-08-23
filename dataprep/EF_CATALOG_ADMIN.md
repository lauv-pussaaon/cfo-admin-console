# EF Catalog Admin Ops

Admin-console is the **system of record** for emission-factor master data (scope categories, versioned fuel resources, and published releases). Client apps **sync published catalogs** via the Sync catalog page and via `deploy.sh` (new/update) after migrations. Default client deploy still seeds until full cutover; use `SKIP_EF_MASTER_SEEDS=1` for empty test instances (deploy auto-sync fills catalog).

Fuel-to-fuel linking UI/table is **removed**. Cross-scope emission linking on clients uses **fixed scope-category rules** + user-selected dest fuel + factor (see client guideline).

## Version labels

Version strings are free text on `fuel_resources.version` / `ef_catalog_releases.version`. Common labels:

| Label | Meaning |
|-------|---------|
| `กุมภาพันธ์ 2569` | Feb 2569 spreadsheet catalog |
| `พฤษภาคม 2569` | May 2569 spreadsheet catalog (UUID v5 IDs) |
| `TGO พฤษภาคม 2569` | TGO CFO/CFP catalog (renamed from historical `TGO API` / `TGO May 2569`) |

Emission Resources UI keeps filters in the URL: `version`, `scope`, `category_id`, `search`, `page`, `per_page`. Tabs sort by `ef_catalog_releases.order_index` ascending (10 กุมภาพันธ์ → 20 พฤษภาคม → 30 TGO พฤษภาคม → 40 TGO 1 กรกฎาคม). Default tab is the release with `is_default = true` (omitted from the query when selected). Changing other filters must not re-inject a prior non-default `version` when the user explicitly selects the default tab. Clients persist `is_default` + `order_index` on `ef_catalog_sync_state` during sync.

## Schema (baseline only)

Admin uses a single Supabase instance. All DDL lives in `database/01_schema.sql` (no incremental `migration_*.sql`). Fresh install: `00_drop_all.sql` → `01_schema.sql` → `02_seed_master_data.sql` → `03_seed_ef_catalog_releases.sql` (draft releases + `order_index` 10/20/30/40) → generated EF SQL below → publish in UI.

`fuel_resources` includes `description TEXT` and `meta JSONB NOT NULL DEFAULT '{}'` (TGO text + Cat 4 `{ "maxLoadTon": 16 }`). Existing admin DBs: apply [`database/migrate_add_fuel_resources_description_meta.sql`](../database/migrate_add_fuel_resources_description_meta.sql), then upsert rebuilt TGO SQL (same UUIDs) and **Re-publish**.

Cat 4 transport duo labels and `meta.maxLoadTon` for TGO are baked by `pnpm tgo-ef:build-import` (not a separate SQL repair). After any fuel SQL load or import, **Publish** (and set default when ready) so clients see the new `content_hash`.

## TGO EF refresh (offline → Import new version)

When TGO publishes updated emission factors, run from `cfo-admin-console` (set `TGO_EF_REQ_TOKEN` in `.env.local` if needed):

```bash
pnpm tgo-ef:fetch
pnpm tgo-ef:build-import -- --version "TGO July 2569"
# → dataprep/tgo-ef/out/fuel_resources_tgo_import.xlsx
#    + dataprep/ef-catalog/generated/03a|03b|03c_fuel_resources_tgo_api.sql
```

Then Admin UI → Emission Resources → **Import new version** → enter the same version label → upload `fuel_resources_tgo_import.xlsx` → Publish → set as default when ready → clients sync.

Cat 4 transport labels are applied in the build script (not a separate SQL step for new imports): all Cat 4 get `value1`; only rows without ` 0% Loading` get `value2`. TGO JSON `description` is written to `description` (and still to CFO `ref_info`). Cat 4 descriptions matching `น้ำหนักบรรทุกสูงสุด {n} ตัน` set `meta.maxLoadTon`. Excel `meta` is a JSON string.

To backfill an **existing** TGO version (Excel replace is disabled): apply the schema migrate, run `pnpm tgo-ef:build-import -- --version "<existing label>"`, upsert `03a` then `03b` then `03c_fuel_resources_tgo_api.sql`, then Re-publish.

## Generate + load seed SQL

From `cfo-admin-console` (May/Feb still may use sibling `ideacarb-client-app` seeds; TGO SQL comes from `pnpm tgo-ef:build-import`):

```bash
pnpm tgo-ef:fetch && pnpm tgo-ef:build-import   # refresh 03a/03b/03c TGO SQL + Excel
npm run ef-catalog:generate-import              # 01_, 02_, 04_ (keeps existing 03a/03b/03c)
```

Writes under `dataprep/ef-catalog/generated/`:

1. `01_scope_categories.sql`
2. `02a_fuel_resources_may2569.sql`
3. `02b_fuel_resources_may2569.sql`
4. `02c_fuel_resources_may2569.sql`
5. `03a_fuel_resources_tgo_api.sql` — from `tgo-ef:build-import`
6. `03b_fuel_resources_tgo_api.sql`
7. `03c_fuel_resources_tgo_api.sql`
8. `04_fuel_resources_feb2569.sql`

Apply after `01_schema.sql` + `03_seed_ef_catalog_releases.sql`, in filename order. May (`02a`–`02c`) and TGO (`03a`–`03c`) are split into independently idempotent transactions so each file fits the Supabase SQL Editor. Then publish from Emission Resources (version tab actions).

Expected rough fuel counts: Feb ~990, May ~1797, TGO ~693.

## Fixed scope-category link rules (read-only API)

`GET /api/scope-category-links` returns hardcoded rules (no DB):

| Rule | Source | Dest (fuel) | `save_as` (report) | `enableFactor` |
|------|--------|-------------|--------------------|----------------|
| `scope_1_to_cat3` | Scope 1 | Cat 3 `…000009` | same | true |
| `scope_2_to_scope2_save_cat3` | Scope 2 | Scope 2 electricity `…000006` | Cat 3 `…000009` | false |
| `scope_1_to_scope4` | Scope 1 | Scope 4 `…000014` | same | true |
| `cat1_to_cat4` | Cat 1 `…000007` | Cat 4 `…00000a` | same | false |
| `cat5_to_cat4` | Cat 5 `…00000b` | Cat 4 `…00000a` | Cat 5 | true |

Constants: `src/lib/constants/scope-category-links.ts`.

Clients use the same UUIDs locally; users pick dest fuel (+ conversion factor when `enableFactor` is true; Cat1→Cat4 and Scope2→Scope2/save Cat3 always factor `1`). When `save_as ≠ dest`, reporting category is `save_as` and fuel category is stored on `origin_scope_category_id`.

## Publish + inline edit + Excel import/export

Version tabs on Emission Resources are **dynamic** from `ef_catalog_releases` (a newly imported label appears immediately). Tab labels use the stored version string (e.g. `พฤษภาคม 2569`).

**Page header:** **Import new version** (not tied to the active tab) and Manage Categories.

Under the selected **version tab**:

| Info / Action | Effect |
|---------------|--------|
| Status | `draft` or `published` for that version |
| Published | `published_at` when status is `published` |
| Publish / Re-publish | Set `status=published`, refresh `content_hash` + `published_at` + counts. Published versions whose live hash ≠ stored `content_hash` show an orange warning: **Require re-publish to apply latest changes** |
| Export Excel | Download `fuel_resources_<version>.xlsx` (fuels only; use as import template) |

Per-version bulk delete is not offered in the UI. Per-row **soft-delete** is: table delete icon → password confirm → `DELETE /api/fuel-resources/[id]` (Admin + `x-admin-user-id` + `{ password }`). Sets `deleted_at`, refreshes tab `fuel_count`, drops `template_activity_group_fuel_resources` for that fuel. Does **not** auto-publish. After **Re-publish** + tenant sync (`deploy.sh update` or Factory Admin **ซิงค์แคตตาล็อก EF**), omitted fuels leave the client picker: sync nulls `annual_emissions.fuel_resource_id` then hard-deletes those `fuel_resources` (emission lines keep copied `resource` / `unit` / `ef_value`). Re-running generated TGO SQL with `deleted_at = NULL` would **undelete** matching IDs.

`GET /api/ef-catalog/releases?version=` returns that release plus `needs_republish` (published + live hash ≠ stored `content_hash`, or stored hash is null). Drafts never show the stale warn. Refetch after delete, EF save, and successful publish.

### Inline edit (EF + duo values)

Table action column → **Edit EF** modal. Editable fields:

- `ef_value`
- Duo values: `value1_label`, `value1_unit`, `value2_label`, `value2_unit`

Identity fields (resource name, category, unit, UUID) stay read-only. Saving does **not** change release status or `published_at`. For published versions, click **Re-publish** so client sync sees the new `content_hash`.

`content_hash` includes EF + duo fields + `description` + stable `meta` JSON (no fuel-link pairs).

Emission Resources table also shows **Description** and **Meta** (read-only; ingest-derived).

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
- `description` and `meta` (JSON string, default `{}`) round-trip on export/import
- Insert/upsert clears `deleted_at` on matching IDs
- `mode: 'replace'` is rejected by the API

API:

- `GET /api/ef-catalog/releases` — list (no hashing)
- `GET /api/ef-catalog/releases?version=` — one release + `needs_republish`
- `POST /api/ef-catalog/releases` body `{ version, action: publish | set_default | refresh_counts }`
- `GET /api/ef-catalog/export?version=...&artifact=fuel_resources` → Excel (unpublished: `allow_draft=true` for QA)
- `POST /api/fuel-resources/import` body `{ version, mode: 'create', rows }`
- `PATCH /api/fuel-resources/:id` — EF + duo fields only
- `DELETE /api/fuel-resources/:id` — Admin + password; per-row soft-delete (not `DELETE /api/fuel-resources?version=`)
- `GET /api/scope-category-links` — fixed category link rules
- **Client sync (machine):** Bearer `EF_CATALOG_SYNC_SECRET`
  - `GET /api/ef-catalog/sync/manifest` — published releases
  - `GET /api/ef-catalog/sync?version=` — categories + fuels (includes `description` + `meta`) + `content_hash` (no `links` payload)

Current client INSERT ignores unknown fuel keys — no catalog wipe needed. Later client persist: add the same two columns, then if `content_hash` already matches, clear `ef_catalog_sync_state` for that version (do not delete fuels with emissions) so one sync writes the new fields. Empty clients may wipe catalog then sync.

## Client sync (Phase 1)

1. Set the same `EF_CATALOG_SYNC_SECRET` on admin and client; client needs `NEXT_PUBLIC_ADMIN_CONSOLE_URL`.
2. Publish ≥1 version on admin (Emission Resources → Publish).
3. On client: Factory Admin → **ซิงค์แคตตาล็อก EF** → **Sync catalog**, or run `deploy.sh new|update` (calls `scripts/sync-ef-catalog-from-admin.ts`).
4. Empty test deploy: `SKIP_EF_MASTER_SEEDS=1` in `deploy.env` (uses `00_seed_all_no_ef.sql`); deploy syncs published releases after migrate.
5. Existing client DBs: apply `database/migration/migrate_add_ef_catalog_sync.sql` and `database/migration/migrate_drop_fuel_resources_linking.sql`.

Category CSV import is not available. Client TGO API live sync UI was removed; TGO fuels ship via published catalog sync (or seeds).

## Admin UI surfaces

- `/admin-console/emission-resources` — dynamic version tabs, fuel table with Edit EF + password-confirmed delete, Import new version, per-version Publish / Export (orange Re-publish when stale)
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
13. Per-row delete + password → row gone from admin table; Re-publish shows orange warn until publish
14. Re-publish + client sync → deleted fuel leaves tenant picker; existing emission lines keep resource/unit/EF and `fuel_resource_id` is null
15. Re-running generated TGO SQL with `deleted_at = NULL` undeletes matching IDs

## Out of scope (later)

- Client seed removal from default deploy
- Client sync module schedule / provision auto-sync
- Historical ID remapping on live tenants
- Live TGO HTTP ingest on admin (client TGO sync remains for now)
