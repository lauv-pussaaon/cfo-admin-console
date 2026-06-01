# Shared environment loader for admin console database scripts.

if [[ -n "${_CFO_ADMIN_LOAD_ENV_SH:-}" ]]; then
  return 0 2>/dev/null || true
fi
_CFO_ADMIN_LOAD_ENV_SH=1

_LIB_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "${_LIB_DIR}/../.." && pwd)"

load_env_file() {
  local file="$1"
  if [[ ! -f "${file}" ]]; then
    echo "Error: env file not found: ${file}" >&2
    return 1
  fi
  local line key val
  while IFS= read -r line || [[ -n "${line}" ]]; do
    line="${line#"${line%%[![:space:]]*}"}"
    line="${line%"${line##*[![:space:]]}"}"
    [[ -z "${line}" || "${line}" == \#* ]] && continue
    [[ "${line}" != *=* ]] && continue
    key="${line%%=*}"
    key="${key%"${key##*[![:space:]]}"}"
    key="${key#"${key%%[![:space:]]*}"}"
    val="${line#*=}"
    val="${val#"${val%%[![:space:]]*}"}"
    val="${val%"${val##*[![:space:]]}"}"
    if [[ "${val}" == \"*\" && "${val}" == *\" ]]; then
      val="${val:1:${#val}-2}"
    elif [[ "${val}" == \'*\' && "${val}" == *\' ]]; then
      val="${val:1:${#val}-2}"
    fi
    if [[ -z "${!key:-}" ]]; then
      export "${key}=${val}"
    fi
  done < "${file}"
}

_env_path="${ENV_FILE:-${ROOT_DIR}/.env.local}"
if [[ -f "${_env_path}" ]]; then
  load_env_file "${_env_path}" || exit 1
fi

if [[ -z "${DATABASE_URL:-}" ]]; then
  echo "Error: DATABASE_URL is required. Set it in ${_env_path} or the environment." >&2
  exit 1
fi

database_name_from_url() {
  local url="$1"
  if command -v python3 >/dev/null 2>&1; then
    python3 -c "from urllib.parse import urlparse; import sys; u=urlparse(sys.argv[1]); p=(u.path or '/').lstrip('/'); print(p.split('/')[0] if p else 'postgres')" "${url}"
    return
  fi
  local path="${url%%\?*}"
  path="${path#postgresql://}"
  path="${path#postgres://}"
  path="${path##*/}"
  path="${path%%/*}"
  echo "${path:-postgres}"
}

DATABASE_NAME="$(database_name_from_url "${DATABASE_URL}")"
export ROOT_DIR DATABASE_NAME
