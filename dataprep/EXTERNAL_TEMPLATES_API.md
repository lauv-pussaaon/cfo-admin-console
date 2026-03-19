# External Templates API

Client apps (e.g. org-app) use this API to fetch emission templates with their activity groups and mapped fuel resources. Clients can select an industry, load its template, and add emission records following the mapped fuel resources of each activity group.

## Endpoint

```
GET /api/external/templates
```

Base URL: your admin-console deployment (e.g. `https://admin.example.com`).

## Query Parameters

| Parameter       | Type    | Required | Default | Description                                                                 |
| --------------- | ------- | -------- | ------- | --------------------------------------------------------------------------- |
| `industry_code` | string  | No       | —       | Filter to one industry (e.g. `power-generation`, `general-manufacturing`).  |
| `is_active`     | boolean | No       | `true`  | When `true`, only active templates. Use `false` to include inactive ones.    |

## Example Requests

**All active templates:**
```
GET /api/external/templates
```

**Templates for a specific industry:**
```
GET /api/external/templates?industry_code=power-generation
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
| Activity group | `id`, `name_th`, `name_en`, `scope`, `scope_category_id`, `scope_sub_category`, `scope_category`, `is_common`, `sort_order`, `status` | Activity group metadata. |
| Activity group | `fuel_resources` | Mapped fuel resources for this activity group. |
| Fuel resource | `id`, `resource`, `unit`, `ef_value`, `ref_info`, `note` | Fuel resource fields; `note` comes from the mapping. |

## Client Usage Flow

1. **Select industry** — User picks an industry (e.g. Power Generation).
2. **Fetch template** — Call `GET /api/external/templates?industry_code=power-generation`.
3. **Iterate activity groups** — For each `activity_group` in the template:
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
