/**
 * Utility functions for date and time formatting
 */

/**
 * Format date into DD MMM YYYY HH:II format in local timezone
 * @param date Date string, Date object, or timestamp
 * @returns Formatted string like "15 Jan 2024 14:30"
 */
export function formatDateTime (date: string | Date | number): string {
  const dateObj = typeof date === 'string' || typeof date === 'number'
    ? new Date(date)
    : date

  // Validate date
  if (isNaN(dateObj.getTime())) {
    throw new Error('Invalid date provided')
  }

  // Get date components in local timezone
  const day = dateObj.getDate().toString().padStart(2, '0')
  const month = dateObj.toLocaleString('th-TH', { month: 'short' })
  const year = dateObj.getFullYear()
  const hours = dateObj.getHours().toString().padStart(2, '0')
  const minutes = dateObj.getMinutes().toString().padStart(2, '0')

  return `${day} ${month} ${year} ${hours}:${minutes}`
}

