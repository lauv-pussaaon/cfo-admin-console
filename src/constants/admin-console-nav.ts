export type AdminNavSectionId = 'clients' | 'support' | 'adminUsers' | 'fuel'

export interface AdminNavItem {
  title: string
  description: string
  path: string
  sectionId?: AdminNavSectionId
}

export interface AdminNavSection {
  id: AdminNavSectionId
  title: string
}

export const ADMIN_NAV_SECTIONS: AdminNavSection[] = [
  { id: 'clients', title: 'ลูกค้า' },
  { id: 'support', title: 'ช่วยลูกค้า' },
  { id: 'adminUsers', title: 'ผู้ใช้' },
  { id: 'fuel', title: 'ค่า EF' },
]

export const ADMIN_DASHBOARD_NAV_ITEMS: AdminNavItem[] = [
  {
    title: 'แดชบอร์ด',
    description: 'ภาพรวมและทางลัดไปยังเมนูต่างๆ',
    path: '/admin-console',
  },
  {
    title: 'ระบบจัดการองค์กรลูกค้า',
    description: 'จัดการองค์กร บัญชี และข้อมูลลูกค้า',
    path: '/admin-console/organizations',
    sectionId: 'clients',
  },
  {
    title: 'คำขอสมัครการใช้งาน',
    description: 'ตรวจสอบและอนุมัติคำขอทดลองใช้งานและสมาชิกรายปี',
    path: '/admin-console/trial-requests',
    sectionId: 'clients',
  },
  {
    title: 'ระบบ Support ลูกค้า',
    description: 'ติดตามและให้บริการลูกค้าผ่านแชท',
    path: '/admin-console/support-clients',
    sectionId: 'support',
  },
  {
    title: 'วิเคราะห์การใช้งานลูกค้า',
    description: 'ดูสถิติและพฤติกรรมการใช้งานของลูกค้า',
    path: '/admin-console/analytics',
    sectionId: 'support',
  },
  {
    title: 'จัดการบัญชีผู้ใช้ส่วน admin',
    description: 'จัดการบัญชีผู้ใช้และสิทธิ์การเข้าถึง',
    path: '/admin-console/users',
    sectionId: 'adminUsers',
  },
  {
    title: 'จัดการรายการทรัพยากร EF',
    description: 'จัดการแหล่งปล่อย หน่วย และค่า EF ตามเวอร์ชันแคตตาล็อก',
    path: '/admin-console/emission-resources',
    sectionId: 'fuel',
  },
  {
    title: 'เทมเพลต CFO สำหรับลูกค้า',
    description: 'จัดการเทมเพลตข้อมูลการปล่อยตามอุตสาหกรรม',
    path: '/admin-console/emission-templates',
    sectionId: 'fuel',
  },
]

export const SUPPORT_NAV_PATHS = [
  '/admin-console',
  '/admin-console/organizations',
  '/admin-console/trial-requests',
  '/admin-console/support-clients',
] as const

export const CONSULT_AUDIT_NAV_PATHS = [
  '/admin-console',
  '/admin-console/organizations',
] as const

export const ADMIN_SETTINGS_NAV_ITEM: AdminNavItem = {
  title: 'การตั้งค่าการแจ้งเตือน',
  description: 'จัดการอีเมลผู้รับแจ้งเตือนเมื่อมีคำขอทดลองใช้งานหรือสมาชิกรายปี',
  path: '/admin-console/settings/notifications',
}

export function getAdminNavItemByPath (path: string): AdminNavItem | undefined {
  return ADMIN_DASHBOARD_NAV_ITEMS.find((item) => item.path === path)
}

function filterNavByPaths (paths: readonly string[]): AdminNavItem[] {
  const allowed = new Set(paths)
  return ADMIN_DASHBOARD_NAV_ITEMS.filter((item) => allowed.has(item.path))
}

export function getDashboardNavItemsForRole (role: string | undefined | null): AdminNavItem[] {
  if (role === 'Admin') return ADMIN_DASHBOARD_NAV_ITEMS
  if (role === 'Support') return filterNavByPaths(SUPPORT_NAV_PATHS)
  if (role === 'Consult' || role === 'Audit' || role === 'Dealer') {
    return filterNavByPaths(CONSULT_AUDIT_NAV_PATHS)
  }
  return []
}

export function getNavSectionsForRole (role: string | undefined | null): {
  section: AdminNavSection
  items: AdminNavItem[]
}[] {
  const items = getDashboardNavItemsForRole(role).filter((item) => item.path !== '/admin-console')
  return ADMIN_NAV_SECTIONS
    .map((section) => ({
      section,
      items: items.filter((item) => item.sectionId === section.id),
    }))
    .filter((group) => group.items.length > 0)
}
