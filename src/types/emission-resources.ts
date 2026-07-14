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
  published_at: string | null
  published_by: string | null
  updated_at: string | null
}

export interface FuelResourceLinking {
  id: string
  source_fuel_id: string
  dest_fuel_id: string
  unit_conversion_factor: number
  version: string
  created_at: string
  updated_at: string | null
  source_fuel?: FuelResource | null
  dest_fuel?: FuelResource | null
}

export type CreateFuelResourceInput = Omit<
  FuelResource,
  'id' | 'created_at' | 'updated_at' | 'deleted_at' | 'scope_category'
>
export type UpdateFuelResourceInput = Partial<CreateFuelResourceInput>

export type CreateScopeCategoryInput = Omit<ScopeCategory, 'id' | 'created_at' | 'updated_at' | 'deleted_at'>
export type UpdateScopeCategoryInput = Partial<CreateScopeCategoryInput>

export type CreateFuelResourceLinkingInput = {
  source_fuel_id: string
  dest_fuel_id: string
  unit_conversion_factor?: number
  version: string
}

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
}

export interface ScopeCategoryCSVRow {
  id?: string
  scope: string
  name_th: string
  name_en: string
  display_order?: string
}

export interface FuelResourceLinkingCSVRow {
  source_fuel_id?: string
  dest_fuel_id?: string
  source_category?: string
  source_resource?: string
  dest_category?: string
  dest_resource?: string
  unit_conversion_factor?: string
  version?: string
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
