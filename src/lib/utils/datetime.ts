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
 * Format a YYYY-MM-DD date string as dd MMM yyyy (local calendar day).
 * @param dateString Date string in YYYY-MM-DD format
 * @returns Formatted string like "05 Jan 2024", or empty string if invalid
 */
export function formatDateDdMmmYyyy (dateString: string): string {
  if (!dateString) return ''
  const match = /^(\d{4})-(\d{2})-(\d{2})$/.exec(dateString)
  if (!match) return ''

  const year = Number(match[1])
  const monthIndex = Number(match[2]) - 1
  const day = Number(match[3])
  const date = new Date(year, monthIndex, day)
  if (
    isNaN(date.getTime()) ||
    date.getFullYear() !== year ||
    date.getMonth() !== monthIndex ||
    date.getDate() !== day
  ) {
    return ''
  }

  const dayText = String(day).padStart(2, '0')
  const monthText = date.toLocaleString('en-US', { month: 'short' })
  return `${dayText} ${monthText} ${year}`
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
}/**
 * Get date N days ago from today
 * @param days Number of days ago
 * @returns Date object
 */
export function getDaysAgo(days: number): Date {
  const date = new Date()
  date.setDate(date.getDate() - days)
  return date
}/**
 * Get today's date
 * @returns Date object for today
 */
export function getToday(): Date {
  return new Date()
}