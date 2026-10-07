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
    { name: 'ID requests', description: 'Trial and annual membership account requests' },
    { name: 'Consults', description: 'Consult registration, review, and approval' },
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
      DeployStatus: {
        type: 'string',
        enum: ['not-started', 'deploying', 'deployment_failed', 'deployed'],
        description:
          'open, started, cancelled → not-started. deploying, deployment_failed, and deployed match requestStatus.',
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
          deploy_status: { $ref: '#/components/schemas/DeployStatus' },
          organization_id: { type: 'string', format: 'uuid', nullable: true },
          approved_account_type: { type: 'string', nullable: true },
          reviewed_by: { type: 'string', format: 'uuid', nullable: true },
          reviewed_at: { type: 'string', format: 'date-time', nullable: true },
          deploy_error: {
            type: 'string',
            nullable: true,
            description: 'Set only when deploy_status is deployment_failed',
          },
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
      ConsultStage: {
        type: 'string',
        enum: ['register', 'review', 'approved', 'rejected', 'inactive'],
        description:
          'register: user requested and verification missing or pending_upload. review: user requested and verification pending_review. approved: user active, or verification approved. rejected: user or verification rejected. inactive: user inactive. Checked in that order.',
      },
      ConsultUserStatus: {
        type: 'string',
        enum: ['requested', 'active', 'rejected', 'inactive'],
      },
      ConsultVerificationStatus: {
        type: 'string',
        enum: ['pending_upload', 'pending_review', 'approved', 'rejected'],
      },
      ConsultItem: {
        type: 'object',
        properties: {
          id: { type: 'string', format: 'uuid' },
          name: { type: 'string' },
          username: { type: 'string' },
          email: { type: 'string' },
          phone: { type: 'string', nullable: true },
          organization_name: { type: 'string', nullable: true },
          consulting_firm_name: { type: 'string', nullable: true },
          is_firm_contact_person: { type: 'boolean' },
          created_at: { type: 'string', format: 'date-time' },
          status: { $ref: '#/components/schemas/ConsultStage' },
          user_status: { $ref: '#/components/schemas/ConsultUserStatus' },
          verification_status: {
            allOf: [{ $ref: '#/components/schemas/ConsultVerificationStatus' }],
            nullable: true,
          },
          rejection_reason: { type: 'string', nullable: true },
          verified_date: { type: 'string', format: 'date', nullable: true },
          document_count: { type: 'integer' },
        },
      },
      ConsultList: {
        type: 'object',
        required: ['consults', 'page', 'pageSize', 'total', 'totalPages'],
        properties: {
          consults: {
            type: 'array',
            items: { $ref: '#/components/schemas/ConsultItem' },
          },
          page: { type: 'integer' },
          pageSize: { type: 'integer', example: 50 },
          total: { type: 'integer' },
          totalPages: { type: 'integer' },
          registeredDateFrom: { type: 'string', format: 'date' },
          registeredDateBy: { type: 'string', format: 'date' },
          status: { $ref: '#/components/schemas/ConsultStage' },
        },
      },
      AccountType: {
        type: 'string',
        enum: ['annual_member', 'trial', 'demo', 'employee', 'project'],
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
    '/api/admin-console/id-requests': {
      get: {
        tags: ['ID requests'],
        summary: 'List trial and annual membership ID requests',
        description:
          'Both request kinds. Sorted by created_at DESC. 50 per page. Date filters use Asia/Bangkok calendar days. deploy_status is derived from the DB status. deploy_error is null unless deploy_status is deployment_failed. deploy_log is omitted.',
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
    '/api/admin-console/consults': {
      get: {
        tags: ['Consults'],
        summary: 'List Consult users',
        description:
          'Consult role only. Sorted by created_at DESC. 50 per page. Date filters use Asia/Bangkok calendar days. status is the stage derived from user_status and verification_status. No password, invite code, or verification token.',
        parameters: [
          {
            name: 'page',
            in: 'query',
            schema: { type: 'integer', minimum: 1, default: 1 },
          },
          {
            name: 'registeredDateFrom',
            in: 'query',
            description: 'Inclusive start date (YYYY-MM-DD, Asia/Bangkok)',
            schema: { type: 'string', format: 'date' },
          },
          {
            name: 'registeredDateBy',
            in: 'query',
            description: 'Inclusive end date (YYYY-MM-DD, Asia/Bangkok). 400 if from > by.',
            schema: { type: 'string', format: 'date' },
          },
          {
            name: 'status',
            in: 'query',
            schema: { $ref: '#/components/schemas/ConsultStage' },
          },
        ],
        responses: {
          '200': {
            description: 'Paginated consults. Echoes registeredDateFrom, registeredDateBy, status when set.',
            content: { 'application/json': { schema: { $ref: '#/components/schemas/ConsultList' } } },
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
            description: 'annual_member, trial, demo, employee, or project',
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
