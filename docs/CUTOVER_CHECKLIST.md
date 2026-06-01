# Staging verification and cutover checklist

Run on **self-hosted staging** before production cutover. Production Vercel + Supabase stays live until all items pass.

## Staging setup

- [ ] Branch `migration/move-to-inet` deployed via `dataprep/deploy-admin.sh`
- [ ] `DATABASE_URL` points to `cfo_admin` (imported from Supabase or greenfield + seeds)
- [ ] `UPLOAD_DIR` set; files migrated via `pnpm migrate:files`
- [ ] `.env.local` has `APP_URL`, `RESEND_API_KEY`, `SUPPORT_CHAT_BRIDGE_SECRET`

## Functional tests

### Admin UI
- [ ] Login / logout
- [ ] Users CRUD (Admin role)
- [ ] Organizations CRUD, dealer assignment, invitations
- [ ] Emission categories, fuel resources, templates
- [ ] Support chat (staff + attachment upload)
- [ ] Avatar and template image upload
- [ ] Analytics pages load

### External APIs (org apps)
- [ ] `POST /api/external/authenticate` (Consult/Audit)
- [ ] `GET /api/external/validate-invite`
- [ ] `GET /api/external/templates`
- [ ] `POST /api/tracking/usage`
- [ ] Support bridge endpoints with `SUPPORT_CHAT_BRIDGE_SECRET`
- [ ] Invitation token flow

## Cutover window

- [ ] Announce maintenance window
- [ ] Final `pg_dump` from Supabase + `pnpm db:backup` on staging baseline
- [ ] Final delta sync (DB rows + files)
- [ ] DNS / load balancer → self-hosted admin
- [ ] Smoke test external APIs from one client app
- [ ] Keep Vercel deployment up 48h for rollback

## Post-cutover

- [ ] Monitor logs 24–48h
- [ ] Confirm no Supabase writes on admin path
- [ ] Merge `migration/move-to-inet` → `master` after sign-off
