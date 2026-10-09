import { describe, it } from 'node:test'
import assert from 'node:assert/strict'
import { bangkokDate, packageDateInWindow } from './package-date-window'

describe('bangkokDate', () => {
  it('uses the Asia/Bangkok calendar day across the UTC date line', () => {
    assert.equal(bangkokDate(new Date('2026-10-07T16:30:00Z')), '2026-10-07')
    assert.equal(bangkokDate(new Date('2026-10-07T17:30:00Z')), '2026-10-08')
  })
})

describe('packageDateInWindow', () => {
  const today = '2026-10-08'

  it('keeps a start date from today minus N through today', () => {
    assert.equal(packageDateInWindow('2026-10-01', 7, 'past', today), true)
    assert.equal(packageDateInWindow('2026-10-08', 7, 'past', today), true)
    assert.equal(packageDateInWindow('2026-09-30', 7, 'past', today), false)
    assert.equal(packageDateInWindow('2026-10-09', 7, 'past', today), false)
    assert.equal(packageDateInWindow('2026-02-22', 7, 'past', '2026-03-01'), true)
    assert.equal(packageDateInWindow('2026-02-21', 7, 'past', '2026-03-01'), false)
  })

  it('keeps an end date from today through today plus N', () => {
    assert.equal(packageDateInWindow('2026-10-08', 7, 'future', today), true)
    assert.equal(packageDateInWindow('2026-10-15', 7, 'future', today), true)
    assert.equal(packageDateInWindow('2026-10-07', 7, 'future', today), false)
    assert.equal(packageDateInWindow('2026-10-16', 7, 'future', today), false)
    assert.equal(packageDateInWindow('2026-11-07', 30, 'future', today), true)
    assert.equal(packageDateInWindow('2026-11-08', 30, 'future', today), false)
  })

  it('drops a blank or invalid date', () => {
    assert.equal(packageDateInWindow(null, 14, 'past', today), false)
    assert.equal(packageDateInWindow('', 14, 'future', today), false)
    assert.equal(packageDateInWindow('not-a-date', 30, 'past', today), false)
    assert.equal(packageDateInWindow('2026-10-08T17:00:00.000Z', 7, 'past', today), true)
  })
})
