# External Templates API

Client apps (e.g. org-app) use this API to fetch emission templates with their activity groups and mapped fuel resources. Clients can select an industry, load its template, and add emission records following the mapped fuel resources of each activity group.

Activity groups are **versioned per EF catalog version** (`ef_catalog_releases.version`), the same version dimension used by fuel resources. Each version has its own activity-group list per industry — use `GET /api/external/templates/versions` to list available versions before fetching templates.

**Org-app consumption:** the client browser calls same-origin `GET /api/external/templates` on the org-app; that route proxies to this admin endpoint using `NEXT_PUBLIC_ADMIN_CONSOLE_URL`.

## Endpoints

```
GET /api/external/templates
GET /api/external/templates/versions
```

Base URL: your admin-console deployment (e.g. `https://admin-console.ideacarb.com`).

### GET /api/external/templates/versions

Returns the EF catalog versions that have template activity groups defined, so the client can let the user choose a version first.

```json
{
  "data": [
    { "version": "TGO 1 กรกฎาคม 2569", "is_default": true, "order_index": 40 }
  ]
}
```

## Query Parameters (`GET /api/external/templates`)

| Parameter       | Type    | Required | Default | Description                                                                 |
| --------------- | ------- | -------- | ------- | --------------------------------------------------------------------------- |
| `industry_code` | string  | No       | —       | Filter to one industry (e.g. `power-generation`, `general-manufacturing`).  |
| `is_active`     | boolean | No       | `true`  | When `true`, only active templates. Use `false` to include inactive ones.    |
| `version`       | string  | No       | default published `ef_catalog_releases.version` | Scopes activity groups to one EF catalog version. See `/versions` above for valid values. |

## Example Requests

**All active templates (default catalog version):**
```
GET /api/external/templates
```

**Templates for a specific industry:**
```
GET /api/external/templates?industry_code=power-generation
```

**Templates for a specific catalog version:**
```
GET /api/external/templates?version=TGO%201%20กรกฎาคม%202569
```

**Include inactive templates:**
```
GET /api/external/templates?is_active=false
```

## Response

```json
{
  "data": [
    {
      "id": "uuid",
      "industry_code": "power-generation",
      "name_th": "การผลิตพลังงานและการจัดการพลังงานไฟฟ้า",
      "name_en": "Power Generation",
      "examples": "• Energy production and conversion...",
      "is_active": true,
      "feature_image_url": "https://...",
      "display_order": 1,
      "activity_groups": [
        {
          "id": "uuid",
          "name_th": "...",
          "name_en": "...",
          "scope": 1,
          "scope_category_id": "uuid",
          "scope_sub_category": null,
          "scope_category": {
            "id": "uuid",
            "scope": 1,
            "name_th": "...",
            "name_en": "..."
          },
          "is_common": false,
          "sort_order": 0,
          "status": "active",
          "version": "TGO 1 กรกฎาคม 2569",
          "fuel_resources": [
            {
              "id": "uuid",
              "resource": "Diesel",
              "unit": "L",
              "ef_value": 2.68,
              "ref_info": "IPCC 2006...",
              "note": "optional mapping note"
            }
          ]
        }
      ]
    }
  ]
}
```

## Response Structure

| Level | Field | Description |
| ----- | ----- | ------------ |
| Root | `data` | Array of templates. |
| Template | `id`, `industry_code`, `name_th`, `name_en`, `examples`, `is_active`, `feature_image_url`, `display_order` | Template metadata. |
| Template | `activity_groups` | Array of activity groups for this template. |
| Activity group | `id`, `name_th`, `name_en`, `scope`, `scope_category_id`, `scope_sub_category`, `scope_category`, `is_common`, `sort_order`, `status`, `version` | Activity group metadata; `version` is the EF catalog version this group belongs to (matches the request's `version` param). |
| Activity group | `fuel_resources` | Mapped fuel resources for this activity group. |
| Fuel resource | `id`, `resource`, `unit`, `ef_value`, `ref_info`, `note` | Fuel resource fields; `note` comes from the mapping. |

## Client Usage Flow

1. **Select version** — Call `GET /api/external/templates/versions`, default to the entry with `is_default: true`.
2. **Select industry** — User picks an industry (e.g. Power Generation).
3. **Fetch template** — Call `GET /api/external/templates?industry_code=power-generation&version=...`.
4. **Iterate activity groups** — For each `activity_group` in the template:
   - Use `activity_group.id`, `name_en`, `scope`, etc. for the emission record.
   - For each `fuel_resource` in `activity_group.fuel_resources`:
     - Create an emission record using `fuel_resource.id`, `resource`, `unit`, `ef_value`.
     - Use `note` if you need mapping-specific context.

## CORS

The API sends CORS headers for cross-origin requests. Preflight `OPTIONS` requests are supported.

## Error Responses

| Status | Description |
| ------ | ------------ |
| 500   | Server error; response body includes `{ "error": "Failed to fetch templates" }`. |

## Industry Codes (Reference)

Common values from seed data:

- `power-generation`
- `general-manufacturing`
- `oil-and-gas`
- `metals-production`
- `aluminum-production`
- `mining-and-mineral-production`
- `pulp-paper-and-print`
- `chemical-production`
- `carbon-capture-storage`
- `transport`
- `waste-handling-and-disposal`
- `agriculture-forestry-and-other-land-use-afolu`
- `general-services`
