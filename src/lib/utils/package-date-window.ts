export type PackageDayWindow = 7 | 14 | 30

const DATE_PATTERN = /^\d{4}-\d{2}-\d{2}$/

export function bangkokDate (now = new Date()): string {
  return new Intl.DateTimeFormat('en-CA', {
    timeZone: 'Asia/Bangkok',
    year: 'numeric',
    month: '2-digit',
    day: '2-digit',
  }).format(now)
}

function shiftDate (isoDate: string, days: number): string {
  const [year, month, day] = isoDate.split('-').map(Number)
  return new Date(Date.UTC(year, month - 1, day + days)).toISOString().slice(0, 10)
}

export function packageDateInWindow (
  value: string | null | undefined,
  days: PackageDayWindow,
  direction: 'past' | 'future',
  today: string,
): boolean {
  const date = value?.slice(0, 10) ?? ''
  if (!DATE_PATTERN.test(date)) return false
  if (direction === 'past') {
    return date >= shiftDate(today, -days) && date <= today
  }
  return date >= today && date <= shiftDate(today, days)
}
