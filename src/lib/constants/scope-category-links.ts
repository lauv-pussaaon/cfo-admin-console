/** Canonical scope-category IDs (scope_categories.manifest.json). */
export const SCOPE_CAT1_PURCHASED_GOODS_ID = 'a1000003-0003-4003-8003-000000000007'
export const SCOPE_CAT3_FUEL_ENERGY_ID = 'a1000003-0003-4003-8003-000000000009'
export const SCOPE_CAT4_UPSTREAM_TRANSPORT_ID = 'a1000003-0003-4003-8003-00000000000a'

export type ScopeCategoryLinkRule = {
  id: string
  source_scopes?: number[]
  source_scope_category_ids?: string[]
  dest_scope_category_id: string
  is_linked_cat1: boolean
}

/** Fixed source→dest category rules (no DB). */
export const SCOPE_CATEGORY_LINK_RULES: ScopeCategoryLinkRule[] = [
  {
    id: 'scope_1_2_to_cat3',
    source_scopes: [1, 2],
    dest_scope_category_id: SCOPE_CAT3_FUEL_ENERGY_ID,
    is_linked_cat1: false,
  },
  {
    id: 'cat1_to_cat4',
    source_scope_category_ids: [SCOPE_CAT1_PURCHASED_GOODS_ID],
    dest_scope_category_id: SCOPE_CAT4_UPSTREAM_TRANSPORT_ID,
    is_linked_cat1: true,
  },
]

export function matchScopeCategoryLinkRule (input: {
  scope: number
  scopeCategoryId: string
}): ScopeCategoryLinkRule | null {
  for (const rule of SCOPE_CATEGORY_LINK_RULES) {
    if (rule.source_scope_category_ids?.includes(input.scopeCategoryId)) {
      return rule
    }
    if (rule.source_scopes?.includes(input.scope)) {
      return rule
    }
  }
  return null
}
