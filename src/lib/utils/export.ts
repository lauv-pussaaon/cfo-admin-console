import type { OrganizationWithStats } from '@/types/database'
import type { User } from '@/lib/api/types'
import { DEFAULT_ACCOUNT_TYPE } from '@/types/account-types'

export interface ExportData {
  name: string
  code: string | null
  factory_admin_email: string | null
  status: string
  created_at: string
  account_type: string
  package_start: string
  package_end: string
  dealer_name?: string
  dealer_email?: string
}

/**
 * Convert organization data to CSV format
 */
export function exportOrganizationToCSV(
  org: OrganizationWithStats,
  dealerInfo?: User
): string {
  const status = org.is_initialized ? 'Deployed' : 'Pending Deployment'
  const exportData: ExportData = {
    name: org.name,
    code: org.code || '',
    factory_admin_email: org.factory_admin_email || '',
    status,
    created_at: new Date(org.created_at).toLocaleString('th-TH'),
    account_type: org.account_type || DEFAULT_ACCOUNT_TYPE,
    package_start: org.package_start ?? '',
    package_end: org.package_end ?? '',
    dealer_name: dealerInfo?.name || '',
    dealer_email: dealerInfo?.email || '',
  }

  // CSV header
  const headers = [
    'Organization Name',
    'Code',
    'Client Admin Email',
    'Status',
    'Created At',
    'Account Type',
    'Package Start',
    'Package End',
    'Dealer Name',
    'Dealer Email',
  ]

  // CSV row
  const row = [
    exportData.name,
    exportData.code,
    exportData.factory_admin_email,
    exportData.status,
    exportData.created_at,
    exportData.account_type,
    exportData.package_start,
    exportData.package_end,
    exportData.dealer_name,
    exportData.dealer_email,
  ]

  // Escape CSV values (handle commas, quotes, newlines)
  const escapeCSV = (value: string | null | undefined): string => {
    const str = value ?? ''
    if (str.includes(',') || str.includes('"') || str.includes('\n')) {
      return `"${str.replace(/"/g, '""')}"`
    }
    return str
  }

  return [headers.map(escapeCSV).join(','), row.map(escapeCSV).join(',')].join('\n')
}

/**
 * Convert organization data to JSON format
 */
export function exportOrganizationToJSON(
  org: OrganizationWithStats,
  dealerInfo?: User
): string {
  const status = org.is_initialized ? 'Deployed' : 'Pending Deployment'
  const exportData: ExportData = {
    name: org.name,
    code: org.code || null,
    factory_admin_email: org.factory_admin_email || null,
    status,
    created_at: new Date(org.created_at).toISOString(),
    account_type: org.account_type || DEFAULT_ACCOUNT_TYPE,
    package_start: org.package_start ?? '',
    package_end: org.package_end ?? '',
    dealer_name: dealerInfo?.name || undefined,
    dealer_email: dealerInfo?.email || undefined,
  }

  return JSON.stringify(exportData, null, 2)
}

/**
 * Download file to user's browser
 */
export function downloadFile(
  content: string,
  filename: string,
  mimeType: string = 'text/plain'
): void {
  const blob = new Blob([content], { type: mimeType })
  const url = URL.createObjectURL(blob)
  const link = document.createElement('a')
  link.href = url
  link.download = filename
  document.body.appendChild(link)
  link.click()
  document.body.removeChild(link)
  URL.revokeObjectURL(url)
}

/**
 * Export organization as CSV file
 */
export function exportOrganizationAsCSV(
  org: OrganizationWithStats,
  dealerInfo?: User
): void {
  const csv = exportOrganizationToCSV(org, dealerInfo)
  const filename = `organization-${org.code || org.name.replace(/\s+/g, '-')}-${new Date().toISOString().split('T')[0]}.csv`
  downloadFile(csv, filename, 'text/csv;charset=utf-8;')
}

/**
 * Export organization as JSON file
 */
export function exportOrganizationAsJSON(
  org: OrganizationWithStats,
  dealerInfo?: User
): void {
  const json = exportOrganizationToJSON(org, dealerInfo)
  const filename = `organization-${org.code || org.name.replace(/\s+/g, '-')}-${new Date().toISOString().split('T')[0]}.json`
  downloadFile(json, filename, 'application/json')
}

