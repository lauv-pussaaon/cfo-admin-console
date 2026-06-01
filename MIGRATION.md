# Admin Console: Supabase → Self-Managed Postgres Migration

This work lives on branch **`migration/move-to-inet`**. Production on Vercel + Supabase (`master`) is unchanged until an explicit cutover is approved.

## Branch policy

- Do **not** merge to `master` until staging validation and cutover checklist are complete.
- All migration commits go to `migration/move-to-inet` (or feature branches merged into it).
- Keep Vercel deployment and Supabase project running in parallel during validation.

## Environments

| Environment | App | Database | Storage |
|-------------|-----|----------|---------|
| Production (unchanged) | Vercel | Supabase Postgres | Supabase Storage |
| Migration staging | Self-hosted (PM2 + nginx) | `cfo_admin` Postgres | `UPLOAD_DIR` local FS |

## Required env vars (staging / self-hosted)

```env
DATABASE_URL=postgresql://cfo_admin_user:PASSWORD@localhost:5432/cfo_admin
UPLOAD_DIR=/var/cfo-admin-uploads
APP_URL=https://admin-staging.example.com
NEXT_PUBLIC_APP_URL=https://admin-staging.example.com
RESEND_API_KEY=...
SUPPORT_CHAT_BRIDGE_SECRET=...
```

Supabase vars (`NEXT_PUBLIC_SUPABASE_*`) are **not** required on the migration branch.

## Setup order

1. Provision Postgres: `database/00_setup_postgres.sql`
2. Import from Supabase OR greenfield: `database/01_schema.sql` + migrations + seeds
3. Copy files: `node scripts/migrate-supabase-to-filesystem.js`
4. Configure `.env.local` and run `pnpm build && pnpm start` (or `dataprep/deploy-admin.sh`)
5. Run verification checklist below

## Supabase → Postgres data migration

```bash
# From repo root (cfo-beta)
./scripts/migrate-database.sh admin

# Or manual pg_dump from Supabase host, import to cfo_admin
psql "$DATABASE_URL" -f backups/schema_admin.sql
psql "$DATABASE_URL" -f backups/data_admin.sql
```

Validate row counts for: `users`, `organizations`, `fuel_resources`, `emission_templates`, support tables, `app_usage_tracking`.

## Backup / restore

```bash
pnpm db:backup
pnpm db:restore -- database/dumps/latest.dump
```

## Cutover checklist (go/no-go)

- [ ] Staging login, users CRUD, org CRUD, invitations
- [ ] External APIs: `/api/external/authenticate`, `/api/external/templates`, tracking, support bridge
- [ ] File uploads: avatars, template images, support attachments
- [ ] Final delta sync (DB + files) in maintenance window
- [ ] DNS switch; keep Vercel rollback for 48h
- [ ] Monitor logs 24–48h post-cutover

## Rollback

1. Revert DNS to Vercel admin URL
2. Supabase remains source of truth until cutover sign-off
3. Do not drop Supabase snapshot until post-cutover verification passes
