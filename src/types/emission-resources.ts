export type RefSource =
  | 'SELF_COLLECT'
  | 'SUPPLIER'
  | 'TH_LCI'
  | 'TGO'
  | 'THAI_RES'
  | 'INTERNATIONAL'
  | 'OTHER'
  | 'SUBSITUTE'

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
  created_at: string
  updated_at: string | null
  deleted_at: string | null
  // Joined fields
  scope_category?: ScopeCategory
}

export interface FuelResourceWithCategory extends FuelResource {
  scope_category: ScopeCategory
}

// DTO types for forms / API payloads
export type CreateFuelResourceInput = Omit<FuelResource, 'id' | 'created_at' | 'updated_at' | 'deleted_at' | 'scope_category'>
export type UpdateFuelResourceInput = Partial<CreateFuelResourceInput>

export type CreateScopeCategoryInput = Omit<ScopeCategory, 'id' | 'created_at' | 'updated_at' | 'deleted_at'>
export type UpdateScopeCategoryInput = Partial<CreateScopeCategoryInput>

// CSV import row types
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
}

export interface ScopeCategoryCSVRow {
  id?: string
  scope: string
  name_th: string
  name_en: string
  display_order?: string
}

// Validation result for import preview
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

// Query params for fuel resources list
export interface FuelResourcesQuery {
  scope?: number
  category_id?: string
  sub_category?: string
  search?: string
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
