/**
 * Utility functions for emissions calculations and formatting
 */

/**
 * Calculate percentage change between current and base values
 * @param current Current value
 * @param base Base value (for comparison)
 * @returns Percentage change, or null if base is 0 or null
 */
export function calculatePercentageChange (
  current: number,
  base: number | null
): number | null {
  if (base === null || base === 0) {
    return null;
  }
  return ((current - base) / base) * 100;
}

/**
 * Format month index (0-11) to Thai month abbreviation
 * @param monthIndex Month index (0 = January, 11 = December)
 * @returns Thai month abbreviation
 */
export function formatThaiMonth (monthIndex: number): string {
  const thaiMonths = [
    'ม.ค.',
    'ก.พ.',
    'มี.ค.',
    'เม.ย.',
    'พ.ค.',
    'มิ.ย.',
    'ก.ค.',
    'ส.ค.',
    'ก.ย.',
    'ต.ค.',
    'พ.ย.',
    'ธ.ค.',
  ];
  return thaiMonths[monthIndex] || '';
}

/**
 * Format date string (YYYY-MM-DD) to Thai format (dd MMM YYYY)
 * @param dateString Date string in YYYY-MM-DD format
 * @returns Formatted string like "15 ม.ค. 2024"
 */
export function formatThaiDate (dateString: string): string {
  if (!dateString) return '';
  const date = new Date(dateString);
  if (isNaN(date.getTime())) return '';

  const day = date.getDate();
  const month = formatThaiMonth(date.getMonth());
  const year = date.getFullYear();

  return `${day} ${month} ${year}`;
}

/**
 * Get color for scope visualization
 * @param scope Scope number (1, 2, 3, or 4)
 * @returns Color hex code
 */
export function getScopeColor (scope: number): string {
  const colors: Record<number, string> = {
    1: '#10b981', // Green for Scope 1
    2: '#3b82f6', // Blue for Scope 2
    3: '#f59e0b', // Orange for Scope 3
    4: '#8b5cf6', // Purple for Scope 4
  };
  return colors[scope] || '#6b7280';
}

/**
 * Get display label for scope
 * @param scope Scope number (1, 2, 3, or 4)
 * @returns Display label string
 */
export function getScopeLabel (scope: number): string {
  if (scope === 4) {
    return 'แยกรายงาน';
  }
  return `Scope ${scope}`;
}

/**
 * Format number with commas and two decimal places, rounded up
 * @param value Number to format
 * @returns Formatted string like "1,234,567.89"
 */
export function formatEmissionValue (value: number): string {
  // Round up to 2 decimal places
  const roundedUp = Math.ceil(value * 100) / 100;
  return roundedUp.toLocaleString('en-US', {
    minimumFractionDigits: 2,
    maximumFractionDigits: 2,
  });
}

/**
 * Format emission number with 2 decimal places and locale-specific formatting
 * Formats with 2 decimal places and thousands separators
 * @param value Number to format
 * @param locale Locale string (defaults to undefined for browser default)
 * @returns Formatted string like "1,234,567.89"
 */
export function formatEmissionNumber (
  value: number,
  locale?: string | undefined
): string {
  return value.toLocaleString(locale, {
    minimumFractionDigits: 2,
    maximumFractionDigits: 2,
  });
}

/**
 * Format percentage change for display
 * @param change Percentage change value or null
 * @returns Formatted string like "+5.2%" or "N/A"
 */
export function formatPercentageChange (change: number | null): string {
  if (change === null) {
    return 'N/A';
  }
  const sign = change >= 0 ? '+' : '';
  return `${sign}${change.toFixed(1)}%`;
}

/**
 * Get color for percentage change indicator
 * @param change Percentage change value
 * @param isIncreaseGood Whether increase is considered good (e.g., for total emissions, increase is bad)
 * @returns Color string
 */
export function getChangeColor (
  change: number | null,
  isIncreaseGood: boolean = false
): string {
  if (change === null) {
    return '#6b7280'; // Gray for N/A
  }
  if (change === 0) {
    return '#6b7280'; // Gray for no change
  }
  const isIncrease = change > 0;
  if (isIncreaseGood) {
    return isIncrease ? '#10b981' : '#ef4444'; // Green for increase, red for decrease
  } else {
    return isIncrease ? '#ef4444' : '#10b981'; // Red for increase, green for decrease
  }
}

/**
 * Check if a resource uses dual value calculation based on unit presence
 * @param value1Unit First value unit (optional)
 * @param value2Unit Second value unit (optional)
 * @returns True if both units are present (dual value), false otherwise
 */
export function isDualValue(value1Unit?: string | null, value2Unit?: string | null): boolean {
  return !!(value1Unit && value2Unit)
}

/**
 * Check if a resource uses single extra value calculation (value1 only, no value2)
 * @param value1Unit First value unit (optional)
 * @param value2Unit Second value unit (optional)
 * @returns True if value1_unit exists but value2_unit doesn't (single extra value), false otherwise
 */
export function hasSingleExtraValue(value1Unit?: string | null, value2Unit?: string | null): boolean {
  return !!(value1Unit && !value2Unit)
}

/**
 * Calculate CO2 equivalent based on single or dual value calculation
 * @param hasDualValue Whether this emission uses dual value calculation
 * @param quantity Single value quantity (for single value calculation)
 * @param efValue Emission factor value
 * @param value1 First value (for dual value calculation)
 * @param value2 Second value (for dual value calculation)
 * @returns CO2 equivalent in kg CO2eq
 */
export function calculateCO2Equivalent (
  hasDualValue: boolean,
  quantity: number,
  efValue: number,
  value1?: number,
  value2?: number
): number {
  if (hasDualValue && value1 !== undefined && value2 !== undefined) {
    return value1 * value2 * efValue;
  }
  return quantity * efValue;
}

