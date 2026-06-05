import {
  getPolicyDocumentUrl,
  getPolicyRoutePath,
  POLICY_SLUGS,
  type PolicySlug,
} from '@/lib/register/policy-slugs'

export interface PolicyDocument {
  key: 'terms' | 'privacy' | 'cookie'
  slug: PolicySlug
  title: string
  summary: string
  routePath: string
  readFullLabel: string
}

export const POLICY_DOCUMENTS: PolicyDocument[] = [
  {
    key: 'terms',
    slug: POLICY_SLUGS.terms,
    title: 'ข้อกำหนดและเงื่อนไขการใช้บริการ',
    summary:
      'เอกสารนี้อธิบายสิทธิ หน้าที่ เงื่อนไขการใช้งานบัญชี ความรับผิดชอบของผู้ใช้บริการ ข้อจำกัดความรับผิด และเงื่อนไขการให้บริการของแพลตฟอร์ม IdeaCarb',
    routePath: getPolicyRoutePath(POLICY_SLUGS.terms),
    readFullLabel: 'อ่านข้อกำหนดฉบับเต็ม',
  },
  {
    key: 'privacy',
    slug: POLICY_SLUGS.privacy,
    title: 'นโยบายความเป็นส่วนตัว',
    summary:
      'เอกสารนี้อธิบายว่าบริษัทเก็บ ใช้ เปิดเผย และคุ้มครองข้อมูลส่วนบุคคลอย่างไร รวมถึงวัตถุประสงค์ ฐานกฎหมาย ระยะเวลาเก็บรักษา และสิทธิของเจ้าของข้อมูล',
    routePath: getPolicyRoutePath(POLICY_SLUGS.privacy),
    readFullLabel: 'อ่านนโยบายฉบับเต็ม',
  },
  {
    key: 'cookie',
    slug: POLICY_SLUGS.cookie,
    title: 'นโยบายการใช้คุกกี้',
    summary:
      'เอกสารนี้อธิบายประเภทของคุกกี้ เช่น คุกกี้ที่จำเป็น คุกกี้เพื่อวิเคราะห์การใช้งาน คุกกี้การตั้งค่า และคุกกี้การตลาด',
    routePath: getPolicyRoutePath(POLICY_SLUGS.cookie),
    readFullLabel: 'อ่านนโยบายคุกกี้',
  },
]

export const CONSENT_MODAL_COPY = {
  title: 'ก่อนสมัครใช้งาน IdeaCarb',
  subtitle:
    'เพื่อให้เป็นไปตาม PDPA กรุณาอ่านและยืนยันการรับทราบเอกสารสำคัญก่อนสมัครใช้งาน',
  termsCheckboxLabel:
    'ข้าพเจ้าได้อ่านและยอมรับข้อกำหนดและเงื่อนไขการใช้บริการของแพลตฟอร์ม IdeaCarb',
  privacyCheckboxLabel:
    'ข้าพเจ้าได้รับทราบและเข้าใจนโยบายความเป็นส่วนตัวของบริษัท ซิดเอ็น จำกัด แล้ว',
  marketingCheckboxLabel:
    'ข้าพเจ้ายินยอมรับข่าวสาร บทความ กิจกรรม หรือข้อมูลบริการจากบริษัทผ่านช่องทางอิเล็กทรอนิกส์',
  cancelLabel: 'ยกเลิก',
  confirmLabel: 'ดำเนินการสมัครใช้งาน',
} as const

export function getPolicyUrls() {
  const terms = POLICY_DOCUMENTS.find((d) => d.key === 'terms')!
  const privacy = POLICY_DOCUMENTS.find((d) => d.key === 'privacy')!
  const cookie = POLICY_DOCUMENTS.find((d) => d.key === 'cookie')!
  return {
    termsDocumentUrl: getPolicyDocumentUrl(terms.slug),
    privacyDocumentUrl: getPolicyDocumentUrl(privacy.slug),
    cookiePolicyUrl: getPolicyDocumentUrl(cookie.slug),
  }
}
