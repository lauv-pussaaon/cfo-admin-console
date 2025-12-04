'use client'

import AdminConsoleHeader from '@/components/AdminConsoleHeader'

export default function AdminConsoleLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <>
      <AdminConsoleHeader />
      {children}
    </>
  )
}

