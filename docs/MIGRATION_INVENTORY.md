# Migration inventory (Phase 0)

Captured for cutover planning. Production Vercel + Supabase unchanged.

## App endpoints used by client apps

| Endpoint | Purpose |
|----------|---------|
| `POST /api/external/authenticate` | Consult/Audit login from org apps |
| `GET /api/external/validate-invite` | Invite hashcode validation |
| `GET /api/external/templates` | Emission template hierarchy |
| `POST /api/tracking/usage` | App usage telemetry |
| `GET/POST /api/invitations/[token]` | Factory admin invitations |
| `POST /api/external/support/*` | Support chat bridge |

## Database tables (admin `ideacarb-admin`)

Core: `users`, `organizations`, `user_organizations`, `organization_invitations`  
Master: `scope_categories`, `fuel_resources`, `emission_templates`, `template_activity_groups`, `template_activity_group_fuel_resources`  
Support: `support_conversations`, `support_messages`, `support_message_attachments`  
Telemetry: `app_usage_tracking`

## Storage buckets

| Bucket | Local subdir |
|--------|----------------|
| `cfo-emission-template-images` | `admin/template-images/` |
| `cfo-support-chat-attachments` | `admin/support-attachments/` |
| `cfo-user-avatar` | `admin/avatars/` |
| `cfo-report-chat-documents` | `admin/chat-documents/` |
| `cfo-ef-certificates` | `admin/ef-certificates/` |

## Env vars (staging)

See [`.env.example`](.env.example). Required: `DATABASE_URL`. Optional: `UPLOAD_DIR`, `RESEND_API_KEY`, `SUPPORT_CHAT_BRIDGE_SECRET`, `APP_URL`.

## Schema freeze (production Supabase)

Do not run destructive SQL on production Supabase during migration window. All schema work targets staging `ideacarb-admin` only.
