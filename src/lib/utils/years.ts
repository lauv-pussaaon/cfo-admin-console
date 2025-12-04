/**
 * Generate available year options for report year selection
 * Returns years from current year + 1 to current year - 5
 */
export function getAvailableYearOptions(): number[] {
  const currentYear = new Date().getFullYear()
  const years: number[] = []
  for (let i = 1; i >= -5; i--) {
    years.push(currentYear + i)
  }
  return years
}

