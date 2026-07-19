import { createHash } from 'node:crypto'

export const TGO_REF_SOURCE = 'TGO'

/** Namespace for deterministic fuel_resource UUIDs from TGO API rows. */
export const TGO_FUEL_RESOURCE_NAMESPACE = 'a1000000-0000-4000-8000-000000000001'

/** Scope 3 Category 4 — Upstream transportation (duo label rules apply here). */
export const SCOPE_CAT4_UPSTREAM_TRANSPORT_ID = 'a1000003-0003-4003-8003-00000000000a'

/** Scope 4 separate reporting: Energy Usage Reporting */
export const SCOPE4_ENERGY_REPORTING_ID = 'a1000004-0004-4004-8004-000000000014'

/**
 * Literal marker for distance-only Cat 4 rows (leading space avoids matching
 * inside "100% Loading" / "xx0% Loading").
 */
export const CAT4_ZERO_LOADING_MARKER = ' 0% Loading'

export type ScopeCategory = {
  id: string
  scope: number
  name_th: string
  name_en: string
  display_order: number
}

export type MappingResult = {
  scopeCategory: ScopeCategory | null
  status: 'mapped' | 'unmapped' | 'skipped'
  reason: string
}

export function normalizeText (value: string | number | null | undefined): string {
  if (value === null || value === undefined) return ''
  return String(value).trim().replace(/\s+/g, ' ')
}

export function parseNumeric (value: string | number | null | undefined): number | null {
  const normalized = normalizeText(value).toLowerCase()
  if (!normalized || normalized === 'n/a' || normalized === 'na') return null
  const parsed = Number(normalized)
  return Number.isFinite(parsed) ? parsed : null
}

export function shortHash (parts: Array<string | number | null | undefined>): string {
  const input = parts.map((part) => normalizeText(part)).join('|')
  return createHash('sha256').update(input).digest('hex').slice(0, 12)
}

export function buildCfpRefCode (name: string, units: string, volumn: string): string {
  return `EF006-${shortHash([name, units, volumn])}`
}

function parseUuidBytes (uuid: string): Buffer {
  const hex = uuid.replace(/-/g, '')
  return Buffer.from(hex, 'hex')
}

function formatUuidBytes (bytes: Buffer): string {
  const hex = bytes.toString('hex')
  return [
    hex.slice(0, 8),
    hex.slice(8, 12),
    hex.slice(12, 16),
    hex.slice(16, 20),
    hex.slice(20, 32),
  ].join('-')
}

/** RFC 4122 UUID v5 (SHA-1) for stable cross-client IDs. */
export function uuidV5 (name: string, namespace: string = TGO_FUEL_RESOURCE_NAMESPACE): string {
  const namespaceBytes = parseUuidBytes(namespace)
  const hash = createHash('sha1')
    .update(Buffer.concat([namespaceBytes, Buffer.from(name, 'utf8')]))
    .digest()

  hash[6] = (hash[6] & 0x0f) | 0x50
  hash[8] = (hash[8] & 0x3f) | 0x80

  return formatUuidBytes(hash.subarray(0, 16))
}

export function buildCandidateUuid (input: {
  reqLabel: 'CFO' | 'CFP'
  scopeIndex: number | string
  name: string
  unit: string
  efValue: number | null
  refCode: string
}): string {
  const efPart = input.efValue === null ? 'null' : String(input.efValue)
  const key = [
    input.reqLabel,
    String(input.scopeIndex),
    normalizeText(input.name),
    normalizeText(input.unit),
    efPart,
    normalizeText(input.refCode),
  ].join('|')

  return uuidV5(key)
}

export function parseScopeCategoriesFromManifest (manifestJson: string): ScopeCategory[] {
  const parsed = JSON.parse(manifestJson) as { categories?: ScopeCategory[] }
  const categories = parsed.categories ?? []
  return [...categories].sort((a, b) => a.display_order - b.display_order)
}

export function getScopeCategoryById (
  categories: ScopeCategory[],
  id: string | null | undefined,
): ScopeCategory | null {
  if (!id) return null
  return categories.find((category) => category.id === id) ?? null
}

export function shouldMapCfoToScope4 (name: string): boolean {
  const normalized = normalizeText(name)
  if (normalized.includes('Report in Biogenic CO2')) return true
  if (/HCFC/i.test(normalized)) return true
  return false
}

function scope4OverrideReason (name: string): string {
  if (/HCFC/i.test(normalizeText(name))) {
    return 'Scope 4 override: HCFC reporting resource'
  }
  return 'Scope 4 override: biogenic CO2 reporting resource'
}

