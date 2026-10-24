import type { BannerKind } from './banner'
import type { RichTextDoc } from './document'

export type PlatformUpdateStatus = 'active' | 'inactive'

export type PlatformUpdateRecord = {
  id: string
  status: PlatformUpdateStatus
  publishedOn: string | null
  bannerKind: BannerKind | null
  bannerPath: string | null
  bannerUrl: string | null
  titleTh: string
  titleEn: string
  bodyTh: RichTextDoc
  bodyEn: RichTextDoc
  createdAt: string
  updatedAt: string
  createdBy: string | null
}

export type PlatformUpdateLive = {
  id: string
  publishedOn: string
  bannerKind: BannerKind
  bannerUrl: string
  titleTh: string
  titleEn: string
  bodyTh: RichTextDoc
  bodyEn: RichTextDoc
}
