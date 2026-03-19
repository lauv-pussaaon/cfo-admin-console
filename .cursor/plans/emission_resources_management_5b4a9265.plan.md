---
name: Emission Resources Management
overview: Build a new Emission Resources Management section in the admin console allowing admins to import/manage fuel resource emission factors from the CSV, add/edit/soft-delete individual records, and manage categories/sub-categories via a right-side panel.
todos:
  - id: types
    content: Add FuelResource, EmissionCategory, EmissionSubCategory TypeScript types to src/types/emission-resources.ts and src/types/database.ts
    status: pending
  - id: api-fuel-resources
    content: "Create API routes: GET/POST /api/fuel-resources, PUT/DELETE /api/fuel-resources/[id], POST /api/fuel-resources/import (upsert by UUID)"
    status: pending
  - id: api-categories
    content: "Create API routes: GET/POST /api/emission-categories, PUT/DELETE /api/emission-categories/[id] (soft-delete)"
    status: pending
  - id: sidebar
    content: Add Emission Resources nav item to Sidebar.tsx
    status: pending
  - id: page-shell
    content: Create src/app/admin-console/emission-resources/page.tsx with scope tab filter, category dropdown, and page header with Import CSV / Add / Manage Categories buttons
    status: pending
  - id: table
    content: Build EmissionResourcesTable component with pagination, inline edit/delete (soft-delete confirmation dialog), scope badge chips
    status: pending
  - id: resource-form
    content: Build EmissionResourceForm modal for adding/editing a single emission resource
    status: pending
  - id: import-modal
    content: "Build EmissionResourceImportModal 3-step wizard: upload CSV → preview/validate → confirm upsert"
    status: pending
  - id: categories-panel
    content: Build CategoriesPanel right-side drawer with independent scope filter, expandable category list, add/edit/soft-delete for categories and sub-categories
    status: pending
isProject: false
---

# Emission Resources Management Feature

## Data Model (CSV Schema)

From `dataprep/Source- Fuel Resources.csv` (989 rows):

- `id` — UUID (stable key, preserved across all updates after first import)
- `scope` — 1 | 2 | 3 | 4
- `category_th` / `category_en` — bilingual category names
- `sub_category` — optional subcategory
- `resource` — fuel/emission source name (e.g. `Diesel: L`)
- `unit` — measurement unit (e.g. `Liter`, `kg`)
- `ef_value` — emission factor (kg CO₂eq per unit)
- `ref_source` — optional reference

---

## New Files to Create

```
src/types/emission-resources.ts              # TypeScript types
src/lib/api/fuel-resources.ts                # DB query functions
src/app/api/fuel-resources/route.ts          # GET (list), POST (create)
src/app/api/fuel-resources/[id]/route.ts     # PUT (update), DELETE (soft-delete)
src/app/api/fuel-resources/import/route.ts   # POST (bulk upsert by UUID)
src/app/api/emission-categories/route.ts     # GET, POST
src/app/api/emission-categories/[id]/route.ts # PUT, DELETE (soft-delete)
src/app/admin-console/emission-resources/page.tsx
src/components/admin/emission-resources/EmissionResourcesTable.tsx
src/components/admin/emission-resources/EmissionResourceImportModal.tsx
src/components/admin/emission-resources/EmissionResourceForm.tsx
src/components/admin/emission-resources/CategoriesPanel.tsx
```

Files to modify:

- `[src/components/admin/Sidebar.tsx](src/components/admin/Sidebar.tsx)` — add "Emission Resources" nav item with `LocalFireDepartment` or `Science` icon
- `[src/types/database.ts](src/types/database.ts)` — add `FuelResource`, `EmissionCategory` types

---

## Page Layout: `/admin-console/emission-resources`

```
┌──────────────────────────────────────────────────────────────────┐
│ Emission Resources                        [Import CSV] [+ Add]   │
│                                            [Manage Categories →] │
├──────────────────────────────────────────────────────────────────┤
│ [All][Scope 1][Scope 2][Scope 3][Scope 4]  Category ▾  Search…  │
├──────────────────────────────────────────────────────────────────┤
│ Scope │ Category (badge)  │ Sub-cat │ Resource    │ Unit │ EF    │
│  1    │ Stationary comb.  │  —      │ Diesel: L   │ L    │ 2.707 │
│  ...  │  ...              │  ...    │  ...        │ ...  │ ...   │
└──────────────────────────────────────────────────────────────────┘
```

- Scope filter = tab bar (All / 1 / 2 / 3 / 4); drives category dropdown options
- Category dropdown is scoped to selected tab
- Each row has inline Edit (pencil icon) and Delete (trash icon, soft-delete with confirmation)
- Pagination + row count

---

## CSV Import Flow (3-step modal)

**Step 1 — Upload**

- Drag-and-drop zone or file picker
- Accepted: `.csv` only
- Download template link

**Step 2 — Preview**

- Parse CSV client-side, show stats:
  - Total rows detected
  - Rows with existing UUID → "will update"
  - Rows without UUID / UUID not found in DB → "will insert as new"
  - Validation errors (missing required fields) highlighted in red
- Scrollable preview table (first 50 rows)

**Step 3 — Confirm & Import**

- "Update All" strategy: `POST /api/fuel-resources/import` sends full payload
- Backend performs `INSERT … ON CONFLICT (id) DO UPDATE` (upsert by UUID)
- First-time import: UUIDs from CSV are preserved as-is
- Subsequent imports: same CSV UUIDs → same DB rows are updated, not duplicated
- Progress indicator, success/error summary

---

## Categories Panel (Right Drawer, 480px)

Opens from "Manage Categories →" button. Pre-populates scope filter from currently selected scope tab on the main page (but is fully independent — changing it here does NOT affect main page).

```
┌─────────────────────────────┐
│ ← Manage Categories    [✕] │
│ Scope: [All][1][2][3][4]   │
│                  [+ Add]   │
├─────────────────────────────┤
│ ▶ [Scope 1] Stationary… ✏🗑│
│   └─ (no sub-categories)   │
│ ▶ [Scope 1] Mobile comb… ✏🗑│
│   └─ Off road         ✏🗑  │
│   └─ On road          ✏🗑  │
│   [+ Add sub-category]     │
│ ▶ [Scope 2] Electricity… ✏🗑│
│  ...                       │
└─────────────────────────────┘
```

- Each category is an expandable row showing its sub-categories
- Inline edit turns the label into an input field
- Delete = soft-delete with confirmation popover
- Add Category → inline form at top of list
- Add Sub-category → inline form nested under category

---

## Import Strategy: "Update All by UUID"

```
CSV row has `id` field?
  YES → upsert: update record with that UUID
  NO  → insert with newly generated UUID (first-time rows from old CSV format)
```

This ensures idempotent re-imports: run the same CSV 10 times, always same result.

---

## Implementation Order

1. Types + DB schema (TypeScript types, SQL migration)
2. API routes (fuel-resources CRUD + import, emission-categories CRUD)
3. Sidebar nav item
4. Main page shell + scope/category filter bar
5. `EmissionResourcesTable` with edit/delete per row
6. `EmissionResourceForm` (add/edit modal or inline)
7. `EmissionResourceImportModal` (3-step wizard)
8. `CategoriesPanel` drawer (category + sub-category CRUD)

