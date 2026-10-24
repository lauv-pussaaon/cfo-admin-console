export type TextInline = {
  type: 'text'
  text: string
  bold?: boolean
  italic?: boolean
}

export type LinkInline = {
  type: 'link'
  text: string
  href: string
}

export type Inline = TextInline | LinkInline

export type HeadingBlock = {
  type: 'heading'
  level: 2 | 3
  inlines: Inline[]
}

export type ParagraphBlock = {
  type: 'paragraph'
  inlines: Inline[]
}

export type ListBlock = {
  type: 'bulletList' | 'orderedList'
  items: Inline[][]
}

export type Block = HeadingBlock | ParagraphBlock | ListBlock

export type RichTextDoc = {
  type: 'doc'
  content: Block[]
}

export const EMPTY_DOC: RichTextDoc = { type: 'doc', content: [] }

type Marks = { bold: boolean; italic: boolean; href: string | null }

type El = {
  tag: string
  attrs: Record<string, string>
  children: Array<El | string>
}

const BLOCK_TAGS = new Set(['p', 'div', 'h1', 'h2', 'h3', 'h4', 'ul', 'ol', 'blockquote', 'li'])

export function bangkokToday (now: Date = new Date()): string {
  return new Intl.DateTimeFormat('en-CA', {
    timeZone: 'Asia/Bangkok',
    year: 'numeric',
    month: '2-digit',
    day: '2-digit',
  }).format(now)
}

export function safeHref (value: string): string | null {
  const trimmed = value.trim()
  if (!trimmed) return null
  try {
    const url = new URL(trimmed)
    if (url.protocol === 'http:' || url.protocol === 'https:') return url.href
  } catch {
    return null
  }
  return null
}

export function isDocEmpty (doc: RichTextDoc): boolean {
  return !doc.content.some((block) => {
    if (block.type === 'heading' || block.type === 'paragraph') {
      return inlineText(block.inlines).trim().length > 0
    }
    return block.items.some((item) => inlineText(item).trim().length > 0)
  })
}

export function htmlToDoc (html: string): RichTextDoc {
  const nodes = parseFragment(html)
  return { type: 'doc', content: blocksFrom(nodes) }
}

export function docToHtml (doc: RichTextDoc): string {
  if (doc.content.length === 0) return '<p><br></p>'
  return doc.content.map(blockToHtml).join('')
}

export function parseDoc (value: unknown): RichTextDoc {
  if (!value || typeof value !== 'object') return EMPTY_DOC
  const record = value as { type?: unknown; content?: unknown }
  if (record.type !== 'doc' || !Array.isArray(record.content)) return EMPTY_DOC
  const content: Block[] = []
  for (const block of record.content) {
    const parsed = parseBlock(block)
    if (parsed) content.push(parsed)
  }
  return { type: 'doc', content }
}

function inlineText (inlines: Inline[]): string {
  return inlines.map((inline) => inline.text).join('')
}

function parseBlock (value: unknown): Block | null {
  if (!value || typeof value !== 'object') return null
  const block = value as { type?: unknown; level?: unknown; inlines?: unknown; items?: unknown }
  if (block.type === 'heading') {
    const level = block.level === 3 ? 3 : block.level === 2 ? 2 : null
    const inlines = parseInlines(block.inlines)
    if (!level || inlines.length === 0) return null
    return { type: 'heading', level, inlines }
  }
  if (block.type === 'paragraph') {
    const inlines = parseInlines(block.inlines)
    if (inlines.length === 0) return null
    return { type: 'paragraph', inlines }
  }
  if (block.type === 'bulletList' || block.type === 'orderedList') {
    if (!Array.isArray(block.items)) return null
    const items = block.items
      .map((item) => parseInlines(item))
      .filter((item) => item.length > 0)
    if (items.length === 0) return null
    return { type: block.type, items }
  }
  return null
}

