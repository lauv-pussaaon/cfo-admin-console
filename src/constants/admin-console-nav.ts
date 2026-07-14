export interface AdminNavItem {
  title: string
  description: string
  path: string
}

export const ADMIN_DASHBOARD_NAV_ITEMS: AdminNavItem[] = [
  {
    title: 'แดชบอร์ด',
    description: 'ภาพรวมและทางลัดไปยังเมนูต่างๆ',
    path: '/admin-console',
  },
  {
    title: 'องค์กรลูกค้า',
    description: 'จัดการองค์กร บัญชี และข้อมูลลูกค้า',
    path: '/admin-console/organizations',
  },
  {
    title: 'คำขอทดลองใช้งาน',
    description: 'ตรวจสอบและอนุมัติคำขอสมัครทดลองใช้งาน',
    path: '/admin-console/trial-requests',
  },
  {
    title: 'ลูกค้าที่ต้องดูแล',
    description: 'ติดตามและให้บริการลูกค้าผ่านแชท',
    path: '/admin-console/support-clients',
  },
  {
    title: 'ผู้ใช้งาน',
    description: 'จัดการบัญชีผู้ใช้และสิทธิ์การเข้าถึง',
    path: '/admin-console/users',
  },
  {
    title: 'วิเคราะห์ลูกค้า',
    description: 'ดูสถิติและพฤติกรรมการใช้งานของลูกค้า',
    path: '/admin-console/analytics',
  },
  {
    title: 'ทรัพยากรการปล่อย',
    description: 'จัดการแหล่งปล่อย หน่วย และค่า EF ตามเวอร์ชันแคตตาล็อก',
    path: '/admin-console/emission-resources',
  },
  {
    title: 'ลิงก์ทรัพยากรเชื้อเพลิง',
    description: 'จัดการ fuel_resources_linking ต่อเวอร์ชันแคตตาล็อก',
    path: '/admin-console/fuel-resources-linking',
  },
  {
    title: 'เทมเพลตการปล่อย',
    description: 'จัดการเทมเพลตข้อมูลการปล่อยตามอุตสาหกรรม',
    path: '/admin-console/emission-templates',
  },
]

export const SUPPORT_NAV_ITEMS: AdminNavItem[] = [
  {
    title: 'ลูกค้า',
    description: 'ดูรายการองค์กรที่ได้รับมอบหมาย',
    path: '/admin-console',
  },
]

export const ADMIN_SETTINGS_NAV_ITEM: AdminNavItem = {
  title: 'การตั้งค่าการแจ้งเตือน',
  description: 'จัดการอีเมลผู้รับแจ้งเตือนเมื่อมีคำขอทดลองใช้งาน',
  path: '/admin-console/settings/notifications',
}

export function getAdminNavItemByPath (path: string): AdminNavItem | undefined {
  return ADMIN_DASHBOARD_NAV_ITEMS.find((item) => item.path === path)
}
