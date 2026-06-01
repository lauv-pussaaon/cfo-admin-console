#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  ./database/restore-db.sh <dump-file> [options]

Restore a PostgreSQL custom-format dump into DATABASE_URL from .env.local.

Options:
  --env-file PATH   Env file to load (default: .env.local)
  --jobs N          Parallel restore jobs (default: 1)
  -h, --help        Show this help

Warning: uses pg_restore --clean --if-exists (destructive to existing objects).
EOF
}

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ENV_FILE=""
JOBS=1
DUMP_FILE=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --env-file)
      ENV_FILE="${2:-}"
      shift 2
      ;;
    --jobs)
      JOBS="${2:-}"
      shift 2
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      if [[ -z "${DUMP_FILE}" ]]; then
        DUMP_FILE="$1"
        shift
      else
        echo "Error: unknown option: $1" >&2
        usage
        exit 1
      fi
      ;;
  esac
done

if [[ -z "${DUMP_FILE}" ]]; then
  echo "Error: dump file path required." >&2
  usage
  exit 1
fi

if [[ ! -f "${DUMP_FILE}" ]]; then
  echo "Error: dump file not found: ${DUMP_FILE}" >&2
  exit 1
fi

# shellcheck source=lib/load-env.sh
source "${SCRIPT_DIR}/lib/load-env.sh"

if ! command -v pg_restore >/dev/null 2>&1; then
  echo "Error: pg_restore not found." >&2
  exit 1
fi

echo "==> Restoring ${DUMP_FILE} into ${DATABASE_NAME}"
echo "    WARNING: --clean --if-exists will drop existing objects"

restore_args=(--clean --if-exists --no-owner --no-acl)
if [[ "${JOBS}" -gt 1 ]]; then
  restore_args+=(-j "${JOBS}")
fi

pg_restore "${restore_args[@]}" -d "${DATABASE_URL}" "${DUMP_FILE}"

echo "==> Restore complete"