function parseInlines (value: unknown): Inline[] {
  if (!Array.isArray(value)) return []
  const inlines: Inline[] = []
  for (const item of value) {
    if (!item || typeof item !== 'object') continue
    const row = item as { type?: unknown; text?: unknown; href?: unknown; bold?: unknown; italic?: unknown }
    if (typeof row.text !== 'string' || row.text.length === 0) continue
    if (row.type === 'link') {
      const href = typeof row.href === 'string' ? safeHref(row.href) : null
      if (!href) continue
      inlines.push({ type: 'link', text: row.text, href })
      continue
    }
    if (row.type === 'text') {
      inlines.push(textInline(row.text, row.bold === true, row.italic === true))
    }
  }
  return inlines
}

function textInline (text: string, bold: boolean, italic: boolean): TextInline {
  const inline: TextInline = { type: 'text', text }
  if (bold) inline.bold = true
  if (italic) inline.italic = true
  return inline
}

function decodeEntities (text: string): string {
  return text
    .replace(/&nbsp;/gi, ' ')
    .replace(/&lt;/gi, '<')
    .replace(/&gt;/gi, '>')
    .replace(/&quot;/gi, '"')
    .replace(/&#39;|&apos;/gi, "'")
    .replace(/&amp;/gi, '&')
}

function escapeHtml (text: string): string {
  return text
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
}

function parseAttrs (raw: string): Record<string, string> {
  const attrs: Record<string, string> = {}
  const re = /([a-zA-Z_:][-a-zA-Z0-9_:.]*)\s*=\s*("([^"]*)"|'([^']*)'|([^\s"'>]+))/g
  let match: RegExpExecArray | null
  while ((match = re.exec(raw))) {
    attrs[match[1].toLowerCase()] = decodeEntities(match[3] ?? match[4] ?? match[5] ?? '')
  }
  return attrs
}

function parseFragment (html: string): Array<El | string> {
  const root: El = { tag: 'root', attrs: {}, children: [] }
  const stack: El[] = [root]
  const re = /<!--[\s\S]*?-->|<\/([a-zA-Z0-9]+)>|<([a-zA-Z0-9]+)([^>]*?)\/?>|([^<]+)/g
  let match: RegExpExecArray | null
  while ((match = re.exec(html))) {
    if (match[0].startsWith('<!--')) continue
    if (match[1]) {
      const tag = match[1].toLowerCase()
      while (stack.length > 1 && stack[stack.length - 1].tag !== tag) stack.pop()
      if (stack.length > 1 && stack[stack.length - 1].tag === tag) stack.pop()
      continue
    }
    if (match[2]) {
      const tag = match[2].toLowerCase()
      const el: El = { tag, attrs: parseAttrs(match[3] ?? ''), children: [] }
      stack[stack.length - 1].children.push(el)
      const selfClosing = match[0].endsWith('/>') || tag === 'br' || tag === 'img' || tag === 'hr'
      if (!selfClosing) stack.push(el)
      continue
    }
    if (match[4]) {
      const text = decodeEntities(match[4])
      if (text) stack[stack.length - 1].children.push(text)
    }
  }
  return root.children
}

function isEl (node: El | string): node is El {
  return typeof node !== 'string'
}

function isBlock (node: El | string): node is El {
  return isEl(node) && BLOCK_TAGS.has(node.tag)
}

function hasBlockChild (node: El): boolean {
  return node.children.some(isBlock)
}

