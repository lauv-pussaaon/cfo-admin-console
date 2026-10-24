import { isDocEmpty, type RichTextDoc } from './document'

export type LiveCheckInput = {
  status: string
  publishedOn: string | null
  bannerPath: string | null
  titleTh: string
  titleEn: string
  bodyTh: RichTextDoc
  bodyEn: RichTextDoc
}

export function isPlatformUpdateComplete (row: LiveCheckInput): boolean {
  return Boolean(
    row.publishedOn &&
    row.bannerPath &&
    row.titleTh.trim() &&
    row.titleEn.trim() &&
    !isDocEmpty(row.bodyTh) &&
    !isDocEmpty(row.bodyEn)
  )
}

export function isPlatformUpdateLive (row: LiveCheckInput, today: string): boolean {
  return row.status === 'active' &&
    isPlatformUpdateComplete(row) &&
    !!row.publishedOn &&
    row.publishedOn <= today
}

export function isWaitingForPublishDate (
  row: { status: string; publishedOn: string | null },
  today: string
): boolean {
  return row.status === 'active' && !!row.publishedOn && row.publishedOn > today
}
