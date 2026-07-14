/** Exact EF catalog version labels — must match client fuel-resources constants. */
export const EF_VERSION_FEB = 'กุมภาพันธ์ 2569'
export const EF_VERSION_MAY = 'พฤษภาคม 2569'
export const EF_VERSION_TGO = 'TGO API'

export const EF_CATALOG_VERSIONS = [
  EF_VERSION_FEB,
  EF_VERSION_MAY,
  EF_VERSION_TGO,
] as const

export type EfCatalogVersion = (typeof EF_CATALOG_VERSIONS)[number]

export const EF_VERSION_LABELS: Record<EfCatalogVersion, string> = {
  [EF_VERSION_FEB]: 'Feb 2569',
  [EF_VERSION_MAY]: 'May 2569',
  [EF_VERSION_TGO]: 'TGO API',
}

/** UUID v5 namespace used for May / Feb deterministic fuel IDs (client generate_fuel_resources_may2026.py). */
export const FUEL_UUID_NAMESPACE = '6ba7b810-9dad-11d1-80b4-00c04fd430c8'

/** UUID v5 namespace for TGO candidate IDs (client review-utils.ts). */
export const TGO_FUEL_RESOURCE_NAMESPACE = 'a1000000-0000-4000-8000-000000000001'
