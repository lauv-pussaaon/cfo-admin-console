# Admin Console Database

PostgreSQL setup for self-managed deployment (migration branch). Production on Supabase is unchanged until cutover.

## Fresh install (greenfield)

Run as `postgres` superuser, then as app user:

```bash
# 1. Create database and user (edit password first)
psql -U postgres -f database/00_setup_postgres.sql

# 2. Schema + master seed
psql "$DATABASE_URL" -f database/01_schema.sql
psql "$DATABASE_URL" -f database/02_seed_master_data.sql

# 3. Emission master data (if not imported from Supabase dump)
psql "$DATABASE_URL" -f database/03_seed_scope_categories_and_fuel_resources.sql
psql "$DATABASE_URL" -f database/04_seed_emission_templates_and_activity_groups.sql
```

## Import from Supabase (recommended for cutover)

From repo root (`cfo-beta`):

```bash
./scripts/migrate-database.sh admin
psql "$DATABASE_URL" -f backups/schema_admin.sql
psql "$DATABASE_URL" -f backups/data_admin.sql
```

Validate row counts for `users`, `organizations`, `fuel_resources`, `emission_templates`, support tables.

## Incremental migrations

For **existing Supabase DBs** that predate consolidated `01_schema.sql`, use the `migration_add_*` files. Skip any that fail with "already exists".

For **greenfield** installs, `01_schema.sql` is sufficient — no migration scripts needed.

| File | Purpose | In `01_schema.sql`? |
|------|---------|---------------------|
| `migration_add_scope_categories.sql` | Scope categories table | Yes |
| `migration_add_fuel_resources.sql` | Fuel resources table | Yes |
| `migration_add_emission_templates.sql` | Emission templates table | Yes |
| `migration_add_template_activity_groups.sql` | Activity groups table | Yes |
| `migration_drop_template_activity_group_labels.sql` | Drop legacy label columns | N/A (never created in greenfield) |
| `migration_add_activity_group_fuel_resource_mappings.sql` | Junction table | Yes |
| `migration_add_app_usage_tracking.sql` | Usage telemetry table | Yes |
| `migration_add_user_approval_status.sql` | User approval | Yes |
| `migration_add_organization_account_type.sql` | Org account types | Yes |
| `migration_add_support_chat.sql` | Support tables | Yes |
| `migration_add_support_message_attachments.sql` | Attachments | Yes |
| `migration_add_support_role.sql` | Support role in users | Yes |

## Backup and restore

```bash
pnpm db:backup
pnpm db:restore -- database/dumps/latest.dump
```

Requires `DATABASE_URL` in `.env.local`.

## File migration (Supabase Storage → local)

```bash
UPLOAD_DIR=/var/cfo-admin-uploads node scripts/migrate-supabase-to-filesystem.js
# --dry-run to list files only
```

Requires `NEXT_PUBLIC_SUPABASE_URL`, `SUPABASE_SERVICE_ROLE_KEY`, and `UPLOAD_DIR`.

## Deploy

See [`dataprep/deploy-admin.sh`](../dataprep/deploy-admin.sh) and [`MIGRATION.md`](../MIGRATION.md).
