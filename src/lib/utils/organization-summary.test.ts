import { describe, it } from 'node:test'
import assert from 'node:assert/strict'
import {
  bangkokYearMonth,
  buildOrganizationSummary,
  formatMonthAxisLabel,
  formatMonthTooltipLabel,
} from './organization-summary'

const october2026 = new Date('2026-10-07T03:00:00Z')

describe('bangkokYearMonth', () => {
  it('uses the Asia/Bangkok calendar month across the UTC date line', () => {
    assert.equal(bangkokYearMonth(new Date('2026-09-30T17:30:00Z')), '2026-10')
    assert.equal(bangkokYearMonth(new Date('2026-10-31T16:30:00Z')), '2026-10')
    assert.equal(bangkokYearMonth(new Date('2026-10-31T17:30:00Z')), '2026-11')
  })
})

describe('month labels', () => {
  it('uses the Thai short month and two-digit Buddhist year', () => {
    assert.equal(formatMonthAxisLabel('2026-10'), 'ต.ค. 69')
    assert.equal(formatMonthAxisLabel('2027-01'), 'ม.ค. 70')
    assert.equal(formatMonthTooltipLabel('2026-10'), 'ตุลาคม 2569')
  })
})

describe('buildOrganizationSummary', () => {
  it('counts account types and treats a missing type as general customers', () => {
    const summary = buildOrganizationSummary([
      { account_type: 'demo' },
      { account_type: 'demo' },
      { account_type: null },
      { account_type: '' },
      { account_type: 'employee' },
      { account_type: 'project' },
      { account_type: 'general customers' },
    ], october2026)

    assert.equal(summary.total, 7)
    assert.deepEqual(
      summary.byType.map((row) => [row.accountType, row.count]),
      [
        ['general customers', 3],
        ['demo', 2],
        ['employee', 1],
        ['project', 1],
      ],
    )
  })

  it('buckets package start from six months ago through the current month', () => {
    const summary = buildOrganizationSummary([
      { package_start: '2026-03-31' },
      { package_start: '2026-04-01' },
      { package_start: '2026-10-31' },
      { package_start: '2026-11-01' },
      { package_start: null },
      { package_start: 'not-a-date' },
    ], october2026)

    assert.deepEqual(summary.packageStarts.map((row) => row.key), [
      '2026-04',
      '2026-05',
      '2026-06',
      '2026-07',
      '2026-08',
      '2026-09',
      '2026-10',
    ])
    assert.equal(summary.packageStarts[0].label, 'เม.ย. 69')
    assert.equal(summary.packageStarts[6].label, 'ต.ค. 69')
    assert.deepEqual(summary.packageStarts.map((row) => row.count), [1, 0, 0, 0, 0, 0, 1])
  })

  it('buckets package end from the current month through six months ahead and skips open-ended rows', () => {
    const summary = buildOrganizationSummary([
      { package_end: '2026-09-30' },
      { package_end: '2026-10-01' },
      { package_end: '2027-01-15' },
      { package_end: '2027-04-30' },
      { package_end: '2027-05-01' },
      { package_end: null },
    ], october2026)

    assert.deepEqual(summary.packageEnds.map((row) => row.key), [
      '2026-10',
      '2026-11',
      '2026-12',
      '2027-01',
      '2027-02',
      '2027-03',
      '2027-04',
    ])
    assert.equal(summary.packageEnds[0].label, 'ต.ค. 69')
    assert.equal(summary.packageEnds[3].label, 'ม.ค. 70')
    assert.equal(summary.packageEnds[3].tooltipLabel, 'มกราคม 2570')
    assert.deepEqual(summary.packageEnds.map((row) => row.count), [1, 0, 0, 1, 0, 0, 1])
  })

  it('keeps zero months and zero types when the list is empty', () => {
    const summary = buildOrganizationSummary([], october2026)
    assert.equal(summary.total, 0)
    assert.equal(summary.byType.length, 4)
    assert.ok(summary.byType.every((row) => row.count === 0))
    assert.equal(summary.packageStarts.length, 7)
    assert.equal(summary.packageEnds.length, 7)
    assert.ok(summary.packageStarts.every((row) => row.count === 0))
  })
})