/** CFO top-level code prefix (EF001) -> canonical scope_category_id */
export const CFO_HEADER_SCOPE_MAP: Record<string, string> = {
  EF001: 'a1000001-0001-4001-8001-000000000001',
  EF002: 'a1000001-0001-4001-8001-000000000002',
  EF003: 'a1000001-0001-4001-8001-000000000003',
  EF004: 'a1000002-0002-4002-8002-000000000006',
  EF005: 'a1000001-0001-4001-8001-000000000005',
}

/** CFP category English suffix -> canonical scope_category_id */
export const CFP_CATEGORY_SUFFIX_SCOPE_MAP: Record<string, string> = {
  'Truck Transportations': SCOPE_CAT4_UPSTREAM_TRANSPORT_ID,
  Landfills: 'a1000003-0003-4003-8003-00000000000b',
  'Municipal Wastewater Treatment': 'a1000003-0003-4003-8003-00000000000b',
  Electricity: 'a1000003-0003-4003-8003-000000000009',
  'Energy and Fuels': 'a1000003-0003-4003-8003-000000000009',
}

const CFP_DEFAULT_SCOPE_CATEGORY_ID = 'a1000003-0003-4003-8003-000000000007'

function extractCfpCategorySuffix (category: string): string | null {
  const match = category.match(/\(([^)]+)\)\s*$/)
  return match?.[1]?.trim() ?? null
}

export function resolveCfoScopeCategoryId (code: string): string | null {
  const prefix = code.split('-')[0]?.toUpperCase()
  return CFO_HEADER_SCOPE_MAP[prefix] ?? null
}

export function resolveCfpScopeCategoryId (category: string): string {
  const suffix = extractCfpCategorySuffix(category)
  if (suffix && CFP_CATEGORY_SUFFIX_SCOPE_MAP[suffix]) {
    return CFP_CATEGORY_SUFFIX_SCOPE_MAP[suffix]
  }
  return CFP_DEFAULT_SCOPE_CATEGORY_ID
}

export function mapCfoRow (
  categories: ScopeCategory[],
  row: Record<string, string | number>,
): MappingResult {
  if (String(row.type) !== '1') {
    return {
      scopeCategory: null,
      status: 'skipped',
      reason: 'CFO header row (type=0)',
    }
  }

  const name = String(row.name)
  if (shouldMapCfoToScope4(name)) {
    const scopeCategory = getScopeCategoryById(categories, SCOPE4_ENERGY_REPORTING_ID)
    if (!scopeCategory) {
      return {
        scopeCategory: null,
        status: 'unmapped',
        reason: 'Scope 4 energy reporting category not found in canonical scope list',
      }
    }

    return {
      scopeCategory,
      status: 'mapped',
      reason: scope4OverrideReason(name),
    }
  }

  const scopeCategoryId = resolveCfoScopeCategoryId(String(row.code))
  const scopeCategory = getScopeCategoryById(categories, scopeCategoryId)

  if (!scopeCategory) {
    return {
      scopeCategory: null,
      status: 'unmapped',
      reason: `Unknown CFO code prefix for ${row.code}`,
    }
  }

  return {
    scopeCategory,
    status: 'mapped',
    reason: `Mapped via CFO header prefix ${String(row.code).split('-')[0]}`,
  }
}

export function mapCfpRow (
  categories: ScopeCategory[],
  row: Record<string, string | number>,
): MappingResult {
  const category = String(row.category)
  const scopeCategoryId = resolveCfpScopeCategoryId(category)
  const scopeCategory = getScopeCategoryById(categories, scopeCategoryId)

  if (!scopeCategory) {
    return {
      scopeCategory: null,
      status: 'unmapped',
      reason: `Unknown CFP category: ${category}`,
    }
  }

  const isDefault = scopeCategoryId === CFP_DEFAULT_SCOPE_CATEGORY_ID
  return {
    scopeCategory,
    status: 'mapped',
    reason: isDefault
      ? 'Default CFP mapping to Category 1 Purchased goods and services'
      : `Explicit CFP category mapping via suffix (${extractCfpCategorySuffix(category) ?? category})`,
  }
}

/** True when resource is distance-only Cat 4 (literal " 0% Loading"). */
export function isCat4ZeroLoadingResource (resource: string): boolean {
  return resource.includes(CAT4_ZERO_LOADING_MARKER)
}
