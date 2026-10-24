import { describe, it } from 'node:test'
import assert from 'node:assert/strict'
import type { RichTextDoc } from './document'
import { isPlatformUpdateLive, isWaitingForPublishDate } from './live'

const body: RichTextDoc = {
  type: 'doc',
  content: [{ type: 'paragraph', inlines: [{ type: 'text', text: 'ready' }] }],
}

const live = {
  status: 'active',
  publishedOn: '2026-10-21',
  bannerPath: 'id/banner.jpg',
  titleTh: 'ชื่อ',
  titleEn: 'Title',
  bodyTh: body,
  bodyEn: body,
}

describe('isPlatformUpdateLive', () => {
  it('is live only when active, complete, and due', () => {
    assert.equal(isPlatformUpdateLive(live, '2026-10-21'), true)
    assert.equal(isPlatformUpdateLive({ ...live, publishedOn: '2026-10-22' }, '2026-10-21'), false)
    assert.equal(isPlatformUpdateLive({ ...live, status: 'inactive' }, '2026-10-21'), false)
    assert.equal(isPlatformUpdateLive({ ...live, titleEn: ' ' }, '2026-10-21'), false)
    assert.equal(isPlatformUpdateLive({ ...live, bannerPath: null }, '2026-10-21'), false)
  })
})

describe('isWaitingForPublishDate', () => {
  it('marks a future active date', () => {
    assert.equal(isWaitingForPublishDate({ status: 'active', publishedOn: '2026-10-22' }, '2026-10-21'), true)
    assert.equal(isWaitingForPublishDate({ status: 'inactive', publishedOn: '2026-10-22' }, '2026-10-21'), false)
    assert.equal(isWaitingForPublishDate({ status: 'active', publishedOn: '2026-10-21' }, '2026-10-21'), false)
  })
})
