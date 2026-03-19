export type TemplateStatus = 'active' | 'inactive'

export interface EmissionTemplate {
  id: string
  legacy_industry_id: number | null
  industry_code: string
  name_th: string
  name_en: string
  examples: string | null
  is_active: boolean
  feature_image_url: string | null
  feature_image_path: string | null
  display_order: number
  created_at: string
  updated_at: string | null
  deleted_at: string | null
}

export interface TemplateActivityGroup {
  id: string
  template_id: string
  legacy_activity_group_id: number | null
  name_th: string
  name_en: string
  scope: 1 | 2 | 3 | 4 | null
  scope_category_id: string | null
  scope_sub_category: string | null
  is_common: boolean
  sort_order: number
  status: TemplateStatus
  created_at: string
  updated_at: string | null
  deleted_at: string | null
}

export interface ScopeCategoryLite {
  id: string
  scope: 1 | 2 | 3 | 4
  name_th: string
  name_en: string
}

export interface FuelResourceLite {
  id: string
  resource: string
  unit: string | null
  ef_value: number | null
  ref_info: string | null
}

export interface TemplateActivityGroupFuelResourceMapping {
  id: string
  template_activity_group_id: string
  fuel_resource_id: string
  note: string | null
  sort_order: number
  fuel_resource?: FuelResourceLite
}

export interface TemplateActivityGroupWithRelations extends TemplateActivityGroup {
  scope_category?: ScopeCategoryLite | null
  fuel_resource_mappings?: TemplateActivityGroupFuelResourceMapping[]
}

export interface EmissionTemplateWithRelations extends EmissionTemplate {
  activity_groups?: TemplateActivityGroupWithRelations[]
  activity_group_count?: number
}

export interface EmissionTemplatesQuery {
  search?: string
  page?: number
  per_page?: number
  include_deleted?: boolean
  is_active?: boolean
}

export interface TemplateActivityGroupsQuery {
  template_id?: string
  search?: string
  include_deleted?: boolean
}

export interface PaginatedResult<T> {
  data: T[]
  total: number
  page: number
  per_page: number
}

export type CreateEmissionTemplateInput = Omit<
  EmissionTemplate,
  'id' | 'created_at' | 'updated_at' | 'deleted_at'
>
export type UpdateEmissionTemplateInput = Partial<CreateEmissionTemplateInput>

export type CreateTemplateActivityGroupInput = Omit<
  TemplateActivityGroup,
  'id' | 'created_at' | 'updated_at' | 'deleted_at'
>
export type UpdateTemplateActivityGroupInput = Partial<CreateTemplateActivityGroupInput>

/** External API: activity group with flattened fuel_resources (from mappings) */
export interface ExternalTemplateActivityGroup {
  id: string
  name_th: string
  name_en: string
  scope: number | null
  scope_category_id: string | null
  scope_sub_category: string | null
  scope_category?: ScopeCategoryLite | null
  is_common: boolean
  sort_order: number
  status: string
  fuel_resources: Array<{
    id: string
    resource: string
    unit: string | null
    ef_value: number | null
    ref_info: string | null
    note: string | null
  }>
}

/** External API: template with nested activity groups and fuel resources */
export interface ExternalTemplateWithHierarchy {
  id: string
  industry_code: string
  name_th: string
  name_en: string
  examples: string | null
  is_active: boolean
  feature_image_url: string | null
  display_order: number
  activity_groups: ExternalTemplateActivityGroup[]
}

/** External API response shape */
export interface ExternalTemplateResponse {
  data: ExternalTemplateWithHierarchy[]
}
