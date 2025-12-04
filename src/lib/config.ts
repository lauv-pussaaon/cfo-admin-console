// Centralized runtime configuration for the app
// Follows Next.js best practice: use environment variables and a small typed config helper

type AppConfig = {
  maintenanceEnabled: boolean;
  maintenanceBypassPath: string; // path that remains accessible even in maintenance
};

function readBooleanEnv (variableName: string, defaultValue: boolean): boolean {
  const rawValue = process.env[variableName];
  if (rawValue === undefined || rawValue === null || rawValue === '') {
    return defaultValue;
  }
  const normalized = String(rawValue).trim().toLowerCase();
  return normalized === '1' || normalized === 'true' || normalized === 'yes' || normalized === 'on';
}

export const config: AppConfig = {
  maintenanceEnabled: readBooleanEnv('NEXT_PUBLIC_MAINTENANCE_MODE', false),
  maintenanceBypassPath: '/_health',
};

export function isMaintenanceMode (): boolean {
  return config.maintenanceEnabled;
}

/**
 * Supabase Storage bucket names
 * Centralized configuration for all storage buckets used in the application
 */
export const storageBuckets = {
  chatDocuments: 'cfo-report-chat-documents',
  reportDocuments: 'cfo-report-documents',
  efCertificates: 'cfo-ef-certificates',
  userAvatars: 'cfo-user-avatar',
} as const



