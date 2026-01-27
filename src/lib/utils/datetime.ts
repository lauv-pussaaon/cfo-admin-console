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

/**
 * Format date as YYYY-MM-DD string for input fields
 * @param date Date object
 * @returns Formatted string like "2024-01-15"
 */
export function getDateString(date: Date): string {
  const year = date.getFullYear()
  const month = String(date.getMonth() + 1).padStart(2, '0')
  const day = String(date.getDate()).padStart(2, '0')
  return `${year}-${month}-${day}`
}

/**
 * Get date N days ago from today
 * @param days Number of days ago
 * @returns Date object
 */
export function getDaysAgo(days: number): Date {
  const date = new Date()
  date.setDate(date.getDate() - days)
  return date
}

/**
 * Get today's date
 * @returns Date object for today
 */
export function getToday(): Date {
  return new Date()
}

