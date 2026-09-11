export const ADMIN_OPS_OPENAPI = {
  openapi: '3.0.3',
  info: {
    title: 'IdeaCarb Admin Console ops APIs',
    version: '1.0.0',
    description:
      'Read-only list APIs for ops/scripts. Authenticate with SUPPORT_CHAT_BRIDGE_SECRET. This page does not send requests.',
  },
  servers: [{ url: 'https://admin-console.ideacarb.com', description: 'Production' }],
  tags: [
    { name: 'Trial requests', description: 'Trial and annual membership account requests' },
    { name: 'Organizations', description: 'Provisioned organizations' },
  ],
  components: {
    securitySchemes: {
      bearerAuth: {
        type: 'http',
        scheme: 'bearer',
        description: 'SUPPORT_CHAT_BRIDGE_SECRET. Also accepted as header x-support-bridge-secret.',
      },
    },
    schemas: {
      Error: {
        type: 'object',
        properties: { error: { type: 'string' } },
        required: ['error'],
      },
      TrialRequestApiStatus: {
        type: 'string',
        enum: ['open', 'in-progress', 'done'],
        description:
          'open → open; in-progress → started, deploying, deployment_failed; done → deployed, cancelled',
      },
      TrialRequestDbStatus: {
        type: 'string',
        enum: ['open', 'started', 'deploying', 'deployed', 'deployment_failed', 'cancelled'],
      },
      TrialRequestItem: {
        type: 'object',
        properties: {
          id: { type: 'string', format: 'uuid' },
          organization_name: { type: 'string' },
          company_code: { type: 'string', nullable: true },
          contact_first_name: { type: 'string' },
          contact_last_name: { type: 'string' },
          contact_email: { type: 'string' },
          contact_phone: { type: 'string' },
          request_kind: { type: 'string', enum: ['trial', 'annual_membership'] },
          status: { $ref: '#/components/schemas/TrialRequestApiStatus' },
          requestStatus: { $ref: '#/components/schemas/TrialRequestDbStatus' },
          organization_id: { type: 'string', format: 'uuid', nullable: true },
          approved_account_type: { type: 'string', nullable: true },
          reviewed_by: { type: 'string', format: 'uuid', nullable: true },
          reviewed_at: { type: 'string', format: 'date-time', nullable: true },
          deploy_error: { type: 'string', nullable: true },
          deploy_log_path: { type: 'string', nullable: true },
          created_at: { type: 'string', format: 'date-time' },
          updated_at: { type: 'string', format: 'date-time', nullable: true },
        },
      },
      TrialRequestList: {
        type: 'object',
        required: ['requests', 'page', 'pageSize', 'total', 'totalPages'],
        properties: {
          requests: {
            type: 'array',
            items: { $ref: '#/components/schemas/TrialRequestItem' },
          },
          page: { type: 'integer' },
          pageSize: { type: 'integer', example: 50 },
          total: { type: 'integer' },
          totalPages: { type: 'integer' },
          requestDateFrom: { type: 'string', format: 'date' },
          requestDateBy: { type: 'string', format: 'date' },
          status: { $ref: '#/components/schemas/TrialRequestApiStatus' },
        },
      },
      AccountType: {
        type: 'string',
        enum: ['general customers', 'demo', 'employee', 'project'],
      },
      OrganizationItem: {
        type: 'object',
        properties: {
          id: { type: 'string', format: 'uuid' },
          name: { type: 'string' },
          code: { type: 'string', nullable: true },
          createdDate: { type: 'string', format: 'date-time' },
          packageStart: { type: 'string', format: 'date', nullable: true },
          packageEnd: { type: 'string', format: 'date', nullable: true },
          accountType: { $ref: '#/components/schemas/AccountType' },
          appUrl: { type: 'string', nullable: true },
          isInitialized: { type: 'boolean' },
          initializedAt: { type: 'string', format: 'date-time', nullable: true },
          factoryAdminEmail: { type: 'string', nullable: true },
          contactFirstName: { type: 'string', nullable: true },
          contactLastName: { type: 'string', nullable: true },
          contactPhone: { type: 'string', nullable: true },
          username: { type: 'string', nullable: true },
          updatedAt: { type: 'string', format: 'date-time', nullable: true },
        },
      },
      OrganizationList: {
        type: 'object',
        required: ['organizations', 'page', 'pageSize', 'total', 'totalPages'],
        properties: {
          organizations: {
            type: 'array',
            items: { $ref: '#/components/schemas/OrganizationItem' },
          },
          page: { type: 'integer' },
          pageSize: { type: 'integer', example: 50 },
          total: { type: 'integer' },
          totalPages: { type: 'integer' },
          createdDateFrom: { type: 'string', format: 'date' },
          createdDateBy: { type: 'string', format: 'date' },
          packageStartFrom: { type: 'string', format: 'date' },
          packageStartBy: { type: 'string', format: 'date' },
          packageEndFrom: { type: 'string', format: 'date' },
          packageEndBy: { type: 'string', format: 'date' },
          accountType: { $ref: '#/components/schemas/AccountType' },
        },
      },
    },
  },
  security: [{ bearerAuth: [] }],
  paths: {
    '/api/admin-console/trial-requests': {
      get: {
        tags: ['Trial requests'],
        summary: 'List trial and annual membership requests',
        description:
          'Both request kinds. Sorted by created_at DESC. 50 per page. Date filters use Asia/Bangkok calendar days. deploy_log is omitted.',
        parameters: [
          {
            name: 'page',
            in: 'query',
            schema: { type: 'integer', minimum: 1, default: 1 },
          },
          {
            name: 'requestDateFrom',
            in: 'query',
            description: 'Inclusive start date (YYYY-MM-DD, Asia/Bangkok)',
            schema: { type: 'string', format: 'date' },
          },
          {
            name: 'requestDateBy',
            in: 'query',
            description: 'Inclusive end date (YYYY-MM-DD, Asia/Bangkok). 400 if from > by.',
            schema: { type: 'string', format: 'date' },
          },
          {
            name: 'status',
            in: 'query',
            schema: { $ref: '#/components/schemas/TrialRequestApiStatus' },
          },
        ],
        responses: {
          '200': {
            description: 'Paginated requests. Echoes requestDateFrom, requestDateBy, status when set.',
            content: { 'application/json': { schema: { $ref: '#/components/schemas/TrialRequestList' } } },
          },
          '400': {
            description: 'Invalid page, date, or status',
            content: { 'application/json': { schema: { $ref: '#/components/schemas/Error' } } },
          },
          '401': {
            description: 'Missing or wrong token',
            content: { 'application/json': { schema: { $ref: '#/components/schemas/Error' } } },
          },
          '500': {
            description: 'Server or missing service-role key',
            content: { 'application/json': { schema: { $ref: '#/components/schemas/Error' } } },
          },
        },
      },
    },
    '/api/admin-console/organizations': {
      get: {
        tags: ['Organizations'],
        summary: 'List organizations',
        description:
          'Sorted by created_at DESC. 50 per page. Never returns password. createdDateFrom/By use Asia/Bangkok calendar days on created_at. packageStartFrom/By and packageEndFrom/By are inclusive DATE ranges. 400 if a pair has from > by.',
        parameters: [
          {
            name: 'page',
            in: 'query',
            schema: { type: 'integer', minimum: 1, default: 1 },
          },
          {
            name: 'createdDateFrom',
            in: 'query',
            description: 'Inclusive start date (YYYY-MM-DD, Asia/Bangkok)',
            schema: { type: 'string', format: 'date' },
          },
          {
            name: 'createdDateBy',
            in: 'query',
            description: 'Inclusive end date (YYYY-MM-DD, Asia/Bangkok)',
            schema: { type: 'string', format: 'date' },
          },
          {
            name: 'packageStartFrom',
            in: 'query',
            description: 'Inclusive start of package_start DATE range',
            schema: { type: 'string', format: 'date' },
          },
          {
            name: 'packageStartBy',
            in: 'query',
            description: 'Inclusive end of package_start DATE range',
            schema: { type: 'string', format: 'date' },
          },
          {
            name: 'packageEndFrom',
            in: 'query',
            description: 'Inclusive start of package_end DATE range',
            schema: { type: 'string', format: 'date' },
          },
          {
            name: 'packageEndBy',
            in: 'query',
            description: 'Inclusive end of package_end DATE range',
            schema: { type: 'string', format: 'date' },
          },
          {
            name: 'accountType',
            in: 'query',
            description: 'Encode the space in general customers as %20',
            schema: { $ref: '#/components/schemas/AccountType' },
          },
        ],
        responses: {
          '200': {
            description: 'Paginated organizations. Echoes filters when set.',
            content: { 'application/json': { schema: { $ref: '#/components/schemas/OrganizationList' } } },
          },
          '400': {
            description: 'Invalid page, date, or accountType',
            content: { 'application/json': { schema: { $ref: '#/components/schemas/Error' } } },
          },
          '401': {
            description: 'Missing or wrong token',
            content: { 'application/json': { schema: { $ref: '#/components/schemas/Error' } } },
          },
          '500': {
            description: 'Server or missing service-role key',
            content: { 'application/json': { schema: { $ref: '#/components/schemas/Error' } } },
          },
        },
      },
    },
  },
} as const

export function swaggerDocHtml (title: string): string {
  return `<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>${title}</title>
  <link rel="stylesheet" href="https://unpkg.com/swagger-ui-dist@5.17.14/swagger-ui.css" />
  <style>
    .swagger-ui .try-out, .swagger-ui .try-out__btn, .swagger-ui .execute-wrapper { display: none !important; }
  </style>
</head>
<body>
  <div id="swagger-ui"></div>
  <script src="https://unpkg.com/swagger-ui-dist@5.17.14/swagger-ui-bundle.js"></script>
  <script>
    window.ui = SwaggerUIBundle({
      url: '/api/doc/openapi.json',
      dom_id: '#swagger-ui',
      deepLinking: true,
      tryItOutEnabled: false,
      supportedSubmitMethods: [],
      defaultModelsExpandDepth: 2,
    })
  </script>
</body>
</html>
`
}
