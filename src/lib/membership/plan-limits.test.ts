import { describe, it } from 'node:test'
import assert from 'node:assert/strict'
import {
  buildOrganizationMembership,
  calendarDaysLeft,
  isPackageExpired,
  toClientPlan,
  toDateOnly,
} from './plan-limits'

describe('toClientPlan', () => {
  it('maps demo only to demo', () => {
    assert.equal(toClientPlan('demo'), 'demo')
    assert.equal(toClientPlan('general customers'), 'premium')
    assert.equal(toClientPlan('employee'), 'premium')
    assert.equal(toClientPlan('project'), 'premium')
  })
})

describe('calendarDaysLeft', () => {
  it('returns null without an end date', () => {
    assert.equal(calendarDaysLeft(null, '2026-08-30'), null)
  })

  it('counts remaining calendar days and floors past dates at 0', () => {
    assert.equal(calendarDaysLeft('2026-09-29', '2026-08-30'), 30)
    assert.equal(calendarDaysLeft('2026-08-30', '2026-08-30'), 0)
    assert.equal(calendarDaysLeft('2026-08-29', '2026-08-30'), 0)
  })
})

describe('isPackageExpired', () => {
  it('expires only after the end date', () => {
    assert.equal(isPackageExpired(null, '2026-08-30'), false)
    assert.equal(isPackageExpired('2026-08-30', '2026-08-30'), false)
    assert.equal(isPackageExpired('2026-08-29', '2026-08-30'), true)
  })
})

describe('buildOrganizationMembership', () => {
  it('builds demo limits and strips timestamps from dates', () => {
    const membership = buildOrganizationMembership({
      organizationId: 'org-1',
      accountType: 'demo',
      packageStart: '2026-08-30T00:00:00.000Z',
      packageEnd: '2026-09-29T00:00:00.000Z',
      today: '2026-08-30',
    })
    assert.equal(membership.plan, 'demo')
    assert.equal(membership.packageStart, '2026-08-30')
    assert.equal(membership.packageEnd, '2026-09-29')
    assert.equal(membership.daysLeft, 30)
    assert.equal(membership.expired, false)
    assert.deepEqual(membership.limits, {
      maxReports: 5,
      maxUploadBytes: 0,
      maxBusinessUnits: 5,
    })
  })

  it('treats other account types as unlimited premium', () => {
    const membership = buildOrganizationMembership({
      organizationId: 'org-1',
      accountType: 'employee',
      packageStart: '2026-08-30',
      packageEnd: null,
      today: '2026-08-30',
    })
    assert.equal(membership.plan, 'premium')
    assert.equal(membership.daysLeft, null)
    assert.equal(membership.expired, false)
    assert.deepEqual(membership.limits, {
      maxReports: null,
      maxUploadBytes: null,
      maxBusinessUnits: null,
    })
  })
})

describe('toDateOnly', () => {
  it('returns null for empty values', () => {
    assert.equal(toDateOnly(null), null)
    assert.equal(toDateOnly(''), null)
  })
})
