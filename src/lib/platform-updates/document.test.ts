import { describe, it } from 'node:test'
import assert from 'node:assert/strict'
import { htmlToDoc, parseDoc } from './document'

describe('htmlToDoc', () => {
  it('keeps bold, italic, and https links', () => {
    const doc = htmlToDoc('<p>Hello <strong>bold</strong> <em>italic</em> <a href="https://ideacarb.com/docs">docs</a></p>')
    assert.deepEqual(doc.content, [{
      type: 'paragraph',
      inlines: [
        { type: 'text', text: 'Hello ' },
        { type: 'text', text: 'bold', bold: true },
        { type: 'text', text: ' ' },
        { type: 'text', text: 'italic', italic: true },
        { type: 'text', text: ' ' },
        { type: 'link', text: 'docs', href: 'https://ideacarb.com/docs' },
      ],
    }])
  })

  it('drops script, style, and non-http links', () => {
    const doc = htmlToDoc('<p>ok<script>alert(1)</script><style>.x{}</style> <a href="javascript:alert(1)">bad</a></p>')
    assert.deepEqual(doc.content, [{
      type: 'paragraph',
      inlines: [{ type: 'text', text: 'ok bad' }],
    }])
    assert.equal(JSON.stringify(doc).includes('alert'), false)
    assert.equal(JSON.stringify(doc).includes('javascript:'), false)
  })
})

describe('parseDoc', () => {
  it('drops unknown blocks and unsafe link hrefs', () => {
    const doc = parseDoc({
      type: 'doc',
      content: [
        { type: 'paragraph', inlines: [{ type: 'text', text: 'keep', bold: true }] },
        { type: 'html', html: '<script>alert(1)</script>' },
        { type: 'paragraph', inlines: [{ type: 'link', text: 'nope', href: 'javascript:alert(1)' }] },
      ],
    })
    assert.deepEqual(doc.content, [{
      type: 'paragraph',
      inlines: [{ type: 'text', text: 'keep', bold: true }],
    }])
  })
})
