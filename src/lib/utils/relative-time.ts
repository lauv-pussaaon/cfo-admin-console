export function formatRelativeTimeTh (timestamp: string | null | undefined): string {
  if (!timestamp) return '—'

  const date = new Date(timestamp)
  if (Number.isNaN(date.getTime())) return '—'

  const now = Date.now()
  const diffMs = now - date.getTime()
  const diffMinutes = Math.floor(diffMs / 60000)

  if (diffMinutes < 1) return 'เมื่อสักครู่'
  if (diffMinutes < 60) return `${diffMinutes} นาทีที่แล้ว`

  const diffHours = Math.floor(diffMinutes / 60)
  if (diffHours < 24) return `${diffHours} ชม.ที่แล้ว`

  const startOfToday = new Date()
  startOfToday.setHours(0, 0, 0, 0)
  const startOfYesterday = new Date(startOfToday)
  startOfYesterday.setDate(startOfYesterday.getDate() - 1)

  if (date >= startOfYesterday && date < startOfToday) return 'เมื่อวาน'

  const diffDays = Math.floor(diffMs / 86400000)
  if (diffDays < 7) return `${diffDays} วันที่แล้ว`

  return date.toLocaleDateString('th-TH', {
    day: 'numeric',
    month: 'short',
    year: 'numeric',
  })
}

export function formatMessageDayLabel (timestamp: string): string {
  const date = new Date(timestamp)
  if (Number.isNaN(date.getTime())) return ''

  const startOfToday = new Date()
  startOfToday.setHours(0, 0, 0, 0)
  const startOfYesterday = new Date(startOfToday)
  startOfYesterday.setDate(startOfYesterday.getDate() - 1)

  if (date >= startOfToday) return 'วันนี้'
  if (date >= startOfYesterday) return 'เมื่อวาน'

  return date.toLocaleDateString('th-TH', {
    weekday: 'short',
    day: 'numeric',
    month: 'short',
    year: 'numeric',
  })
}

export function isSameCalendarDay (a: string, b: string): boolean {
  const left = new Date(a)
  const right = new Date(b)
  if (Number.isNaN(left.getTime()) || Number.isNaN(right.getTime())) return false
  return (
    left.getFullYear() === right.getFullYear() &&
    left.getMonth() === right.getMonth() &&
    left.getDate() === right.getDate()
  )
}
