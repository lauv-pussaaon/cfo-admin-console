#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  ./dataprep/deploy-admin.sh <port> [options]

Deploy cfo-admin-console on self-managed cloud (PM2 + optional nginx).

Required:
  port          Local app port (e.g. 3020)

Options:
  --domain <host>           Public hostname for nginx (optional)
  --db-password <pass>      cfo_admin_user password (default: CFO_ADMIN_DB_PASSWORD or "pwd")
  --skip-install            Skip pnpm install
  --skip-build              Skip pnpm build
  --import-supabase-dump    Run pg_restore from ./database/dumps/supabase_import.dump if present
  -h, --help                Show help

Environment:
  DATABASE_URL              Override full connection string
  UPLOAD_DIR                Upload root (default: /var/cfo-admin-uploads)
  APP_URL / NEXT_PUBLIC_APP_URL

Example:
  ./dataprep/deploy-admin.sh 3020 --domain admin-staging.example.com --db-password 'secret'
EOF
}

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  usage
  exit 0
fi

if [[ $# -lt 1 ]]; then
  usage
  exit 1
fi

PORT="$1"
shift

DOMAIN=""
DB_PASSWORD="${CFO_ADMIN_DB_PASSWORD:-pwd}"
SKIP_INSTALL=false
SKIP_BUILD=false
IMPORT_DUMP=false

while [[ $# -gt 0 ]]; do
  case "$1" in
    --domain) DOMAIN="${2:-}"; shift 2 ;;
    --db-password) DB_PASSWORD="${2:-}"; shift 2 ;;
    --skip-install) SKIP_INSTALL=true; shift ;;
    --skip-build) SKIP_BUILD=true; shift ;;
    --import-supabase-dump) IMPORT_DUMP=true; shift ;;
    -h|--help) usage; exit 0 ;;
    *) echo "Unknown option: $1"; usage; exit 1 ;;
  esac
done

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
APP_NAME="cfo-admin-console"
UPLOAD_DIR="${UPLOAD_DIR:-/var/cfo-admin-uploads}"
DB_NAME="cfo_admin"

echo "==> Deploy ${APP_NAME} on port ${PORT}"

if [[ -z "${DATABASE_URL:-}" ]]; then
  DATABASE_URL="postgresql://cfo_admin_user:${DB_PASSWORD}@localhost:5432/${DB_NAME}"
fi

if command -v psql >/dev/null 2>&1; then
  if ! psql -U postgres -tAc "SELECT 1 FROM pg_database WHERE datname='${DB_NAME}'" 2>/dev/null | grep -q 1; then
    echo "==> Creating database ${DB_NAME}"
    sed "s/YOUR_PASSWORD/${DB_PASSWORD}/g" "${ROOT_DIR}/database/00_setup_postgres.sql" | psql -U postgres
  fi

  if [[ "${IMPORT_DUMP}" == true && -f "${ROOT_DIR}/database/dumps/supabase_import.dump" ]]; then
    echo "==> Importing Supabase dump"
    pg_restore --clean --if-exists --no-owner --no-acl -d "${DATABASE_URL}" "${ROOT_DIR}/database/dumps/supabase_import.dump" || true
  else
    echo "==> Applying schema (idempotent migrations may warn)"
    psql "${DATABASE_URL}" -v ON_ERROR_STOP=1 -f "${ROOT_DIR}/database/01_schema.sql" 2>/dev/null || true
    for f in migration_add_scope_categories.sql migration_add_fuel_resources.sql migration_add_emission_templates.sql \
      migration_add_template_activity_groups.sql migration_add_activity_group_fuel_resource_mappings.sql \
      migration_add_app_usage_tracking.sql migration_add_support_chat.sql migration_add_support_message_attachments.sql; do
      psql "${DATABASE_URL}" -f "${ROOT_DIR}/database/${f}" 2>/dev/null || true
    done
  fi
else
  echo "Warning: psql not found; skipping DB setup"
fi

mkdir -p "${UPLOAD_DIR}/admin"

ENV_FILE="${ROOT_DIR}/.env.local"
cat > "${ENV_FILE}" <<EOF
DATABASE_URL=${DATABASE_URL}
UPLOAD_DIR=${UPLOAD_DIR}
PORT=${PORT}
NEXT_PUBLIC_APP_URL=${APP_URL:-http://localhost:${PORT}}
APP_URL=${APP_URL:-http://localhost:${PORT}}
EOF

cd "${ROOT_DIR}"
if [[ "${SKIP_INSTALL}" != true ]]; then
  pnpm install
fi
if [[ "${SKIP_BUILD}" != true ]]; then
  pnpm build
fi

if command -v pm2 >/dev/null 2>&1; then
  pm2 delete "${APP_NAME}" 2>/dev/null || true
  pm2 start pnpm --name "${APP_NAME}" -- start
  pm2 save
  echo "==> PM2 started ${APP_NAME} on port ${PORT}"
else
  echo "Warning: pm2 not found. Run: PORT=${PORT} pnpm start"
fi

if [[ -n "${DOMAIN}" ]] && command -v nginx >/dev/null 2>&1; then
  echo "==> Configure nginx manually for ${DOMAIN} -> localhost:${PORT}"
fi

echo "==> Deploy complete. Verify: curl http://localhost:${PORT}/_health"
