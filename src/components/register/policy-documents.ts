import {
  getPolicyDocumentUrl,
  getPolicyRoutePath,
  POLICY_SLUGS,
  type PolicySlug,
} from '@/lib/register/policy-slugs'

export interface PolicyDocument {
  key: 'terms' | 'privacy' | 'collectShare'
  slug: PolicySlug
  title: string
  summary: string
  routePath: string
  readFullLabel: string
}

export const REGISTRATION_POLICY_DOCUMENTS: PolicyDocument[] = [
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
    key: 'collectShare',
    slug: POLICY_SLUGS.collectShare,
    title: 'หนังสือให้ความยินยอมในการเก็บรวบรวม ใช้ และ/หรือเปิดเผยข้อมูลส่วนบุคคล',
    summary:
      'เอกสารนี้อธิบายวัตถุประสงค์ ประเภทข้อมูล การเปิดเผย และสิทธิของเจ้าของข้อมูล รวมถึงรายละเอียดความยินยอมสำหรับการใช้งานแพลตฟอร์ม Idea Carb',
    routePath: getPolicyRoutePath(POLICY_SLUGS.collectShare),
    readFullLabel: 'อ่านหนังสือให้ความยินยอมฉบับเต็ม',
  },
]

/** @deprecated Use REGISTRATION_POLICY_DOCUMENTS for registration consent modal */
export const POLICY_DOCUMENTS = REGISTRATION_POLICY_DOCUMENTS

export const CONSENT_MODAL_COPY = {
  title: 'ก่อนสมัครใช้งาน IdeaCarb',
  subtitle:
    'เพื่อให้เป็นไปตาม PDPA กรุณาอ่านและยืนยันการรับทราบเอกสารสำคัญก่อนสมัครใช้งาน',
  termsCheckboxLabel:
    'ข้าพเจ้าได้อ่านและยอมรับข้อกำหนดและเงื่อนไขการใช้บริการของแพลตฟอร์ม IdeaCarb',
  privacyCheckboxLabel:
    'ข้าพเจ้าได้รับทราบและเข้าใจนโยบายความเป็นส่วนตัวของบริษัท ซิดเอ็น จำกัด แล้ว',
  collectShareDataConsentCheckboxLabel:
    'ข้าพเจ้ายินยอมให้บริษัทเก็บรวบรวม ใช้ และ/หรือเปิดเผยข้อมูลส่วนบุคคลตามหนังสือให้ความยินยอม',
  marketingCheckboxLabel:
    'ข้าพเจ้ายินยอมรับข่าวสาร บทความ กิจกรรม หรือข้อมูลบริการจากบริษัทผ่านช่องทางอิเล็กทรอนิกส์',
  requiredLabel: 'จำเป็น',
  cancelLabel: 'ยกเลิก',
  confirmLabel: 'ดำเนินการสมัครใช้งาน',
} as const

export function getPolicyUrls() {
  const terms = REGISTRATION_POLICY_DOCUMENTS.find((d) => d.key === 'terms')!
  const privacy = REGISTRATION_POLICY_DOCUMENTS.find((d) => d.key === 'privacy')!
  const collectShare = REGISTRATION_POLICY_DOCUMENTS.find((d) => d.key === 'collectShare')!
  return {
    termsDocumentUrl: getPolicyDocumentUrl(terms.slug),
    privacyDocumentUrl: getPolicyDocumentUrl(privacy.slug),
    collectShareDataConsentUrl: getPolicyDocumentUrl(collectShare.slug),
  }
}
