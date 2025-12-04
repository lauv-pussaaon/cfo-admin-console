# CFO Admin Console

Admin console application for managing system users (Admin, Dealer, Consult, Audit) and client organizations.

## Features

- **User Management**: Create, edit, and delete system users with roles (Admin, Dealer, Consult, Audit)
- **Organization Management**: Create, edit, and delete client organizations
- **Organization Assignment**: Assign dealers, consultants, and auditors to organizations
- **Organization App Links**: Generate and manage links to organization app instances
- **Initialization Tracking**: Track which organizations have been initialized with their app instances

## Tech Stack

- **Frontend**: Next.js 15 with App Router
- **UI Framework**: Material-UI (MUI) v5
- **Language**: TypeScript
- **Database**: Supabase (PostgreSQL)
- **Styling**: Material-UI + Emotion
- **Package Manager**: pnpm

## Installation

```bash
# Clone the repository
git clone <repository-url>
cd cfo-admin-console

# Install dependencies
pnpm install

# Set up environment variables
cp .env.example .env.local
# Edit .env.local with your Supabase credentials

# Run development server
pnpm dev
```

## Environment Setup

Create a `.env.local` file with the following variables:

```env
NEXT_PUBLIC_SUPABASE_URL=your-supabase-url
NEXT_PUBLIC_SUPABASE_ANON_KEY=your-supabase-anon-key
```

## Database Setup

1. Create a new Supabase project for the admin console
2. Run the database schema:
   ```bash
   # In Supabase SQL Editor, run:
   database/01_schema.sql
   ```
3. Seed initial data:
   ```bash
   # In Supabase SQL Editor, run:
   database/02_seed_master_data.sql
   ```
   **Note**: Update the password hash in `02_seed_master_data.sql` with your actual default admin password hash.

## User Roles

- **Admin**: Full system access, can manage all users and organizations
- **Dealer**: Can create, edit, and delete their assigned client organizations
- **Consult**: Can view assigned organizations and access organization app links
- **Audit**: Can view assigned organizations and access organization app links

## Organization Management

When a dealer creates a new organization:
1. Organization is created with `is_initialized: false`
2. Operations team is notified to provision a new organization app instance
3. Operations team updates the organization with:
   - `app_url`: URL to the organization app instance
   - `factory_admin_email`: Email for the factory admin account
   - `is_initialized: true`: Marks organization as initialized
4. Factory admin can then access the organization app and complete initialization

## Development Commands

```bash
# Development server
pnpm dev

# Build for production
pnpm build

# Start production server
pnpm start

# Run linting
pnpm lint
```

## Database Schema

The admin console uses Supabase with the following main tables:
- `organizations` - Client organizations with app URLs and initialization status
- `users` - System users (Admin, Dealer, Consult, Audit)
- `user_organizations` - Links users to organizations

## Project Structure

```
src/
├── app/                 # Next.js app directory
│   ├── admin-console/   # Admin console pages
│   └── login/           # Login page
├── components/
│   ├── admin/           # Admin components (UserModal, OrganizationModal, etc.)
│   └── common/          # Shared components
├── lib/
│   ├── api/             # API functions
│   ├── services/        # Service layer
│   └── utils/           # Utility functions
└── types/
    └── database.ts      # TypeScript interfaces
```

## License

This project is licensed under the MIT License.
