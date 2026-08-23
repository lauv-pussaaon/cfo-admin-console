export type RefSource =
  | 'SELF_COLLECT'
  | 'SUPPLIER'
  | 'TH_LCI'
  | 'TGO'
  | 'THAI_RES'
  | 'INTERNATIONAL'
  | 'OTHER'
  | 'SUBSITUTE'

export type EfCatalogReleaseStatus = 'draft' | 'published'

export interface ScopeCategory {
  id: string
  scope: 1 | 2 | 3 | 4
  name_th: string
  name_en: string
  display_order: number
  created_at: string
  updated_at: string | null
  deleted_at: string | null
}

export type FuelResourceMeta = {
  maxLoadTon?: number
}

export function serializeFuelResourceMeta (meta: FuelResourceMeta | null | undefined): string {
  if (!meta || typeof meta !== 'object' || Array.isArray(meta)) return '{}'
  const keys = Object.keys(meta).sort()
  if (keys.length === 0) return '{}'
  const ordered: Record<string, unknown> = {}
  for (const key of keys) {
    ordered[key] = (meta as Record<string, unknown>)[key]
  }
  return JSON.stringify(ordered)
}

export function parseFuelResourceMeta (value: unknown): FuelResourceMeta | null {
  if (value == null || value === '') return {}
  let parsed: unknown = value
  if (typeof value === 'string') {
    try {
      parsed = JSON.parse(value)
    } catch {
      return null
    }
  }
  if (!parsed || typeof parsed !== 'object' || Array.isArray(parsed)) return null
  const rec = parsed as Record<string, unknown>
  const meta: FuelResourceMeta = {}
  if (rec.maxLoadTon != null && rec.maxLoadTon !== '') {
    const n = typeof rec.maxLoadTon === 'number' ? rec.maxLoadTon : Number(rec.maxLoadTon)
    if (!Number.isFinite(n)) return null
    meta.maxLoadTon = n
  }
  return meta
}

export interface FuelResource {
  id: string
  scope_category_id: string
  resource: string
  sub_category: string | null
  unit: string | null
  ef_value: number | null
  value1_label: string | null
  value1_unit: string | null
  value2_label: string | null
  value2_unit: string | null
  ref_info: string | null
  description: string | null
  meta: FuelResourceMeta
  ref_co2: number | null
  ref_fossil_ch4: number | null
  ref_ch4: number | null
  ref_n2o: number | null
  ref_sf6: number | null
  ref_nf3: number | null
  ref_hfcs: number | null
  ref_pfcs: number | null
  gwp100_hfcs: number | null
  gwp100_pfcs: number | null
  extraghg_ef: number | null
  extraghg_gwp100: number | null
  ref_source: RefSource | null
  version: string | null
  ref_code: string | null
  sort_index: number | null
  multiplier: number
  created_at: string
  updated_at: string | null
  deleted_at: string | null
  scope_category?: ScopeCategory
}

export interface FuelResourceWithCategory extends FuelResource {
  scope_category: ScopeCategory
}

export interface EfCatalogRelease {
  version: string
  status: EfCatalogReleaseStatus
  is_default: boolean
  content_hash: string | null
  fuel_count: number
  link_count: number
  order_index: number
  published_at: string | null
  published_by: string | null
  updated_at: string | null
}

export interface EfCatalogVersionBackup {
  id: string
  source_version: string
  fuel_count: number
  created_at: string
  created_by: string | null
  created_by_name: string | null
}

export type CreateFuelResourceInput = Omit<
  FuelResource,
  'id' | 'created_at' | 'updated_at' | 'deleted_at' | 'scope_category'
>
export type UpdateFuelResourceInput = Partial<CreateFuelResourceInput>

export type CreateScopeCategoryInput = Omit<ScopeCategory, 'id' | 'created_at' | 'updated_at' | 'deleted_at'>
export type UpdateScopeCategoryInput = Partial<CreateScopeCategoryInput>

export interface FuelResourceCSVRow {
  id?: string
  scope_category_id?: string
  scope?: string
  category_name?: string
  resource: string
  sub_category?: string
  unit?: string
  ef_value?: string
  value1_label?: string
  value1_unit?: string
  value2_label?: string
  value2_unit?: string
  ref_info?: string
  ref_co2?: string
  ref_fossil_ch4?: string
  ref_ch4?: string
  ref_n2o?: string
  ref_sf6?: string
  ref_nf3?: string
  ref_hfcs?: string
  ref_pfcs?: string
  gwp100_hfcs?: string
  gwp100_pfcs?: string
  extraghg_ef?: string
  extraghg_gwp100?: string
  ref_source?: string
  version?: string
  ref_code?: string
  sort_index?: string
  multiplier?: string
  description?: string
  meta?: string
}

export interface ScopeCategoryCSVRow {
  id?: string
  scope: string
  name_th: string
  name_en: string
  display_order?: string
}

export interface ImportValidationResult<T> {
  row: number
  data: T
  errors: string[]
  willUpdate: boolean
}

export interface ImportPreviewStats {
  total: number
  toInsert: number
  toUpdate: number
  errors: number
}

export interface FuelResourcesQuery {
  scope?: number
  category_id?: string
  sub_category?: string
  search?: string
  version?: string
  page?: number
  per_page?: number
  include_deleted?: boolean
}

export interface PaginatedResult<T> {
  data: T[]
  total: number
  page: number
  per_page: number
}
