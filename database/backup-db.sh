#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  ./database/backup-db.sh [options]

Create a PostgreSQL custom-format dump (.dump) using DATABASE_URL from .env.local.

Options:
  --env-file PATH   Env file to load (default: .env.local in repo root)
  --out PATH        Output file path (default: database/dumps/{dbname}_{timestamp}.dump)
  --jobs N          Parallel dump jobs for pg_dump -j (default: 1)
  -h, --help        Show this help

Examples:
  pnpm db:backup
  ./database/backup-db.sh --out ./database/dumps/manual.dump
EOF
}

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ENV_FILE=""
OUT_FILE=""
JOBS=1

while [[ $# -gt 0 ]]; do
  case "$1" in
    --env-file)
      ENV_FILE="${2:-}"
      [[ -z "${ENV_FILE}" ]] && { echo "Error: --env-file requires a value." >&2; exit 1; }
      shift 2
      ;;
    --out)
      OUT_FILE="${2:-}"
      [[ -z "${OUT_FILE}" ]] && { echo "Error: --out requires a value." >&2; exit 1; }
      shift 2
      ;;
    --jobs)
      JOBS="${2:-}"
      [[ -z "${JOBS}" || ! "${JOBS}" =~ ^[0-9]+$ || "${JOBS}" -lt 1 ]] && { echo "Error: --jobs requires a positive integer." >&2; exit 1; }
      shift 2
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Error: unknown option: $1" >&2
      usage
      exit 1
      ;;
  esac
done

# shellcheck source=lib/load-env.sh
source "${SCRIPT_DIR}/lib/load-env.sh"

if ! command -v pg_dump >/dev/null 2>&1; then
  echo "Error: pg_dump not found. Install postgresql-client." >&2
  exit 1
fi

DUMPS_DIR="${ROOT_DIR}/database/dumps"
mkdir -p "${DUMPS_DIR}"

if [[ -z "${OUT_FILE}" ]]; then
  timestamp="$(date -u +%Y%m%dT%H%M%SZ)"
  OUT_FILE="${DUMPS_DIR}/${DATABASE_NAME}_${timestamp}.dump"
else
  OUT_FILE="$(cd "$(dirname "${OUT_FILE}")" && pwd)/$(basename "${OUT_FILE}")"
  mkdir -p "$(dirname "${OUT_FILE}")"
fi

echo "==> Backing up database: ${DATABASE_NAME}"
echo "    Output: ${OUT_FILE}"

pg_dump_args=(-Fc --no-owner --no-acl -f "${OUT_FILE}")
if [[ "${JOBS}" -gt 1 ]]; then
  pg_dump_args+=(-j "${JOBS}")
fi

pg_dump "${DATABASE_URL}" "${pg_dump_args[@]}"

echo "==> Backup complete: ${OUT_FILE}"
echo "    Size: $(du -h "${OUT_FILE}" | awk '{print $1}')"