function blocksFrom (nodes: Array<El | string>): Block[] {
  const blocks: Block[] = []
  let inlineBuf: Array<El | string> = []
  const flush = () => {
    const inlines = normalizeInlines(inlinesFrom(inlineBuf, { bold: false, italic: false, href: null }))
    inlineBuf = []
    if (inlines.length > 0) blocks.push({ type: 'paragraph', inlines })
  }

  for (const node of nodes) {
    if (!isBlock(node)) {
      inlineBuf.push(node)
      continue
    }
    flush()
    if (node.tag === 'ul' || node.tag === 'ol') {
      const items = node.children
        .filter(isEl)
        .filter((child) => child.tag === 'li')
        .map((li) => normalizeInlines(inlinesFrom(li.children, { bold: false, italic: false, href: null })))
        .filter((item) => item.length > 0)
      if (items.length > 0) {
        blocks.push({ type: node.tag === 'ol' ? 'orderedList' : 'bulletList', items })
      }
      continue
    }
    if (node.tag === 'h1' || node.tag === 'h2' || node.tag === 'h3' || node.tag === 'h4') {
      const level: 2 | 3 = node.tag === 'h3' || node.tag === 'h4' ? 3 : 2
      const inlines = normalizeInlines(inlinesFrom(node.children, { bold: false, italic: false, href: null }))
      if (inlines.length > 0) blocks.push({ type: 'heading', level, inlines })
      continue
    }
    if (hasBlockChild(node)) {
      blocks.push(...blocksFrom(node.children))
      continue
    }
    const inlines = normalizeInlines(inlinesFrom(node.children, { bold: false, italic: false, href: null }))
    if (inlines.length > 0) blocks.push({ type: 'paragraph', inlines })
  }
  flush()
  return blocks
}

function inlinesFrom (nodes: Array<El | string>, marks: Marks): Inline[] {
  const out: Inline[] = []
  for (const node of nodes) {
    if (typeof node === 'string') {
      pushText(out, node, marks)
      continue
    }
    if (node.tag === 'br') {
      pushText(out, '\n', marks)
      continue
    }
    if (node.tag === 'strong' || node.tag === 'b') {
      out.push(...inlinesFrom(node.children, { ...marks, bold: true }))
      continue
    }
    if (node.tag === 'em' || node.tag === 'i') {
      out.push(...inlinesFrom(node.children, { ...marks, italic: true }))
      continue
    }
    if (node.tag === 'a') {
      const href = safeHref(node.attrs.href ?? '')
      if (!href) out.push(...inlinesFrom(node.children, marks))
      else out.push(...inlinesFrom(node.children, { ...marks, href }))
      continue
    }
    if (node.tag === 'script' || node.tag === 'style') continue
    out.push(...inlinesFrom(node.children, marks))
  }
  return out
}

function pushText (out: Inline[], text: string, marks: Marks) {
  if (!text) return
  if (marks.href) {
    out.push({ type: 'link', text, href: marks.href })
    return
  }
  out.push(textInline(text, marks.bold, marks.italic))
}

function normalizeInlines (inlines: Inline[]): Inline[] {
  const merged: Inline[] = []
  for (const inline of inlines) {
    if (!inline.text) continue
    const prev = merged[merged.length - 1]
    if (
      prev &&
      prev.type === 'text' &&
      inline.type === 'text' &&
      prev.bold === inline.bold &&
      prev.italic === inline.italic
    ) {
      prev.text += inline.text
      continue
    }
    if (
      prev &&
      prev.type === 'link' &&
      inline.type === 'link' &&
      prev.href === inline.href
    ) {
      prev.text += inline.text
      continue
    }
    merged.push({ ...inline })
  }
  return merged.filter((inline) => inline.text.length > 0)
}

function blockToHtml (block: Block): string {
  if (block.type === 'heading') {
    const tag = block.level === 3 ? 'h3' : 'h2'
    return `<${tag}>${renderInlines(block.inlines)}</${tag}>`
  }
  if (block.type === 'paragraph') return `<p>${renderInlines(block.inlines)}</p>`
  const tag = block.type === 'orderedList' ? 'ol' : 'ul'
  const items = block.items.map((item) => `<li>${renderInlines(item)}</li>`).join('')
  return `<${tag}>${items}</${tag}>`
}

function renderInlines (inlines: Inline[]): string {
  return inlines.map((inline) => {
    const text = escapeHtml(inline.text).replace(/\n/g, '<br>')
    if (inline.type === 'link') return `<a href="${escapeHtml(inline.href)}">${text}</a>`
    let html = text
    if (inline.italic) html = `<em>${html}</em>`
    if (inline.bold) html = `<strong>${html}</strong>`
    return html
  }).join('')
}
